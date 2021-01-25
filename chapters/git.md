# Never losing your files again {#sec:git}

To show why the problem of not losing files is important, lets consider Kernel-land.
In Kernel-land, the people are not very clever.
In Kernel-land, the people all carry an extensive manual around which they follow precisely.
For instance, when someone in this land wants to drink water, he would
For instance, when people in this land want to drink water, they read the according section in the manual and lift the cup to their mouth only if the manual instructs them to do so.
Also, multiple people carry different manuals, but this is typically no issue since people can interact happily via conventions, such as shaking hands when meeting.
The main joy in life is attained by obtaining a newer version of the manual; allowing the Kernel-landers to do new things and move around the place more quickly.

Now, let's say you and your team are responsible for maintaining and extending this manual.
Maintenance is necessary because the world changes, so the manual has to be updated accordingly, and extending the manual is necessary because the people in Kernel-land are getting bored.
At the same time, you try to minimise risks when updating the manual since earlier changes were disastrous.
Once, you have mistakenly changed the line "the bananas can be found on the second *aisle* to the left" into "the bananas can be found on the second *isle* to the left". 
It look quite a lot of work to figure out this bug since the only practical difference was in the time it took to obtain bananas.

The main complexity of this work is introduced by the size of the manual.
When all working in Word documents, merging the results would be laborious.
By merging, I mean that some team member takes the newest version of the manual, works on it for a few hours to make changes and then call this the new version.
This works until people start to work on the document at the same time.
Even if the manual is updated in, say, Section 3 by person A and updated in Section 7 by person B, then these Word documents are difficult to merge.
Without taking care, the person who saves his version after the other person *wins*.
In other words, the changes of one person will then be overwritten and lost.

Another problem is similar to the problem with the bananas described above.
It can be that one small detail in the manual causes hard to predict problems.
For example, it might happen that Kernellanders report that the manual tells them to a weird thing like being instructed to brush their teeth in the nearest house.
It can then take a lot of work to determine that this only happens on rainy afternoons at Sunday in a town called Sussex, because Sussex is the only place which has 14 streetlights which are all at a 34° angle with the center axis of the road.

These problems are solved by a tool created by Linus Torvalds.
Linus is the maintainer of the Linux kernel which, in summary, is the manual for all the Linux computers and servers in the world.
Around 2005, Linus had thousands of people working on the manual [@loeliger2012version].
He was then reviewing the changes and merged them in the main manual version if it all looked good.
A typical merge would take the computer 2 hours [@torvalds2005], which Linus wasn't willing to accept.
He wanted 3 seconds [@torvalds2005] which he managed to obtain by creating _Git_.

Nowadays, Git is the tool that all software engineers agree upon and where countless other tools are build upon.
This is an impressive feat because there is a joke that says: "arguing with engineers is like rolling in the mud with pigs; after a while you realise that they like it."
If you talk to software engineers about Git, they will agree that it is **the best tool** for the job.
Even if you are no software engineer, this is the tool that has been missing from your life.
It will ensure that you never lose a file and that you don't have to struggle with files named `1`, `1b`, `1b-final` and `1b-final-final` again.

## All your history {#sec:git-history}

To avoid losing files, we want to store our files at multiple computers.
Therefore, we can use Git in combination with GitHub at <https://github.com>.
Basically, GitHub is a website built around Git.
If you don't like GitHub, you can also choose to use GitLab (<https://gitlab.com>), Bitbucket (<https://bitbucket.org>) or Gitea (<https://gitea.io>).
Because these services are built around the same core, you can easily move your files from one service to the other if you want.
First, we have to create a project to store your files or a, so called, *repository*.
The definition of repository is "a place where things may be put for safekeeping" [@pickett2018american].
This can be done via the web-interface.


The Git robot can be talked to via the terminal, as described in [Chapter @sec:start].
For Git, we need to learn only a few words.

Lets create a ridiciously important file called `ridiciously-important-file.txt` and place some text in it

`ridiciously-important-file.txt`:
```
The solution to my research can be found in Devlin & John (2020).
```
(And, no, that is not a typo. John can, in fact, be a surname like in the name Elton John, see @atkinson1991.)

```
git status
```

```
git add .
```

```
git commit -m 'Update to file'
```

```
git push
```

## Collaborating {#sec:git-collaborating}
