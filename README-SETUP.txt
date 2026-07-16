SHARIMA'S 60TH BIRTHDAY WEBSITE — FINAL SETUP

1. PUBLISH THE WEBSITE
   Upload the contents of this folder to Netlify, Vercel, GitHub Pages, or another web host.
   Do not text guests the ZIP or HTML file. Send the published website URL.

2. CONNECT LIVE RSVP TRACKING
   a. Create a new Google Sheet.
   b. Open Extensions > Apps Script.
   c. Replace the starter code with google-apps-script.gs from this folder.
   d. Click Deploy > New deployment > Web app.
   e. Execute as: Me
   f. Who has access: Anyone
   g. Copy the Web App URL.
   h. Open index.html and paste the URL between the quotes here:
      const GOOGLE_SCRIPT_URL='PASTE_URL_HERE';

   Until this is completed, RSVP responses are stored only on the device used to submit them.

3. HOST DASHBOARD
   Password: sharima60
   Important: the password exists in the website code, so this is a convenience screen, not secure authentication.
   The Google Sheet should be treated as the official private RSVP list.

4. EVENT DETAILS
   Studio House Atlanta
   75 John Wesley Dobbs Ave NE
   Atlanta, GA 30303

5. HOTEL LINK
   The official Marriott room-block link is already connected to the button and QR code.

6. MUSIC
   The music control remains a placeholder because a licensed audio file was not supplied.
   Add a properly licensed MP3 before enabling music publicly.


MOBILE NOTE
The standalone HTML is only for previewing. iPhone and Android file-preview apps may sandbox JavaScript,
fonts, storage, QR generation, or touch events. Publish the folder contents to a real HTTPS website before
sending the invitation. Once published, guests should receive the web URL, not the HTML file or ZIP.


GOOGLE APPS SCRIPT IS NOT A MAC APP
There is nothing to install from the Apple App Store. Apps Script is opened in a web browser.

Open your Google Sheet in Chrome or Safari, then select:
Extensions > Apps Script

You can also visit script.google.com in a browser while signed into the same Google account.


CONNECTED BACKEND
Google Apps Script web app connected:
https://script.google.com/macros/s/AKfycbwr_wTQmdZo41ZIqioDe0KzAJxeectagh_wO3_9NGPqIM7t34S2LFf8S6eZf2yvLflE/exec

Before sending invitations, submit a test RSVP from the published GitHub Pages website and confirm a new row appears in the Google Sheet.
