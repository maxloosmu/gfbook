abstract Bool3 = {
  flags startcat = Sentence ;
  cat
    Sentence ; BinLogic ;
  fun
    Conj, Disj :
      BinLogic -> BinLogic -> Sentence ;
}
