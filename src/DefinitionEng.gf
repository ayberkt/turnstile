concrete DefinitionEng of Definition = open Prelude in {
  flags lexer=lextext ; unlexer=unlextext ;

  param TypeRequirement = NoReq | YesReq;

  lincat
    Typ, Annotation, Declaration, CaseList, TypList, Definition = { s : Str };
    Declaration =  { s : Str };
    Case = { s : Str ; $0 : Str };

  lin
    Unit        = { s = "unit" };
    Nat         = { s = "nat" };

    TypListEmpty = { s = "" };
    TypListLeaf t = { s = ("a" ++ t.s) };
    TypListCons t ts = { s = ("a" ++ t.s ++ "," ++ ts.s)};

    Inductive x cs = {
      s = ("The type" ++ x.s ++ "is inductively defined as follows:" ++ cs.s)
    };

    TrivialConstructor name tyName = {
      s = name.s ++ "is a" ++ tyName.s
    };

    OneArgumentConstructor name tyName arg1 ts = {
      s = "TODO"
    };

    Empty = { s = "" };
    Cons t cs = { s = ("-" ++ t.s ++ cs.s) };

    TypeDeclaration d = { s = "Definition." ++ d.s };
}
