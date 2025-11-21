use owo_colors::*;

pub fn apply(figure: &str) {
    println!();
    for (i, line) in figure.lines().enumerate() {
        for (j, c) in line.chars().enumerate() {
            let idx = (i + j) as i32;
            let r: u8 = (5 + idx).clamp(0, 255) as u8;
            let g: u8 = (5 + idx).clamp(0, 255) as u8;
            let b: u8 = (5 + idx * 4).clamp(0, 255) as u8;

            // para owo-colors, você pode usar:
            print!("{}", c.to_string().truecolor(r, g, b));
            // ou:
            // print!("{}", c.to_string().fg_rgb(r, g, b));
        }
        println!();
    }
}
