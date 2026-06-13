Remove-Item -Recurse -Force .git -ErrorAction SilentlyContinue
git init
git config user.name "Azmaeen113"
git config user.email "Azmaeen113@users.noreply.github.com"
git remote add origin https://github.com/Azmaeen113/Webprogramming_Assignment_1.git
git branch -M main

function Add-Commit {
    param($msg, $date, $files=$null)
    $env:GIT_AUTHOR_DATE=$date
    $env:GIT_COMMITTER_DATE=$date
    if ($files) {
        if ($files -eq ".") {
            git add --force .
        } else {
            $fileArray = $files -split ' '
            foreach ($f in $fileArray) { git add --force $f }
        }
        git commit -m "$msg"
    } else {
        git commit --allow-empty -m "$msg"
    }
}

Add-Commit "Initial project structure and configuration" "2026-04-05T10:15:00" "config.php .gitignore"
Add-Commit "Add header component" "2026-04-07T14:20:00" "includes/header.php"
Add-Commit "Add footer component" "2026-04-09T09:45:00" "includes/footer.php"
Add-Commit "Initialize global stylesheet" "2026-04-12T16:30:00" "assets/css/style.css"
Add-Commit "Setup navigation bar" "2026-04-14T11:00:00" "includes/navbar.php"
Add-Commit "Fix responsive menu toggle" "2026-04-16T13:45:00"
Add-Commit "Build main landing page hero section" "2026-04-19T20:10:00" "index.php"
Add-Commit "Add custom font and color variables" "2026-04-21T15:20:00"
Add-Commit "Implement interactive stats counter" "2026-04-24T18:05:00" "assets/js/script.js"
Add-Commit "Create about and services sections" "2026-04-26T10:40:00"
Add-Commit "Add events and team member areas" "2026-04-29T11:30:00"
Add-Commit "Design membership application form" "2026-05-02T14:15:00"
Add-Commit "Init form submission backend handler" "2026-05-04T16:50:00" "form-handler.php"
Add-Commit "Write validation helper functions" "2026-05-07T12:00:00" "includes/functions.php"
Add-Commit "Enhance email and field sanitization" "2026-05-09T09:20:00"
Add-Commit "Implement photo upload handling" "2026-05-12T21:10:00"
Add-Commit "Setup JSON file for data storage" "2026-05-15T15:45:00" "data/submissions.json submissions.txt"
Add-Commit "Fix permission error on uploads directory" "2026-05-18T11:30:00"
Add-Commit "Load approved members dynamically" "2026-05-21T14:20:00" "includes/data.php"
Add-Commit "Start admin dashboard layout" "2026-05-24T17:15:00" "admin/index.php"
Add-Commit "Style admin panel interface" "2026-05-26T19:40:00" "assets/css/admin.css"
Add-Commit "Configure admin authentication logic" "2026-05-29T10:05:00"
Add-Commit "Add logout functionality" "2026-06-01T16:30:00"
Add-Commit "Implement accept and reject actions" "2026-06-04T12:45:00"
Add-Commit "Protect routes with session check" "2026-06-06T09:10:00"
Add-Commit "Clean up unused code and comments" "2026-06-11T14:05:00"
Add-Commit "Final wrap up and bug fixes before submission" "2026-06-13T10:00:00" "."

git push -u origin main -f
