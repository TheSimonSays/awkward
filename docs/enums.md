# enums

## `enum_declaration`

Parses an enum declaration and its variants.

**Examples:**
```awkward
enum Color {
  Red,
  Green,
  Blue
};
let color = Color.Red;
print(color == Color.Red);    # true
```

