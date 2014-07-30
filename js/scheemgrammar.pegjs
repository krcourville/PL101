start = expression
    
expression = 
    atom 
    / expressionList 

expressionList =
    "(" e:expression+ ")"
    { return e; }


validchar
    = [0-9a-zA-Z_?!+\-=@#$%^&*/.]

space = " "

whitespace = 
    space 
    / "\t" 
    / "\n"

token = 
    a:atom space?
    { return a; }

atom =
    whitespace* chars:validchar+ whitespace*
        { return chars.join(""); }