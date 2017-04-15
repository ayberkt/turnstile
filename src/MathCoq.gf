concrete MathCoq of Math = {
  lincat
    Annotation, Declaration, CaseList, TypList, Definition = { s : Str };
    Declaration = { s : Str };
    Case = { s : Str };
    Arg = { s : Str };

    Exp  = { s : Str };

  lindef
    Id = \x -> { s = x};

  lin

    TypeDefinition d = ss ("Inductive" ++ d.s);

    FnDefinition B = {
      s = "Definition" ++ B.$0 ++ ":=" ++ B.s;
    };

    Inductive B = ss (B.$0 ++ ":=" ++ B.s);

    TrivialConstructor name Id = ss (name.s ++ ":" ++ Id.s);

    OneArgumentConstructor id1 id2 B = {
      s = "given a" ++ B.$0 ++ "of type" ++ id1.s ++ B.s ++ "is a" ++ id2.s
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

    AnArg = ss "x1";

    Var x = { s = x.s };

    App f x = ss ("(" ++ f.s ++ x.s ++ ")");

  oper ss : Str -> { s : Str } = \x -> { s = x};
}
