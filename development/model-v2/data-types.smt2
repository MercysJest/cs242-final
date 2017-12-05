;############################### DATA TYPES ###############################
;
(declare-datatypes (T) ((Item Crash (mk-item (value T)))))
(declare-datatypes (T) ((Vector (mk-vec (size Int) (data (Array Int T))))))
(declare-datatypes (T) ((Packet (mk-pack (curr_idx Int) (prev_return (Item T))))))
;
