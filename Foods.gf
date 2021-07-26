abstract Foods = {
  flags startcat = Comment ;
  cat
    Comment ; Item ; Kind ; Quality ;
  fun
    Pred : Item -> Quality -> Comment ;
    This, That, These, Those : Kind -> Item ;
    Mod : Quality -> Kind -> Kind ;
    Wine : Kind ;
    -- , Cheese, Fish, Pizza : Kind ;
    Very : Quality -> Quality ;
    Fresh : Quality ;
    -- , Warm, Italian,
      Expensive, Delicious, Boring : Quality ;
}
