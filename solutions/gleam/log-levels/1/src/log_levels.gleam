import gleam/string

pub fn message(log_line: String) -> String {
  case log_line{
    "[ERROR]: " <> rest -> rest
    "[WARNING]: " <> rest -> rest
    "[INFO]: " <> rest -> rest
    _ -> "invalid input"
  }
  |> string.trim
}

pub fn log_level(log_line: String) -> String {
  case log_line{
    "[ERROR]:" <> rest -> "error"
    "[WARNING]:" <> rest -> "warning"
    "[INFO]:" <> rest -> "info"
    _ -> "invalid input"
  }
}

pub fn reformat(log_line: String) -> String {
  case log_line{
    "[ERROR]:" <> rest -> string.trim(rest) <> " (error)"
    "[WARNING]:" <> rest -> string.trim(rest) <> " (warning)"
    "[INFO]:" <> rest -> string.trim(rest) <> " (info)"
    _ -> "invalid input"
  }
}
