use menu;
use menu::input;

fn main() {
    menu::print();
    let choice = menu::input::capture_choice();
}
