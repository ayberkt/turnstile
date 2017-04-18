concrete MathCoq of Math = {
  lincat
    Annotation, Declaration, CaseList, TypList, TypeDefinition = { s : Str };
    Declaration = { s : Str };
    Case = { s : Str };
    Arg = { s : Str };

    Exp  = { s : Str };

  lindef
    Id = \x -> { s = x};

  lin

    TypeDeclaration typName d =
      ss ("Inductive" ++ typName.s ++  ":=" ++ d.s ++ ".");

    FnDeclaration fnName e  = {
      s = "Definition" ++ fnName.s ++ ":=" ++ e.s ++ ".";
    };

    EmptyDeclaration = ss "";

    SeqDeclaration B d2 = ss (B.s ++ "\n\n" ++ d2.s);

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

    AnArg = ss "x1";

    Var x = { s = x.s };

    App f x = ss ("(" ++ f.s ++ x.s ++ ")");

  oper ss : Str -> { s : Str } = \x -> { s = x};
}
