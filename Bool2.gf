abstract Bool2 = {
  flags startcat = Sentence ;
  cat
    Sentence ; Boolean ;
  fun
    PredQ, PredN : Boolean -> Sentence ;
    True, False : Boolean ;
}
