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

;(define-fun for_body_1 ((input (Item Int))) (Item Int)
;  (get_index_int )
;)
;
