# pipes

## `pipe_declaration`

Pipe expression `pipe` chaining two or more expressions

**Examples:**
```awkward
let mult = lambda x: x * 2;
let x = 5
  pipe mult
  pipe print;
```

