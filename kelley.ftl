% Kelley Morse Theory of Sets and Classes

% We formalize the 

% Appendix: ELEMENTARY SET THEORY 

% of John L. Kelley 
% GENERAL TOPOLOGY 
% D. Van Nostrand Company Inc. 1955
%
% The appendix develops what is known as Kelley-Morse
% class theory (KM). 
% Kelley writes: "The system of axioms adopted is a variant
% of systems of Skolem and of A.P.Morse and owes much to
% the Hilbert-Bernays-von Neumann system as formulated
% by Gödel."

% This file covers the first 56 top level sections of the appendix.
% It uses SADs inbuilt class notion and mechanisms to model the
% classes of Kelley. We have built the class notion into 
% Naproche-SAD by replacing "set" by "class"

% This file checks in ~ 1 min on my laptop.

\documentclass[a4paper,draft]{amsproc}
\title{\textbf{Kelley}}

\date{}
\begin{document}

\theoremstyle{plain}
 \newtheorem{theorem}{Theorem}[section]
 \newtheorem{lemma}{Theorem}[section]
 \newtheorem{proposition}{Theorem}[section]
\theoremstyle{definition}
 \newtheorem{example}{Example}[section]
 \newtheorem{definition}{Definition}[section]
 \newtheorem{signature}{Signature}[section]
\theoremstyle{remark}
 \newtheorem{remark}{Remark}[section]
 \newtheorem{notation}{Notation}[section]
\theoremstyle{axiom}
 \newtheorem{axiom}{Axiom}[section]
 \numberwithin{equation}{section}

\newenvironment{forthel}{}{}
\maketitle


\begin{forthel}
[synonym element/-s]

\begin{signature}[ElmSort]
An element is a notion.
\end{signature}

\section{The Classification Axiom Scheme}

Let $x, y, z, r, s, t, u, v, a, b, c, d, e$ stand for classes.

Let $a \neq b$ stand for $a$ != $b$.
Let $a \in b$ stand for $a$ is an element of $b$.

% Axiom I. Axiom of extent.
\begin{axiom} For each $x, y$  
it is true that $x = y$ if and only if for each $z$\ $z \in x$ 
when and only when $z \in y$.
\end{axiom}

% II Classification axiom-scheme corresponds to the way
% "classifications", i.e., abstraction terms are handled
% in Naproche-SAD

[synonym set/-s]

% Definition 1
\begin{definition} 
$x$ is a set iff for some $y$ $x \in y$.
\end{definition}

\section{ELEMENTARY ALGEBRA OF CLASSES}

% Definition 2
\begin{definition} 
$x \cup y = \{$set $z : z \in x$ or $z \in y \}$.
\end{definition}

% Definition 3
\begin{definition} 
$x \cap y = \{$set $u : u \in x$ and $u \in y \}$.
\end{definition}

Let the union of $x$ and $y$ stand for $x \cup y$.
Let the intersection of $x$ and $y$ stand for $x \cap y$.

% Theorem 4
\begin{theorem}
$(z \in x \cup y$ iff $z \in x$ or $z \in y)$
and $(z \in x \cap y$ iff $z \in x$ and $z \in y)$.
\end{theorem}

% Theorem 5
\begin{theorem}
$x \cup x = x$ and $x \cap x = x$.
\end{theorem}

% Theorem 6
\begin{theorem}
$x \cup y = y \cup x$ and $x \cap y = y \cap x$.
\end{theorem}

% Theorem 7
\begin{theorem}
$(x \cup y) \cup z = x \cup (y \cup z)$ 
and $(x \cap y) \cap z = x \cap (y \cap z)$.
\end{theorem}

% Theorem 8
\begin{theorem}
$x \cap (y \cup z) = (x \cap y) \cup (x \cap z)$
and $x \cup (y \cap z) = (x \cup y) \cap (x \cup z)$.
\end{theorem}

% 9 Definition, as a parser directive.
% Definition 9
Let $a \notin b$ stand for $a$ is not an element of $b$.

% Definition 10
\begin{definition} $\sim x = \{$set $y : y \notin x\}$.\end{definition}
Let the complement of $x$ stand for $\sim x$.

% Theorem 11
\begin{theorem}
$\sim (\sim x) = x$.
\end{theorem}

% Theorem 12 (De Morgan)
\begin{theorem}
$\sim (x \cup y) = (\sim x) \cap (\sim y)$ 
and $\sim (x \cap y) = (\sim x) \cup (\sim y)$.
\end{theorem}

