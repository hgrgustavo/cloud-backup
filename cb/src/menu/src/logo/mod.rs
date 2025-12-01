use figlet_rs::FIGfont;

mod gradient;

pub fn print() {
    let font = FIGfont::from_file("./fonts/DOS_Rebel.flf").unwrap();

    let figure = font
        .convert(" > Cloud::Backup_")
        .expect("Could not convert font to a string.")
        .to_string();
    gradient::apply(&figure);
}
