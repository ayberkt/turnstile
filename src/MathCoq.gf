concrete MathCoq of Math = {
  flags
    lexer = lexcode;
    unlexer = unlexcode;
  lincat
    Annotation, Declaration, CaseList, TypList, TypeDefinition = { s : Str };
    Declaration = { s : Str };
    Case = { s : Str };
    Arg = { s : Str };

    Exp  = { s : Str };

  lindef
    Id = \x -> { s = x};

  lin

    SeqFunDeclaration B = ss ("Definition" ++ B.$0 ++ ":=" ++ B.s);

    SeqTypeDeclaration B = ss ("Inductive" ++ B.$0 ++ ":=" ++ B.s);

    PairExp e dec = ss (e.s ++ ".\n\n" ++ dec.s);

    PairInductive e dec = ss (e.s ++ ".\n\n" ++ dec.s);

    EmptyDeclaration = ss "";

    Inductive typName cs = ss cs.s;

    TrivialConstructor name Id = ss (name.s ++ ":" ++ Id.s);

    OneArgumentConstructor id1 id2 B = {
      s = B.$1 ++ ":" ++ id1.s ++ "->" ++ id2.s
    };

    TypApp a b = ss (a.s ++ b.s);

    Empty = ss "";
    Cons t cs = ss ("|" ++ t.s ++ cs.s);

    OneArgFunDef B = ss ("fun" ++ B.$0 ++ "=>" ++ B.s);

    TwoArgFunDef B = ss ("fun" ++ B.$1 ++ B.$0 ++ "=>" ++ B.s);

    TwoCasePatMatch e c1 e1 c2 e2 = {
      s = "match" ++ e.s ++ "with" ++
          "|" ++ c1.s ++ "=>" ++ e1.s ++
          "|" ++ c2.s ++ "=>" ++ e2.s ++
          "end"
    };

    FreeConstructor s = ss s.s;

    AnArg = ss "x1";

    Var x = { s = x.s };

    FunName x = ss x.s;

    App f x = ss ("(" ++ f.s ++ x.s ++ ")");

  oper ss : Str -> { s : Str } = \x -> { s = x};
}
