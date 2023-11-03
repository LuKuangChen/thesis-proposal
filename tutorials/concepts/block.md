A block is a program region where a definition might happen. We have
two kinds of blocks: the top-level block and (function) bodies. A
block is a sequence of terms. The last term of a body must be an
expression.

Blocks form a tree-like structure in a program. For example, we have
four blocks in the following program:

```
(defvar n 42)

(deffun (f x)
  (defvar y 1)
  (+ x y))

(deffun (g)
  (deffun (h m)
    (* 2 m))
  (f (h 3)))

(g)
```

The blocks are:

- the top-level block, where `n`, `f`, and `g` are defined
- `f`'s body, which is a sub-block of the top-level block
- `g`'s body, which is also a sub-block of the top-level block, and
- `h`'s body, which is a sub-block of `g`'s body
