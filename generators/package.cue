package generators

Package: {
    name: string

    version: string

    scripts: {
        dev: "vite"
        build: "vite build"
        preview: "vite preview"
    }

    dependencies: {
        vue: "^3.6.0"
        "vue-router": "^4.5.0"
    }

    devDependencies: {
        vite: "^8.0.0"
        typescript: "^5.9.0"
    }
}
