start = expression
    
expression = 
    atom 
    / expressionList 

expressionList =
    ws* "(" ws* e:expression+ ws* ")" ws*
    { return e; }


validchar
    = [0-9a-zA-Z_?!+\-=@#$%^&*/.]

space = " "

ws = 
    space 
    / "\t" 
    / "\n"

token = 
    a:atom space?
    { return a; }

atom =
    ws* chars:validchar+ ws*
        { return chars.join(""); }