gen:
	protoc -I ./protos/common --go_out=./gen/go/common --go_opt=paths=source_relative --go-grpc_out=./gen/go/common --go-grpc_opt=paths=source_relative ./protos/common/common.proto

.PHONY: gen


