# Run these from Zide's Script Runner, or with `make <target>` in a terminal.

.PHONY: dev

# Serve the site locally at http://127.0.0.1:8787, the same way Cloudflare serves it.
# Edits to public/ show up on reload. Press Ctrl+C to stop.
dev:
	npx --yes wrangler dev --ip 127.0.0.1 --port 8787
