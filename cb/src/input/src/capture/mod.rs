use std::io::{self, Read};

pub fn capture_choice() -> char {
    let mut buffer = [0; 1];
    io::stdin().read_exact(&mut buffer)
               .unwrap();
    buffer[0] as char
}
