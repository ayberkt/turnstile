concrete DefinitionCoq of Definition = open Prelude in {
  flags lexer=codevar ; unlexer=unwords ;

  param TypeRequirement = NoReq | YesReq;

  lincat
    Typ, Annotation, Declaration, CaseList, TypList, Definition = { s : Str };

    Declaration = { s : Str };

    Case = { s : Str ; $0 : Str};

  lin
    Unit = { s = "unit" };
    Nat = { s = "nat" };

    TypListEmpty = { s = "" };
    TypListLeaf t = { s = t.s };
    TypListCons t ts = { s = (t.s ++ "->" ++ ts.s)};

    Inductive x cs = {
      s = (x.s ++ ":=" ++ cs.s)
    };

    TrivialConstructor name tyName = {
      s = name.s ++ ":" ++ tyName.s
    };

    OneArgumentConstructor tyName name ts = {
      s = "given" ++ ts.s ++ "," ++ name.s
    };

    Empty = { s = "" };
    Cons t cs = { s = ("|" ++ t.s ++ cs.s) };

    TypeDeclaration d = { s = "Inductive" ++ d.s ++ "."};
}
