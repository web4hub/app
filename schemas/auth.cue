package auth

Config: {
    provider: *"Web4ID" | "OAuth" | "JWT"

    biometric: {
        face: *true
        fingerprint: *true
        iris: *false
    }

    session: {
        expiryHours: *24
        refresh: *true
    }
}
