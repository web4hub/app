package ai

Config: {
    enabled: *true

    provider: *"LMLM" | "GPT-5-mini" | "KIBS" | "OpenAI"

    endpoint: string

    embeddingModel: string

    models: [...{
        name: string
        context: int
        local: bool
    }]
}
