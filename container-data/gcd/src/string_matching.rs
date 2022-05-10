	pub fn find_match(substring: &str, string: &str) -> bool{
		let mut contains = false;
		let mut index = 0;
		let mut substring_index = 0;
		while{
			index < string.len()
		}{
			if string.chars().nth(index).unwrap() == substring.chars().nth(substring_index).unwrap(){
				if substring_index == (substring.len() - 1){
					return true;
				}else{
					substring_index += 1;
				}
			}else{
				substring_index = 0;
			}
			index += 1;
		}
		return false;
	}

pub fn find_match_string(substring: &String, string: &String) -> bool{
        let mut contains = false;
        let mut index = 0;
        let mut substring_index = 0;
        while{
            index < string.chars().count()
        }{
            if string.chars().nth(index).unwrap() == substring.chars().nth(substring_index).unwrap(){
                if substring_index == (substring.chars().count() - 1){
                    return true;
                }else{
                    substring_index += 1;
                }
            }else{
                substring_index = 0;
            }
            index += 1;
        }
        return false;
    }