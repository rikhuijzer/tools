# Quick text editing {#sec:editing}

As an office worker, most of your day is spent on manipulating symbols.
You write papers, reports, notes, presentations, abstracts and maybe use writing to structure your thoughts.
Many of these symbol manipulations occur often.
For instance, think about the number of times that you have copied or deleted a full sentence, one word, or one or more paragraphs.
Over time, the time and effort spent on these tasks count up.
@yegge2012programmer even tells a story about how Mailman was an internal application built on top of *Emacs*, an advanced text editor:

> People still love it. 
> To this very day, I still have to listen to long stories from our non-technical folks about how much they miss Mailman. [...] 
> Last Christmas I was at an Amazon party, some party I have no idea how I got invited to, filled with business people, all of them much prettier and more charming than me and the folks I work with here in the Furnace, the Boiler Room of Amazon.
> Four young women found out I was in Customer Service, cornered me, and talked for fifteen minutes about how much they missed Mailman and Emacs, and how Arizona (the JSP replacement we'd spent years developing) still just wasn't doing it for them. 

This is mostly because these editors help you in getting things done more quickly.
In the rest of this chapter, I will provide a quick-start for Vi which is roughly the same as Vim (<www.vim.org>) and Neovim (<https://neovim.io>).
Vim is an improved version of Vi and Neovim is created by a group of developers who weren't happy with Vim and decided to work on their own copied version.
Both editors can be used mostly interchangibly and that is why I mean Vi, Vim or Neovim when I mention Vim.
I personally prefer Neovim, but Vim works great too.
That this book focusses on Vim doesn't mean that I don't like it's direct competitor, Emacs.
I think both Vim and Emacs can save users tremendeous amounts of time.
For me, Vim seemed more suitable, because it's less oriented around only a few keys making it less prone to repetitive strain injury.
Also, Emacs wasn't as quick.
On the other hand, Emacs has many great productivity enhancing tools such as Org-mode (https://orgmode.org).
So, both have their pro's and con's.
If you're unable to do touch typing, then consider reading Chris Wellons' blog about Vim and touch typing (<https://nullprogram.com/blog/2017/04/01/>).

Vim enhances productivity by introducing different modes.
Different modes allow the behaviour of a key, say `d`, to change depending on the mode.
In this modal editor, for example, `d` types d in insert mode; like a normal text editor.
However, when pressing `Esc`, the editor switches to normal mode and now `d` will appear to do nothing.
Only if you press `d` twice, the line on which you are will be deleted.
These editors leverage the higher number of possible combinations available with only a few key presses.
Specifically, assuming 35 keys and that we can press a few keys, say 3 keys, we have $35^3 = 42.875$ (ordered sampling with replacement) possible instructions that we can give the editor.

Like most tools in this book, the biggest problem for widespread adaptation of the tool is the learning curve.
The trick here is to just do a project in Vim and learn while doing.
For the first few days, this will hurt your brain.
After a few days, you'll start to be quicker than you used to be and that speed improvement will only improve over time.
You will also be able to switch between normal and advanced text editors without even thinking about it.
Another trick is to just use it and pay attention to repetitive/boring key presses.
Then, search a bit on the internet and you'll probably find instructions on how to do it more quickly in Vim.
Note that Vim works best with the tools presented in this book.
Not all text-based tools have Vim (or Emacs) support.
For example, it is not available in Microsoft Office.

## Commands

Use `Esc` to switch to normal mode.
Then, the commands listed in @tbl:vim-commands can be used.

Keys | Description | Illustration
--- | --- | ---
Esc | Cancel or switch to normal mode
:q | Quit Vim
:w | Write/save file
:wq | Write and quit
j | Down | @fig:vim-navigation
k | Up | @fig:vim-navigation
h | Left | @fig:vim-navigation
l | Right | @fig:vim-navigation
:e `file` | Open `file` for editing
/ `text` | Search for `text`

: List of the most important Vim commands. {#tbl:vim-commands}

![
Moving the cursor in Vim.
These keys have the benefit that you don't have to move your hand to the arrow keys on the keyboard.
](placeholder.svg){#fig:vim-navigation}

## Plugins

TOOD: Mention the thing I'm using to show tabs.
