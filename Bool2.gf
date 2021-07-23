abstract Bool2 = {
  flags startcat = Sentence ;
  cat
    Sentence ; Boolean ;
  fun
    Pred : Boolean -> Sentence ;
    PredT, PredF : Boolean -> Sentence ;
    True, False : Boolean ;
    Conj, Disj :
      Boolean -> Boolean -> Boolean ;

}