/* 
Name - Win Yu Maung,
ID - 6612064,
Sec - 542
*/

color(a, blue).
color(b, gray).
color(c, blue).
color(d, black).
color(e, black).
color(f, gray).
color(g, gray).
color(h, gray).
color(i, gray).
color(j, blue).

shape(a, circle).
shape(b, circle).
shape(c, circle).
shape(d, triangle).
shape(e, square).
shape(f, triangle).
shape(g, square).
shape(h, square).
shape(i, triangle).
shape(j, square).

rightOf(a, b).
rightOf(a, c).
rightOf(a, e).
rightOf(a, h).

rightOf(c, b).
rightOf(c, e).

rightOf(d, a).
rightOf(d, b).
rightOf(d, c).
rightOf(d, e).
rightOf(d, h).
rightOf(d, f).

rightOf(f, b).
rightOf(f, c).
rightOf(f, e).
rightOf(f, h).

rightOf(g, a).
rightOf(g, b).
rightOf(g, c).
rightOf(g, d).
rightOf(g, e).
rightOf(g, f).
rightOf(g, h).
rightOf(g, i).

rightOf(h, b).
rightOf(h, e).

rightOf(i, a).
rightOf(i, b).
rightOf(i, c).
rightOf(i, e).
rightOf(i, f).
rightOf(i, h).

rightOf(j, a).
rightOf(j, b).
rightOf(j, c).
rightOf(j, d).
rightOf(j, e).
rightOf(j, f).
rightOf(j, h).
rightOf(j, i).

% Are all circle black?
% forall(shape(X,circle), color(X, black)).

% Which are the colors of circle?
% shape(X, circle), color(X, Y).

% Which shapes are to the right of the shape a ?
% rightOf(X,a), shape(X, Y).

% Are there any grey squares on the board?
% shape(X, square), color(X, gray).