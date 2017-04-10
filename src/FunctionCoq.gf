concrete FunctionCoq of Function = {
  flags
    startcat = Expr;

  lincat
    Expr = { s : Str};

  lin
    OneArgFunDef B = {
      s = "fun" ++ B.$0 ++ "=>" ++ B.s;
    };

    TwoArgFunDef B = {
      s = "fun" ++ B.$1 ++ B.$0 ++ "=>" ++ B.s;
    };

    AnArg = { s = "x1" };

    Var x = { s = x.s };

    App f x = {
      s = "(" ++ f.s ++ x.s ++ ")";
    };
}
