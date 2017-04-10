abstract Function = Definition ** {
  flags
    lexer   = lexcode;
    unlexer = unlexcode;

  cat Arg;

  fun
    Var : Arg -> Exp;
    OneArgFunDef : (Arg -> Exp) -> Exp;
    TwoArgFunDef : (Arg -> Arg -> Exp) -> Exp;
    TwoCasePatMatch : Exp -> Exp -> Exp -> Exp -> Exp -> Exp;
    App : Exp -> Exp -> Exp;
    AnArg : Arg;
}
