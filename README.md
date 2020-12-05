# Kelley
The .ftl file of the Kelley-formalization.

# Errors during parsing:

 - <del>"a" is used by phrases like "x is a set", so we should never define something like "Let a, b stand for objects." This returns an "unexpected 'a'".</del> Seems to be OK if one has the right expression.
 - $ is not yet supported.
 - <del>section is not yet supported.</del>
 - \ is not yet supported. ("\neq")
 - <del>No match in record selector trmName -- what's this?</del> This looks like a signal that one should change his expression of defining a new notion.
