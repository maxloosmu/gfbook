concrete Bool1Eng of Bool1 = {
  lincat
    Sentence = Str ;
    Bools = {s : Bool => Bool => Str} ;
  lin
    Pred boolean = "this is" ++
      boolean.s ! (True|False) !
      (True|False) ;
    ConjTr = {s = table {
      True => table {
        True => "true" ;
        False => "false"} ;
      False => table {
        True => "false" ;
        False => "false"}
      }} ;
  param Bool = True | False ;
}
