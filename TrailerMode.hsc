(global object a none)
(global object b none)
(global object c none)

(script extern object (player_get_by_idx (short idx)))
(script extern short player_get_local_idx)

(script static void test
	(set a (list_get (players) 0))
	(set b (player_get 0))
	(set c (player_get_by_idx (player_get_local_idx)))
	
	; These all return true
	(if (= a b) (print "a equals b"))
	(if (= a c) (print "a equals c"))
	(if (= b c) (print "b equals c"))
)


