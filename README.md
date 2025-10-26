# Awkward: programming language nobody asked for

[![shitty tests](https://github.com/TheSimonSays/awkward/actions/workflows/test.yml/badge.svg)](https://github.com/TheSimonSays/awkward/actions/workflows/test.yml)

> *First, if you're reading this, i want you to know that i've been working on this project for almost 3 years (hey, boss! I worked on this on my own time :wink:).*
>
> *I thought just because you can implement a language in AWK, doesn't mean... actually, no, this is pretty cool!*
>
> *P.S. i spent more time on this readme (and i used google translate quite often) than on the awkward language itself, so enjoy your reading!*
>
> *P.P.S. dedicated to human curiosity*

## Contents

- [What is awkward?](#what-is-awkward)
- [It's called awkward because](#its-called-awkward-because)
- [The official reason](#the-official-reason)
- [The actual reason](#the-actual-reason)
- [Practical uses](#practical-uses)
- [Performance](#performance)
- [Real world applications](#real-world-applications)
- [Now let's get down to the business (but truth ends here...)](#now-lets-get-down-to-the-business-but-truth-ends-here)
- [Architecture, if you can say so](#architecture-if-you-can-say-so)
- [Execution Model](#execution-model)
- [Language characteristics](#language-characteristics)

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

[documentation](./docs) | [logo](./docs/awkward.logo.txt) | [license](LICENSE)

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

## P.S

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
