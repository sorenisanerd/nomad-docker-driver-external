PLUGIN_BINARY=docker-ext-driver
export GO111MODULE=on

default: build

.PHONY: clean
clean: ## Remove build artifacts
	rm -rf ${PLUGIN_BINARY}

build:
	GOOS=linux GOARCH=amd64 go build -o ${PLUGIN_BINARY} .
