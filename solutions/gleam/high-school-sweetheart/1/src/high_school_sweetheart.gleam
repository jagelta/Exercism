import gleam/string

pub fn first_letter(name: String) {
  let v = string.trim(name) |> string.first()
  case v {
    Ok(letter) -> letter
    Error(e) -> ""
  }
}

pub fn initial(name: String) -> String {
  first_letter(name) 
  |> string.uppercase() 
  |> string.append(".")
}

pub fn initials(full_name: String) {
  let parts = string.split(full_name,  " ")
  case parts {
  [a, b] -> initial(a) <>" "<>initial(b)
  _ -> ""
  }
}

pub fn pair(full_name1: String, full_name2: String) {
  //      ******       ******
  //    **      **   **      **
  //  **         ** **         **
  // **            *            **
  // **                         **
  // **     X. X.  +  X. X.     **
  //  **                       **
  //    **                   **
  //      **               **
  //        **           **
  //          **       **
  //            **   **
  //              ***
  //               *
  let name1 = initials(full_name1)
  let name2 = initials(full_name2)
  let string = name1 <> "  +  " <> name2
  let output = 
"\n     ******       ******
   **      **   **      **
 **         ** **         **
**            *            **
**                         **
**     "<>string<>"     **
 **                       **
   **                   **
     **               **
       **           **
         **       **
           **   **
             ***
              *\n"
}