% Theorem 13
\begin{definition} $x \sim y = x \cap (\sim y)$.\end{definition}

% Theorem 14
\begin{theorem}
$x \cap (y \sim z) = (x \cap y) \sim z$.
\end{theorem}

% Definition 15
\begin{definition} $0 = \{$set $x : x \neq x\}$.\end{definition}
Let the void class stand for $0$.
Let zero stand for $0$.

% Theorem 16
\begin{theorem}
$x \notin 0$.
\end{theorem}

% Theorem 17
\begin{theorem}
$0 \cup x = x$ and $0 \cap x = 0$.
\end{theorem}

% Definition 18
\begin{definition} $\cal{U} = \{$set $x : x = x\}$.\end{definition}
Let the universe stand for $\cal{U}$.

% Theorem 19
\begin{theorem}
$x \in \cal{U}$ if and only if $x$ is a set.
\end{theorem}

% Theorem 20
\begin{theorem}
$x \cup \cal{U} = \cal{U}$ and $x \cap \cal{U} = x$.
\end{theorem}

% Theorem 21
\begin{theorem}
$\sim 0 = \cal{U}$ and $\sim \cal{U} = 0$.
\end{theorem}

% Definition 22
\begin{definition} $\bigcap x = 
\{$set $z :$ for each $y$ if $y \in x$ then $z \in y\}$.\end{definition}

% Definition 23
\begin{definition} $\bigcup x = 
\{$set $z :$ for some $y$ $(z \in y$ and $y \in x)\}$.\end{definition}

Let the intersection of $x$ stand for $\bigcap x$.
Let the union of $x$ stand for $\bigcup x$.

% Theorem 24
\begin{theorem}
$\bigcap 0 = \cal{U}$ and $\bigcup 0 = 0$.
\end{theorem}

% Definition 25
\begin{definition} $x$ is a subclass of $y$ iff 
for each $z$ if $z \in x$ then $z \in y$.
\end{definition}

Let $x \subset y$ stand for $x$ is a subclass of $y$.
Let $x$ is contained in $y$ stand for $x \subset y$.

% Unnumbered
\begin{lemma}
$0 \subset 0$ and $0 \notin 0$.
\end{lemma}

% Theorem 26
\begin{theorem}
$0 \subset x$ and $x \subset \cal{U}$.
\end{theorem}

% Theorem 27
\begin{theorem}
$x = y$ iff $x \subset y$ and $y \subset x$.
\end{theorem}

% Theorem 28
\begin{theorem}
If $x \subset y$ and $y \subset z$ then $x \subset z$.
\end{theorem}

% Theorem 29
\begin{theorem}
$x \subset y$ iff $x \cup y = y$.
\end{theorem}

% Theorem 30
\begin{theorem}
$x \subset y$ iff $x \cap y = x$.
\end{theorem}

% Theorem 31
\begin{theorem}
If $x \subset y$ then $\bigcup x \subset \bigcup y$
and $\bigcap y \subset \bigcap x$.
\end{theorem}

% Theorem 32
\begin{theorem}
If $x \in y$ then $x \subset \bigcup y$ 
and $\bigcap y \subset x$.
\end{theorem}

\section{EXISTENCE OF SETS}

% Axiom of subsets.
\begin{axiom}
If $x$ is a set then there is a set $y$ such that for each
$z$ if $z \subset x$ then $z \in y$.
\end{axiom}

% This axiom is a kind of powerclass axiom, where the powerclass
% also has all subCLASSES as elements.

% Theorem 33
\begin{theorem}
If $x$ is a set and $z \subset x$ then $z$ is a set.
\end{theorem}

% Theorem 34
\begin{theorem}
$0 = \bigcap \cal{U}$ and $\cal{U} = \bigcup \cal{U}$.
\end{theorem}

% Theorem 35
\begin{theorem}
If $x \neq 0$ then $\bigcap x$ is a set.
\end{theorem}

% Definition 36
\begin{definition} $2^{x} = \{$set $y : y \subset x\}$.\end{definition}

% Theorem 37
\begin{theorem}
$\cal{U} = 2^{\cal{U}}$.
\end{theorem}

