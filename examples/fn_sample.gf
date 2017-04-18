linearize
  (SeqDeclaration (\foo ->
    (FnDeclaration foo
        (OneArgFunDef
            (\x ->
                TwoCasePatMatch
                  (App (Var x) (Var x)) (Var x) (Var x) (Var x) (Var x)))))
    (SeqDeclaration (\bool ->
      (TypeDeclaration bool
        (Inductive bool
          (Cons
            (TrivialConstructor "true"  bool)
              (Cons (TrivialConstructor "false" bool)
                Empty)))))
        EmptyDeclaration))
