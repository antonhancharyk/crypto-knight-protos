PROTOC=protoc
COMMON_DIR=./protos/common
HISTORY_DIR=./protos/history

gen:
	$(PROTOC) -I $(COMMON_DIR) --go_out=./gen/go/common --go_opt=paths=source_relative \
	--go-grpc_out=./gen/go/common --go-grpc_opt=paths=source_relative $(COMMON_DIR)/common.proto

	$(PROTOC) -I $(HISTORY_DIR) --go_out=./gen/go/history --go_opt=paths=source_relative \
	--go-grpc_out=./gen/go/history --go-grpc_opt=paths=source_relative $(HISTORY_DIR)/history.proto

.PHONY: gen
