# Logic programming with Prolog

The project consists of small logic programs written in Prolog language. 

## List of programs

* [**Cross Pair Counter:**](#cross-pair-counter) calculates cross pairs between two lists
* [**Integrate:**](#integrate) numerical integration with Trapezoidal rule
* [**Times 3:**](#times-3) triples the values in the list
* [**NFA:**](#nfa) determines whether a given string belongs to the defined language patterns
* [**Pell numbers:**](#pell-numbers) generates a sequence of Pell numbers with a specified length
* [**Range product:**](#range-product) calculates the product of all numbers within a specified range
* [**Romeo and Juliette:**](#romeo-and-juliette) gives the answers based on facts and rules

## About implementation
Prolog is a high-level programming language specifically designed for symbolic and logical reasoning. Its name is derived from "PROgramming in LOGic." Prolog operates based on a formal system of rules and facts, utilizing a declarative programming paradigm centered around logical relations and inference rules.

## How to execute
Use SWI-Prolog, available at https://www.swi-prolog.org, to execute the program. Follow these steps:

1. **Open in SWI-Prolog:**
   * Launch SWI-Prolog.
   * Open the program within the SWI-Prolog environment.

2. **Using Command Line Arguments:**
   * Interact with the program by providing requests as command-line arguments.

## Program description

### Cross Pair Counter

This program calculates cross pairs between two lists. Both lists must have the same length and an even number of elements:

AxB = $[[a_0, b_1], [b_0, a_1], [a_2, b_3], [b_2, a_3], ..., [a_{n-1}, b_n], [b_{n-1}, a_n]]$

where A = $[a_0, a_1, ..., a_n]$ and B = $[b_0, b_1, ..., b_n]$.

####  Input Example

To calculate cross pairs, use the following function: 

    cross_pair([1, 2, 3, 4, 5, 6], ['a', 'b', 'c', 'd', 'e', 'f'], AxB)


### Integrate
The program is a Prolog implementation of numerical integration with Trapezoidal rule 
using function $f(y) = x^2$ .

####  Input Example

Use the function _integrate_ in the following form: 
    
    integrate(A, B, N, F, R).

    A: lower bound
    B: upper bound
    N: number of the subintervals
    F: function 
    R: result

**Example:** integrate(1, 2, 100000, f, R).

### Times 3
This program operates on a list of numbers, 
transforming each number by tripling its value to create a new list. The program accepts a list of numbers
as input and generates another list containing each number multiplied by 3.

#### Input example

To use the program, call the _map_ predicate in following format:
    
    map([1,2,3,4,5,10], times3, R).

### NFA

This program serves as an implementation of a Nondeterministic Finite Automaton (NFA) 
designed to recognize strings in a specified language defined by the following patterns:

**Pattern 1 (accept1):**  $c(b|aa) * (dc)?$ \
**Pattern 2 (accept2):**  $a + (a|cd) * |(bc*)$

The program employs a Nondeterministic Finite Automaton (NFA) model
to determine whether a given string belongs to the defined language patterns.

#### Input examples 
    accept1([c,b,b,a,a,d,c]). 
    accept1([c,a,a,d,c]). 
    accept1([c,a,a,b,b,b,a,a,d,c]).

    accept2([a,a,a,c,d]). 
    accept2([a,a,a,c,d,a]).  
    accept2([a,a,a,c,d,a,c,d]). 
    accept2([a,c,d,a,c,d]). 

### Pell numbers

The program is designed to generate a sequence of Pell numbers with a specified length. 

Pell numbers are a sequence of integers where each number (starting from the third term) is the sum of twice the preceding number and 
the number before that. The sequence starts with 0 and 1, followed by 2, 5, 12, 29, and so on.

#### Input example:
    pell(8,P).

    8: length of the sequence 
    P: sequence of Pell numbers 

**Note:** if the output exceeds 8 numbers, you have the option to modify the default maximum depth using the following command: \
`set_prolog_flag(answer_write_options, [quoted(true), portray(false), max_depth(20), 
spacing(next_argument)]).`

### Range product
The program calculates the product of all numbers within a specified range. 

#### Input example: 
Provide the desired range as input to the program to calculate the product 
of numbers within that range in following form: **range product(From, To, Res).**

    range_product(4,7,Res).

### Romeo and Juliette
This Prolog logic program revolves around the story of Romeo and Juliette. It determines 
whether the relationship between Romeo and Juliette could lead to any dramatic outcomes.

#### Input examples: 
To make requests, you can use following commands:

*Is Romeo Monetecchi?*
    
    family(romeo, montecchi).

*Is Juliette Capuleti?*

    family(giulietta, capuleti).

*Are Montecchi and Capuleti enemies?*
    
    enemies(montecchi, capuleti).
    enemies(capuleti, montecchi).

*If Rome and Juliette are together, is there any drama?*

    drama(romeo, giulietta).
    drama(giulietta, romeo).

