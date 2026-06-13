I have this website for "freelanceHUB-KUET" currently built in plain HTML, CSS, and JavaScript. 
I want to convert it to PHP incrementally — one commit per logical change — so that each 
commit is small, understandable, and independently verifiable by my teacher.

Follow these rules strictly throughout ALL commits:

COMMIT RULES:
- One commit per logical step. Never batch multiple unrelated changes into one commit.
- Commit message format: imperative sentence, sentence case, no period at the end.
  Example: "Convert index.html to index.php with PHP file extension"
  Never add "Co-authored by" or any tool attribution in commit messages.
  Never use emoji in commit messages. Dont use emojis in the website as well.
  Keep messages professional, descriptive, and human.

---

Here is the exact commit sequence I want you to follow:

COMMIT 1 — File extension conversion
Rename index.html to index.php. Verify the page loads correctly with no changes to content 
or behavior. Commit message: "Rename index.html to index.php to enable PHP processing"

COMMIT 2 — PHP opening tag and doctype
Add <?php ?> at the very top of index.php (empty for now). Ensure valid HTML5 doctype 
is still present. Commit message: "Add PHP opening tag to index.php"

COMMIT 3 — Extract header into a partial
Create a new file includes/header.php. Move the <head> tag and everything inside it 
(meta tags, CSS links, title) into this file. Replace the original with 
<?php include 'includes/header.php'; ?> in index.php.
Commit message: "Extract HTML head section into includes/header.php partial"

COMMIT 4 — Extract navbar into a partial
Create includes/navbar.php. Move the <nav> or site header/navigation markup into this file. 
Include it in index.php with <?php include 'includes/navbar.php'; ?>.
Commit message: "Extract navigation bar into includes/navbar.php partial"

COMMIT 5 — Extract footer into a partial
Create includes/footer.php. Move the footer HTML into this file. Include it in index.php.
Commit message: "Extract footer into includes/footer.php partial"

COMMIT 6 — Create PHP config file
Create a config.php file at the root. Define constants for site metadata using define():
  SITE_NAME, SITE_TAGLINE, CONTACT_EMAIL, CONTACT_ADDRESS
Include config.php at the top of index.php using require_once.
Commit message: "Add config.php with site-wide constants for name, tagline, and contact info"

COMMIT 7 — Use PHP constants in header and footer
Replace hardcoded site name in the <title> tag with <?php echo SITE_NAME; ?>.
Replace hardcoded footer text (site name, tagline, address) with the PHP constants.
Commit message: "Replace hardcoded site name and contact info with PHP constants"

COMMIT 8 — Convert stats to PHP variables
In index.php or a new includes/data.php, define the hero stats as PHP variables:
  $stats = [ ['label' => 'Members', 'value' => '120'], ... ]
Loop through them using foreach to render the stat blocks.
Commit message: "Render hero statistics dynamically using a PHP array and foreach loop"

COMMIT 9 — Convert skill tracks to PHP array
Create includes/data.php if not already created. Define the $skill_tracks array with 
name, badge label, badge color, and description for each of the 6 tracks.
Render the track cards in the "What We Do" section using a foreach loop.
Commit message: "Render skill track cards dynamically from a PHP array"

COMMIT 10 — Convert events to PHP array
In includes/data.php, define a $events array with date_day, date_month, type, title, 
location, and time for each event. Render the event list in the "Upcoming Events" 
section using foreach.
Commit message: "Render upcoming events dynamically from a PHP array"

COMMIT 11 — Convert team members to PHP array
In includes/data.php, define a $team array with name, initials, department, year, 
role, and accent_color for each team member. Render the team cards using foreach.
Commit message: "Render team member cards dynamically from a PHP array"

COMMIT 12 — Convert FAQ to PHP array
In includes/data.php, define a $faq array with question and answer for each FAQ item.
Render accordion items using foreach.
Commit message: "Render FAQ accordion items dynamically from a PHP array"

COMMIT 13 — Process the membership form with PHP
Create a new file form-handler.php. When the join form is submitted (POST), capture 
and sanitize the form fields (full name, student ID, department, track, email, reason).
For now, store the submission in a plain text file (submissions.txt) with a timestamp.
Redirect back to index.php with a query param ?submitted=1 on success.
Commit message: "Add PHP form handler to capture and store membership form submissions"

COMMIT 14 — Show success message after form submission
In index.php, check for the ?submitted=1 query parameter. If present, display a 
success notice above the form ("Your application has been submitted. We will contact 
you within 48 hours.") using a conditional PHP block.
Commit message: "Display success message on form page after membership application submission"

COMMIT 15 — Final cleanup and validation
Review all PHP files for consistent indentation, remove any leftover raw HTML 
that was duplicated during extraction, ensure all includes are correct and page 
renders with no warnings (use error_reporting(E_ALL) temporarily to verify).
Remove the error_reporting line before committing.
Commit message: "Clean up PHP partials and verify full page renders without errors"

---

ADDITIONAL RULES FOR ALL COMMITS:
- Never modify the visual design or CSS during these commits — these are purely 
  structural/backend changes.
- Never combine two numbered steps into one commit.
- After each commit, the page must still render correctly in the browser.
- Do not use any PHP frameworks, Composer packages, or databases — pure PHP only.
- File structure should be clean:
    /index.php
    /config.php
    /form-handler.php
    /includes/header.php
    /includes/navbar.php
    /includes/footer.php
    /includes/data.php
    /submissions.txt (writable, gitignored or noted)
    /assets/css/
    /assets/js/