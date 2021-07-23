concrete Bool2Eng of Bool2 = {
  lincat
    Sentence = Str ;
    Boolean = {s : Quantum => Str } ;
  lin
    PredQ bool =
      "this is" ++ bool.s ! Quant ;
    PredN bool =
      "this is" ++ bool.s ! Norm ;
    True = {s = table {Norm => "true" ;
      Quant => "qutrue"}} ;
    False = {s = table {Norm => "false" ;
      Quant => "qufalse"}} ;
  param Quantum = Norm | Quant ;
}
