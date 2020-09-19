
married(X, Y) :- spouse(X, Y); spouse(Y, X).

/*parent(X, Y) :- (child(Y, X)); (married(X, Z), child(Y, Z)).*/

/*father(X, Y) :- (male(X), child(Y, X,)); (male(X), married(X, Z), child(Z,Y)).*/

mother(X, Y) :- (female(X), married(X, Z), child(Y, Z)); (female(X), child(Y, X)).

/*son(X, Y) :- (child(Y, X), male(X)); (married(Y, Z), father(Z,Y)).*/

daughter(X, Y) :- child(X, Z), married(Y, Z), female(X).

son_in_law(X, Y) :- male(X), married(Z, X) , daughter(Z, Y).

bloodBrother(X, Y) :- male(X) , son_in_law(Y, Z), child(X, Z).

uncle(X, Y) :- bloodBrother(X, Z) , child(Y, Z) , male(X).

/*aunt(X, Y) :- (sister(Y, X), children(X, Y)); (female(X), married(X, Z), sibling(Y, Z)).*/

brother(X, Y) :- (male(X), son_in_law(Y, Z), child(X,Z)); (male(X), mother(Y, me), uncle(X, me)). 

grandchild(X, Y) :- (male(X), child(X, Z), daughter(Z, Y)); (grandmother(Y, X)).

grandfather(X, Y) :- male(X), married(X, Z), grandchild(X, Z).

grandmother(X, Y) :- female(X), mother(X, Z), mother(Z, Y).

male(me).
male(dad).
male(baby).
male(baby2).

female(daug).
female(widow).

child(me, dad).
child(daug, widow).
child(baby, me).
child(baby, widow).
child(baby2, dad).
child(baby2, daug).

spouse(me, widow).
spouse(dad, daug).



proof(ME) :- daughter(A,ME), mother(A,ME), son_in_law(D,ME), brother(B, D), uncle(B,ME), brother(B,A), grandchild(F,ME), mother(C,A), grandmother(C,ME), grandchild(ME,C), grandfather(ME,ME). 
