.PHONY: test
test:
	go test -v -cover ./src/...

.PHONY: build
build: 
	GOOS=linux go build -o bin/linux/hello-ci src/cmd/main.go
	GOOS=darwin go build -o bin/darwin/hello-ci src/cmd/main.go

.PHONY: clean
clean:
	rm -r ./bin

.PHONY: run
run:
	go run ./src/cmd/main.go

