;############################### INT OPERATORS ###############################
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
