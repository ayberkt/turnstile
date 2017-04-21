linearize
  (SeqTypeDeclaration
    (\bool ->
      (PairInductive
        (Inductive bool
          (Cons (TrivialConstructor "true" bool)
            (Cons (TrivialConstructor "false" bool)
              Empty)))
        (SeqFunDeclaration
          (\not ->
            (PairExp
              (OneArgFunDef
                (\x -> (TwoCasePatMatch (Var x)
                                        (FreeConstructor "true")
                                        (FreeConstructor "false")
                                        (FreeConstructor "false")
                                        (FreeConstructor "true")))))
        (SeqFunDeclaration
          (\and ->
            (PairExp
              (TwoArgFunDef
                (\x -> \y -> (TwoCasePatMatch
                               (Var x)
                               (FreeConstructor "true")
                               (TwoCasePatMatch
                                  (Var y)
                                  (FreeConstructor "true")
                                  (FreeConstructor "true")
                                  (FreeConstructor "false")
                                  (FreeConstructor "false"))
                               (FreeConstructor "false")
                               (FreeConstructor "false")))))
              EmptyDeclaration)))))))
