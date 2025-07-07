(*
Name - Win Yu Maung
ID - 6612054
Sec - 542
*)

(* 1 *)
fun exist (e, []) = false
|   exist (e, L) = let
                val x = hd L;
                val xs = tl L;
                in 
                    case x = e of
                      true => true |
                      false => exist (e,xs)
                end;

(* 2 *)
fun greaterthan ([], e) = []
|   greaterthan (L, e) = let 
                        val x = hd L;
                        val xs = tl L;
                    in 
                    case x > e of 
                    true => x :: greaterthan (xs, e) |
                    false => greaterthan(xs, e)
                    end;

(* 3 *)
fun repeats([]) = false
|   repeats ([_]) = false
|   repeats (L) = let
                val x = hd L;
                val xs = tl L;
                in 
                  if x = (hd xs) then true
                  else repeats (xs)
                end;


(* 4 *)
fun partition (_, []) = ([], [])
|   partition (pivot, x::xs) = let   
                                val (smaller, bigger) = partition (pivot, xs)
                            in 
                                case x < pivot of
                                true => (x::smaller, bigger)
                            |   false => (smaller, x::bigger)
                            end;
fun quicksort ([]) = []
|   quicksort (pivot::rest) = let 
                                val (smaller, bigger) = partition(pivot, rest)
                            in 
                                quicksort smaller @ [pivot] @ quicksort bigger
                            end;




(* 5 *)
fun ismember (e, []) = false
| ismember (e, L) = let 
                    val x = hd L;
                    val xs = tl L;
                    in 
                        if x = e then true 
                        else ismember (e, xs)
                    end;

(* 6 *)
fun union([], ys) = ys
|   union (x::xs, ys) = if ismember(x,ys) then union(xs,ys) else x::union(xs,ys)

(* 7 *)
fun intersect ([], _) = [] 
|   intersect (x::xs, ys) = 
                        case ismember(x,ys) of
                        true => x :: intersect (xs, ys) |
                        false => intersect (xs, ys);


(* 8 *)
fun powerset [] = [[]]
  | powerset (x::xs) =
      let
        val rest = powerset xs
      in
        rest @ map (fn subset => x::subset) rest
      end;
