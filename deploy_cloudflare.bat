@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo [1/2] Pushing latest changes to GitHub...
git add .
git commit -m "Update Shanshenbu 30"
git push origin main --tags
echo [2/2] Deploying to Cloudflare...
npx -y wrangler deploy
pause
