concrete FunctionCoq of Function = {
  flags
    startcat = Exp;

  lincat
    Exp = { s : Str};

  lin
    OneArgFunDef B = {
      s = "fun" ++ B.$0 ++ "=>" ++ B.s;
    };

    TwoArgFunDef B = {
      s = "fun" ++ B.$1 ++ B.$0 ++ "=>" ++ B.s;
    };

    TwoCasePatMatch e c1 e1 c2 e2 = {
      s = "match" ++ e.s ++ "with" ++
          "|" ++ c1.s ++ "=>" ++ e1.s ++
          "|" ++ c2.s ++ "=>" ++ e2.s ++
          "end"
    };

    AnArg = { s = "x1" };

    Var x = { s = x.s };

    App f x = {
      s = "(" ++ f.s ++ x.s ++ ")";
    };
}
