concrete Bool2Eng of Bool2 = {
  lincat
    Sentence = Str ;
    Boolean = {s : Quantum => Str} ;
  lin
    PredT bool =
      "this is" ++ bool.s ! Norm ;
    PredF bool =
      "this is" ++ bool.s ! Quant ;
    True = {s = table {Norm => "true" ;
      Quant => "qutrue"}} ;
    False = {s = table {Norm => "false" ;
      Quant => "qufalse"}} ;
    -- Conj bool1 bool2 =
  param Quantum = Norm | Quant ;

}