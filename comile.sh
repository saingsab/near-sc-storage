// Linux and macOS users can use these commands:
env 'RUSTFLAGS=-C link-arg=-s' 
cargo build --target wasm32-unknown-unknown --release