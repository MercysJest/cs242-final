;############################### CORE FUNCTIONS ###############################
(define-fun get_index_int ((index (Item Int)) (vec (Item (Vector Int)))) (Item Int)
  (ite (or (= index (as Crash (Item Int))) (= vec (as Crash (Item (Vector Int))))) 
    (as Crash (Item Int)) 
    (ite (>= (value index) (size (value vec)))
      (as Crash (Item Int))
      (mk-item (select (data (value vec)) (value index)))
    )
  )
)
(define-fun if_int ((condition (Item Bool)) (true_int (Item Int)) 
                    (false_int (Item Int))) (Item Int)
  (ite (or (= condition (as Crash (Item Bool))) 
        (= true_int (as Crash (Item Int))) (= false_int (as Crash (Item Int))))
    (as Crash (Item Int))
    (ite (value condition)
      true_int
      false_int
    )
  )
)
;
