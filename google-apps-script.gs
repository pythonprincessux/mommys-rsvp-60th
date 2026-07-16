const SHEET_NAME = 'RSVP Responses';

function doPost(e) {
  const data = JSON.parse(e.postData.contents);
  const ss = SpreadsheetApp.getActiveSpreadsheet();
  let sheet = ss.getSheetByName(SHEET_NAME);

  if (!sheet) {
    sheet = ss.insertSheet(SHEET_NAME);
    sheet.appendRow([
      'Submitted At','Name','Email','Phone','Status','Guests',
      'Meal','Hotel Needed','Song Request','Notes'
    ]);
  }

  sheet.appendRow([
    data.submittedAt || new Date().toISOString(),
    data.name || '',
    data.email || '',
    data.phone || '',
    data.attending ? 'Attending' : 'Declined',
    data.guests || '0',
    data.meal || '',
    data.hotel || '',
    data.song || '',
    data.notes || ''
  ]);

  return ContentService
    .createTextOutput(JSON.stringify({ok:true}))
    .setMimeType(ContentService.MimeType.JSON);
}
