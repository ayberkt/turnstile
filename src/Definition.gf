abstract Definition = {
  flags startcat = Declaration;

  cat Typ; CaseList; Annotation; Declaration; TypList; Case; Definition; Id;
  cat Declaration;

  fun
    Unit       : Typ;
    Nat        : Typ;

    TypListEmpty : TypList;
    TypListLeaf  : Typ -> TypList;
    TypListCons  : Typ -> TypList -> TypList;

    TypApp : Id -> Id -> Typ;

    TrivialConstructor : String -> Id -> Case;
    OneArgumentConstructor : Id -> Id -> (Id -> Id -> Typ) -> Case;

    Inductive  : (Id -> CaseList) -> Definition;
    Empty      : CaseList;
    Cons       : Case -> CaseList -> CaseList;
    TypeDeclaration : Definition -> Declaration;
}
