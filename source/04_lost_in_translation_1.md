---
title: "lecture 04, lost in translation 1"
subtitle: phil1012 introductory logic
---

# overview

## last lecture 

* in the last lecture we introduced the formal language PL
* one thing we did not discuss was how to translate sentences of English into PL

## this lecture

* in this lecture we take up the issue of translating English sentences into PL
* we also say a little bit about translating PL back into English
* we talk about the distinction between what is said and what is merely implied or implicated by an utterance of a sentence

## learning outcomes

* after doing the relevant reading for this lecture, listening to the lecture, and attending the relevant tutorial, you will be able to:
    * explain the difference between what is said, what is implied, and what is implicated by the utterance of a sentence
    * distinguish between what is said, the proposition expressed by an utterance of a sentence in a context, and what is merely implied or implicated by an utterance of a sentence in a context
    * translate English sentences into PL using a glossary of symbols

## required reading

* section 6.1 of chapter 6

# translating English sentences into PL 

## translating English sentences into PL 

* translating English sentences into PL is a bit like translating from one natural language into another 
* when translating from English into PL, we are aiming to capture the **truth conditions** of the English sentence in PL

## translating English sentences into PL 

* earlier we learned about the connectives and the corresponding English expressions 
* we used 'and' to introduce conjunction $\land$ 
* we used 'or' to introduce disjunction $\lor$ 
* we used 'if . . . then' to introduce the conditional $\rightarrow$  
* we used 'not' to introduce negation $\lnot$  

## translating English sentences into PL  

* we also learned about the idea of a basic proposition as opposed to a compound proposition 
* when we are translating English into PL we will want to identify the basic propositions in the English sentence
* and we will want to identify the connectives that connect these basic propositions

## translating English sentences into PL  

* one important thing to keep in mind is that negations are compound propositions
* the proposition expressed by "Jane is not tall" is a compound proposition 
* it is made up of the basic proposition "Jane is tall" and connective negation $\lnot$

## glossaries

* we translate basic propositions using symbols like: $A$, $B$, $C$, etc.
* but we need a way of keeping track of what these symbols stand for  
* so we use a **glossary** 
* a glossary is a list of symbols and their meanings

## glossaries

* here is an example of a glossary:
    * $A$: Jane is tall
    * $B$: Jane is smart
    * $C$: Jane is happy
* we can use this glossary to translate "Jane is tall and Jane is smart but Jane is not happy" as:
    * $A \land B \land \lnot C$

## translating English sentences into PL 

* often English sentences do not wear their form on their sleeve, and you will have to think about how to translate them 
* the question to ask yourself when faced with an English sentence is this: what is the main connective? 
* then, of each of the parts of the sentence, ask yourself: what is the main connective?  
* keep doing this until you have identified the basic propositions and the connectives that connect them

## translating English sentences into PL  

* one thing you'll quickly discover is that a proposition may be a conjunction even though it doesn't involve the word 'and' 
* the following is a conjunction even though it doesn't involve the word 'and': Jane is tall but smart 

## translating English sentences into PL   

* another thing you'll discover is that sometimes you need to 'expand' the English sentence to see its logical form  
* this is the case when you encounter a conjunctive or disjunctive noun, verb, or adjectival phrase 

## expanding conjunctive phrases

* consider the following sentence: 
    * Jane and John are tall 
* this sentence is a conjunction of two propositions: Jane is tall and John is tall (namely: $A \land B$)
* consider the following sentence: 
    * Jane is tall and smart 
* this sentence is a conjunction of two propositions: Jane is tall and Jane is smart (namely: $A \land B$)

## expanding disjunctive phrases 

* consider the following sentence:
    * Jane or John is tall 
* this sentence is a disjunction of two propositions: Jane is tall and John is tall (namely: $A \lor B$)
* consider the following sentence:
    * Jane is tall or smart 
* this sentence is a disjunction of two propositions: Jane is tall and Jane is smart (namely: $A \lor B$)

## translating English sentences into PL  

* finally, note that "if" doesn't always introduce the antecedent of a conditional  
* it does in "if Jane is tall then Jane is smart" 
* but it doesn't in "Jane is tall only if she is smart" 
* the inclusion of "only" before "if" reverses the role of "if"

# truth and appropriateness

## truth and appropriateness

* one of the main challenges, when translating English sentences into PL, is to capture the **truth conditions** of the English sentence
* the truth conditions relate to what would make the English sentence true or false in a given context 
* we need to distinguish between the truth conditions of an English sentence and its **appropriateness** in a given context

## truth and appropriateness

* there is a distinction between **sentences** and **utterances**
* a speaker might utter a sentence, and express a proposition, which may be
  true or false
* the act of uttering a sentence is itself called an **utterance**
* an utterance can be **appropriate** or **inappropriate**

---

* consider the following exchange:
    * you: where is the general lecture theatre?
    * me: through the main entry, across the lawn, and on the right
* my utterance is **true** and **appropriate**

---

* consider the following exchange:
    * you: Where is the general lecture theatre?
    * me: \# in Sydney
* my utterance is **true** and **inappropriate**
* in what sense was my utterance inappropriate?
* it was uncooperative
* what are the rules governing appropriate utterances?

---

* what's the point of knowing the distinction between truth and falsity and appropriateness and inappropriateness?
* well, we are aiming to capture the **truth conditions of an utterance** in our translations
* so we need to be able to tell the difference between a sentence being true but inappropriate to utter in a context and its being false as uttered in a context

# what is said and what is merely implicated

## what is said and what is merely implicated

* there is another important distinction between . . .
    * what is **said**
    * what is **implicated**

---

* consider another example:
    * you: Did you pass the exam?
    * me: If I didn't, I'm fool

---

* what is **said**: if I didn't pass the exam, I am a fool
    * $P$: I passed the exam
    * $F$: I am a fool
    * $(\lnot P \rightarrow F)$

---

* what is **implicated**: I passed the exam
    * $P$: I passed the exam
    * $F$: I am a fool
    * $P$

---

* interestingly, it was by **flouting** a conversational maxim that I managed to convey this

---

* what's the point of knowing the distinction between what is said and what is implicated by an utterance?
* well, we are aiming to translate what is said by an utterance
* so it is important to be able to distinguish between what is said and what is merely implicated


# wrapping up

## this lecture

* we looked at some important distinctions in the philosophy of language which can help us with our translations
* we are aiming, in our translations, to capture only what is said, not what is implied or implicated by an utterance

## next lecture

* [lecture 05, the semantics of PL](05_the_semantics_of_PL.html) 



