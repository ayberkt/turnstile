concrete DefinitionCoq of Definition = open Prelude in {
  flags lexer=codevar ; unlexer=unwords ;

  param TypeRequirement = NoReq | YesReq;

  lincat
    Annotation, Declaration, CaseList, TypList, Definition = { s : Str };
    Declaration, Case = { s : Str };

  lin
    Inductive B = {
      s = (B.$0 ++ ":=" ++ B.s)
    };

    TrivialConstructor name Id = {
      s = name.s ++ ":" ++ Id.s
    };

    OneArgumentConstructor id1 id2 B = {
      s = B.$1 ++ ":" ++ id1.s ++ "->" ++ id2.s
    };

    TypApp a b = { s = a.s ++ b.s };

    Empty = { s = "" };
    Cons t cs = { s = ("|" ++ t.s ++ cs.s) };

    TypeDeclaration d = { s = "Inductive" ++ d.s ++ "."};
}
