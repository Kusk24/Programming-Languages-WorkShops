/* 
Name - Win Yu Maung,
ID - 6612064,
Sec - 542
*/

prerequisite(csx3001, csx3002).
prerequisite(csx3001, csx3006).
prerequisite(csx3002, csx3003).
prerequisite(csx3002, csx4107).
prerequisite(csx3003, csx3009).
prerequisite(csx3001, csx4202).
prerequisite(itx2007, csx4202).
prerequisite(csx3005, csx4306).
prerequisite(csx3006, csx4211).

indirect_prerequisite(X,Y) :- prerequisite(X,Y). 
indirect_prerequisite(X,Y) :- prerequisite(X,Z),
                              indirect_prerequisite(Z,Y).