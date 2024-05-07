extern crate uniffi;

uniffi::include_scaffolding!("greet");

pub fn greet(name: String) -> String {
    let greeting = format!("Hello, {}!", name);
    greeting
}
