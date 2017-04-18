concrete MathEng of Math = {
  lincat
    Annotation, Declaration, CaseList, TypList, TypeDefinition = { s : Str };
    Declaration = { s : Str };
    Case = { s : Str };
    Arg = { s : Str };

    Exp  = { s : Str };

  lindef
    Id = \x -> { s = x};

  lin

    SeqDeclaration B d2 =
      ss ("Definition." ++ B.$0 ++ B.s ++ ";\n\n" ++ d2.s);

    TypeDeclaration typName d = ss d.s;

    EmptyDeclaration = ss "";

    FnDeclaration fnName e = ss ("is" ++ e.s);

    Inductive typName cs =
      ss ("is a type that is defined as follows:" ++ cs.s);

    TrivialConstructor name id = { s = name.s ++ "is a" ++ id.s };

    OneArgumentConstructor id1 id2 B = {
      s = "given a" ++ B.$0 ++ "of type" ++ id1.s ++ B.s ++ "is a" ++ id2.s
    };

    TypApp a b = { s = a.s ++ "applied to" ++ b.s };

    Empty = { s = "" };
    Cons t cs = { s = ("\n-" ++ t.s ++ cs.s) };

    OneArgFunDef B = ss ("a function that maps" ++ B.$0 ++ "to" ++ B.s);

    TwoArgFunDef B = {
      s = "a function that takes" ++ B.$1 ++ "and" ++ B.$0 ++ "returns" ++ B.s;
    };

    TwoCasePatMatch e c1 e1 c2 e2 = {
      s = e1.s ++ "if" ++ e.s ++ "has the form" ++ e1.s ++
          "and" ++ e2.s ++ "if it has the form" ++ c2.s
    };

    AnArg = ss "x1";

    Var x = { s = x.s };

    App f x = ss ("(" ++ f.s ++ x.s ++ ")");

  oper ss : Str -> { s : Str } = \x -> { s = x};
}
