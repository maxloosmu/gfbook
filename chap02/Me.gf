abstract Me = {
flags startcat = Comment ;
  cat
    Comment ; Self ; Quality ; Activity ;
  fun
    Pred : Self -> Quality -> Comment ;
    Very : Quality -> Quality ;
    I : Self ;
    Humble, Diligent : Quality ;
--    Work, Study : Activity ;

}