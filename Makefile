fmt:
	gofmt -w .

test:
	gofmt -w . && go test ./...