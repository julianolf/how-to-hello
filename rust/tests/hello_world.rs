#[cfg(test)]
mod tests {
    use std::process::Command;

    #[test]
    fn hello_world() {
        static EXPECTED: &'static str = "Hello, World!\n";

        let output = Command::new("./target/debug/hello_world")
            .output()
            .expect("failed to execute");

        assert_eq!(String::from_utf8_lossy(&output.stdout), EXPECTED);
    }
}
