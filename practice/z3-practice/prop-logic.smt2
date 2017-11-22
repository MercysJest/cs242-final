(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)
(define-fun conjecture () Bool (=> (and (=> p q) (=> q r)) (=> p r)))
(assert conjecture)
(check-sat)
(get-model)
