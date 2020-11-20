# Principles-of-Programming-Languages-314

Examine.py 
  -Reads through any text files in a directory and will create a graph which lists all of the words in the graph and their occurences.  
  The goal of the project was to create a program who would take a directory with 3 directories inside of it, one for latin texts by Julius Cesear, 
  one for latin texts by Eutropius and one for latin texts by Cicero.  Inside of these directories we could have any number of text files of classical 
  latin texts.  For each directory the program should generate a single graph of all of the words used in all of the text files within that directory.  
  So the program would result in 3 graphs, 1 for Cicero, 1 for Cesear, and one for Eutropius.  This program can be scaled up to work with any number of 
  text files without issue but the Y axis of the graph (words used) will be unreadable if text is too large.  

figure-code.scm
  In this project we were given the code to create a figure of characters out of asterics and dash characters with a method called make figure and a few other 
  methods to manipulate and access the figure.  Our task was to implement methods that would add new rows and columns in various ways, the methods we implemented 
  were, repeat-cols, repeat-rows, append-cols, append-rows, flip-cols, flip-rows methods.  Examples of how to call methods and what they should represent are 
  given in the code.

OwnGrandpa.pl
  Project based on the song "I'm My Own Grandpa" by Ray Stevens.  The song talks about a serious of marriages where the main character proves to 
  us that he has become his own grandpa through marriage.  In this prolog project we create thos eexact relationships and check that he is in fact 
  his own grandpa, or any other member mentioned in the song by simply querying.
  
  An example query to check if anyone is their own grandpa would look like this:
    grandpa(X).
    
  Here are the lyrics to the song for reference:
  
    Many, many years ago when I was 23
    I was married to a widow who was pretty as can beThis widow had a grown-up daughter who had hair of red
    My father fell in love with her and soon they too were wedThis made my dad my son-in-law and really changed my life
    For now my daughter was my mother 'cause she was my father's wifeAnd to complicate the matter even though it brought me joy
    I soon became the father of a bouncing baby boyMy little baby then became a brother-in-law to dad
    And so he became my uncle though it mad me very sad
    For if he were my uncle that would also made him brother
    Of the widows grown-up daughter who was of course my stepmotherFather's wife then had a son who kept them on the run
    And he became my grandchild for he was my daughter's sonMy wife is now my mother's mother and it makes me blue
    Because although she is my wife she's my grandmother twoNow if my wife is my grandmother then I'm her grandchild
    And every time I think of it, nearly drives me wild'Cause now I have become the strangest case you ever saw
    As husband of my grandmother I am my own grandpaw
    Oh I'm my own grandpaw
    I'm my own grandpaw
    It sounds funny I know but it really is so
    I'm my own grandpaw
    (Listen to this now)
    I'm my own grandpaw
    I'm my own grandpaw
    I'm my own grandpaw
