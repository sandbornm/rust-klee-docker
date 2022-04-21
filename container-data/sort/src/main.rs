#![no_std]
#![no_main]

use klee_sys::klee_make_symbolic;

use panic_klee as _;

fn bubble_sort<T: Ord>(arr: &mut [T]){
	for i in 0..arr.len(){
		for j in 0..arr.len() - 1 - i{
			if arr[j] > arr[j+1]{
				arr.swap(j, j+1);
			}
		}
	}
}

fn insertion_sort<T: Ord>(arr: &mut [T]){
	for i in 1..arr.len(){
		let mut j = i;
		while j > 0 && arr[j] < arr[j-1] {
			arr.swap(j, j-1);
			j = j-1;
		}
	}
}

fn sort_test(arr: &mut [u8]){
	if arr[0] < 10 && arr[1] < 10 && arr[2] < 10 && arr[3] < 10{
		let mut num_bubble = [0u8; 4];
		num_bubble.copy_from_slice(&arr[0..]);
		let mut num_insert = [0u8; 4];
		num_insert.copy_from_slice(&arr[0..]);
		// println!("Before: {:?}", num_bubble);
		bubble_sort(&mut num_bubble);
		// println!("After: {:?}\n", num_bubble);
		// println!("Before: {:?}", num_insert);
		insertion_sort(&mut num_insert);
		// println!("After: {:?}\n", num_insert);
		// num_insert[5] = 200;

		assert_eq!(num_bubble, num_insert);
	}

}

#[no_mangle]
fn main(){
	// println!("Sort numbers ascending");
	let mut my_test: [u8; 4] = [4, 3, 2, 1];
	klee_make_symbolic!(&mut my_test, "mytest");
	sort_test(&mut my_test);
}


