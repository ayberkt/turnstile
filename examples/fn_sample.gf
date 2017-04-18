linearize
  (SeqDeclaration
      (\foo -> (Pair (OneArgFunDef (\x -> (Var x)))
      (SeqDeclaration
        (\bar -> (Pair (OneArgFunDef (\y -> App (FunName bar) (Var y)))
          (SeqDeclaration
        (\baz -> (Pair (OneArgFunDef (\z -> App (FunName bar) (Var z)))
          EmptyDeclaration)))))))))
