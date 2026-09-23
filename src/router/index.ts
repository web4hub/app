import {
  createRouter,
  createWebHistory,
  type RouteRecordRaw,
} from "vue-router";

const routes: RouteRecordRaw[] = [
  {
    path: "/",
    name: "home",
    component: () => import("../views/Home.vue"),
  },
  {
    path: "/dashboard",
    name: "dashboard",
    component: () => import("../views/Dashboard.vue"),
  },
  {
    path: "/ai",
    name: "ai",
    component: () => import("../views/AI.vue"),
  },
  {
    path: "/wallet",
    name: "wallet",
    component: () => import("../views/Wallet.vue"),
  },
  {
    path: "/cloud",
    name: "cloud",
    component: () => import("../views/Cloud.vue"),
  },
  {
    path: "/identity",
    name: "identity",
    component: () => import("../views/Identity.vue"),
  },
  {
    path: "/developer",
    name: "developer",
    component: () => import("../views/Developer.vue"),
  },
  {
    path: "/settings",
    name: "settings",
    component: () => import("../views/Settings.vue"),
  },
  {
    path: "/:pathMatch(.*)*",
    name: "not-found",
    component: () => import("../views/NotFound.vue"),
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,

  scrollBehavior(to, _from, savedPosition) {
    if (savedPosition) {
      return savedPosition;
    }

    if (to.hash) {
      return {
        el: to.hash,
        behavior: "smooth",
      };
    }

    return {
      top: 0,
      behavior: "smooth",
    };
  },
});

export default router;
