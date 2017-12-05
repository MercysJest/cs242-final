;############################### CORE FUNCTIONS ###############################
;
(define-fun get_index_int ((vec (Item (Vector Int))) (index (Item Int))) (Item Int)
  (ite (or (= index (as Crash (Item Int))) (= vec (as Crash (Item (Vector Int))))) 
    (as Crash (Item Int)) 
    (ite (or (>= (value index) (size (value vec))) (< (value index) 0))
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
;For-loop definition is commented out to make model definitions pretty
;(define-fun-rec for_int ((status (Packet Int)) (body (Array (Item Int) (Item Int)))) (Packet Int) 
;  (ite (= (prev_return status) (as Crash (Item Int))) 
;    (mk-pack -1 (as Crash (Item Int)))
;    (ite (<= 0 (curr_idx status))
;     (for_int (mk-pack (- (curr_idx status) 1) (select body (prev_return status))) body)
;     status
;    )
;  )
;)
;
