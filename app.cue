package app

app: {
    name:        "Web4Hub"
    id:          "web4hub-app"
    version:     "1.0.0"
    description: "Web4Hub application runtime"

    frontend: {
        framework: "vue"
        version:   "3"
        bundler:   "vite"
        language:  "typescript"

        router: {
            enabled: true
            mode:    "history"
        }
    }

    runtime: {
        environment: *"development" | "production" | "test"
        port:        *5173 | int
    }

    features: {
        ai:         true
        web4ID:     true
        wallet:     true
        cloud:      true
        developer:  true
    }
}
