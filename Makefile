MODULE=github.com/auraecosystem/web4-template

fmt:
	cue fmt ./...

validate:
	cue vet ./...

export:
	cue export configs/dev.cue

docker:
	cue export generators/dockerfile.cue > Dockerfile

workflow:
	cue export generators/workflow.cue > .github/workflows/build.yml

env:
	cue export generators/env.cue > .env
