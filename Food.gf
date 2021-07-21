abstract Food = {
  flags startcat = Comment ;
  cat
    Comment ; Item ; Kind ; Quality ;
  fun
    Pred : Item -> Quality -> Comment ;
    This, That : Kind -> Item ;
    Mod : Quality -> Kind -> Kind ;
    Wine, Fish : Kind ;
    Very : Quality -> Quality ;
    Fresh, Delicious : Quality ;
    With: Kind -> Kind -> Kind ;

}
