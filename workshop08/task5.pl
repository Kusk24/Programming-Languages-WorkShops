/* 
Name - Win Yu Maung,
ID - 6612064,
Sec - 542
*/

left(red, green).
own(red, cat).
drink(middle, tea).
drink(green, coffee).

cat_owner(Owner) :-  own(Owner, cat).
/* 
who owns the cat
own(X, cat).
or
cat_owner(X)
*/


drink_coffee(Drinker):- drink(Drinker, coffee).
/* 
%who drink the coffee
drink(X, coffee).
or
drink_coffee(X)
*/