% Theorem 38
%[prove off]
\begin{theorem}
If $x$ is a set then $2^{x}$ is a set and for
each $y$  $y \subset x$ iff $y \in 2^{x}$.
\end{theorem}
\begin{proof}
Let $x$ be a set.
Take a set $y$ such that for each $z$ 
if $z \subset x$ then $z \in y$.
$2^{x} \subset y$.
\end{proof}
%[/prove]

% The Russell paradox.
% Unnumbered
\begin{definition} $\cal{R} = \{$set $x : x \notin x\}$.\end{definition}

% Unnumbered
\begin{theorem}
$\cal{R}$ is not a set.
\end{theorem}

% Theorem 39
\begin{theorem}
$\cal{U}$ is not a set.
\end{theorem}

% Definition 40
\begin{definition} $\{x\} = \{$set $z :$ if $x \in \cal{U}$ then $z = x\}$.\end{definition}
Let the singleton of $x$ stand for ${x}$.

% Before We used <x> instead of {x} since {x} was an inbuilt 
% set notation   

% Theorem 41
\begin{theorem}
If $x$ is a set then for each $y$ $y \in \{x\}$ iff $y = x$.
\end{theorem}

% Theorem 42
\begin{theorem}
If $x$ is a set then $\{x\}$ is a set.
\end{theorem}
\begin{proof}
Let $x$ be a set. Then $\{x\} \subset 2^{x}$ 
and $2^{x}$ is a set.
\end{proof}

% Theorem 43
\begin{theorem}
$\{x\} = \cal{U}$ if and only if $x$ is not a set.
\end{theorem}

% Theorem 44a
\begin{theorem}
If $x$ is a set then $\bigcap \{x\} = x$ 
and $\bigcup \{x\} = x$.
\end{theorem}

% Theorem 44b
\begin{theorem}
If $x$ is not a set then $\bigcap \{x\} = 0$
and $\bigcup \{x\} = \cal{U}$.
\end{theorem}

% Axiom IV. 
\begin{axiom}
If $x$ is a set and $y$ is a set then $x \cup y$ is a set.
\end{axiom}

% Definition 45
\begin{definition} $\{x,y\} = \{x\} \cup \{y\}$.\end{definition}
Let the unordered pair of $x$ and $y$ stand for $\{x,y\}$.

% The following has been a problem before:
% We use <x,y> instead of {x y} because Naproche-SAD requires
% some symbolic or textual material between the variables
% x and y. We use {x;y} instead of {x,y} because the latter
% notion is an inbuilt set notation of Naproche-SAD.

% Theorem 46a
\begin{theorem}
If $x$ is a set and $y$ is a set 
then $\{x,y\}$ is a set and $(z \in \{x,y\}$ iff $z=x$ or $z=y$). 
\end{theorem}

% Theorem 46b
\begin{theorem}
$\{x,y\} = \cal{U}$ if and only if $x$ is not a set or $y$ is not a set.
\end{theorem}

% Theorem 47a
\begin{theorem}
If $x,y$ are sets then $\bigcap \{x,y\} = x \cap y$
and $\bigcup \{x,y\} = x \cup y$.
\end{theorem}
\begin{proof}
Let $x,y$ be sets.
$\bigcup \{x,y\} \subset x \cup y$.
$x \cup y \subset \bigcup \{x,y\}$.
\end{proof}

% Theorem 47b
\begin{theorem}
If $x$ is not a set or $y$ is not a set then
$\bigcap \{x,y\} = 0$ and $\bigcup \{x,y\} = \cal{U}$.
\end{theorem}

\section{ORDERED PAIRS: RELATIONS}

% Definition 48
\begin{definition} $[x,y] = \{\{x\},\{x,y\}\}$.\end{definition}
Let the ordered pair of $x$ and $y$ stand for $[x,y]$.

% Theorem 49a
\begin{theorem}
$[x,y]$ is a set if and only if $x$ is a set and $y$ is a set.
\end{theorem}

% Theorem 49b
\begin{theorem}
If $[x,y]$ is not a set then $[x,y] = \cal{U}$.
\end{theorem}

% Theorem 50a
\begin{theorem}
If $x$ and $y$ are sets then 
  $\bigcup [x,y] = \{x,y\}$ and
  $\bigcap [x,y] = \{x\}$ and
  $\bigcup \bigcap [x,y] = x$ and
  $\bigcap \bigcap [x,y] = x$ and
  $\bigcup \bigcup [x,y] = x \cup y$ and
  $\bigcap \bigcup [x,y] = x \cap y$.
\end{theorem}

