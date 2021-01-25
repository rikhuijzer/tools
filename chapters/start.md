# Where it all starts {#sec:start}

This book argues that you should primarily focus on interacting with the computer via text.
There are multiple reasons for this.
Firstly, the number of things you can express with text scales exponentially with the number of words.
For instance: given 26 letters in the alphabet, you can express $26$ different things with one letter, $26 \cdot 26$ different things with two letters, to $26^n$ different things with $n$ letters.
So, suppose all the programs in the world are required to be 7 letters, like `bigtree`, and all the programs take 3 letters of input.
Then, you can choose from $26 \cdot 7 = 8.0 \cdot 10^9$ programs, and each program can take $26^3 \approx 17 500$ different inputs.
Imagine having $8.0 \cdot 10^9$ icons on your desktop and, after opening a program, being presented with $17 500$ buttons.
Another benefit of text is that you can exchange it easily via online communcations.
A tutorial for a text-based tool includes sentences such as:

> After that, run
> ```
> move A B
> ```

whereas, graphical user interface users have to rely on tutorials such as:

> After that, click on the "tools" button in the menu.
> Then, click on "move" and drag `A` to `B` in the window.

Finally, tools are written in code (text) and other tools as well.
Therefore, the default interface between tools is text, and a GUI is often just a layer on top.
In the best case, software built on top of of other software implements all features, but usually the upper layers only contain a subset.

This book will support readers on Microsoft Windows, Apple MacOS and Linux.
All the operating sytems have one thing in common: the _terminal_[^terminal].

[^terminal]: Actually, most people will use a _terminal emulator_ because most people will use a graphical interface and then open a window *emulating* a terminal.

Subsections:

- Set up terminal with memory; fuzzy search (nope, this is advanced an should be appendix)
- Window management and shortcuts.
