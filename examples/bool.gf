linearize (SeqDeclaration (\bool ->
  (TypeDeclaration bool
    (Inductive bool
      (Cons
        (TrivialConstructor "true"  bool)
          (Cons (TrivialConstructor "false" bool)
            Empty)))))
    EmptyDeclaration)
