---
title: "MathJax Support for Markdown"
date: 2019-08-28T00:09:56+08:00
categories:
    - "markdown"
tags: 
    - "markdown"
    - "mathjax"
    - "guide"
---

This is just an article for testing MathJax in Markdown files.

You can use this as a testing template for all of your LaTeX math needs.



## Basics

This should be an inline math content \\(\LaTeX\\) with the LaTeX symbol.

The following block content should contain a sentence with the LaTeX symbol.

$$\LaTeX\text{ is awesome.}$$


### Whitespace

LaTeX treats whitespace characters such as tabs and spaces uniformly as one unit 
of space. 
A text that is composed of two tabs and 10 spaces consecutively is one space.

This is especially prominent in math mode (which MathJax is... always).

Try to render this, for example.

```latex
This is a LaTeX sentence (or I guess in MathJax).
```

And it'll render as the following:

$$ This is a LaTeX sentence (or I guess in MathJax). $$

Since MathJax is in... perpetual math mode and specifically made for rendering 
math formulae, we shouldn't have a problem with maintaining it.

Just a heads up.


### Commands

One of the main syntax you should mind in MathJax are the LaTeX commands.
Think of it like the HTML tags in LaTeX (although not really).

Here's the basic construct of a LaTeX command:

```latex
\commandname[option1,option2,...]{argument1}{argument2}...
```

Within commands and if allowed, you can nest commands. 
Take this example for example:

```latex
\sum_{i=0}^{6} = \frac{i^{2}}{ 2 \bmod (i * 4)} + i^{3}
```

$$ \sum_{i=0}^{6} = \frac{i^{2}}{ 2 \bmod (i * 4)} + i^{3} $$


### Reserved characters 

The following characters have special meaning to LaTeX.

```
# $ % ^ & _ { } ~ \
```

$$ # $ % ^ & _ { } ~ \ $$

As you can see, if rendered, it should result in an error.

In order to render them in text, you need to add an escape character. 
In this case, it's a backslash.

```latex
\# \$ \% \^ \& \_ \{ \} \~ \\
```

In the case of rendering it from Markdown, double slashes might be needed.

$$ \\# \\$ \% \\^ \\& \\_ \\{ \\} \\~ \\ $$



## Text formatting

You can do a little text formatting in a LaTeX math content (though it's pointless 
to do so).


### Literal text

You can make a text with `\text{}`.

```latex
\text{The quick brown fox jumps over the lazy dog.}
```

$$\text{The quick brown fox jumps over the lazy dog.}$$


### Boldface text

You can make a text boldface with `\textbf{}`.

```latex
\textbf{The quick brown fox jumps over the lazy dog.}
```

$$\textbf{The quick brown fox jumps over the lazy dog.}$$


### Italic text

To make a text block italic, enclose it with a `\textit{}` command.

```latex
\textit{The quick brown fox jumps over the lazy dog.}
```

$$\textit{The quick brown fox jumps over the lazy dog.}$$


### Monospaced text

In order for the text to be monospaced, enclose it with a `\texttt{}` (text teletype) command.

```latex
\texttt{The quick brown fox jumps over the lazy dog.}
```

$$\texttt{The quick brown fox jumps over the lazy dog.}$$


### Text in sans-serif font equivalent

Most importantly, you can make a text rendered in sans-serif with `\textsf{}` command.

```latex
\textsf{The quick brown fox jumps over the lazy dog.}
```

$$\textsf{The quick brown fox jumps over the lazy dog.}$$


### More options

You can see a lot more options from [this reference](https://en.wikibooks.org/wiki/LaTeX/Fonts).



## Math formatting

This is what you mostly came for, right?

All righty then.
Let's see what MathJax in Markdown (M in M?) can do.



### Fractions

For rendering fractions, you need to use the `\frac` command.
The command simply needs two positional arguments.

```latex
\frac{NUMERATOR}{DENOMINATOR}
```

For a bit of an example:

```latex
\frac{x_1 + y_2}{x_2 + y_1}
```

$$ \frac{x_1 + y_2}{x_2 + y_1} $$


### Roots

In order to create roots, you need the `\sqrt` command.
It only needs the content to be put inside of it as the argument. 

```latex
\sqrt{2a + b}
```

$$ \sqrt{2a + b} $$

Yes, you can nest some stuff.

```latex
\sqrt{\frac{2a + b}{a^2 - b^2}}
```

$$ \sqrt{\frac{2a + b}{a^2 - b^2}} $$

You can specify an optional argument to change the magnitude. 

```latex
\sqrt[\frac{1}{2}]{2a + b}
```

$$ \sqrt[\frac{1}{2}]{2a + b} $$


### Superscripts

In order to make superscripts, place it next to a caret character (`^`). 
To render it in more than one character, enclose it in curly brackets (`{}`).

```latex
2^2 * 2^{23} = 2^{25}
```

$$2^2 * 2^{23} = 2^{25}$$

You can also nest it within a superscript like so. 

```latex
2^{2^{10}} * 2^{23^2} = \infty
```

$$ 2^{2^{10}} * 2^{23^2} = \infty $$

OK, I've gone overboard with the scale so I just put infinity as the 
answer instead.


### Subscripts

For making subscripts, place it next to the underscore (`_`). 
Like the superscript command, if you include more than one character, 
enclose it in a pair of curly brackets (`{}`).

```latex
a_1 + a_2 + a_3 + ... + a_{14} = \frac{a_1 * a_{14}}{2}
```

$$ a_1 + a_2 + a_3 + ... + a_{14} = \frac{a_1 * a_{14}}{2} $$

Wait... That doesn't look right.

That's because in Markdown, underscores denote italics so 
be sure to escape them with a single backslash. 

So now, the result is this:

```latex
a\_1 + a\_2 + a\_3 + ... + a\_{14} = \frac{a\_1 * a\_{14}}{2}
```

$$ a\_1 + a\_2 + a\_3 + ... + a\_{14} = \frac{a\_1 * a\_{14}}{2} $$

Like superscripts and most of the commands, you can nest subscripts 
to another subscript (and other commands).

```latex
a\_{2\_{1}} + a\_{2\_{2}} = b\_{2\_{1}} + b\_{2\_{2}}
```

$$ a\_{2\_{1}} + a\_{2\_{2}} = b\_{2\_{1}} + b\_{2\_{2}} $$


### Greek letters

You can render Greek letters with the appropriate command.

`\alpha` for lowercase Greek letter alpha, 
`\beta` for lowercase Greek letter beta, 
`\gamma` for lowercase Greek letter gamma, 
`\Gamma` for uppercase Greek letter gamma, 
you get the point.

```latex
\alpha, \beta, \gamma, \Gamma, \pi, \Pi, \phi, \varphi, \mu, \Phi
```

$$\alpha, \beta, \gamma, \Gamma, \pi, \Pi, \phi, \varphi, \mu, \Phi$$


### A lot more!

You have a whole slew of mathematical symbols available. 
Please refer to [this list of LaTeX mathematical symbols](https://oeis.org/wiki/List_of_LaTeX_mathematical_symbols). 
Though I don't know what's missing symbols and whatnot (since I don't MathJax often) but 
it should be enough.

You can also go to 
[this web page that details using MathJax on Quora](https://math-on-quora.surge.sh/)
by Gilles Castel. 
It is specifically made for writing \\(\LaTeX\\) on Quora but it 
can be used as a general MathJax guide, anyways.
