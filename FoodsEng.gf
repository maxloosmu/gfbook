concrete FoodsEng of Foods = {
  lincat
    Comment, Quality = {s : Str} ;
    Kind = {s : Number => Str} ;
    Item = {s : Str ; n : Number} ;
  lin
    Pred item quality =
      {s = item.s ++ copula ! item.n ++ quality.s} ;
    This  = det Sg "this" ;
    That  = det Sg "that" ;
    These = det Pl "these" ;
    Those = det Pl "those" ;
    Mod quality kind =
      {s = \\n => quality.s ++ kind.s ! n} ;
    Wine = regNoun "wine" ;
    Very a = {s = "very" ++ a.s} ;
    Fresh = adj "fresh" ;
  param
    Number = Sg | Pl ;
  oper
    det : Number -> Str ->
      {s : Number => Str} -> {s : Str ; n : Number} =
        \n,det2,noun2 -> {s = det2 ++ noun2.s ! n ; n = n} ;
    noun : Str -> Str -> {s : Number => Str} =
      \man,men -> {s = table {Sg => man ; Pl => men}} ;
    regNoun : Str -> {s : Number => Str} =
      \car -> noun car (car + "s") ;
    adj : Str -> {s : Str} =
      \cold -> {s = cold} ;
    copula : Number => Str =
      table {Sg => "is" ; Pl => "are"} ;
}
-- oper functions usually starts with extra types, before going back to fun types.  extra types for extra inputs.  eg. det Sg "this", regNoun "wine", etc.
    -- Cheese = regNoun "cheese" ;
    -- Fish = noun "fish" "fish" ;
    -- Pizza = regNoun "pizza" ;

    -- Warm = adj "warm" ;
    -- Italian = adj "Italian" ;
    -- Expensive = adj "expensive" ;
    -- Delicious = adj "delicious" ;
    -- Boring = adj "boring" ;