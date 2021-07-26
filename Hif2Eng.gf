concrete Hif2Eng of Hif2 = {
  lincat
    Comment,
    Quality = {
      s : Str ;
      pq : PQual
    } ;
    Item = {s : Str ; n : Number} ; -- inherent Number
    Kind = {s : Number => Str ;
      hasFresh, HasWarm : Bool
    } ;    -- variable Number
  param
    Number = Sg | Pl ;
    Bool = True | False ;
    PQual = PFresh | PWarm ;
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
    Mod qual kind = case qual.pq of {
      PFresh => case kind.hasFresh of {
        True => kind ** {
          s = \\n => kind.s ! n
        } ;
        False => kind ** {
          s = \\n => qual.s ++ kind.s ! n ;
          hasFresh = True
        }
      } ;
      PWarm => case kind.hasWarm of {
        True => kind ** {
          s = \\n => kind.s ! n
        } ;
        False => kind ** {
          s = \\n => qual.s ++ kind.s ! n ;
          hasWarm = True
        }
      }
    } ;
    Fresh = {s = "fresh" ; pq = PFresh} ; -- Quality
    Warm = {s = "warm" ; pq = PWarm} ;   -- Quality
    Wine = {s =
      table {     -- Kind
        Sg => "wine" ;
        Pl => "wines"
      } ;
      hasFresh, hasWarm = False
    } ;
}


