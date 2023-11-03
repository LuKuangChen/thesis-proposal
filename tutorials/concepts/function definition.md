A function definition is written as `(deffun (f x ...) t ... e)`,
where `f` is a variable, `x ...` is possibly empty sequence of
variables, `t` is a (possibly empty) sequene of terms, and `e` is an
expression. For example

```
(deffun (average x y)
  (defvar s (+ x y))
  (/ s 2))
```
