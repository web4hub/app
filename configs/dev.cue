package config

import "../template"

app: template.App & {
    project: {
        name: "Web4 Dashboard"
        id: "web4-dashboard"
    }

    database: url: "postgres://localhost/web4"

    ai: endpoint: "http://localhost:11434"

    blockchain: rpc: "http://localhost:8545"
}
