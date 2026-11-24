# Publishing EDEMSCOT FOREX to GitHub Pages

## ⭐ Easiest: upload ONE file

`index.html` is completely self-contained — the logo, styles, script and favicon
are all embedded inside it. That means **you only need to upload that single file.**

1. Go to https://github.com/new
2. Repository name: `edemscot-forex`  →  **Public**  →  Create repository
3. Click **"uploading an existing file"**
4. Drag in **`index.html`** (just that one file)
5. Commit changes
6. **Settings → Pages → Source: Deploy from a branch → `main` / `(root)`**
7. Wait 1–2 minutes. Live at: `https://YOUR-USERNAME.github.io/edemscot-forex/`

The `assets/` folder is only needed if you want a separate copy of the logo
images, or for the social-share preview image.

---

## If you want the automatic deploy workflow too

Upload the whole folder *contents* (not the folder itself):

```
index.html
.nojekyll
.github/workflows/deploy.yml
assets/
```

Note: `.nojekyll` and `.github` are **hidden folders**.
- **Windows:** they show normally in Explorer
- **macOS:** press `Cmd + Shift + .` in Finder to reveal them

Then set **Settings → Pages → Source: GitHub Actions**.
GitHub will now redeploy the site automatically on every push.

## From the terminal

```bash
cd edemscot-site
git init
git add .
git commit -m "EDEMSCOT FOREX landing page"
git branch -M main
git remote add origin https://github.com/YOUR-USERNAME/edemscot-forex.git
git push -u origin main
```

## Custom domain (optional)

1. Buy a domain (e.g. edemscotforex.com)
2. In the repo, create a file named `CNAME` containing only `edemscotforex.com`
3. In your domain's DNS add an `A` record → `185.199.108.153`, `.109.153`, `.110.153`, `.111.153`
   (or a `CNAME` → `YOUR-USERNAME.github.io`)
4. GitHub → Settings → Pages → add your custom domain

## Links already set

```js
var WA_URL = "https://chat.whatsapp.com/JpN50GuugvwBiC6uYv2iuu";
var FB_URL = "https://www.facebook.com/share/1REh7iiS5o/";
var YT_URL = "https://www.youtube.com/@michealjosephokon-mj3910";
```

Nothing else to configure — the page is ready to upload.
