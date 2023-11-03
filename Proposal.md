# Proposal

## Background: A semantics "core" has emerged in contemporary languages

Most contemporary (and general-purpose) programming languages

* are lexically scoped,
* do not alias variables (at least, not by default)
* do alias compound values (e.g., arrays and objects)
* permit functions to be passed around and called outside the place
  where the functions are defined

Contemporary languages:

* Python
* JavaScript
* Java
* C#
* Racket

(All sorts of syntaxes, from educational to industrial environment,
from mostly functional to side-effect-heavy)

## Background: Students and even professional programmers do not understand the semantic core very well

Misconceptions.

## Goal: Teach the semantic core better.

Action items:

* The SMoL Language and SMoL Projector:
  * SMoL is a programming language that represents the semantic core.
  * SMoL Projector is a program that translates SMoL programs to
    several contemporary programming languages.
* SMoL NM: an implementation as well as a notional machine
* SMoL Misconceptions: a collection of grounded/confirmed
  misconceptions about SMoL. These misconceptions presumably apply to
  the majority of contemporary languages.
* SMoL Tutor: a tutoring system that teaches SMoL and corrects
  misconceptions. Some questions in the tutor can be viewed as a
  Concept Inventory.

## The SMoL Language

### Statics

* `t` means "terms";
* `d` means "definitions";
* `e` means "expressions";
* `x` and `f` mean names (i.e., variables);
* `c` means constants;

```
t ::= d | e
d ::= (defvar x e)
    | (deffun (x x ...) body)
e ::= c
    | x
    | (lambda (x ...) body)
    | (let ([x e] ...) body)
    | (if e e e)
    | (cond [e body] ... [else body])
    | (cond [e body] ...)
    | (set! x e)
    | (e e ...)
body    ::= t ... e
program ::= t ...
```

### Dynamics

| Name       | Meaning                                                  |
| ---------- | -------------------------------------------------------- |
| `new-arr`  | creates a new array from a sequence of values            |
| `arr-len`  | gets the length of an array                              |
| `arr-ref`  | refers to the element of an array at an index            |
| `arr-set!` | replaces an array's element at an index with a new value |
| `eq?`      | checks pointer equality                                  |

### Underspecified aspects

* Constants and their operators. Our implementation provides integers,
  strings, and arithmetic operators.
* Whether function parameters are in the same (scope) block of as
  local variables defined in the function. Our implementation consider
  them in the same block

### Justify the design of SMoL

Principles:

1. Take the dominant majority because we want SMoL to be
   representative;
2. Do not include objects
   * because objects can be represented by other features so many
     object-related misconceptions presumably have been covered, and
   * because there is little consensus on details (e.g.,
     multiple-vs-single inheritant)

## The SMoL Projector

It is able to project SMoL to Python and JavaScript.

I want to enable it to translate to Racket and Java.

## SMoL NM

Almost good to go. Just need to update the syntax to present Racket
and Java.

## SMoL Misconceptions

### Set the scope

To be considered a SMoL Misconceptions, a mistakes must

* be independent of constants and variable names
* not stumble upon an underspecified aspect of SMoL

### Progress

Some are actually ready because they are grounded on Quizius data. But
I would like to further validate their versions in the Tutor.

The surmised misconceptions need data to validate.

## SMoL Tutor

Already have a multi-syntax version, but need to extend to support
Java and Racket syntax.

Need to change to collect data for validating surmised misconceptions.

Need to change to make it easier to detect learning.

Need to collect more data to strengthen the evidence that the
misconceptions and the tutor's effects are universal.

