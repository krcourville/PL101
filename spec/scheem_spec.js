describe("scheem parser", function () {
    'use strict';
    
    var parsers = require('../js/parsers.js');
    var scheem = parsers.scheem;

    
    it("should parse an atom", function () {
        var parsed = scheem("abc");
        expect(parsed).toBe("abc");
    });
    
    it("should not parse a non atom", function () {
        var foo = function () {
            scheem("abc def");
        };

        expect(foo).toThrow();
    });
    
    it("should parse an expression", function () {
        var parsed = scheem("(+ 1 (* x 3))");

        expect(parsed).toEqual(
            ["+", "1", ["*", "x", "3"]]
        );
    });
});