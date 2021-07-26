abstract Hif2 = {
  flags startcat = Comment ;
  cat
    Comment ; -- start category
    Item ;
    Kind ;    -- nouns
    Quality ; -- adjectives
  fun
    Pred : Item -> Quality -> Comment ;
    This, That, These, Those : Kind -> Item ;
    Mod : Quality -> Kind -> Kind ;
    Wine : Kind ;
    -- , Cheese, Fish, Pizza : Kind ;
    Very : Quality -> Quality ;
    Fresh, Warm : Quality ;
    -- , Italian,
    -- Expensive, Delicious, Boring : Quality ;
}