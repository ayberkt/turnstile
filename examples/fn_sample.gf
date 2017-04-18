linearize
  (SeqDeclaration (\foo ->
    (FnDeclaration foo (OneArgFunDef (\x -> TwoCasePatMatch (App (Var x) (Var x)) (Var x) (Var x) (Var x) (Var x)))))
    (TypeDeclaration (Inductive (\Bool -> Cons (TrivialConstructor "True" Bool) (Cons (TrivialConstructor "False" Bool) Empty)))))
