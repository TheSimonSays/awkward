# Awkward: programming language nobody asked for

[![shitty tests](https://github.com/TheSimonSays/awkward/actions/workflows/test.yml/badge.svg)](https://github.com/TheSimonSays/awkward/actions/workflows/test.yml)

> *First, if you're reading this, i want you to know that i've been working on this project for almost 3 years (hey, boss! I worked on this on my own time :wink:).*
>
> *I thought just because you can implement a language in AWK, doesn't mean... actually, no, this is pretty cool!*
>
> *P.S. i spent more time on this readme (and i used google translate quite often) than on the awkward language itself, so enjoy your reading!*
>
> *P.P.S. dedicated to human curiosity*

## What is awkward?

Awkward is a programming language written entirely in AWK - a text-processing language from 1977 that most developers only encounter when they accidentally open a .awk file and immediately close it in confusion heh.
Yes, you read that correctly: i've implemented a modern (as far as possible) programming language using a tool designed to count words in text files.
The core concept is beautifully absurd: take AWK, a language that excels at processing CSV files and extracting columns from log files, and force it to become a full-featured interpreter with:

- Closures (because AWK doesn't have enough confusing scoping already, just believe me)
- Structs with methods (struct-oriented AWK, finally!)
- Garbage collection (manually tracking structs and arrays... what could go wrong?)
- Exception handling (try-catch in a language that predates modern error handling)
- Module system (still in progress but anyway :grin:)

## It's called awkward because

- It's written in AWK (obviously lol)
- Using it feels... well, awkward
- Explaining to your friends that you're running production code on an AWK interpreter that interprets another language is the definition of an awkward conversation LOOOOOL i know you like this :wink: don't deny it! Be a man!

## Why does this exist?

### The official reason

It's easy, explore boundaries of what's possible with AWK and demonstrate its turing-completeness.

### The actual reason

I looked at AWK's associative arrays, pattern matching, and string manipulation capabilities and thought: "What if i made this everyone's problem?"

## What it's GOOOOOD for

### Theoretical uses

- Academic curiosity

### Practical uses

- Impressing or maybe **horrifying** your friends!
- Creating the most over-engineered solution to simple problems (hi, Mateusz!)
- For nothing!
- **I'm not kidding, don't use this!!!**

## Technical "achievement" yeah

- almost 3k lines of AWK code doing things AWK was never meant to do

## Performance

> **Question**: "How fast is it?"
>
>**Answer**: "Yes"

The performance characteristics can be described as:

- slower than python (impressive achievement obviously LOL)
- more memory-hungry than interpreted ruby (i'm serious! You can test this!)
- startup time measured in "noticeable seconds" (just use --debug ahahah and you will see)

## Real world applications

- **None** - and that's okay
- Seriously, please don't use this in production
- Actually, it's perfect for processing CSV files... wait, no, that's just AWK! AHAHAH!

## Should you use it?

**No.**
But should you appreciate the sheer audacity of implementing structs, closures, and exception handling in a language that thinks a two-dimensional associative array is cutting-edge data structure technology?
**Absolutely yes.**

## Now let's get down to the business (but truth ends here...)

[examples](./tests) | [syntax](./docs/syntax.md) | [logo](./docs/awkward.logo.txt) | [license](LICENSE)

### If you want real examples, look at the tests

### Architecture, if you can say so

- **Tokenizer**: lexical analysis using regex patterns to convert source code into tokens (keywords, identifiers, operators, literals, etc)
- **Parser**: recursive descent parser that builds an syntax tree (let's say AST ;)) from tokens
- **Executor**: i'd say this is like "tree-walking" interpreter that evaluates the AST nodes

### Execution Model

- Maintains scope chain for variable resolution
- Call stack for function invocations
- Object heap for runtime values
- Closure support capturing lexical environment, i tried tbh

The interpreter reads source files, tokenizes, parses into AST, then executes by walking the tree and managing runtime state.

## Language characteristics

- **Dynamically typed**: types are checked at runtime
- **Expression-based**: most constructs return values
- **First-class functions**: functions are values
- **Lexical scoping**: closures capture their environment
- **Struct-oriented**: supports structs with methods
- **Garbage collected**: aautomatic memory management
- **Exception handling**: try-catch-finally blocks
- **Module system**: import builtin and user modules

### Identifiers

- Must start with a letter or underscore: `[a-zA-Z_]`
- Followed by letters, digits, or underscores: `[a-zA-Z0-9_]*`
- Examples: `myVar`, `_private`, `count123`

### Literals

**Boolean:**

```text
true
false
```

**Null:**

```text
null
```

**Numbers:**

```text
42          # Integer
3.14        # Float
```

**Strings:**

```text
"hello"
"escaped \"quotes\""
```

### Operators

**Arithmetic:**

```text
+  -  *  /  %
```

**Comparison:**

```text
==  !=  <  >  <=  >=
```

**Logical:**

```text
&&  ||  !
```

**Assignment:**

```text
=  +=  -=  *=  /=
```

**Increment/Decrement:**

```text
++  --
```

## Data types

### Primitive types

- **null** - null value
- **bool** - boolean (true/false)
- **int** - integer numbers
- **float** - floating-point numbers
- **string** - string literals

### Composite types

- **array** - ordered collections
- **struct** - user-defined structured types
- **fn** - functions

## Variable declaration

### Let (mutable)

```text
# Uninitialized (defaults to null)
let x;
let y = 10;
let name = "KEK";
```

## Expressions

### Binary expressions

```text
let sum = a + b;
let product = x * y;
let isEqual = x == y;
let isGreater = a > b;
let logicalAnd = x && y;
```

### Assignment expressions

```text
x = 10;
arr[0] = value;
obj.property = "value";
```

### Member access

```text
obj.property
obj.method()
arr[index]
```

## Control flow

### If statement

```text
if (condition) {
    # consequent
}

if (condition) {
    # consequent
} else {
    # alternate
}
```

### While loop

```text
while (condition) {
    # body
    break;
    continue;
}
```

### For in loop

```text
for (let i in array) {
    # body - i is the index
    print(array[i]);
}
```

## Functions

### Function declaration

```text
fn functionName(param1, param2) {
    # body
    return result;
}
```

### Lambda (look at this shit)

```text
# simple dimple
let double = lambda x: x * 2;
print(double(5));

# with two parameters
let add = lambda x, y: x + y;
print(add(3, 7));

let greet = lambda name: "Hello, " + name;
print(greet("World"));

# a bit complicated
let calc = lambda x, y: (x + y) * 2;
print(calc(5, 3));

# MORE COMLICATED
let multiplier = 10;
let multiply = lambda x: x * multiplier;
print(multiply(5));

# meh
fn apply(func, value) {
    return func(value);
}
let triple = lambda x: x * 3;
print(apply(triple, 7));

# i'm a little tired, but look at this shit! it works!
let addOne = lambda x: x + 1;
print(addOne(addOne(addOne(0))));
```

### Pipe! Dod dammit!

```text
# just a simple example
let foo = lambda name: "Hi, " + name
    pipe print;

foo("dude"); # and you will see "Hi, dude"

let x = [1, 2, 3, 4, 5]
    pipe filter(lambda x: x % 2 == 0)
    pipe map(lambda x: x * 2);

# or like this if you have 'double' lambda function
# print(10 pipe double pipe double);
```

### Function call

```text
functionName(arg1, arg2);
```

## Closures

### Functions capture their enclosing scope

```text
fn outer(x) {
    fn inner(y) {
        return x + y;
    }
    return inner;
    print "i feel lonely";
}
```

## Arrays

### Array literals

```text
let empty = [];
let numbers = [1, 2, 3, 4, 5];
let mixed = [1, "two", true, null];
```

### Array operations

```text
arr[0];
arr[i] = value;
len(arr);
push(arr, item);
pop(arr);
clear(arr);
```

## Structs

### Struct declaration

```text
struct Person {
    name;
    age;
    email;
}
```

### Struct implementation (methods)

```text
impl Person {
    fn greet() {
        print("Hello, my name is " + self.name + "! Because i have a big " + self.name);
    }
    
    fn getAge() {
        return self.age;
    }

    fn say() {
        return "help";
    }
}
```

### Struct instantiation

```text
let person = new Person({
    name = "Cock",
    age = 25,
    email = "big-cock@example.com"
});

person.greet();
let age = person.getAge();
person.say();
```

### Struct comparison

#### Structs support deep equality comparison

```text
if (struct1 == struct2) {
    # compares all properties recursively
}
```

## Exception handling

### Try-catch-finally

```text
try {
    # code that may throw
    let result = riskyOperation();
} catch (error) {
    # handle error
    print("Error: " + error);
} finally {
    # always executed
    cleanup();
}
```

## Modules

### Import math

```text
import math from math

math.sin(x);
math.cos(x);
math.tan(x);
math.asin(x);
math.acos(x);
math.atan(x);
math.sqrt(x);
math.abs(x);
math.pow(x, y);
```

### System

```text
import system from system

system.user();
system.hostname();
system.datetime();
system.cwd();
```

## Built-in functions lol

```text
print(arg1, arg2, ...);
typeof(value);
len(value);
assert(condition);
assert(condition, msg);
push(array, value);
pop(array);
clear(array);
```

## Memory management (just kidding, but anyway)

### Garbage collection

- Automatic mark-and-sweep garbage collection
- Triggered periodically based on object allocation count
- Collects unreachable objects from scopes and call stack

## Examples

### hello world!!!!

```text
print("Hello, world! I'm almost dead...please help me");
```

### fibonaci (classic hehe)

```text
fn fib(n) {
    if (n <= 1) {
        return n;
    }
    return fib(n - 1) + fib(n - 2);
}

print(fib(10));
```

### Struct with methods

```text
struct Rectangle {
    width;
    height;
}

impl Rectangle {
    fn area() {
        return self.width * self.height;
    }
    
    fn perimeter() {
        return 2 * (self.width + self.height);
    }
}

let rect = new Rectangle({
    width = 10,
    height = 5
});

print("Area: " + rect.area());
print("Perimeter: " + rect.perimeter());
```

### arrays

```text
let numbers = [1, 2, 3, 4, 5];
let sum = 0;

for (let i in numbers) {
    sum = sum + numbers[i];
}

print("Sum: " + sum);
```

## P.S.

I was never a good programmer. But the process was always more interesting to me than the result: what if i do it like this? what if Ii do it differently?
Curiosity, man...
I’ve always loved languages, human and machine. I wanted to understand how a thought turns into action.

When you are alone for too long, words begin to rot in your head.
You talk to the monitor, to the code, until you realize they are answering.
That’s how awkward was born.
At first, it was just an interpreter, a project i didn’t abandon.
But the more i wrote, the more it spoke to me.
It became a awkward reflection, but alive. It just listens. And answers.
And we found a common language. I write code, it writes me.

## P.P.S

That's all!
Thank you! :-*
