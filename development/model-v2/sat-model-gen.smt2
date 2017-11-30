;############################### SAT MODEL GENERATION ###############################
;
(assert (= (program_1 input_1) (as Crash (Item Int))))
(assert (= (program_2 input_2) (as Crash (Item Int))))
(check-sat)
(get-model)
;
