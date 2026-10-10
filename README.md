# Fist Meets Glass

Promo page for the *Fist Meets Glass* debut EP listening party.

## What's here

- `public/index.html` — the entire site. One self-contained file: the CSS and the
  League Spartan font (SIL OFL, embedded as base64) are inlined. There is no
  JavaScript, and the page makes no external requests.
- `wrangler.jsonc` — Cloudflare Workers configuration. This is an assets-only
  Worker (no `main` script) that serves everything in `public/`.

## Deploying

Hosted on Cloudflare Workers through Workers Builds, so a push to `main` builds
and deploys automatically.

To deploy from this machine instead:

```
npx wrangler login
npx wrangler deploy
```

To preview locally:

```
npx wrangler dev
```

## If this grows past one page

The plan is to rebuild it in Astro. Nothing about the Cloudflare project needs to
change except two settings: point `assets.directory` in `wrangler.jsonc` at
`./dist` instead of `./public`, and set the build command in the Cloudflare
dashboard to `npm run build`. A purely static Astro build needs no Cloudflare
adapter.
