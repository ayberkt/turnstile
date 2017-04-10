concrete DefinitionAgda of Definition = open Prelude in {
  flags lexer=codevar ; unlexer=unwords ;

  param TypeRequirement = NoReq | YesReq;

  lincat
    Typ, Annotation, Declaration, CaseList, TypList, Definition = { s : Str };
    Declaration, Case = { s : Str };


  lin
    Unit = { s = "unit" };
    Nat = { s = "nat" };

    TypListEmpty = { s = "" };
    TypListLeaf t = { s = t.s };
    TypListCons t ts = { s = (t.s ++ "->" ++ ts.s)};

    Inductive B = {
      s = ("data" ++ B.$0 ++ ":" ++ "Set" ++ "where" ++ B.s)
    };

    TrivialConstructor name Id = {
      s = name.s ++ ":" ++ Id.s
    };

    OneArgumentConstructor id1 id2 B = {
      s = B.$1 ++ ":" ++ id1.s ++ "->" ++ id2.s
    };

    TypApp a b = { s = a.s ++ b.s };

    Empty = { s = "" };
    Cons t cs = { s = ("\n" ++ t.s ++ cs.s) };

    TypeDeclaration d = { s = d.s};
}
