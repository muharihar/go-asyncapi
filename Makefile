gen-2.0.0:
	cd resources/schema/ && json-cli gen-go asyncapi-2.0.0.json --output ../../spec-2.0.0/entities.go --package-name spec --root-name AsyncAPI
	gofmt -w ./spec-2.0.0/entities.go

gen-1.2.0:
	json-cli gen-go resources/schema/asyncapi.json --output ./spec/entities.go --package-name spec --root-name AsyncAPI
	gofmt -w ./spec/entities.go

