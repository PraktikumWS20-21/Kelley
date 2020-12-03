# Kelley
The .ftl file of the Kelley-formalization.

# Errors during parsing:

 - "a" is used by phrases like "x is a set", so we should never define something like "Let a, b stand for objects." This returns an "unexpected 'a'".
 - $ is not yet supported.
 - section is not yet supported.
 - \ is not yet supported. ("\neq")
 - No match in record selector trmName -- what's this?
