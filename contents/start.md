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
Another benefit of text is that you can exchange it easily via online communications.
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

Before operating systems, such as Microsoft Windows, Apple MacOS and Linux, included fancy graphical user interfaces based around icons, the mouse and draggable windows, all the work was done from the terminal.
For example, an MS-DOS computer booting into something looking like

```
MS-DOS version 4.00
Copyright 1981,82,83,84,85 Microsoft Corp.

C>echo Hello
Hello
```

From this terminal, you could do anything you want.
You could start programs, move files, edit spreadsheets and send documents to printers.
However, although this is quite powerful, it is also unwieldy because the most basic terminals only allow you to do one tasks at the same time.
Also, browsing the web is difficult, because it is full of pictures and moving elements which can't be represented nicely via text.
That is why modern operating systems, by default, are built around the graphical user interface and still allow you to run something which looks like a terminal in a window.
This is also known as a _terminal emulator_.
The terminal emulator allows you to execute commands.
Specifically, it allows you to type a command which the system will then run.
Next, it will show you the output on the next line(s).
For example, to make a directory on Windows called `analysis` and rename it to `old-analysis`, you can do

```
Microsoft Windows [Version 10.0.18363.1316]
(c) 2019 Microsoft Corporation. All rights reserved.

C:\Users\John> mkdir tmp

C:\Users\John> cd tmp

C:\Users\John\tmp> mkdir analyis

C:\Users\John\tmp> dir
[...]
04/01/2021  09:36 PM     <DIR>     analysis
[...]

C:\Users\John\tmp> rename analysis old-analysis

C:\Users\John\tmp> dir
[...]
04/01/2021  09:36 PM     <DIR>     old-analysis
[...]
```

This behaviour with commands and its output on new lines is why a terminal emulator is also known as a _command line_.
From the command line, you can start applications via text.
In the rest of this chapter, the book will divert for a bit between operating systems, but this is only temporarily.

As a simple example, lets open the site of Stanford University in your favorite browser.
In this example, I assume that Firefox is your favourite browser, but you can also use

- Chrome via `chrome`,
- Safari via `safari` _or_
- Edge via `msedge`.

**Windows:**

Start the Command Prompt and type

```
start firefox https://stanford.edu
```

**Apple:**

...

**Linux:**

Start the terminal and type

```
firefox https://stanford.edu
```

## Commands

If you want to know more about commands, this section will list some common ones.
Otherwise, you can skip this section and come back to it when you need it.

