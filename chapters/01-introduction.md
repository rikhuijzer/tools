# Introduction

Science is a complex endeavour.
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

Chapters:

- Where it all starts (terminal and OS)
- Quick text editing (text editors)
- Not losing your files (version control)
- Avoiding manual calculations (Julia)
- Bayesian statistics
- Frequentists statistics
- Linking your calculations to your files (CI; the abstraction)
- Not losing your data (dvc, pachyderm)
