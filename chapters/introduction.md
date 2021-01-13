# Introduction {#sec:intro}

Lets say Dave works in a book printing factory.
He is tasked with the whole process, so he has to find clean pieces of paper, put the pieces of paper in the printer and and bind the book.
Printing and binding is easy since machines handle those things.
However, he cuts the pieces of paper manually with scissors because he doesn't know better.
This takes quite a long time and Dave finds it boring.
In breaks, he complains about that his hands hurt and that his job is boring, but he doesn't know better so just grinds on.
The worst part of it is cutting a piece of paper in a wrong way, breaking the machine.
Then, he spends half of his day getting the wrong paper out of the printer and trying again.
If only he knew that there exist tools which can cut the paper.
He would have more time to do other things, would break the machine less often, and would like his job more.

If you work in a scientific factory, then this book is aimed at you.
By working in a factory, I mean that your goal is to create scientific works.
Actually, most chapters will work for most office jobs, but the book is written with scientists in mind.
This book shows you the tools to get rid of your tedious tasks and how to manage complexity.
Software is very capable of managing complexity for you.
If you read this on a electronic device, then you probably don't know how the transistors, registors, instruction sets, assembly code or application code works.
However, this complexity is all hidden away for you and you can assume all parts to *just work*.
This book helps you in managing complexity in your work by using the proper tools.
From these tools, you can expect that they will do their work correctly.

In the rest of this book, I will use the word *robot* to mean *tool* to make the book more fun.
By talking about robots, we can anthromorphize tools and talk about things like "weird behaviour" or "complaining mode".
At the same time, talking about these human characteristics of tools doesn't introduce confusion.
In the end, tools are made by humans to interact with humans.
So, many of the elements of tools are related to human behaviour.
For example, we could even call your phone a robot.
It just *hangs* around you all day waiting for the moment that you need it.
When you decide to check the weather, the robot *jumps into action* and *responds* to your interactions with it.
The phone responds to *touch* or, thanks to speech assistants, *listens* to you.

The reason that this book's title mentions science is because it is a complex endeavour.
@ioannidis2005most gave the field of meta-science (science about science) a big push by arguing that most published research findings are false.
This was confirmed for psychology [@open2015estimating] and other fields.
Since then, much advises have been given on improving statistical techniques.
However, following all these advises is difficult and often increases the complexity of the analysis even further since we need to do more analyses, some of which are also computationally intensive, and need to do them better.
The more complex an analysis is, the easier it is to make an error.
Things like this actually happen, see for example, the retraction by @aboumatar2019notice.

For most scientists, the biggest part of the work isn't in the lab or in the field.
It is, basically, moving text and data around.
By this, I mean that reports have to be written and updated, data has to be cleaned, and analyses have to be run, updated and re-run.

This book aims to make a leisurely walk through the available tools available to manage complexity.
For each tool, it is explained what problem the tool originally solved and what problems it can solve for you.
All the suggested tools are free and open-source. 
There are a plethora of benefits for using open source software, such as

- letting colleagues run your analyses
- inspecting the source code to see why some aspect doesn't work as expected
- not being locked in by the tool

The chapters will build on top of each other in the sense that later chapters are easier when the tools of easier chapters are used.
For example, later chapters include more code which is managed best via version control.
Some people will say that this book is too extreme; some of the presented tools could be replaced by a more beginner friendly version.
Unfortunately, those friendlier versions will not teach you the basics.
It will be easy to switch from the tools in this book to friendlier versions, but not the reverse.
Also, friendlier tools are friendlier by assuming things for you.
This is nice if you want to stick to their conventions, but if you want something outside of what they provide, you're out of luck.
Then, the only way to get it is to go back to the more basic tools or to ask the developer to implement your feature.
Also, these basic tools are used by more other tools and people, so more effort is put into the development.
That, in turn, usually results in the tools being more reliable, better documented and more performant.
As another argument, these basics will allow you to combine the tools more easily, giving you more power.

One of the friendlier versions is using Graphical User Interfaces (GUIs). 
Those are created specifically to be used by people and therefore are often easy to pick up.
Unfortunately, they are difficult to automate and are slow to interact with.
The reason that automation is difficult is because text is the only way in which you can easily see the big picture.
Recording an example to the computer of how to interact with the GUI is not a solution because you cannot use conditional actions, like if the price is high then click on this button, or easily re-use parts of another example you have recording.
If you interact with the tools via text, then you can reproduce your earlier steps by passing the same text.

Combining the tools it this book, via text, is where the real power lies.
I've often shown people some tool and they were amazed by the speed.
However, on their way home, they would realise that the tool doesn't work in their workflow.
For example, learning how to use a fast text editor is a worthy investment for any office worker were it not for the fact that tools like Word and Gmail don't support it.
That's why I've writting this book: to show the whole picture instead of just one tool.

The rest of this book will start by explaining how to interact with robots in [Chapter @sec:start].
[Chapter @sec:git] will introduce the Git-robot.
This robot keeps track of files and with it you will never lose a file again.
After this chapter, our files are safe so we can start edit files quickly in [Chapter @sec:editing] and to automatically create all kinds of files, such as PDFs, Word documents and even websites.
This is done via the Pandoc-robot of [Chapter @sec:pandoc].
When that is done, it is time to step into the Julia programming language in [Chapter @sec:julia].
Learning a *language* might sound daunting, but I've chosen Julia precisely because it is an easy language to learn.
Unlike real languages, such as French or Dutch, the Julia language is aimed to be consistent meaning that you only have to learn a few things in order to understand most things.
Julia is Turing-complete, meaning that you can use this language to make the computer do **any calculation** or **control any robot** with it.
Next, we go into real science and, respectively, look into transforming data and statistics in [Chapter @sec:data] and [Chapter @sec:statistics].
At this point, you trust your robots and want them to do your work for you, even when you are sleeping.
The easiest technique to achieve this is presented in [Chapter @sec:ci].
