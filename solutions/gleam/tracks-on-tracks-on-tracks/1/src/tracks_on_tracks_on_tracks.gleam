import gleam/string
import gleam/list


pub fn new_list() -> List(String) {
  let empty = []
}

pub fn existing_list() -> List(String) {
  let languages = ["Gleam", "Go", "TypeScript"]
}

pub fn add_language(languages: List(String), language: String) -> List(String) {
  let languages = [language, ..languages]
}

pub fn count_languages(languages: List(String)) -> Int {
  let length = list.length(languages)
}

pub fn reverse_list(languages: List(String)) -> List(String) {
  let back = list.reverse(languages)
}

pub fn exciting_list(languages: List(String)) -> Bool {
  case languages {
    ["Gleam", ..] -> True
    [_, "Gleam", _] | [_,"Gleam"] -> True
    _ -> False
  }
}
