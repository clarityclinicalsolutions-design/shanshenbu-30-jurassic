@echo off
chcp 65001 >nul
echo 正在通过 Cloudflare Pages (Wrangler) 部署《闪身步30招：智斗侏罗纪》...
npx wrangler pages deploy web --project-name=shanshenbu-30-jurassic
pause
