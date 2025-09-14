/* 
Name - Win Yu Maung,
ID - 6612064,
Sec - 542
*/

likes(alice, salad).
likes(james, pizza).
likes(mary, pizza).
likes(mary, pasta).
likes(peter, salad).

/*
1. 
Output for likes(mary, X). is
X = pizza ;
X = pasta.
*/

/* 
2.
; = this is prolog backtracking operator
In number 1, we find what mary likes and gives the first ever found item, pizza.
If you don't press ; then prolog quit, if you press ; then enter,
it will resume after where it stopped such as pizza and then search for the another one that satisfy condition, which is pasta.
*/