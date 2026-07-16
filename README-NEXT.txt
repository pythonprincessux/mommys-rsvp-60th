SUPABASE FINAL CONNECTION

1. Open Supabase > SQL Editor.
2. Paste and run RUN-IN-SUPABASE.sql.
3. Replace the GitHub repository's existing index.html with this index.html.
4. Commit the change and wait for GitHub Pages to redeploy.
5. Open:
   https://pythonprincessux.github.io/mommys-rsvp-60th/?supabase=1
6. Submit a test RSVP.
7. Open Supabase > Table Editor > rsvps and confirm the row appears.
8. Test the existing Host login on the same page.
   Password: sharima60
9. Test Download CSV.

The Supabase publishable key is supposed to be present in browser code.
The RLS insert policy lets guests submit but not read the guest table.
The host dashboard reads through a password-checking database function.
