concrete BoolEng of Bool = {
  lincat
    Sentence = Str ;
    Boolean = {s : Quantum => Str} ;
  lin
    Pred boolean = "this is" ++ boolean ;
    True = {s = table {Norm => "true" ;
      Quant => "qutrue"}} ;
    False = {s = table {Norm => "false" ;
      Quant => "qufalse"}} ;
  param Quantum = Norm | Quant ;

}