linearize
  (SeqTypeDeclaration
    (\bool ->
      (PairInductive
        (Inductive bool
          (Cons (TrivialConstructor "true" bool)
            (Cons (TrivialConstructor "false" bool)
              Empty)))
        EmptyDeclaration)))
