tidy:
	go mod tidy

codegen_fiber:
	oapi-codegen \
	-generate fiber,types,strict-server,spec \
	-package api -o fiber_gen_handlers.go openapi/api.yaml	

codegen_without_fiber:
	oapi-codegen \
	-generate "types,server" \
	-package api -o gen_handlers.go openapi/api.yaml
