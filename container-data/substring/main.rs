#![no_std]
#![no_main]
use klee_sys::klee_make_symbolic;
use panic_klee as _;
mod string_matching;


fn truncate(s: &str, max_chars: usize) -> &str {
    match s.char_indices().nth(max_chars) {
        None => s,
        Some((idx, _)) => &s[..idx],
    }
}

fn string_test(s :&str, ss :&str){
    let result = string_matching::find_match_bad(ss, s);
    let internal_result = false;
}

#[no_mangle]
fn main() {

    let mut target_string = "string";
    let mut target_substring = "str";
    klee_make_symbolic!(&mut target_string, "target_string");
    klee_make_symbolic!(&mut target_substring, "target_substring");
    // let target_string = truncate(target_string, 5);
    // let target_substring = truncate(target_substring, 5);
    if target_string.len() < 4{
        
        if target_substring.len() < 4{
            string_test(target_string, target_substring);
        }
    }


    
}
