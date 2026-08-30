import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://www.towbinlab.org',
  base: '/',
  output: 'static',
  vite: {
    cacheDir: 'C:/tmp/towbin-astro-cache',
  },
});
