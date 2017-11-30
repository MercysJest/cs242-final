;############################ OPTIONS #############################

;
;############################### DATA TYPES ###############################
;
(declare-datatypes (T) ((Item Crash (mk-item (value T)))))
(declare-datatypes (T) ((Vector (mk-vec (size Int) (data (Array Int T))))))
;
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
;
;############################### INT OPERATORS ###############################
;
(define-fun div_int ((dividend (Item Int)) (divisor (Item Int))) (Item Int)
  (ite (or (= dividend (as Crash (Item Int))) (= divisor (as Crash (Item Int))))
    (as Crash (Item Int))
    (ite (= (value divisor) 0)
      (as Crash (Item Int))
      (mk-item (div (value dividend) (value divisor)))
    )
  )
)
(define-fun mod_int ((dividend (Item Int)) (divisor (Item Int))) (Item Int)
  (ite (or (= dividend (as Crash (Item Int))) (= divisor (as Crash (Item Int))))
    (as Crash (Item Int))
    (ite (= (value divisor) 0)
      (as Crash (Item Int))
      (mk-item (mod (value dividend) (value divisor)))
    )
  )
)
(define-fun add_int ((term1 (Item Int)) (term2 (Item Int))) (Item Int)
  (ite (or (= term1 (as Crash (Item Int))) (= term2 (as Crash (Item Int))))
    (as Crash (Item Int))
    (mk-item (+ (value term1) (value term2)))
  )
)
(define-fun sub_int ((term1 (Item Int)) (term2 (Item Int))) (Item Int)
  (ite (or (= term1 (as Crash (Item Int))) (= term2 (as Crash (Item Int))))
    (as Crash (Item Int))
    (mk-item (- (value term1) (value term2)))
  )
)
(define-fun mult_int ((factor1 (Item Int)) (factor2 (Item Int))) (Item Int)
  (ite (or (= factor1 (as Crash (Item Int))) (= factor2 (as Crash (Item Int))))
    (as Crash (Item Int))
    (mk-item (* (value factor1) (value factor2)))
  )
)
;
;############################### PROGRAM DEFINITIONS ###############################
;
(define-fun program_1 ((vec (Vector Int))) (Item Int)
  (get_index_int (mk-item vec) (get_index_int (mk-item vec) (mk-item 0)))
)
(define-fun program_2 ((vec (Vector Int))) (Item Int)
  (div_int (get_index_int (mk-item vec) (mk-item 0)) 
           (get_index_int (mk-item vec) (mk-item 1))
  )
)
;
;############################### INPUT MODELS ###############################
;
(declare-const input_1 (Vector Int))
(assert (= (size input_1) 2))
;
(declare-const input_2 (Vector Int))
(assert (= (size input_2) 2))
;
;############################### SAT MODEL GENERATION ###############################
;
(assert (= (program_1 input_1) (as Crash (Item Int))))
(assert (= (program_2 input_2) (as Crash (Item Int))))
(check-sat)
(get-model)
;
