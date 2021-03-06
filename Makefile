.PHONY: build
build:
	go build -v ./api/v1/

.PHONY: test
test:
	go test -v -run Comment ./api/v1/internal/server/...
	go test -v -run Task ./api/v1/internal/server/...
	go test -v -run Column ./api/v1/internal/server/...
	go test -v -run Project ./api/v1/internal/server/...


.DEFAULT_GOAL := build