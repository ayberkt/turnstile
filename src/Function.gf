abstract Function = {
  flags
    lexer   = lexcode;
    unlexer = unlexcode;

  cat Expr; Arg;

  fun
    Var : Arg -> Expr;
    OneArgFunDef : (Arg -> Expr) -> Expr;
    TwoArgFunDef : (Arg -> Arg -> Expr) -> Expr;
    App : Expr -> Expr -> Expr;
    AnArg : Arg;
}
