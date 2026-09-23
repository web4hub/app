<template>
  <div id="app">
    <!-- Animated Background -->
    <div class="background"></div>

    <!-- Header -->
    <header class="app-header">
      <img src="/logo.png" alt="Web4 Logo" class="logo" />
      <h1>Web4 • Aura Ecosystem</h1>
    </header>

    <!-- Main Router View -->
    <main class="app-main">
      <RouterView />
    </main>

    <!-- Footer -->
    <footer class="app-footer">
      <p>© 2026 Aura Ecosystem • Powered by Web4 + LMLM + Qubuhub</p>
    </footer>
  </div>
</template>

<script setup>
import { RouterView } from "vue-router";
</script>

<style>
:root {
  --bg: #060818;
  --card: rgba(255,255,255,0.05);
  --text: #ffffff;
  --accent: #6d5dfc;
  --accent2: #00d4ff;
}

*{
  margin:0;
  padding:0;
  box-sizing:border-box;
}

body{
  background:var(--bg);
  color:var(--text);
  font-family:Inter, Avenir, Helvetica, Arial, sans-serif;
}

#app{
  min-height:100vh;
  display:flex;
  flex-direction:column;
  position:relative;
  overflow:hidden;
}

.background{
  position:absolute;
  inset:0;
  background:
    radial-gradient(circle at top left,#3b82f620,transparent 40%),
    radial-gradient(circle at bottom right,#00d4ff20,transparent 40%),
    linear-gradient(180deg,#050816,#090b1f);
  animation:move 15s infinite alternate ease-in-out;
  z-index:-1;
}

@keyframes move{
  from{transform:scale(1) translateY(0);}
  to{transform:scale(1.2) translateY(-40px);}
}

.app-header{
  display:flex;
  align-items:center;
  justify-content:center;
  gap:16px;
  padding:24px;
  backdrop-filter:blur(14px);
  background:rgba(255,255,255,.04);
  border-bottom:1px solid rgba(255,255,255,.08);
}

.logo{
  width:60px;
  height:60px;
  border-radius:50%;
  animation:spin 12s linear infinite;
}

@keyframes spin{
  to{transform:rotate(360deg);}
}

.app-header h1{
  font-size:1.8rem;
  background:linear-gradient(90deg,var(--accent),var(--accent2));
  -webkit-background-clip:text;
  -webkit-text-fill-color:transparent;
}

.app-main{
  flex:1;
  display:flex;
  justify-content:center;
  align-items:center;
  padding:32px;
}

.app-footer{
  text-align:center;
  padding:18px;
  font-size:.9rem;
  color:#9ca3af;
  border-top:1px solid rgba(255,255,255,.08);
}
</style>
