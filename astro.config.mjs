// @ts-check
import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';
import tailwindcss from '@tailwindcss/vite';
import icon from 'astro-icon';


// https://astro.build/config
export default defineConfig({
  integrations: [mdx(), icon()],
  vite: {
    plugins: [tailwindcss()],
  },
  markdown: {
    // Resaltado de sintaxis (Shiki) para los bloques de codigo SQL / C++.
    shikiConfig: {
      theme: 'github-light',
      wrap: false,
    },
  },
});

