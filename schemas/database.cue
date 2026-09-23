package database

Config: {
    provider: *"postgres"

    url: string

    migrations: *true

    backup: {
        enabled: *true
        every: *"24h"
    }
}
