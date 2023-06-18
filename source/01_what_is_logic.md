---
title: lecture 01, what is logic?
subtitle: phil1012 introductory logic
---

# overview

## this lecture

* what is logic?
* what is logic for?
* central concepts of logic:
    * propositions and truth
    * arguments
    * validity and soundness

## learning outcomes

* after doing the relevant reading for this lecture, listening to the lecture, and attending the relevant tutorial, you will be able to:
    * explain what logic is
    * determine whether a sentence expresses a proposition or not
    * explain what an argument is
    * represent ordinary language arguments in standard form
    * explain what it is for an argument to be valid
    * determine whether an argument is valid or invalid in an informal way

## required reading

* sections 1.1, 1.2, 1.3, 1.4 and 1.5 of chapter 1

# what is logic? 

## what is logic?

* what is logic?

## a brief history of logic

* logic is a subject with a history
* this is not a course in the history of logic
* nonetheless . . .

---

* it is worth knowing the history in broad outline
* some of the major events in the history of logic:
    * aristotle, categorical propositions, and categorical syllogisms
    * the stoics, propositional logic, 'if . . . then', 'and', 'or', etc.
    * . . . 
    * gotlob frege, quantified propositions, 'for all', 'for some'
* it was only really in the 20th century that predicate logic received its canonical formulation

## logic and the laws of truth

* so what is logic?
    * logic is the systematic study of the laws of truth
    * logic concerns itself with the laws which govern the truth of propositions
* you can think of these claims as saying that *this* is what we mean by 'logic' in this class 
* don't worry if you don't know what propositions are yet, we will come to this

## formal logic vs informal logic

* what are the varieties of logic?
    * formal/symbolic logic
    * informal/practical/applied logic or critical thinking
* both may deal with notions like (deductively) valid arguments
* formal logic is distinct in that it uses *formal methods* like translation into formal languages and formal proofs
* our aim might ultimately to be to understand ordinary arguments, but we might also study the formal languages and proofs themselves (metalogic)

## logic and human reasoning 

* what is logic not?
* logic is not the study of human reasoning
* logic concerns itself with the laws of truth, not the laws of thought
* a particular course of reasoning may be good because it accords with the
laws of truth, but the laws of truth are explanatorily prior

## logic and the laws of truth

* the subject matter of logic:
   * the laws of truth
   * the laws governing the truth of *propositions*
* laws of truth?
   * e.g. if a proposition has such and such a form, it must be true
   * e.g. if a set of propositions with such and such a form are all true, then a proposition with such and such a form must be true
   * we will develop more precise ways of formulating laws of truth as we go

# what is logic for?

## applications of logic

* logic has various applications 
   * computer science
   * linguistics
   * philosophy
   * the foundations of mathematics

## applications of logic 

* we focus on its application to
   * making the logical form of a proposition explicit
   * formally representing the structure of arguments
   * testing for the validity of arguments
* that is, the main 'practical' skills we focus on in this class are these
* this should help if you find yourself asking 'what's the point of this?'

## applications of logic

* this will involve 
   * learning to translate English into a formal language
   * identifying the elements of arguments in English 
   * learning how to *prove* that an argument is valid
* these applications are all very well
* but the aim of this course is to give you a much deeper understanding of what logic is
* so let's turn to some fundamental concepts

# propositions

## truth and propositions

* a **proposition** is something which can be **true** or **false**

## propositions and sentences

* propositions are not sentences, even though sentences are the kind of thing
  that can be true or false
* sentences can be said to *express* propositions
* a declarative sentence is true (as used in a context) if it expresses a true
  proposition and is false if it expresses a false proposition

## what is logic (again)?

* logic concerns itself with the laws which govern the **truth** of **propositions**

## laws of truth for single propositions

* logic, as we will see will often not tell us whether a proposition is true or false but sometimes it will
* e.g. if a proposition has so-and-so a form, it must be true / it must be false

## laws of truth for sequences of propositions

* we are often more interested in the question of whether a proposition with some form or another *must be true* if a sequence of propositions with some other form or another are true
* these sequences are what we call **arguments** . . .

# arguments

## what is an argument?

* an **argument** is a sequence of propositions
* a **sequence** is a collection of objects in a particular order
* the final proposition in the sequence is the **conclusion** of the argument
* the other propositions in the sequence (if any) are the **premises** of the
  argument

## identifying conclusions

* in ordinary language, conclusions are often introduced by words like
  'therefore', 'hence', 'thus', 'so', 'it follows that'

## identifying premises 

* in ordinary language premises are often introduced by words like 'because',
  'since', and 'given that'

## an argument

* all humans are mortal. socrates is a human. therefore, socrates is mortal
* what is the conclusion of this argument?
* what are its premises?

## an argument

* since all humans are mortal and socrates is a human, socrates is mortal 
* what is the conclusion of this argument?
* what are its premises?

## standard form

* we can represent the argument (in **standard form**) as follows:

. . .

::: arg

--------- ------------------------
   P1.    All humans are mortal
   P2.    Socrates is a human
   C1.    Socrates is mortal
--------- ------------------------

:::

* is this a good argument? why?
* this is a **valid** argument

## an argument

* all humans are mortal. socrates is not a human. therefore, socrates is not mortal
* what is the conclusion of this argument? what are its premises?

## an argument

* since all humans are mortal and socrates is a human, socrates is not mortal
* what is the conclusion of this argument? what are its premises?

## in standard form

* we can represent the argument as follows:

. . .

::: arg

