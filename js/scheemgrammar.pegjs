start = expression
    
expression = atom / expressionList 

expressionList =
    "(" e:expression+ ")"
    { return e; }


validchar
    = [0-9a-zA-Z_?!+\-=@#$%^&*/.]

space = " "

token = 
    a:atom space?
    { return a; }

atom =
    chars:validchar+ space?
        { return chars.join(""); }