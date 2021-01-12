# Introduction

Lets say Dave works in a book printing factory.
He is tasked with the whole process, so he has to find clean pieces of paper, put the pieces of paper in the printer and and bind the book.
Printing and binding is easy since machines handle those things.
However, he cuts the pieces of paper manually with scissors because he doens't know better.
This takes quite a long time and Dave finds it boring.
In breaks, he complains about that his hands hurt and that his job is boring, but he doesn't know better so just grinds on.
The worst part of it, is when he cuts a piece of paper in a wrong way, breaking the machine.
Then, he spends half of his day getting the wrong paper out of the printer and trying again.
If only he knew that there exist tools which can cut the paper.
He would have more time to do other things, would break the machine less often, and would like his job more.

If you work in a scientific factory, then this book is aimed at you.
By working in a factory, I mean that your goal is to create scientific works.
Actually, most chapters will work for most office jobs, but the book is written with scientists in mind.
This book shows you the tools to get rid of your tedious taks and how to manage complexity.
Software is very capable of managing complexity for you.
If you read this on a electronic device, then you probably don't know how the transistors, registors, instruction sets, assembly code or application code works.
I also don't know.
However, this complexity is all hidden away for you and you can assume all parts to *just work*.
This book helps you in managing complexity in your work by using the proper tools.
From these tools, it is safe to assume that they will do their work correctly.
The main tool to manage complexity is called Git and is presented in [Chapter @sec:git].

In the rest of this book, I will use the word *robot* to mean *tool* to make the book more fun.
By talking about robots, we can anthromorphize tools and talk about things like "weird behaviour" or "complaining mode".
At the same time, talking about these human characteristics of tools doesn't introduce confusion.
In the end, tools are made by humans to interact with humans, so many of the elements of tools are related to human behaviour.
For example, we could even call your phone a robot.
It just *hangs* around you all day waiting for the moment that you need it.
When you decide to check the weather, the robot *jumps into action* and *responds* to your interactions with it.
The phone responds to *touch* or, thanks to speech assistants, can *listen* to you.

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
As another argument, these basics will allow you to combine the tools more easily, giving you more power.

Chapters:

- Where it all starts (terminal and OS)
- Quick text editing (text editors)
- Converting text files to whatever they want (Pandoc)
- Not losing your files (version control)
- Avoiding manual calculations (Julia)
- Bayesian statistics
- Frequentists statistics
- Linking your calculations to your files (CI; the abstraction)
- Not losing your data (dvc, pachyderm)