--------- --------------------------
  P1.     All humans are mortal
  P2.     Socrates is not a human
  C1.     Socrates is not mortal
--------- --------------------------

:::

* is this a good argument?
* this is an **invalid** argument
* bad arguments are arguments too

## good and bad arguments

* there are good arguments and there are bad arguments
* there are **valid** arguments and there are **invalid** arguments
* there are **sound** arguments and there are **unsound** arguments
* validity and soundness have precise definitions in logic . . .

# arguments and validity

## validity

* an argument is **valid** if and only if, in virtue of its form, it is
  impossible for its conclusion to be false if its premises are true
* an argument is **valid** if and only if, because of its form, the conclusion
  cannot be false if the premises are true

## validity

* an argument is **valid** if and only if, in virtue of its form, the
  conclusion must be true if the premises are true
* an argument is **valid** if and only if, because of its form, it is necessary
  for its conclusion to be true if its premises are true

## validity

* we can develop our understanding of validity in two steps 
* first: an argument is valid if and only if, in virtue of its form, *it is
  impossible for its conclusion to be false if its premises are true*
* second: an argument is valid if and only if, *in virtue of its form, it is
  impossible for its conclusion to be false if its premises are true*

## necessary truth preservation

::: arg

--------- ----------------------------------------------------
   P1.    If Trump colluded with Russia, he will go to jail
   P2.    Trump colluded with Russia
   C1.    Trump will go to jail
--------- ----------------------------------------------------

:::

* is it possible for the conclusion to be false if the premises of this
argument are all true?

## necessary truth preservation

::: arg

--------- ----------------------------------------------------
  P1.     If Trump colluded with Russia, he will go to jail
  P2.     Trump will go to jail
  C1.     Trump colluded with Russia
--------- ----------------------------------------------------

:::

* is it possible for the conclusion to be false if the premises of this
  argument are all true?

## argument forms

::: arg

--------- ---------------------------------------------------------
  P1.     Either Trump will go to jail or he will be re-elected
  P2.     Trump will not go to jail
  C1.     Trump will be re-elected
--------- ---------------------------------------------------------

:::

## argument forms

::: arg

--------- ------------------------------------------------------------
   P1.    Either Bolsanaro will be deposed or he will be re-elected
   P2.    Bolsanaro will not be deposed
   C1.    Bolsanaro will be re-elected
--------- ------------------------------------------------------------

:::

## argument forms

::: arg

--------- -----------------------
   P1.    Either **A** or **B**
   P2.    Not **A**
   C1.    **B**
--------- -----------------------

:::

## argument forms and the laws of truth 

* any argument with this form is a valid argument
* this is a valid argument form
* we have discovered a law of truth: any argument with premises of the form above and with a conclusion of the form above is such that if the premises are true, then, in virtue of its form, it is not possible for its conclusion to be false

## valid argument forms

::: arg

--------- ---------------------
  P1.     If **A** then **B**
  P2.     **A**
  C1.     **B**
--------- ---------------------

:::

## valid argument forms

::: arg

--------- ---------------------
   P1.    If **A** then **B**
   P2.    Not **B**
   C1.    Not **A**
--------- ---------------------

:::

## valid argument forms

::: arg

--------- ---------------------
  P1.     If **A** then **B**
  P2.     If **B** then **C**
  C1.     If **A** then **C**
--------- ---------------------

:::

## validity and form

* sometimes it is impossible for the conclusion of an argument to be false if
  its premises are all true, but not in virtue of the form of the argument

## validity and form

::: arg

--------- -------------------------
  P1.     This chair is red
  C1.     This chair is coloured
--------- -------------------------

:::

* is it possible for the conclusion to be false if the premises of
    this argument are all true?

## validity and form

::: arg

--------- --------
  P1.     **A**
  C1.     **B**
--------- --------

:::

* this is not a valid argument form
* to see why, we need only consider the
  following argument which has the same form, but whose conclusion can be false even when its premises are true

## validity and form

::: arg

--------- ---------------------
  P1.     This chair is red
  C1.     This chair is blue
--------- ---------------------

:::

## validity and form

* beware! In other areas of philosophy, validity is often defined
    without reference to the form of the argument
* the notion of validity we are interested in is sometimes called
    **formal validity** to distinguish it from this sense of validity

## validity and form  

* we are going to develop a more precise analysis of validity
* we are going to develop a more precise conception of the form of an argument
* we are going to look at methods for determining whether a particular argument
  is formally valid

# soundness

## what is soundness?

* an argument is **sound** if and only if (i) it is valid and (ii) all of its
  premises are true

## an argument

::: arg

--------- -----------------------------------------------------
   P1.    If Australia is a republic then it has a president
   P2.    Australia is a republic
   C1.    Australia has a president
--------- -----------------------------------------------------

:::

## an argument

::: arg

--------- -----------------------------------------------------
   P1.    If Australia is a republic then it has a president
   P2.    Australia is not a republic
   C1.    Australia does not have a president
--------- -----------------------------------------------------

:::

## an argument

::: arg

--------- -------------------------------------------------------
   P1.    If Australia is a republic then the monarchists lost
   P2.    If the monarchists lost then the republicans won
   C1.    If Australia is a republic then republicans won
--------- -------------------------------------------------------

:::

## soundness

* while soundness is a very important feature of an argument, we will be
  focusing almost entirely on validity

# wrapping up

## this lecture

* what is logic?
* what is logic for?
* central concepts of logic:
    * propositions and truth
    * arguments
    * validity and soundness

## upcoming lectures

* lecture 2, connectives and logical form
* lecture 3, the formal language PL
