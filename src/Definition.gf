abstract Definition = {
  flags startcat = Declaration;

  cat CaseList; Annotation; Declaration; TypList; Case; Id;
  cat Declaration;

  fun

    TypApp : Id -> Id -> Exp;

    TrivialConstructor : String -> Id -> Case;
    OneArgumentConstructor : Id -> Id -> (Id -> Id -> Exp) -> Case;

    Inductive  : (Id -> CaseList) -> Definition;
    Empty      : CaseList;
    Cons       : Case -> CaseList -> CaseList;
    TypeDeclaration : Definition -> Declaration;
}
