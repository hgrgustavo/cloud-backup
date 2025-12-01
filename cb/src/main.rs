use menu::logo;

fn main() {
    logo::print();

    // TODO: map menu keys
    if let Event::Key(event) = read().unwrap() {
        match event.code {
            KeyCode::Char('c') => println!("Key c pressed."),
            KeyCode::Char('j') => println!("Key j pressed."),
            KeyCode::Char('a') => println!("Key a pressed."),
            KeyCode::Char('r') => println!("Key r pressed."),
            _ => println!("Invalid key pressed."),
        }
    }
}
