#!/usr/bin/env bash
# ---------------------------------------------------------------
#  EDEMSCOT FOREX — one-command publish to GitHub Pages
#
#  Usage:   ./deploy.sh YOUR_GITHUB_USERNAME
#  Needs:   git  +  gh  (GitHub CLI)  ->  https://cli.github.com
#           already logged in with:    gh auth login
# ---------------------------------------------------------------
set -euo pipefail

USERNAME="${1:-}"
REPO="edemscot-forex"

if [ -z "$USERNAME" ]; then
  echo "Usage: ./deploy.sh YOUR_GITHUB_USERNAME"
  exit 1
fi

if ! command -v git >/dev/null 2>&1; then echo "git is not installed."; exit 1; fi
if ! command -v gh  >/dev/null 2>&1; then echo "GitHub CLI (gh) is not installed. https://cli.github.com"; exit 1; fi

echo "→ Creating repo $USERNAME/$REPO (public) if it does not exist..."
gh repo create "$USERNAME/$REPO" --public --source=. --remote=origin 2>/dev/null || \
  git remote add origin "https://github.com/$USERNAME/$REPO.git"

echo "→ Committing..."
git add -A
git commit -m "EDEMSCOT FOREX landing page" || true
git branch -M main
git push -u origin main --force

echo "→ Enabling GitHub Pages..."
gh api -X POST "repos/$USERNAME/$REPO/pages" \
  -f "source[branch]=main" -f "source[path]=/" 2>/dev/null || \
gh api -X PUT "repos/$USERNAME/$REPO/pages" \
  -f "source[branch]=main" -f "source[path]=/" || true

echo ""
echo "✅ Done. Your site will be live in 1–2 minutes at:"
echo "   https://$USERNAME.github.io/$REPO/"
echo ""
echo "⚠️  Remember to set WA_NUMBER / FB_URL / YT_URL in index.html."
