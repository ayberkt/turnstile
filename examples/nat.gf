linearize
  (SeqDeclaration (\nat ->
    (TypeDeclaration nat
      (Inductive nat
        (Cons
          (OneArgumentConstructor nat nat (\Succ -> (\x -> TypApp Succ x)))
            (Cons (TrivialConstructor "zero" nat)
              Empty)))))
      EmptyDeclaration)
