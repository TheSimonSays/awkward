# structs

## `create_struct`

Creates a struct object from its definition node.

**Examples:**
```awkward
struct Point {
  x;
  y;
};
let p = new Point{x=10, y=20};
print(p.x);  # prints 10
```

## `impl_declaration`

Implement block for a struct.

**Examples:**
```awkward
impl Point {
  fn move(dx, dy) {
    self.x = self.x + dx;
    self.y = self.y + dy;
  }
}; # This adds the move method to the Point struct.
```

