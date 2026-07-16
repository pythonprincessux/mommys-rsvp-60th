-- Run this once in Supabase SQL Editor.

alter table public.rsvps enable row level security;

drop policy if exists "Guests may submit RSVPs" on public.rsvps;
drop policy if exists "Guests can submit RSVPs" on public.rsvps;

create policy "Guests may submit RSVPs"
on public.rsvps
for insert
to anon
with check (
  length(trim(name)) > 0
  and length(trim(email)) > 0
  and guests >= 0
  and guests <= 4
);

create or replace function public.get_rsvp_summary()
returns table (
  confirmed bigint,
  declined bigint,
  guest_total bigint,
  hotel_total bigint
)
language sql
security definer
set search_path = public
as $$
  select
    count(*) filter (where attending = true),
    count(*) filter (where attending = false),
    coalesce(sum(guests) filter (where attending = true),0)::bigint,
    count(*) filter (where attending = true and lower(coalesce(hotel,'')) = 'yes')
  from public.rsvps;
$$;

revoke all on function public.get_rsvp_summary() from public;
grant execute on function public.get_rsvp_summary() to anon;

create or replace function public.get_rsvps(host_password text)
returns table (
  id bigint,
  created_at timestamptz,
  name text,
  email text,
  phone text,
  attending boolean,
  guests integer,
  meal text,
  hotel text,
  song text,
  notes text
)
language plpgsql
security definer
set search_path = public
as $$
begin
  if host_password is distinct from 'sharima60' then
    raise exception 'Incorrect host password';
  end if;

  return query
  select
    r.id,
    r.created_at,
    r.name,
    r.email,
    r.phone,
    r.attending,
    r.guests,
    r.meal,
    r.hotel,
    r.song,
    r.notes
  from public.rsvps r
  order by r.created_at desc;
end;
$$;

revoke all on function public.get_rsvps(text) from public;
grant execute on function public.get_rsvps(text) to anon;
