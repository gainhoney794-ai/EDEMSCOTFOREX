# EDEMSCOT FOREX — Landing Page

A single-file, dependency-free landing page. No build step, no external requests.

## Run it

```bash
cd edemscot-site
python3 -m http.server 8080
# open http://localhost:8080
```

You can also just double-click `index.html` — everything (logo, styles, scripts) is embedded.

## Your live links

Already wired into the page (CONFIG block at the bottom of `index.html`):

```js
var WA_URL = "https://chat.whatsapp.com/JpN50GuugvwBiC6uYv2iuu";
var FB_URL = "https://www.facebook.com/share/1REh7iiS5o/";
var YT_URL = "https://www.youtube.com/@michealjosephokon-mj3910";
```

Change them there and every button on the page updates at once.

Still worth checking before publishing:
- **Prices / programme names** — the three cards in the `#programs` section
- **Testimonials** — replace names and cities with real, permissioned client feedback
- **Stats** — 12,000+ traders, 40+ countries etc. must reflect your real numbers

## Files

| Path | Purpose |
|---|---|
| `index.html` | The whole site — CSS, JS and the logo are inlined |
| `assets/emblem.webp` | Rising-chart emblem with brand label (hero panel) |
| `assets/mark.png` | Circular emblem mark (nav / footer) |
| `assets/logo-square.webp` | Full square logo with brand label + tagline |
| `assets/favicon.png` | 64 px favicon |

## Structure

Nav · Hero · Market ticker · Stats · Why EDEMSCOT · Programmes · How it works ·
Testimonials · FAQ · CTA · Footer (with risk disclosure)

## Colour system

| Token | Value |
|---|---|
| Background | `#050B16` |
| Light blue | `#5FC9F5` / `#9FE4FF` |
| White | `#FFFFFF` |
| Muted text | `#8FA6BE` |
