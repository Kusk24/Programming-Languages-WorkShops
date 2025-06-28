(*
Name - Win Yu Maung
ID - 6612054
Section - 542
*)


(* 1 *)
fun isodd x = if x mod 2 = 0 then false else true;


(* 2 *)
fun cube x = x * x * x;


(* 3 *)
fun cuber x : real = x * x * x;


(* 4 *)
fun fourth (_::_::_::x::_) = x;


(* 5 *)
fun min3 (a,b,c) = if a <= b andalso a <= c then a else
                    if b <= c then b
                    else c;


(* 6 *)
fun remove2 (a,b,c) = (a,c);


(* 7 *)
fun thirdch x = 
            let 
                val a = explode x;
                fun third (_::_::a::_) = a;
            in
                third a
            end;


(* 8 *)
fun rotate (a, 0) = a | 
    rotate (a, n) = 
                    let 
                        val first = hd a;
                        val rest = tl a;
                    in 
                        rotate (rest @ [first], n - 1)
                    end;


(* 9 *)
fun max [a] = a |
    max (a) = 
            let 
                val first = hd a;
                val rest = tl a;
                fun maxhelper(a,b) = if a > b then a else b;
            in 
                maxhelper (first, max(rest))
            end;


(* 10 *)
fun select (nil,check) = [] |
    select (first::rest, check) = if check(first) then first :: select(rest, check) else select(rest, check); 
                                    


(* 10 another way                           
fun select (nil,check) = [] |
    select (a, check) = 
                        let 
                            val first = hd a;
                            val rest = tl a;
                        in 
                            if check(first) then first :: select(rest, check) else select(rest, check)
                        end;                                
*)