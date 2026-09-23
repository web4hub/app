from pathlib import Path
import zipfile, textwrap, json

root = Path("/mnt/data/web4hub-app-complete")
files = {
"package.json": """{
  "name": "web4hub-app",
  "private": true,
  "version": "1.0.0",
  "type": "module",
  "scripts": {
    "dev": "vite",
    "build": "vue-tsc --noEmit && vite build",
    "preview": "vite preview",
    "check": "vue-tsc --noEmit"
  },
  "dependencies": {
    "vue": "^3.5.0",
    "vue-router": "^4.5.0"
  },
  "devDependencies": {
    "@vitejs/plugin-vue": "^5.2.0",
    "typescript": "^5.7.0",
    "vite": "^6.0.0",
    "vue-tsc": "^2.2.0"
  }
}
""",
"vite.config.ts": """import { defineConfig } from "vite";
import vue from "@vitejs/plugin-vue";

export default defineConfig({
  plugins: [vue()],
  server: {
    host: "0.0.0.0",
    port: 5173,
  },
  preview: {
    host: "0.0.0.0",
    port: 4173,
  },
});
""",
"tsconfig.json": """{
  "compilerOptions": {
    "target": "ES2022",
    "useDefineForClassFields": true,
    "module": "ESNext",
    "moduleResolution": "Bundler",
    "strict": true,
    "jsx": "preserve",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "esModuleInterop": true,
    "lib": ["ES2022", "DOM", "DOM.Iterable"],
    "types": ["vite/client"],
    "skipLibCheck": true
  },
  "include": ["src/**/*.ts", "src/**/*.d.ts", "src/**/*.vue", "vite.config.ts"]
}
""",
"index.html": """<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="theme-color" content="#060818" />
    <meta name="description" content="Web4Hub — Aura Ecosystem application runtime" />
    <title>Web4Hub • Aura Ecosystem</title>
  </head>
  <body>
    <div id="app"></div>
    <script type="module" src="/src/main.ts"></script>
  </body>
</html>
""",
"src/env.d.ts": """/// <reference types="vite/client" />
""",
"src/App.vue": """<template>
  <div class="app-shell">
    <div class="background" aria-hidden="true"></div>

    <header class="app-header">
      <RouterLink to="/" class="brand">
        <span class="brand-mark">W4</span>
        <span>
          <strong>Web4Hub</strong>
          <small>Aura Ecosystem</small>
        </span>
      </RouterLink>

      <nav class="nav" aria-label="Primary navigation">
        <RouterLink v-for="item in navigation" :key="item.to" :to="item.to">
          {{ item.label }}
        </RouterLink>
      </nav>
    </header>

    <main class="app-main">
      <RouterView />
    </main>

    <footer class="app-footer">
      <span>© 2026 Aura Ecosystem</span>
      <span>Web4 + LMLM + Qubuhub</span>
    </footer>
  </div>
</template>

<script setup lang="ts">
import { RouterLink, RouterView } from "vue-router";

const navigation = [
  { to: "/dashboard", label: "Dashboard" },
  { to: "/ai", label: "AI" },
  { to: "/wallet", label: "Wallet" },
  { to: "/cloud", label: "Cloud" },
  { to: "/identity", label: "Identity" },
  { to: "/developer", label: "Developer" },
  { to: "/settings", label: "Settings" },
];
</script>

<style>
:root {
  color-scheme: dark;
  font-family: Inter, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
  color: #f7f8ff;
  background: #060818;
  font-synthesis: none;
  text-rendering: optimizeLegibility;
}
* { box-sizing: border-box; }
html, body, #app { min-height: 100%; margin: 0; }
body { min-height: 100vh; background: #060818; }
a { color: inherit; text-decoration: none; }
button, input { font: inherit; }
.app-shell { min-height: 100vh; display: flex; flex-direction: column; position: relative; overflow: hidden; }
.background {
  position: fixed; inset: 0; z-index: -1;
  background:
    radial-gradient(circle at 10% 10%, rgba(59,130,246,.22), transparent 35%),
    radial-gradient(circle at 90% 80%, rgba(0,212,255,.16), transparent 35%),
    linear-gradient(180deg, #050816, #090b1f);
  animation: drift 15s ease-in-out infinite alternate;
}
@keyframes drift { to { transform: scale(1.08) translateY(-18px); } }
.app-header {
  display: flex; align-items: center; justify-content: space-between; gap: 24px;
  padding: 18px 28px; border-bottom: 1px solid rgba(255,255,255,.09);
  background: rgba(8,10,28,.68); backdrop-filter: blur(18px);
  position: sticky; top: 0; z-index: 10;
}
.brand { display: flex; align-items: center; gap: 12px; }
.brand-mark {
  width: 44px; height: 44px; display: grid; place-items: center; border-radius: 14px;
  background: linear-gradient(135deg, #6d5dfc, #00d4ff); color: white; font-weight: 900;
}
.brand strong { display: block; font-size: 1.05rem; }
.brand small { display: block; color: #9ca3af; margin-top: 2px; }
.nav { display: flex; flex-wrap: wrap; gap: 6px; justify-content: flex-end; }
.nav a { padding: 8px 11px; border-radius: 10px; color: #b8bfd4; font-size: .9rem; }
.nav a:hover, .nav a.router-link-active { color: white; background: rgba(255,255,255,.08); }
.app-main { width: min(1180px, 100%); margin: 0 auto; flex: 1; padding: 48px 24px; }
.app-footer {
  display: flex; justify-content: center; gap: 18px; flex-wrap: wrap;
  padding: 18px; color: #8e96ad; border-top: 1px solid rgba(255,255,255,.08);
  font-size: .85rem;
}
@media (max-width: 760px) {
  .app-header { align-items: flex-start; flex-direction: column; }
  .nav { justify-content: flex-start; }
  .app-main { padding-top: 32px; }
}
</style>
""",
"src/main.ts": """import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";

createApp(App).use(router).mount("#app");
""",
"src/router/index.ts": """import {
  createRouter,
  createWebHistory,
  type RouteRecordRaw,
} from "vue-router";

const routes: RouteRecordRaw[] = [
  { path: "/", name: "home", component: () => import("../views/Home.vue") },
  { path: "/dashboard", name: "dashboard", component: () => import("../views/Dashboard.vue") },
  { path: "/ai", name: "ai", component: () => import("../views/AI.vue") },
  { path: "/wallet", name: "wallet", component: () => import("../views/Wallet.vue") },
  { path: "/cloud", name: "cloud", component: () => import("../views/Cloud.vue") },
  { path: "/identity", name: "identity", component: () => import("../views/Identity.vue") },
  { path: "/developer", name: "developer", component: () => import("../views/Developer.vue") },
  { path: "/settings", name: "settings", component: () => import("../views/Settings.vue") },
  { path: "/:pathMatch(.*)*", name: "not-found", component: () => import("../views/NotFound.vue") },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
  scrollBehavior(to, _from, savedPosition) {
    if (savedPosition) return savedPosition;
    if (to.hash) return { el: to.hash, behavior: "smooth" };
    return { top: 0, behavior: "smooth" };
  },
});

export default router;
""",
"src/views/Home.vue": """<template>
  <section class="hero page">
    <span class="eyebrow">AURA ECOSYSTEM</span>
    <h1>Welcome to <span>Web4Hub</span>.</h1>
    <p class="lead">A CUE-first application runtime connecting Web4 identity, AI, cloud, wallets and developer infrastructure.</p>
    <div class="actions">
      <RouterLink class="button primary" to="/dashboard">Open Dashboard</RouterLink>
      <RouterLink class="button" to="/developer">Developer Console</RouterLink>
    </div>
    <div class="grid">
      <article v-for="card in cards" :key="card.title" class="card">
        <div class="icon">{{ card.icon }}</div>
        <h2>{{ card.title }}</h2>
        <p>{{ card.text }}</p>
      </article>
    </div>
  </section>
</template>

<script setup lang="ts">
import { RouterLink } from "vue-router";
const cards = [
  { icon: "🤖", title: "AI", text: "LMLM, GPT and ecosystem-native AI providers." },
  { icon: "🪪", title: "Web4 ID", text: "Portable identity and trusted application presence." },
  { icon: "⛓️", title: "Wallet", text: "A foundation for Fadaka and Web4 transactions." },
  { icon: "☁️", title: "Cloud", text: "Files, synchronization and application state." },
];
</script>

<style scoped>
.page { display: grid; gap: 26px; }
.eyebrow { color: #8fa4ff; letter-spacing: .18em; font-size: .76rem; font-weight: 800; }
h1 { font-size: clamp(2.5rem, 7vw, 5.5rem); line-height: .98; margin: 0; max-width: 850px; }
h1 span { background: linear-gradient(90deg, #8b7cff, #00d4ff); -webkit-background-clip: text; color: transparent; }
.lead { color: #aeb6cc; max-width: 720px; font-size: 1.12rem; line-height: 1.7; }
.actions { display: flex; gap: 12px; flex-wrap: wrap; }
.button { border: 1px solid rgba(255,255,255,.14); padding: 12px 16px; border-radius: 12px; background: rgba(255,255,255,.05); }
.button.primary { background: linear-gradient(135deg, #6d5dfc, #00a8d8); border: 0; }
.grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(210px, 1fr)); gap: 14px; margin-top: 14px; }
.card { padding: 22px; border: 1px solid rgba(255,255,255,.1); border-radius: 18px; background: rgba(255,255,255,.045); }
.icon { font-size: 1.7rem; } h2 { margin: 12px 0 8px; } .card p { color: #969fb6; line-height: 1.55; }
</style>
""",
"src/views/Dashboard.vue": """<template>
  <section class="page">
    <h1>Dashboard</h1>
    <p>Web4Hub runtime overview.</p>
    <div class="stats">
      <div v-for="stat in stats" :key="stat.label" class="stat"><strong>{{ stat.value }}</strong><span>{{ stat.label }}</span></div>
    </div>
  </section>
</template>
<script setup lang="ts">
const stats = [
  { value: "Online", label: "Runtime" },
  { value: "CUE", label: "Configuration" },
  { value: "Vue 3", label: "Frontend" },
  { value: "Web4", label: "Protocol layer" },
];
</script>
<style scoped>
.page { display: grid; gap: 16px; } h1 { margin: 0; font-size: 2.5rem; } p { color: #9da6bd; }
.stats { display: grid; grid-template-columns: repeat(auto-fit,minmax(180px,1fr)); gap: 14px; }
.stat { padding: 24px; border: 1px solid rgba(255,255,255,.1); border-radius: 18px; background: rgba(255,255,255,.045); }
.stat strong { display: block; font-size: 1.5rem; } .stat span { color: #9099b0; }
</style>
""",
"src/views/AI.vue": """<template>
  <section class="page">
    <h1>AI</h1>
    <p>Unified AI provider surface for Web4Hub.</p>
    <div class="grid">
      <div v-for="provider in providers" :key="provider.name" class="card">
        <strong>{{ provider.name }}</strong><span>{{ provider.status }}</span><p>{{ provider.description }}</p>
      </div>
    </div>
  </section>
</template>
<script setup lang="ts">
const providers = [
  { name: "LMLM", status: "Native", description: "Local and ecosystem-native language model interface." },
  { name: "GPT", status: "Provider", description: "OpenAI-compatible model integration boundary." },
  { name: "KIBS", status: "Native", description: "Aura ecosystem intelligence and knowledge services." },
];
</script>
<style scoped>
.page { display:grid; gap:14px; } h1 { margin:0; font-size:2.5rem; } p { color:#9da6bd; }
.grid { display:grid; grid-template-columns:repeat(auto-fit,minmax(230px,1fr)); gap:14px; }
.card { padding:24px; border:1px solid rgba(255,255,255,.1); border-radius:18px; background:rgba(255,255,255,.045); }
.card strong { display:block; font-size:1.2rem; } .card span { color:#7dd3fc; font-size:.8rem; } .card p { line-height:1.55; }
</style>
""",
"src/views/Wallet.vue": """<template>
  <section class="page">
    <h1>Wallet</h1>
    <p>Wallet integration boundary for Web4 and Fadaka services.</p>
    <div class="card"><span>Status</span><strong>Not connected</strong><button type="button" @click="connect">Connect wallet</button></div>
  </section>
</template>
<script setup lang="ts">
const connect = () => window.alert("Wallet connector is ready for integration.");
</script>
<style scoped>
.page{display:grid;gap:14px}h1{margin:0;font-size:2.5rem}p{color:#9da6bd}.card{padding:26px;border:1px solid rgba(255,255,255,.1);border-radius:18px;background:rgba(255,255,255,.045);display:grid;gap:10px;max-width:520px}.card span{color:#929bb1}.card strong{font-size:1.5rem}button{width:max-content;border:0;border-radius:10px;padding:10px 14px;background:#6d5dfc;color:white}
</style>
""",
"src/views/Cloud.vue": """<template>
  <section class="page"><h1>Cloud</h1><p>Files, synchronization and application state.</p><div class="card">☁️ Web4 Cloud storage integration point.</div></section>
</template>
<style scoped>.page{display:grid;gap:14px}h1{margin:0;font-size:2.5rem}p{color:#9da6bd}.card{padding:26px;border:1px solid rgba(255,255,255,.1);border-radius:18px;background:rgba(255,255,255,.045)}</style>
""",
"src/views/Identity.vue": """<template>
  <section class="page"><h1>Web4 ID</h1><p>Identity and trust boundary.</p><div class="card"><strong>Identity state</strong><span>Ready for local verification and server-side proof exchange.</span></div></section>
</template>
<style scoped>.page{display:grid;gap:14px}h1{margin:0;font-size:2.5rem}p{color:#9da6bd}.card{padding:26px;border:1px solid rgba(255,255,255,.1);border-radius:18px;background:rgba(255,255,255,.045);display:grid;gap:8px}.card span{color:#9da6bd}</style>
""",
"src/views/Developer.vue": """<template>
  <section class="page"><h1>Developer</h1><p>Build and inspect Web4Hub applications from a CUE-first specification.</p><pre>{{ commands }}</pre></section>
</template>
<script setup lang="ts">
const commands = `cue fmt ./...
cue vet ./...
npm run check
npm run build`;
</script>
<style scoped>.page{display:grid;gap:14px}h1{margin:0;font-size:2.5rem}p{color:#9da6bd}pre{padding:20px;overflow:auto;border-radius:16px;background:#050714;border:1px solid rgba(255,255,255,.1);line-height:1.7}</style>
""",
"src/views/Settings.vue": """<template>
  <section class="page"><h1>Settings</h1><p>Runtime preferences and ecosystem configuration.</p><div class="card"><label><input v-model="telemetry" type="checkbox"> Enable local development telemetry</label><span>Current: {{ telemetry ? "enabled" : "disabled" }}</span></div></section>
</template>
<script setup lang="ts">
import { ref } from "vue";
const telemetry = ref(false);
</script>
<style scoped>.page{display:grid;gap:14px}h1{margin:0;font-size:2.5rem}p{color:#9da6bd}.card{padding:26px;border:1px solid rgba(255,255,255,.1);border-radius:18px;background:rgba(255,255,255,.045);display:grid;gap:12px}.card span{color:#9da6bd}input{margin-right:8px}</style>
""",
"src/views/NotFound.vue": """<template>
  <section class="page"><h1>404</h1><p>The requested Web4Hub route does not exist.</p><RouterLink to="/">Return home →</RouterLink></section>
</template>
<script setup lang="ts">
import { RouterLink } from "vue-router";
</script>
<style scoped>.page{display:grid;gap:14px;place-items:start}h1{margin:0;font-size:5rem}.page p{color:#9da6bd}.page a{color:#8b7cff}</style>
""",
"README.md": """# Web4Hub App

CUE-first Vue 3 + Vite application runtime for the Aura Ecosystem.

## Run

```bash
npm install
npm run check
npm run build
npm run dev
