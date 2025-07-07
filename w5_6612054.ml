(*
Name - Win Yu Maung
ID - 6612054
Sec - 542
*)

(* 1 *)
fun exist (e, []) = false
| exist (e, L) = let
                val x = hd L;
                val xs = tl L;
                in 
                    if x = e then true 
                    else exist (e, xs)
                end;

(* 2 *)
fun greaterthan ([], e) = []
| greaterthan (L, e) = let 
                        val x = hd L;
                        val xs = tl L;
                    in if x > e 
                    then x :: greaterthan (xs, e)
                    end;

(* 3 *)
fun request([]) = false
|request ([_]) = false
| request (L) = let
                val x = hd L;
                val xs = tl L;
                in 
                  if x = (hd xs) then true
                  else request (xs)
                end;

