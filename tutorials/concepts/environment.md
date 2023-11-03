An environment is relates variables to values. Environments are
created from blocks when a program runs:

* As soon as a program runs, the top-level environment is created from
  the top-level block.
* Every time a function is called, a new enviornment is created from
  the function body

Environments, similar to blocks, also form a tree-like structure.

A block might correspond to multiple environment if the block is a
function body and the function is called multiple times.
