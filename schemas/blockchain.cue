package blockchain

Config: {
    enabled: *true

    network: *"Fadaka"

    chainId: int

    rpc: string

    wallet: {
        web4id: *true
        walletConnect: *true
    }

    contracts: [...{
        name: string
        address: string
    }]
}
