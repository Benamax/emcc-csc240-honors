# emcc-csc240-honors
My Honors project for CSC240. It's a boolean calculator capable of computing basic boolean expressions.

## Compiling & Running:
```
flex bool-calc.l
bison bool-calc.y
gcc bool-calc.c lex.yy.c bool-calc.tab.c -o bool-calc
./bool-calc
```

## Operators:
All operators are case-sensitive.
- *expression* **AND** *expression*
- *expression* **OR** *expression*
- **NOT** *expression*
- **(** *expression* **)**

## Examples:
- 0 >>> 0
- 1 >>> 1
- NOT 0 >>> 1
- NOT 1 >>> 0
- 0 AND 1 >>> 0
- 1 AND 1 >>> 1
- 1 OR 0 >>> 1
- 0 OR 0 >>> 0
- NOT 1 OR 0 >>> 0
- (1 AND 0) OR (1 AND 1) >>> 1
