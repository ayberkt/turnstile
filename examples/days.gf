linearize
  (TypeDefinition
      (Inductive (\day ->
          Cons (TrivialConstructor "monday" day)
           (Cons (TrivialConstructor "tuesday" day)
              (Cons (TrivialConstructor "wednesday" day)
                (Cons (TrivialConstructor "thursday" day)
                  (Cons (TrivialConstructor "friday" day)
                    (Cons (TrivialConstructor "saturday" day)
                      (Cons (TrivialConstructor "sunday" day)
                      Empty)))))))))
