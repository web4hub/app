package security

Config: {
    helmet: *true

    rateLimit: {
        enabled: *true
        requests: *100
        duration: *"1m"
    }

    csp: *true

    secretsManager: *true
}
