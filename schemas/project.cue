package project

Config: {
    name: string
    id: string
    version: *"1.0.0" | string

    description: string

    organization: *"web4hub" | string

    author: {
        name: string
        email?: string
        github?: string
    }

    repository: {
        provider: *"github"
        owner: string
        repo: string
        branch: *"main"
    }

    license: *"MIT"
}
