/* 
Name - Win Yu Maung,
ID - 6612064,
Sec - 542
*/

sum_list([],Y) :- Y is 0.              %sum_list([],0). <- another way for base
sum_list([H|T],Y) :- sum_list(T, Z), Y is H + Z.