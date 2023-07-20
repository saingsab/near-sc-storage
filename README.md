### Basic Key Value Smart Contract Written in Rust.
### TEST

```
cargo test -- --nocapture
```

### Compiling The Contract

```env 'RUSTFLAGS=-C link-arg=-s' 
cargo build --target wasm32-unknown-unknown --release
```

### Deploy 
Make sure to login with ```near login``` first from near cli

Create sub account for smart contract account.
```
near create-account CONTRACT_NAME.ACCOUNT_ID --masterAcount ACCOUNT_ID --initialBalance 10
```
Start deploy
```
near deploy --wasmFile target/wasm32-unknown-unknown/release/key_value_storage.wasm --accountId CONTRACT_ID
```

### Interacting with the contract

```
near call CONTRACT_ID create_update '{"k": "first_key", "v" : "1"}' --accountId ACCOUNT_ID
```

```
near view CONTRACT_ID read '{"k": "first_key"}' --accountId ACCOUNT_ID
```

### Delete key contract 
Delete key contract to make it's more decentralized

```
near call CONTRACT_ID delete '{"k": "first_key"}' --accountId ACCOUNT_ID
```