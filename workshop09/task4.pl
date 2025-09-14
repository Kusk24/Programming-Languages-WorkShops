/* 
Name - Win Yu Maung,
ID - 6612064,
Sec - 542
*/

instructor( paitoon ).
instructor( thanachai ).
instructor( chayapol ).

room( vmes1002 ).
room( vmes1003 ).
room( vmes1004 ).

course( network ).
course( ui_ux ).
course( web ).

%Since there are many combination, possible we should use permutation
solution(S) :-
    S = [ (chayapol, C1, R1),
          (paitoon, C2, R2),
          (thanachai, C3, R3) ],

    %this line is to get courses definition such as C1 can be all 3 courses
    Courses = [C1, C2, C3],
    permutation(Courses, [network, ui_ux, web]),

    %this line is to get room definition such as R1 can be all 3 rooms
    Rooms = [R1, R2, R3],
    permutation(Rooms, [vmes1002, vmes1003, vmes1004]),

    %for chayapol not teaching 1002
    R1 \= vmes1002,

    %for web in vmes1004 classroom.
    ( (R1 = vmes1004, C1 = web) ;
      (R2 = vmes1004, C2 = web) ;
      (R3 = vmes1004, C3 = web) ),

    %for paitoon teaching network
    C2 = network.

%query to get solution
%solution(S).