pub fn gcd(nums: &[usize]) -> usize {
    if nums.len() == 1 {
        return nums[0];
    }
    let a = nums[0];
    let b = gcd(&nums[1..]);
    gcd_of_two_numbers(a, b)
}

fn gcd_of_two_numbers(a: usize, b: usize) -> usize {
    if b == 0 {
        return a;
    }
    gcd_of_two_numbers(b, a % b)
}

pub fn gcd_wrong(nums: &[usize]) -> usize {
    if nums.len() == 1 {
        return nums[0];
    }
    let a = nums[0];
    let b = nums[1];
    gcd_of_two_numbers(a, b)
}

// pub fn gcd_panic(nums: &[usize]) -> usize {
//     if nums.len() == 1 {
//         return nums[0];
//     }

//     let a = nums[0];   
//     let b = &nums[1..];
//     gcd_of_two_numbers(a, b)
// }