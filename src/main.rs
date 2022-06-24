use std::io::Write;
use std::thread::sleep;
use std::time::Duration;
use std::fs::File;

fn main() -> () {
 let mut i = 0u8;
 loop {
  println!("i: {}", i);
  i = i + 1;

  let mut f: File = match File::options().append(true).open("data.txt") {
    Err(_why) => File::create("data.txt").unwrap(),
    Ok(file) => file,
  };

  f.write(i.to_string().as_bytes() ).unwrap();

  sleep(Duration::from_millis(500));
 }
}