% Theorem 50b
\begin{theorem}
If $x$ is not a set or $y$ is not a set then
  $\bigcup \bigcap [x,y] = 0$ and
  $\bigcap \bigcap [x,y] = \cal{U}$ and
  $\bigcup \bigcup [x,y] = \cal{U}$ and
  $\bigcap \bigcup [x,y] = 0$.
\end{theorem}

% Definition 51
\begin{definition} $1^{st}$ coord $z = \bigcap \bigcap z$.\end{definition}

% Definition 52
\begin{definition} $2^{nd}$ coord $z = (\bigcap \bigcup z) \cup 
((\bigcup \bigcup z) \sim \bigcup \bigcap z)$.\end{definition} 
Let the first coordinate of $z$ stand for $1^{st}$ coord $z$.
Let the second coordinate of $z$ stand for$2^{nd}$ coord $z$.

% Theorem 53
\begin{theorem}
$2^{nd}$ coord $\cal{U} = \cal{U}$.
\end{theorem}

% Theorem 54a
\begin{theorem}
If $x$ and $y$ are sets 
then $1^{st}$ coord $[x,y] = x$ and $2^{nd}$ coord $[x,y] = y$.
\end{theorem}
\begin{proof}
Let $x$ and $y$ be sets.
$2^{nd}$ coord $[x,y] = (\bigcap \bigcup [x,y]) \cup 
((\bigcup \bigcup [x,y]) \sim \bigcup \bigcap [x,y])
= (x \cap y) \cup ((x \cup y) \sim x)
= y$.
\end{proof}

% Theorem 54b
\begin{theorem}
If $x$ is not a set or $y$ is not a set then
$1^{st}$ coord $[x,y] = \cal{U}$ and 
$2^{nd}$ coord $[x,y] = \cal{U}$.
\end{theorem}

% Theorem 55
\begin{theorem}
If $x$ and $y$ are sets and $[x,y] = [u,v]$ then
$x = u$ and $y = v$.
\end{theorem}

% We can interpret \cal{U} to mean undefined.
% Then ( , ) produces a a set or undefined.
% We can instead extend the signature (our language)
% by an elementary symbol ( , ), satisfying standard axioms ... .
% Ideally, we would like ( , ) to be an "object" and
% not a set. Sets will also be objects.

% Definition 56
\begin{definition} 
A class $r$ is a relation if and only if for each element $z$ of $r$
there is $x$ and $y$ such that $z = [x,y]$.
\end{definition}

Let $r, s, t$ stand for relations.

% Definition 57
\begin{definition}
$r \circ s = \{[x,z] | x, z$ are objects and there exists an object $b$ 
such that $[x,b] \in s$ and $[b,z] \in r\}$. 
\end{definition}

% Theorem 58
\begin{theorem}
$(r \circ s) \circ t = r \circ (s \circ t)$.
\end{theorem}
\begin{proof}
$(r \circ s) \circ t \subset r \circ (s \circ t)$ and
$r \circ (s \circ t) \subset (r \circ s) \circ t$.
\end{proof}

% Theorem 59a
\begin{theorem}
$r \circ (s \cup t) = (r \circ s) \cup (r \circ t)$.
\end{theorem}
\begin{proof}
$r \circ (s \cup t) \subset (r \circ s) \cup (r \circ t)$.
$(r \circ s) \cup (r \circ t) \subset r \circ (s \cup t)$.
\end{proof}

% Theorem 59b
\begin{theorem}
$r \circ (s \cap t) \subset (r \circ s) \cap (r \circ t)$.
\end{theorem}

% Definition 60
\begin{definition}
$r^{-1} = \{[b,a] | a, b$ are objects and $[a,b] \in r\}$.
\end{definition}
Let the relation inverse to $r$ stand for $r^{-1}$.

% Unnumbered
\begin{lemma*}
$r^{-1}$ is a relation.
\end{lemma*}

% Theorem 61
\begin{theorem}
$(r^{-1})^{-1} = r$.
\end{theorem}
\begin{proof}
$r \subset (r^{-1})^{-1}$.
$(r^{-1})^{-1} \subset r$.
\end{proof}

% Lemma 62a
\begin{lemma}
Assume $r \subset s$. Then $r^{-1} \subset s^{-1}$.
\end{lemma}

%[/prove]

