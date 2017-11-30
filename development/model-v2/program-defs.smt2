;############################### PROGRAM DEFINITIONS ###############################
(define-fun program_1 ((vec_1 (Vector Int))) (Item Int)
 (get_index_int (get_index_int (mk-item 2) (mk-item vec_1)) (mk-item vec_1))
)
;
