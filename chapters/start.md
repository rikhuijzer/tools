# Where it all starts {#sec:start}

For most scientists, the biggest part of the work isn't in the lab or in the field.
It is, basically, moving text and data around.
By this, I mean that reports have to be written and updated, data has to be cleaned, and analyses have to be run, updated and re-run.

To do so effectively, [@sec:interacting] argues that you should primarily focus on interacting with the computer via text, and this is demonstrated in [@sec:command-line].

## Interacting via text {#sec:interacting}

To get things done on a computer effectively, the focus should be on interacting with it via text.
There are multiple reasons for this.
Firstly, the number of things you can express with text scales exponentially with the number of words.
For instance: given 26 letters in the alphabet, you can express $26$ different things with one letter, $26 \cdot 26$ different things with two letters, to $26^n$ different things with $n$ letters; also known as ordered sampling with replacement.
So, suppose all the programs in the world are required to be 7 letters, like `bigtree`, and all the programs take 3 letters of input.
Then, you can choose from $26 \cdot 7 = 8.0 \cdot 10^9$ programs, and each program can take $26^3 \approx 17.500$ different inputs.
Imagine having $8.0 \cdot 10^9$ icons on your desktop and, after opening a program, being presented with $17.500$ buttons.
Another benefit of text is that you can exchange it easily via online communcations.
A tutorial for a text-based tool includes sentences such as:

> After that, run
> ```
> move A B
> ```

whereas, graphical user interface users have to rely on tutorials such as:

> After that, click on the "tools" button in the menu.
> Then, click on "move" and drag `A` to `B` in the window.

which is confusing and verbose.
Another argument is that text is "the most powerful, useful, effective communication technology" because it [@hoare2014bet]

- is the most stable, that is, can be read in many years from now,
- can express many (abstract) things which can't be expressed in images such as "Human rights are moral principles" and
- is the most efficient communication technology.

Finally, tools are written in code, which is basically text.
Therefore, the default interface between tools is text, and a GUI is often just a layer on top.
In the best case, software built on top of of other software implements all features, but usually the upper layers only contain a subset.
From experience, I know that it is extremely frustrating to find these boundaries.
Usually, you only find these after investing a lot of time in a tool, and it means that you have migrate your existing project to another tool.
This is a bit like building your house from construction plans; only to realise halfway the project that the plan doesn't include a bathroom and that you have to switch over to other construction plans.

## Command line {#sec:command-line}

This book supports readers on the Microsoft Windows, Apple MacOS and Linux operating systems.
All these operating systems include a _command line_.
(Also known as the _terminal (emulator)_.)
From the command line, you can start applications via text.
Here, the book will divert for a bit between operating systems, but this is only temporalily.
From [@sec:julia] onwards, the knowledge is generic again.

### Windows

### Apple

*different assignment per OS, for example, open browser.*

### Linux

If you're only Linux, then you know where the terminal is.

need: 
- cd

firefox

Subsections:

- Set up terminal with memory; fuzzy search (nope, this is advanced an should be appendix)
- Window management and shortcuts.
