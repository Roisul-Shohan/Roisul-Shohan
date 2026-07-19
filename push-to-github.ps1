# push-to-github.ps1
# Run this AFTER creating the empty repo at https://github.com/new
# Repo name MUST be exactly: Roisul-Shohan
# Do NOT initialize with README/.gitignore/license on GitHub.

cd C:\GitHub\Roisul-Shohan

git remote remove origin 2>$null
git remote add origin https://github.com/Roisul-Shohan/Roisul-Shohan.git

Write-Host "Pushing to GitHub..." -ForegroundColor Cyan
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n✅ Done! Your profile is live at:" -ForegroundColor Green
    Write-Host "   https://github.com/Roisul-Shohan" -ForegroundColor Green
} else {
    Write-Host "`n⚠️  Push failed. Common causes:" -ForegroundColor Yellow
    Write-Host "   1. Repo name doesn't match exactly: Roisul-Shohan" -ForegroundColor Yellow
    Write-Host "   2. You need to sign in: git config --global credential.helper manager" -ForegroundColor Yellow
    Write-Host "   3. 2FA required - use a Personal Access Token as password" -ForegroundColor Yellow
}
