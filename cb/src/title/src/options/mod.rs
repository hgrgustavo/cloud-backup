use owo_colors::OwoColorize;

pub fn print() {
    const KEY_OPTIONS: [char; 2] = ['c', 'j'];
    println!("\t{} cloud providers", KEY_OPTIONS[0].blue());
    println!("\t{} jobs (crontab)\n", KEY_OPTIONS[1].blue());
}
