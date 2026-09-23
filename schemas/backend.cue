package backend

Config: {
    runtime: *"bun" | "node" | "deno"

    framework: *"elysia" | "express" | "fastify"

    port: *3000 | int

    cors: *true

    websocket: *true

    grpc: *false
}
