# Kelley
The .ftl file of the Kelley-formalization.

# Errors during parsing:

 - <del>"a" is used by phrases like "x is a set", so we should never define something like "Let a, b stand for objects." This returns an "unexpected 'a'".</del> Seems to be OK if one has the right expression.
 - $ is not yet supported.
 - <del>section is not yet supported.</del>
 - \ is not yet supported. ("\neq")
 - <del>No match in record selector trmName -- what's this?</del> This looks like a signal that one should change his expression of defining a new notion.
 - <del> [Parser] Error: "files/kelley-test.tex" (line 804, column 10) ForTheL.Pattern.patName: name already exists <- whats this </del> this happens when there is a double assignment of variables.
 - need to parse "unique"
 - unnumbered theorems not yet supported. (\begin{theorem*})
 - can we support TeX-commands like `\textnormal{something}`?
 
# Changes from kelley_geparst.tex to kelley-merge.tex:
 - !!! Note that kelley-merge.tex should be parsed with the program under the branch [math-mode-hack](https://github.com/PraktikumWS20-21/Naproche-SAD/tree/math-mode-hack) !!!
 - Definition 40: the singleton of x is denoted by <x>. We might not be able to change this.
 - \{...\} instead of {...} because of LaTeX
 - Attention: Theorem 67 and 69 were commented. Their proof have to be checked.
 - Definition 86 is false since I didn't find a correct way to write it. WIP
