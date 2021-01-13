# Never losing your files again {#sec:git}

To show why the problem of not losing files is important, lets consider Kernel-land.
In Kernel-land, the people are not very clever.
They all carry an extensive manual around which they follow precisely.
For instance, when someone in this land wants to drink water, he would read the according section in the manual, and lift the cup to his mouth if the manual instructs him to say so.
Also, multiple people carry different manuals, but this is typically no issue since people can interact happily via conventions, such as shaking hands when meeting.
The main joy in life is attained by obtaining a newer version of the manual; allowing the Kernel-landers to do new things and move around the place more quickly.

Now, lets say you and your team are responsible for maintaining and extending this manual.
Maintenance is necessary because the world changes, so the manual has to be updated accordingly, and extending the manual is necessary because the people in Kernel-land are getting bored.
At the same time, you try to minimise risks when updating the manual since earlier changes were disastrous.
Once, you have mistakenly changed the line "I don't want to be that" into "I don't want to be dad", which led to a massive drop in childbirths.
It took a dozen divorces to figure out that this was actually the result of a mistake in your manual, and the national news had to inform all men to get a new manual as soon as possible.

The main complexity is introduced by the size of the manual.
When all working in Word documents, merging the results is laborious.
By merging, I mean that some team member takes the newest version of the manual, works on it for a few hours to make changes and then call this the new version.
This works until people start to work on the document at the same time.
Even if the manual is updated in, say, Section 3 by person A and updated in Section 7 by person B, then these Word documents are difficult to merge.
Without taking care, the person who saves his version after the other person *wins*.
In other words, the changes of one person will then be overwritten and lost.

Another problem is similar to the problem with the childbirths described above.
It can be that one minute detail in the manual causes problems which are hard to predict.
They become visible when the manual is used in the real world in bizarre situations, such as only on rainy afternoons at Sunday in a town called Sussex, because Sussex is the only place which has 14 streetlights which are all at a 34° angle with the center axis of the road.
In this specific situation, Kernellanders will suddenly turn around and brush their teeth in the nearest house.

These problems are solved by a tool created by Linus Torvalds.
Linus is the maintainer of the Linux kernel which, in summary, is the manual for all the Linux computers and servers in the world.
Around 2005, Linus had thousands of people working on the manual [@loeliger2012version].
He was then reviewing the changes and merged them in the main manual version if it all looked good.
On a typical merge, this could take 2 hours [@torvalds2005], which Linus wasn't willing to accept.
He wanted 3 seconds [@torvalds2005] which he managed to get by creating _Git_.

## Managing your project

## Collaborating
