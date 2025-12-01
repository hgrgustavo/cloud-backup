use owo_colors::OwoColorize;

fn print() {
    const KEY_OPTIONS: [char; 4] = ['C', 'J', 'A', 'R'];
    println!("\t{} Cloud Providers\n", KEY_OPTIONS[0].blue());
    println!("\t{} Active Jobs\n", KEY_OPTIONS[1].blue());
    println!("\t{} Switch Cloud Adapter\n", KEY_OPTIONS[2].blue());
    println!("\t{} Manage Backup Roots\n", KEY_OPTIONS[3].blue());
}
