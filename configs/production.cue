package config

import "../template"

app: template.App & {
    database: url: "postgres://prod-db/web4"

    ai: endpoint: "https://api.lmlm.ai"

    blockchain: rpc: "https://rpc.fadaka.network"
}
