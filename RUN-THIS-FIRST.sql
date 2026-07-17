-- Run once in Supabase SQL Editor before publishing the updated index.html.

alter table public.rsvps
add column if not exists sms_consent boolean not null default false;

comment on column public.rsvps.sms_consent is
'Guest consent to receive event-related SMS reminders. Existing RSVPs default to false.';
