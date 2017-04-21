concrete MathEng of Math = {
  flags
    lexer = lextext;
    unlexer = unlextext;

  param Mode = Colloq | Formal;

  lincat
    Annotation, Declaration, CaseList, TypList, TypeDefinition = { s : Str };
    Declaration = { s : Str };
    Case = { s : Str };
    Arg = { s : Str };

    Exp  = { s : Str };

  lindef
    Id = \x -> { s = x};

  lin

    SeqFunDeclaration B =
      ss ("Function definition." ++ B.$0 ++ "is defined as" ++ B.s);

    SeqTypeDeclaration B =
      ss ("The type" ++ B.$0 ++ "is defined as follows:\n" ++ B.s);

    PairExp e dec = ss (e.s ++ ";\n\n" ++ dec.s);

    PairInductive e dec = ss (e.s ++ ";\n" ++ dec.s);

    EmptyDeclaration = ss "";

   -----------------------------------------------------------------------------
   -- TYPE DEFINITIONS
   -----------------------------------------------------------------------------

    Inductive typName cs =
      ss cs.s;

    TrivialConstructor name id = { s = name.s ++ "is a" ++ id.s };

    OneArgumentConstructor id1 id2 B = {
      s = "given a" ++ B.$0 ++ "of type" ++ id1.s ++ B.s ++ "is a" ++ id2.s
    };

   -----------------------------------------------------------------------------
   -- FUNCTION DEFINITIONS
   -----------------------------------------------------------------------------

    TypApp a b = { s = a.s ++ "applied to" ++ b.s };

    Empty = { s = "" };
    Cons t cs = { s = ("\n-" ++ t.s ++ cs.s) };

    OneArgFunDef B = ss ("a function that maps" ++ B.$0 ++ "to" ++ B.s);

    TwoArgFunDef B = {
      s = "a function that takes" ++ B.$1 ++ "and" ++ B.$0 ++ "returns" ++ B.s;
    };

    TwoCasePatMatch e c1 e1 c2 e2 = mkPatMatch e.s c1.s e1.s c2.s e2.s Colloq;

    FreeConstructor s = ss s.s;

    AnArg = ss "x1";

    Var x = { s = x.s };

    FunName x = ss x.s;

    App f x = ss (f.s ++ "applied to" ++ x.s);

  oper ss : Str -> { s : Str } = \x -> { s = x};

  oper mkPatMatch : Str -> Str -> Str -> Str -> Str -> Mode -> { s : Str } =
    \e -> \c1 -> \e1 -> \c2 -> \e2 -> \m ->
      case m of {
        Colloq =>
          ss (e1 ++ "if" ++ e ++ "is" ++ c1 ++ ", and otherwise"
              ++ e2 ++ "if it is" ++ c2);
        Formal => ss "todo"
      };
}
