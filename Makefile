.PHONY: build
build:
	go build -v ./cmd/apiserver

.PHONY: test
test:
	go test -v -run Comment ./internal/server/...
	go test -v -run Task ./internal/server/...
	go test -v -run Column ./internal/server/...
	go test -v -run Project ./internal/server/...


.DEFAULT_GOAL := build