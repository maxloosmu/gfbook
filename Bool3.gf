abstract Bool3 = {
  flags startcat = Sentence ;
  cat
    Sentence ; BinLogic ;
  fun
    Tr, Fa : BinLogic ;
    Conj, Disj :
      BinLogic -> BinLogic -> Sentence ;
}
