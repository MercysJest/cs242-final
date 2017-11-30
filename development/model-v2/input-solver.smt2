;############################### INPUT SOLVER ###############################
;
(push)
(echo "############ PROGRAM 1 (ATTEMPTING TO FIND CRASH) ############")
(declare-const input (Vector Int))
(assert (= (size input) 2))
(assert (forall ((idx Int)) (>= (select (data input) idx) 0)))
(assert (= (program_1 input) (as Crash (Item Int))))
(check-sat)
(get-model)
(pop)
;
(push)
(echo "############ PROGRAM 2 (ATTEMPTING TO FIND CRASH) ############")
(declare-const input (Vector Int))
(assert (= (size input) 2))
(assert (forall ((idx Int)) (>= (select (data input) idx) 0)))
(assert (= (program_2 input) (as Crash (Item Int))))
(check-sat)
(get-model)
(pop)
;
