linearize
  (TypeDefinition
    (Inductive
      (\Nat -> Cons
        (TrivialConstructor "Zero" Nat)
        (Cons
          (OneArgumentConstructor Nat Nat (\Succ -> (\x -> TypApp Succ x))) Empty))))
