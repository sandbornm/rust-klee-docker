#![no_std]
#![no_main]
use klee_sys::klee_make_symbolic;
use panic_klee as _;
mod gcd;
// mod string_matching;


// fn truncate(s: &str, max_chars: usize) -> &str {
//     match s.char_indices().nth(max_chars) {
//         None => s,
//         Some((idx, _)) => &s[..idx],
//     }
// }

#[no_mangle]
fn main() {

    // let mut target_string = "string1";
    // let mut target_substring = "str";
    // klee_make_symbolic(&mut target_string, "target_string")
    // klee_make_symbolic(&mut target_substring, "target_substring")
    // let target_string = truncate(target_string, 5);
    // let target_substring = truncate(target_substring, 5);
    // let result = string_matching::find_match(target_substring2, target_string2);
    // println!("{:?}",result);
    // let internal_result = target_string2.contains(target_substring2);
    // println!("{:?}",internal_result);
    // assert_eq!(result, internal_result);
    // let mut target_string: [char; 5] = ['h', 'e', 'l', 'l', 'o']; 
    // let mut target_substring: [char; 3] = ['h', 'e', 'l']; 
    // klee_make_symbolic(&mut target_string, "target_string")
    // klee_make_symbolic(&mut target_substring, "target_substring")
    // let target_string: String = target_string.iter().collect();
    // let target_substring: String = target_substring.iter().collect();
    // println!("{:?}",target_string);
    // println!("{:?}",target_substring);
    // let result = string_matching::find_match_string(&target_substring, &target_string);
    // println!("{:?}",result);
    // let internal_result = target_string.contains(&target_substring);
    // println!("{:?}",internal_result);
    // assert_eq!(result, internal_result);

    let mut array: [usize; 3] = [0; 3];
    klee_make_symbolic!(&mut array, "x");
    let correct = gcd::gcd(&array);
    // let incorrect = gcd::gcd_wrong(&array);
    // // let panic = gcd::gcd_panic(&numbers);
    // assert!(correct == incorrect);


}
