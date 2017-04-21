abstract Math = {

  cat
    Declaration; Name; Exp; TypeDefinition;
    CaseList; Annotation; TypList; Case; Id;
    ExpAndDeclaration; InductiveAndDeclaration;
    Arg;

  fun

    PairExp : Exp  -> Declaration -> ExpAndDeclaration;
    PairInductive : TypeDefinition -> Declaration -> InductiveAndDeclaration;

    SeqFunDeclaration  : (Name -> ExpAndDeclaration) -> Declaration;
    SeqTypeDeclaration : (Name -> InductiveAndDeclaration) -> Declaration;
    EmptyDeclaration : Declaration;

    -- FUNCTIONS

    Var : Arg -> Exp;
    OneArgFunDef : (Arg -> Exp) -> Exp;
    TwoArgFunDef : (Arg -> Arg -> Exp) -> Exp;
    TwoCasePatMatch : Exp -> Exp -> Exp -> Exp -> Exp -> Exp;
    App : Exp -> Exp -> Exp;
    FunName : Name -> Exp;
    FreeConstructor : String -> Exp;
    ConstructorExp : Id -> Exp;
    AnArg : Arg;

    -- Type Definitions

    TypApp : Id -> Id -> Exp;

    TrivialConstructor : String -> Name -> Case;
    OneArgumentConstructor : Name -> Name -> (Id -> Id -> Exp) -> Case;

    Inductive : Name -> CaseList -> TypeDefinition;
    Empty      : CaseList;
    Cons       : Case -> CaseList -> CaseList;
}
