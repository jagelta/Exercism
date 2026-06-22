// Please define the TreasureChest generic custom type
pub type TreasureChest(a) {
  TreasureChest(set: String, items: a)
  
}
// Please define the UnlockResult generic custom type
pub type UnlockResult(a) {
  Unlocked(a)
  WrongPassword
}
pub fn get_treasure(
  chest: TreasureChest(treasure),
  password: String,
) -> UnlockResult(treasure) {
  case chest {
    TreasureChest(set: n, ..) if n == password -> Unlocked(chest.items)
    _ -> WrongPassword
  }
}
