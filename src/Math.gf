abstract Math = {

  cat
    Declaration; Name; Exp; Definition;
    CaseList; Annotation; TypList; Case; Id;
    Arg;

  fun

    TypeDeclaration : Definition -> Declaration;

    FnDeclaration  : (Name -> Exp) -> Declaration;
    SeqDeclaration : Declaration -> Declaration -> Declaration;

    -- FUNCTIONS

    Var : Arg -> Exp;
    OneArgFunDef : (Arg -> Exp) -> Exp;
    TwoArgFunDef : (Arg -> Arg -> Exp) -> Exp;
    TwoCasePatMatch : Exp -> Exp -> Exp -> Exp -> Exp -> Exp;
    App : Exp -> Exp -> Exp;
    ConstructorExp : Id -> Exp;
    AnArg : Arg;

    -- Type Definitions

    TypApp : Id -> Id -> Exp;

    TrivialConstructor : String -> Id -> Case;
    OneArgumentConstructor : Id -> Id -> (Id -> Id -> Exp) -> Case;

    Inductive  : (Id -> CaseList) -> Definition;
    Empty      : CaseList;
    Cons       : Case -> CaseList -> CaseList;
}
