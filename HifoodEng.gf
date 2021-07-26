concrete HifoodEng of Hifood = {
  lincat
    Comment,
    Quality = {s : Str} ;
    Item = {s : Str ; n : Number} ;
    Kind = {s : Number => Str} ;
  param
    Number = Sg | Pl ;
  lin
    Pred item qual = {
      s = case item.n of {
        Sg => item.s ++ "is" ++ qual.s ;
        Pl => item.s ++ "are" ++ qual.s
      }
    };
    -- : Kind -> Item
    This kind = {
      s = "this" ++ kind.s ! Sg ;
      n = Sg
    } ;
    Those kind = {
      s = "those" ++ kind.s ! Pl ;
      n = Pl
    } ;
    -- : Quality -> Kind -> Kind
    Mod qual kind = {
      -- s = table {n => qual.s ++ kind.s ! n}
      s = \\n => qual.s ++ kind.s ! n
    } ;
    Fresh = {s = "fresh"} ; -- Quality
    Warm = {s = "warm"} ;   -- Quality
    Wine = {s = table {     -- Kind
      Sg => "wine" ;
      Pl => "wines"
    }} ;
}


