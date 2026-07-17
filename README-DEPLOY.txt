CELEBRATE SHARIMA — SAFE WEB UPDATES

Changes:
- Filet changed to Chicken.
- Hotel wording now clearly says each guest must reserve and pay for their own room.
- Hotel selection still stores Yes/No, preserving existing reports and live counts.
- Optional SMS consent checkbox added.
- Supabase insert now stores sms_consent.
- Host dashboard includes:
  * Copy Hotel Guest Phones
  * Copy Hotel Reminder
  * Disabled Send Hotel Reminder button awaiting Twilio approval
- Existing Supabase RSVP, counters, CSV, dashboard and mobile experience preserved.

DEPLOYMENT ORDER:
1. In Supabase SQL Editor, run RUN-THIS-FIRST.sql.
2. Confirm the query succeeds.
3. Replace only the repository root index.html with this index.html.
4. Commit and wait for GitHub Pages to deploy.
5. Test one new RSVP in an incognito window.
6. Confirm the new row appears in Supabase and sms_consent is saved.
7. Open Host Dashboard and test the two Copy buttons.

IMPORTANT:
Existing RSVPs have sms_consent=false because they did not see the opt-in checkbox.
The Send Hotel Reminder button is deliberately disabled until Twilio A2P approval
and the secure Supabase Edge Function are configured.

Validation: JavaScript syntax check passed
