// TODO: please define the Pizza custom type

pub type Pizza {
  Margherita
  Caprese
  Formaggio
  ExtraSauce(Pizza)
  ExtraToppings(Pizza)
}

pub fn pizza_price(pizza: Pizza) -> Int {
  case pizza {
    Margherita -> 7
    Caprese -> 9
    Formaggio -> 10
    ExtraSauce(x) -> 1 + pizza_price(x)
    ExtraToppings(x) -> 2 + pizza_price(x)
  }
}

pub fn order_price(order: List(Pizza)) -> Int {
  count_price(order, 0) + additional_charge(order)
}

fn count_price (order: List(Pizza), accumulator: Int) -> Int{
case order {
    [] -> accumulator
    [x] -> pizza_price(x) + accumulator
    [x, ..rest] -> {
      let accumulator = accumulator + pizza_price(x)
      count_price(rest, accumulator)
    }
  }
}

pub fn additional_charge(order: List(Pizza)) -> Int {
case order {
[_] -> 3
[_, _] -> 2
_ -> 0
}
}