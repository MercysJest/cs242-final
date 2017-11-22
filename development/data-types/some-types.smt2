(declare-datatypes () ((Option Crash Success)))
(declare-datatypes () ((Item (mk-item (status Option) (value Int)))))
(declare-const x Item)
(assert (= (status x) Success))
(check-sat)
(get-model)

(reset)

(declare-datatypes () ((Status Err Ok)))
(declare-datatypes (T) ((Option (mk-opt (status Status) (value T)))))
(declare-datatypes (T) ((Vector (mk-vec (length Int) (data (Array Int T))))))
; define a function that takes in a vector and index and returns option
; write a basic program as a function
; assert that the function crashes
; check sat and get model
