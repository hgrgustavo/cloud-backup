use figlet_rs::FIGfont;
pub mod gradient;

pub fn print() {
    let font = FIGfont::from_file(&format!(
        "{}/fonts/DOS_Rebel.flf",
        env!("CARGO_MANIFEST_DIR")
    ))
    .unwrap();

    let figure = font
        .convert(" > Cloud::Backup_")
        .expect("Could not convert font to a string.")
        .to_string();
    gradient::apply(&figure);
}
