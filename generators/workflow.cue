package workflow

GitHubAction: """
name: Web4 CI

on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v6

      - uses: oven-sh/setup-bun@v2

      - run: bun install
      - run: bun run build
"""
