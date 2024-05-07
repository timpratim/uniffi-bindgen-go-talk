all: target/x86_64-apple-darwin/debug/libgreet.dylib
	LDLFAGS="-L target/x86_64-apple-darwin/debug" go run main.go

target/x86_64-apple-darwin/debug/libgreet.dylib: src/lib.rs Cargo.toml
	cargo build --target x86_64-apple-darwin

clean:
	rm -rf target