% Lemma 62b
\begin{lemma}
$(r \circ s)^{-1} \subset (s^{-1}) \circ (r^{-1})$.
\end{lemma}
\begin{proof}
Let $u \in (r \circ s)^{-1}$.
Take $c$ and $a$ such that $u = [c,a]$.
Take an object $b$ such that ($[a,b] \in s$ and $[b,c] \in r$).
Indeed $[a,c] \in r \circ s$.
$[b,a] \in s^{-1}$ and $[c,b] \in r^{-1}$.
Then $[c,a] \in (s^{-1}) \circ (r^{-1})$.
\end{proof}

% Unnumbered
\begin{lemma}
$(s^{-1}) \circ (r^{-1}) \subset (r \circ s)^{-1}$.
\end{lemma}
\begin{proof}
$((s^{-1}) \circ (r^{-1}))^{-1} \subset ((r^{-1})^{-1}) \circ ((s^{-1})^{-1})$ (by 62b).
$((s^{-1}) \circ (r^{-1}))^{-1} \subset r \circ s$ (by 61).
$(((s^{-1}) \circ (r^{-1}))^{-1})^{-1} \subset (r \circ s)^{-1}$ (by 62a).
$(s^{-1}) \circ (r^{-1}) \subset (r \circ s)^{-1}$ (by 61).
\end{proof}

% Theorem 62
\begin{theorem}
$(r \circ s)^{-1} = (s^{-1}) \circ (r^{-1})$.
\end{theorem}
\begin{proof}
$(r \circ s)^{-1} \subset (s^{-1}) \circ (r^{-1})$.
$(s^{-1}) \circ (r^{-1}) \subset (r \circ s)^{-1}$.
\end{proof}

% Functions

% Since "function" is predefined in SAD3, we use the word "map" instead.

%[/prove]

[synonym map/-s]
% Definition 63
\begin{definition}
A map is a relation $f$ such that for each $a, b, c$
if $[a,b] \in f$ and $[a,c] \in f$ then $b = c$.
\end{definition}

Let $f, g$ stand for maps.

% Theorem 64
\begin{theorem}
If $f, g$ are maps then $f \circ g$ is a map.
\end{theorem}

% Definition 65
\begin{definition}
$\domain x = {object u | $ there exists an object $v$ such that $[u,v] \in x}$.
\end{definition}

% Definition 66
\begin{definition}
$\range x = {object v | $ there exists an object $u$ such that $[u,v] \in x}$.
\end{definition}

% Theorem 67
%\begin{theorem}
%$\domain \cal{U} = \cal{U}$ and $\range \cal{U} = \cal{U}$.
%\end{theorem}
%\begin{proof}
%If $x \in \cal{U}$ then $(x,0), (0,x) \in \cal{U}$.
%$x \in \domain \cal{U}$ and $x \in \range \cal{U}$.
%\end{proof}

% Signature 68
\begin{signature}
Let $f$ be a map. Let $u \in \domain f$.
The value of $f$ at $u$ is an object $v$ such that $[u,v] \in f$.
Let $f[u]$ stand for the value of $f$ at $u$.
\end{signature}

% Theorem 69
%\begin{theorem}
%If $x \notin \domain f$ then $f(x) = \cal{U}$.
%If $x \in \domain f$ then $f(x) \in \cal{U}$.
%\end{theorem}
%\begin{proof}
%If $x \notin \domain f$ then $\{y: (x,y) \in f\} = 0$ and $f(x) = \cal{U}$ (by 24).
%If $x \in \domain f$ then $\{y: (x,y) \in f\} \neq 0$ and $f(x)$ is a set (by 35).
%\end{proof}

% Theorem 70
\begin{theorem}
Let $f$ be a map. Then $f = \{[u,f(u)] | u \in \domain f\}$.
\end{theorem}

% Theorem 71
\begin{theorem}
Assume $\domain f = \domain g$ and for all $u \in \domain f f(u) = g(u)$. Then $f = g$.
\end{theorem}
\begin{proof}
Let us show that $f \subset g$.
Let $w \in f$. 
% Take objects $u, v$ such that $w=[u,v]$.
%  $u \in \domain f$ and $v = f(u)$.
% Then $u \in \domain g$ and $v = g(u)$.
Then $w \in g$. end.
Let us show that $g \subset f$.
Let $w \in g$.  
Take objects $u, v$ such that $w=[u,v]$.
$u \in \domain g$ and $v = g(u)$.
Then $u \in \domain f$ and $v = f(u)$.
Then $w \in f$. end.
\end{proof}


\end{forthel}

\end{document}