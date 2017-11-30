;############################### SAT MODEL GENERATION ###############################
(assert (= (program_1 input_1) (as Crash (Item Int))))
(check-sat)
(get-model)
;
