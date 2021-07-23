concrete Bool3Eng of Bool3 = {
  lincat
    Sentence = Str ;
    BinLogic = {t : Binary} ;
  lin
    Tr = {t = True} ;
    Fa = {t = False} ;
    Conj bl1 bl2 = case bl1.t of {
      True => case bl2.t of {
        True => showBin bl1.t ++ "and" ++
          showBin bl2.t ++ "is true" ;
        _ => showBin bl1.t ++ "and" ++
          showBin bl2.t ++ "is false"
      } ;
      _ => showBin bl1.t ++ "and" ++
        showBin bl2.t ++ "is false"
    } ;
    Disj bl1 bl2 = case bl1.t of {
      False => case bl2.t of {
        False => "this is false" ;
        _ => "this is true"
      } ;
      _ => "this is true"
    } ;
  param Binary = True | False ;
  oper
    showBin : Binary -> Str =
      \b -> case b of {
        True => "true" ;
        False => "false"
      } ;
}