# Towbin Lab website

Static Astro website for the Towbin Lab. Content that changes regularly is stored in `src/data/people.json` and `src/data/publications.json`.

## Local use

```bash
npm install
npm run dev
npm run build
```

The production files are written to `dist/`. Copy that directory's contents to the server web root.

## Deployment on a University of Bern VM

1. Install Node.js LTS on the VM and clone this repository.
2. Run `npm ci` (or `npm install` initially), then `npm run build`.
3. Copy `dist/` to `/var/www/towbinlab.org/`.
4. Install the example nginx configuration from `nginx/towbinlab.org.conf`, adapt the certificate paths, and reload nginx.
5. After DNS points to the VM, obtain the certificate with `sudo certbot --nginx -d towbinlab.org -d www.towbinlab.org`.

No database or server-side application is needed.
