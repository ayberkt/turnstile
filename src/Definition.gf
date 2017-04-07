abstract Definition = {
  flags startcat = Declaration;

  cat Typ; CaseList; Annotation; Declaration; TypList; Case; Definition;
  cat Declaration;

  fun
    Unit       : Typ;
    Nat        : Typ;

    TypListEmpty : TypList;
    TypListLeaf : Typ -> TypList;
    TypListCons : Typ -> TypList -> TypList;

    TrivialConstructor : String -> String -> Case;
    OneArgumentConstructor : String -> String -> Typ -> Case;

    Inductive  : String -> CaseList -> Definition;
    Empty      : CaseList;
    Cons       : Case -> CaseList -> CaseList;
    TypeDeclaration : Definition -> Declaration;
}
