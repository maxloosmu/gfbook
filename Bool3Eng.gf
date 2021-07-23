concrete Bool3Eng of Bool3 = {
  lincat
    Sentence = Str ;
    BinLogic = {t : Binary} ;
  lin
    Conj bl1 bl2 = case bl1.t of {
      True => case bl2.t of {
        True => "this is true" ;
        _ => "this is false"
      } ;
      _ => "this is false"
    } ;
    Disj bl1 bl2 = case bl1.t of {
      False => case bl2.t of {
        False => "this is false" ;
        _ => "this is true"
      } ;
      _ => "this is true"
    } ;
  param Binary = True | False ;
}