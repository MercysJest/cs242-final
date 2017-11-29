;(declare-datatypes () ((Option Crash Success)))
;(declare-datatypes () ((Item (mk-item (status Option) (value Int)))))
;(declare-const x Item)
;(assert (= (status x) Success))
;(check-sat)
;(get-model)
;(reset)
;---------------------------------------------------------------------------
;GOAL: to solve for an arbitrary array that will cause the program to crash
;(declare-datatypes () ((Status Err Ok)))
;(declare-datatypes (T) ((Option (mk-opt (status Status) (value T)))))
;(declare-datatypes (T) ((Vector (mk-vec (length Int) (data (Array Int T))))))
; TODO
; define a function that takes in a vector and index and returns an Item
; write a basic program as a function
; assert that the function crashes
; check sat and get model
;
;----------------------------------------------------------------------------
;(ite (= index (as Crash (Item Int))) (as Crash (Item Int)) (as Crash (Item Int)))
;    (ite (< index (size vec))
;        Crash 
;        (mk-item (select (data vec) index))))
;(define-fun program_1 (vec (Vector Int)) (Item Int) ())
;----------------------------------------------------------------------------
;
(declare-datatypes (T) ((Item Crash (mk-item (value T)))))
(declare-datatypes (T) ((Vector (mk-vec (size Int) (data (Array Int T))))))
(define-fun get_index ((index (Item Int)) (vec (Item (Vector Int)))) (Item Int)
  (ite (or (= index (as Crash (Item Int))) (= vec (as Crash (Item (Vector Int))))) 
    (as Crash (Item Int)) 
    (ite (>= (value index) (size (value vec)))
      (as Crash (Item Int))
      (mk-item (select (data (value vec)) (value index)))
    )
  )
)
(declare-const input_1 (Vector Int))
(define-fun program_1 ((vec_1 (Vector Int))) (Item Int)
 (get_index (get_index (mk-item 2) (mk-item vec_1)) (mk-item vec_1))
)

(assert (< (size input_1) 4))
(assert (> (size input_1) 0))

;//see if can directly ignore a solution by != previous answer

(assert (= (program_1 input_1) (as Crash (Item Int))))
(check-sat)
(get-model)
