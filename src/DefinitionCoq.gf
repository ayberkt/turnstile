concrete DefinitionCoq of Definition = open Prelude in {
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
      s = (B.$0 ++ ":=" ++ B.s)
    };

    TrivialConstructor name Id = {
      s = name.s ++ ":" ++ Id.s
    };

    Empty = { s = "" };
    Cons t cs = { s = ("|" ++ t.s ++ cs.s) };

    TypeDeclaration d = { s = "Inductive" ++ d.s ++ "."};
}
