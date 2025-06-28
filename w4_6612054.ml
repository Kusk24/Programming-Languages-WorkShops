(*
Name - Win Yu Maung
ID - 6612054
Section - 542
*)


(* 1 *)
fun isodd x = if x div 2 = 0 then false else true;

(* 2 * )
fun cube x = x * x * x;

(* 3 *)
fun cuber x : real = x * x * x;

(* 4 *)
fun fourth (_::_::_::x::_) = x;

(* 5 *)
fun min3 (a,b,c) = if a < b andalso a < c then a else
                    if b < a andalso b < c then b
                    else c;