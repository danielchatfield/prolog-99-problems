99 prolog problems
==================

These are my solutions to the [99 problems](https://sites.google.com/site/prologsite/prolog-problems) by Werner Hett.

I occasionally adapt the question (e.g. indexes should start at 0 not 1) but
they are essentially the same. 

>The purpose of this problem collection is to give you the opportunity to
practice your skills in logic programming. Your goal should be to find the most
elegant solution of the given problems. Efficiency is important, but logical
clarity is even more crucial. Some of the (easy) problems can be trivially
solved using built-in predicates. However, in these cases, you learn more if
you try to find your own solution.

>Every predicate that you write should begin with a comment that describes the
predicate in a declarative statement. Do not describe procedurally, what the
predicate does, but write down a logical statement which includes the arguments
of the predicate. You should also indicate the intended data types of the
arguments and the allowed flow patterns.

# Testing

To run the unit tests run the following:

```bash
swipl -l test.pl -t "run_tests"
```
