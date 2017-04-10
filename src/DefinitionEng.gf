concrete DefinitionEng of Definition = open Prelude in {
  flags
    startcat = Declaration;
  lincat
    Annotation, Declaration, CaseList, TypList, Definition = { s : Str };
    Declaration =  { s : Str };
    Case = { s : Str };

  lindef Id = \x -> { s = x };

  lin
    Inductive B = {
      s = ("The type" ++ B.$0 ++ "is defined as follows:" ++ B.s)
    };

    TrivialConstructor name id = {
      s = name.s ++ "is a" ++ id.s
    };

    OneArgumentConstructor id1 id2 B = {
      s = "given a" ++ B.$0 ++ "of type" ++ id1.s ++ B.s ++ "is a" ++ id2.s
    };

    TypApp a b = {
      s = a.s ++ "applied to" ++ b.s
    };

    Empty = { s = "" };
    Cons t cs = { s = ("\n-" ++ t.s ++ cs.s) };

    TypeDeclaration d = { s = "Definition." ++ d.s };
}
