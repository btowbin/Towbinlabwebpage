import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://btowbin.github.io/Towbinlabwebpage',
  base: process.env.GITHUB_ACTIONS ? '/Towbinlabwebpage' : '/',
  output: 'static',
  vite: {
    cacheDir: 'C:/tmp/towbin-astro-cache',
  },
});
