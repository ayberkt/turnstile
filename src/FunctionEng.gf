concrete FunctionEng of Function = {

  lincat
    Exp = { s : Str};

  lin
    OneArgFunDef B = {
      s = "a function that maps" ++ B.$0 ++ "to" ++ B.s;
    };

    TwoArgFunDef B = {
      s = "a function that takes" ++ B.$1 ++ "and" ++ B.$0 ++ "returns" ++ B.s;
    };

    TwoCasePatMatch e c1 e1 c2 e2 = {
      s = e1.s ++ "if" ++ e.s ++ "has the form" ++ e1.s ++
          "and" ++ e2.s ++ "if it has the form" ++ c2.s
    };

    AnArg = { s = "x1" };

    Var x = { s = x.s };

    App f x = {
      s = "(" ++ f.s ++ x.s ++ ")";
    };
}
