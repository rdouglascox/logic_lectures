---
title: "lecture 09, issues in translation: conjunction"
subtitle: phil1012 introductory logic
---

# overview

## this lecture

* a general strategy for determining how to translate a proposition using the connectives of PL
* issues arising with respect to the translation of conjunction

## learning outcomes

* after doing the relevant reading for this lecture, listening to the lecture, and attending the relevant tutorial, you will be able to:
    * pursue a general strategy for determining how to translate a proposition using the connectives of PL
    * translate sentences which are not obviously conjunctions into PL using the connective conjunction

## required reading

* section 6.2 of chapter 6

# a general strategy for translation

## a general strategy for translation

* at the end of section 6.1 of the textbook, there's a brief discussion of how to approach translating a proposition where we are unsure what connective is involved
* suppose, for instance you have a proposition which seems to be of the form $\alpha$ \* $\beta$ where \* is some two-place connective, but you aren't sure how to translate it

---

* well, one thing you can to is attempt to construct a truth table for the proposition
* for example, suppose we have the proposition "I went to bed, even though I was angry"
* the proposition appears to be of the form $\alpha$ \* $\beta$ where \* is some two-place connective
* but which connective is it?
* let's try to construct a truth table for the proposition

---

::: ttable2

--------  -------   ------------------
$\alpha$  $\beta$   $(\alpha * \beta)$
   T         T
   T         F
   F         T
   F         F
--------  -------   ------------------

:::

---

* now let's ask whether "I went to bed, even though I was angry" is true if "I went to bed" / $\alpha$ is false
* "I went to bed, even though I was angry" is false if "I went to bed" / $\alpha$ is false
* so we fill in our table:

---

::: ttable2

--------  -------   ------------------
$\alpha$  $\beta$   $(\alpha * \beta)$
   T         T
   T         F
   F         T              F
   F         F              F
--------  -------   ------------------

:::

---

* now let's ask whether "I went to bed, even though I was angry" is true if "I was angry" / $\beta$ is false
* "I went to bed, even though I was angry" is false if "I was angry" / $\beta$ is false
* so we fill in our table:

---

::: ttable2

--------  -------   ------------------
$\alpha$  $\beta$   $(\alpha * \beta)$
   T         T
   T         F              F
   F         T              F
   F         F              F
--------  -------   ------------------

:::

---

* finally, let's ask whether "I went to bed, even though I was angry" is true if both "I went to bed" / $\alpha$ and "I was angry" / $\beta$ are true
* "I went to bed, even though I was angry" is true if both "I went to bed" / $\alpha$ and "I was angry" / $\beta$ are true
* (remember that we are focussing on what is said, not what it implied or implicated)
* so we fill in our table:

---

::: ttable2

--------  -------   ------------------
$\alpha$  $\beta$   $(\alpha * \beta)$
   T         T              T
   T         F              F
   F         T              F
   F         F              F
--------  -------   ------------------

:::

---

* of course, this is just the table for conjunction, so we have discovered that the two-place connective here is conjunction
* so we would use conjunction in our translation

---

* things do not always work out so well, however
* suppose we use the method to determine which two-place connective to use to translate "I went to bed because I was angry"
* this is true only if both propositions which make it up are true
* so we can fill out our table like this:

---

::: ttable2

--------  -------   ------------------
$\alpha$  $\beta$   $(\alpha * \beta)$
   T         T
   T         F              F
   F         T              F
   F         F              F
--------  -------   ------------------

:::

---

* but now let us ask whether it is true if both propositions which make it up are true
* not necessarily
* I could have been angry, and I could have gone to bed, and yet, I might not have gone to bed because I was angry

---

* if we can't fill in the truth table, we can conclude that the connective is not a truth-functional connective
* if we can fill in the table, then we know what connective it is
* let's look at some more examples in connection with conjunction now

# issues with conjunction

## issues with conjunction

* we translate 'and' as a conjunction
* but we also translate 'but' as a conjunction
* why? and are we right to do so?

---

* consider:
    *  \(1\) Jane is tall but smart
    * $T$: Jane is tall
    * $S$: Jane is smart
* \(1\) is false if $T$ is false
* \(1\) is false if $S$ is false
* \(1\) is false if both $T$ and $S$ are false

---


* suppose: \(1\) is true if both $T$ and $S$ are true
* if so, then 'but' is equivalent to 'and'
    * $T$: Jane is tall
    * $S$: Jane is smart
    * $(T \land S)$
* but this fails to capture the sense in which 'Jane is tall but smart' conveys that being tall contrasts with being smart

---

* suppose: \(1\) is not necessarily true if both $T$ and $S$ are true
* if so, then 'but' isn't equivalent to 'and'
* instead, we might translate it as follows
    * $T$: Jane is tall
    * $S$: Jane is smart
    * $C$: Being tall contrasts with being smart
    * $((T \land S )\land C)$
* but this seems to be too strong
    * saying 'Jane is smart but tall' doesn't seem to be equivalent to saying 'Jane is tall and smart and
    being tall contrasts with being smart'

---

* solution . . .
    * claim that 'but' merely conventionally implicates a contrast
    * claim that 'but' and 'and' are truth-functionally equivalent

# wrapping up

## this lecture

* a general strategy for determining how to translate a proposition using the connectives of PL
* issues arising with respect to the translation of conjunction

## next lecture

* lecture 10, trees for PL
