package web4

import (
    "./schemas/project"
    "./schemas/frontend"
    "./schemas/backend"
    "./schemas/ai"
    "./schemas/blockchain"
    "./schemas/auth"
    "./schemas/storage"
    "./schemas/database"
    "./schemas/security"
    "./schemas/deployment"
)

App: {
    project: project.Config
    frontend: frontend.Config
    backend: backend.Config
    ai: ai.Config
    blockchain: blockchain.Config
    auth: auth.Config
    storage: storage.Config
    database: database.Config
    security: security.Config
    deployment: deployment.Config
}
