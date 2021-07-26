abstract Hi = {
  flags startcat=Greeting ;
  cat
    Greeting ;
    Recipient ;
  fun
    World,
    Friends,
    Mother,
    Sisters : Recipient ;
    Hello :       -- function
      Recipient   -- argument
      -> Greeting -- result/return type
      ;
    Hello : Recipient -> Greeting ;
}
