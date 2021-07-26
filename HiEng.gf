concrete HiEng of Hi = {
  lincat
    Greeting = Str ; -- start category, final, not open
    Recipient = LinRecipient ;
  param
    Number = Sg | Pl ;
    Gender = F | M ;
    Agr = Ag Number Gender ;
    -- Agr2 = Ag2 {n : Number; g : Gender} ;
  lin
    World = mkRecipient "msgworld" Sg M ;
    Friends = mkRecipient "mplfriends" Pl M ;
    Hello rec = case rec.a of {
      Ag Sg _ => "sghello" ++ rec.s ;
      Ag Pl _ => "plhello" ++ rec.s
    } ;
  oper
    LinRecipient : Type = {s : Str ; a : Agr} ;
    mkRecipient : Str -> Number -> Gender ->
      LinRecipient ;
    mkRecipient str num gen =
      {s=str ; a = Ag num gen} ;
}

