concrete DefinitionEng of Definition = open Prelude in {
  param TypeRequirement = NoReq | YesReq;

  lincat
    Typ, Annotation, Declaration, CaseList, TypList, Definition = { s : Str };
    Declaration =  { s : Str };
    Case = { s : Str };

  lindef Id = \x -> { s = x };

  lin
    Unit        = { s = "unit" };
    Nat         = { s = "nat" };

    TypListEmpty = { s = "" };
    TypListLeaf t = { s = ("a" ++ t.s) };
    TypListCons t ts = { s = ("a" ++ t.s ++ "," ++ ts.s)};

    Inductive B = {
      s = ("The type" ++ B.$0 ++ "is inductively defined as follows:" ++ B.s)
    };

    TrivialConstructor name id = {
      s = name.s ++ "is a" ++ id.s
    };

    Empty = { s = "" };
    Cons t cs = { s = ("-" ++ t.s ++ cs.s) };

    TypeDeclaration d = { s = "Definition." ++ d.s };
}
