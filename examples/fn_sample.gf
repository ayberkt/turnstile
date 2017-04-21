linearize
  (SeqFunDeclaration
      (\foo -> (PairExp (OneArgFunDef (\x -> (Var x)))
      (SeqFunDeclaration
        (\bar -> (PairExp (OneArgFunDef (\y -> App (FunName bar) (Var y)))
          (SeqFunDeclaration
            (\baz ->
              (PairExp
                (OneArgFunDef (\z -> App (FunName bar) (Var z)))
                (SeqTypeDeclaration
                  (\bool ->
                    (PairInductive
                      (Inductive bool
                        (Cons (TrivialConstructor "true" bool) Empty))
                        EmptyDeclaration))))))))))))
