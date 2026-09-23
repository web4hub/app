package frontend

Frameworks: "vue3" | "react" | "solid" | "svelte"

Config: {
    framework: *"vue3" | Frameworks

    bundler: *"vite" | "webpack"

    typescript: *true | bool

    router: *true | bool

    theme: {
        darkMode: *true
        glassmorphism: *true
        accent: *"#7C3AED" | string
    }

    pwa: *false | bool
}
