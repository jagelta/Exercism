import exercism/test_runner.{ debug }
import gleam/list

pub fn today(days: List(Int)) -> Int {
  case days{
    [x, ..] -> x
    _ -> 0
  }
}

pub fn increment_day_count(days: List(Int)) -> List(Int) {
  case days {
    [x, ..rest] -> [x+1, ..rest] 
    [] -> [1]
  }
}

pub fn has_day_without_birds(days: List(Int)) -> Bool {
  case days{
    [] -> False
    [x, ..] if x == 0 -> True
    [x, ..rest] if x != 0 -> has_day_without_birds(rest)
    _ -> False
  }
}

pub fn total(days: List(Int)) -> Int {
  case days {
    [] -> 0
    [x] -> x
    [x, ..rest] -> total(rest) + x
  }
}

pub fn busy_days(days: List(Int)) -> Int {
  case days {
    [] -> 0
    [x, ..rest] if x >= 5 -> busy_days(rest) + 1
    [_, ..rest] -> busy_days(rest)
  }
}
