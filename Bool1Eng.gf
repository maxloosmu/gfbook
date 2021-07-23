concrete Bool1Eng of Bool1 = {
  lincat
    Sentence = Str ;
    Bools = {s : Bool => Bool => Str} ;
  lin
    Pred boolean = "this is" ++
      boolean.s ! (True|False) !
      (True|False) ;
    ConjTr = {s = table {True => True => "true"}} ;
    ConjFa = {s = table {True => False => "false" ;
      False => True => "false" ;
      False => False => "false" }} ;
  param Bool = True | False ;
}
