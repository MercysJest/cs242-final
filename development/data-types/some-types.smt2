(declare-datatypes () ((Option Crash Success)))
(declare-datatypes () ((Item (mk-item (status Option) (value Int)))))
(declare-const x Item)
(assert (= (status x) Success))
(check-sat)
(get-model)

(reset)
;---------------------------------------------------------------------------
;GOAL: to solve for an arbitrary array that will cause the program to crash
(declare-datatypes () ((Status Err Ok)))
(declare-datatypes (T) ((Option (mk-opt (status Status) (value T)))))
(declare-datatypes (T) ((Vector (mk-vec (length Int) (data (Array Int T))))))
; TODO
; define a function that takes in a vector and index and returns an Item
; write a basic program as a function
; assert that the function crashes
; check sat and get model
