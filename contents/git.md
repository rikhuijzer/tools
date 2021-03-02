# Never losing your files again {#sec:git}

To show why the problem of not losing files is important, lets consider Kernel-land.
In Kernel-land, the people all carry an extensive manual around which they follow precisely.
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

## Getting started

To avoid losing files, we want to store our files at multiple computers.
Therefore, we can use Git in combination with GitHub at <https://github.com>.
Basically, GitHub is a website built around Git.
If you don't like GitHub, you can also choose to use GitLab (<https://gitlab.com>), Bitbucket (<https://bitbucket.org>) or Gitea (<https://gitea.io>).
Because these services are built around the same core, you can easily move your files from one service to the other if you want.
First, we have to create a project to store your files or a, so called, *repository*.
The definition of repository is "a place where things may be put for safekeeping" [@pickett2018american].
To get started with GitHub, create an account and a new repository via the web-interface (<https://github.com/new>).
You can choose a nice name and ignore the checkboxes.
In this example, we call the repository `novel-paper` and say that it is created by an example user called `researcher`.
For the rest of this example, replace `novel-paper` and `researcher` with respectively your repository name and username.
Next, install Git via the instructions at <https://git-scm.com/downloads>.

Now, the Git robot can be talked to via the terminal. 
(The terminal is described in [Chapter @sec:start].)
For Git, we need to learn a few words to handle 99% of all the use-cases.

First, we have to make a copy of the new repository `novel-paper` on our own computer so that we can make changes.
Go to a folder where you want to store the repository and tell the robot to clone the repository:
```
$ git clone https://github.com/example/novel-paper
Cloning into 'novel-paper'...
warning: You appear to have cloned an empty repository.
```
or, if you did set one or more of the checkboxes:
```
$ git clone https://github.com/example/novel-paper
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (3/3), done.
```
Your output should look similar to one of these two outputs.
Here, Git told us that some files were received (3 in this case) and everything is done.
In both cases, you will now find a folder called `novel-paper` and we can start to add a file.
Lets create a ridiciously important file called `ridiciously-important-file.txt` and place some text in it

`ridiciously-important-file.txt`:
```
The solution to my research can be found in Devlin & John (2020).
```
(And, no, that is not a typo. John can, in fact, be a surname like in the name Elton John, see @atkinson1991.)

After doing this, we can see one of the awesome features of the Git robot.
It knows exactly how everything looked before your changes and can show what has changed.
To get a sort of summary of the changes, use
```
$ git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	ridiciously-important-file.txt

nothing added to commit but untracked files present (use "git add" to track)
```
This shows that we have added `ridiciously-important-file.txt`.
To store this file online, lets *add* all changed files in preparation to pushing the changes to the server.
```
$ git add .
```
This is not definitive yet, we can still check whether everything looks good:
```
$ git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
	new file:   ridiciously-important-file.txt
```
As stated in the introduction of this chapter, Git is made to track complex changes.
One way to do this is to describe in words what you're changing.
When the previous `git status` looked good, we can make these changes permanent, or in other words, *commit* ourselves to these changes with
```
$ git commit -m 'Add important file'
[master (root-commit) b4f9e1d] Add important file
 1 file changed, 1 insertion(+)
 create mode 100644 ridiciously-important-file.txt
```
and *push* them to the server
```
$ git push
Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Delta compression using up to 8 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 303 bytes | 303.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/researcher/novel-paper
 * [new branch]      master -> master
```
You can now see your file online by going to
```
https://github.com/<username>/<repository name>
```

## Collaborating {#sec:git-collaborating}
