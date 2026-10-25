# Fist Meets Glass

Promo page for the *Fist Meets Glass* debut EP listening party.

## What's here

- `public/index.html` — the entire site. One self-contained file: the CSS and the
  League Spartan font (SIL OFL, embedded as base64) are inlined. There is no
  JavaScript. The only thing loaded from outside is the YouTube player, and only
  after a visitor presses Play. It plays every upload on the channel, newest
  first, so new videos appear on the site without any edits.
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

To preview locally, run `dev` from Zide's Script Runner, or in a terminal:

```
make dev
```

Then open http://127.0.0.1:8787.

## If this grows past one page

The plan is to rebuild it in Astro. Nothing about the Cloudflare project needs to
change except two settings: point `assets.directory` in `wrangler.jsonc` at
`./dist` instead of `./public`, and set the build command in the Cloudflare
dashboard to `npm run build`. A purely static Astro build needs no Cloudflare
adapter.
