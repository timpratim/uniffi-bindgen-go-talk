all: target/aarch64-apple-darwin/debug/libgreet.dylib
	CGO_LDFLAGS='-lrust_greet -L/Users/pratimbhosale/Desktop/uniffi-bindgen-go-talk/target/aarch64-apple-darwin/debug -lm -ldl' CGO_ENABLED=1 go run main.go

target/aarch64-apple-darwin/debug/libgreet.dylib: src/lib.rs Cargo.toml
	cargo build --target aarch64-apple-darwin

clean:
	rm -rf target
