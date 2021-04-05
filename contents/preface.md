# Preface {#sec:preface}

Artificial intelligence (AI) is lauded by many as the fourth industrial revolution.
It promises to make better decisions and can automate more work.
One of the largest countries in the world is spending massive resources on autonomous driving, urban cognition, medical imaging, voice intelligence, visual computing, marketing intelligence, video perception, intelligent supply chains, image perception, smart education, smart homes and many more [@wu2020towards].
In this sense, we live in exciting times.
However, there is a common held belief that these automated analyses, machine learning, neural networks and artificial intelligence can only be achieved by large countries, or companies like DeepMind, OpenAI, Microsoft, Netflix and Amazon.
This is false.
Basically, what we call artificial intelligence is just machine learning [@jordan2019artificial] which is basically statistics.
Here, it is statistics being applied by software engineers.
The benefit of software engineerings is that they are used to managing complexity with tools.
So, for software engineers it doesn't matter they work on the newest maching learning systems or more traditional systems.
In both cases, the work is quite similar.

There have been failures with AI software, such as Microsoft's chatbot learning offensive language or Apple's Face ID being broken by hackers [@greenberg2017hackers].
Still, it is mostly success stories about beating the world champion in Go matches [@deepmind2020alphago], predicting the stock market, selling more products with better recommendations.
The success comes from the scaling capabilities.
Once the software is correct, it can be scaled to millions of users or base analysis results on petabytes of data.

However, software engineering isn't part of the typical scientist's skillset.
Non-engineering students are taught to do statistical analyses in convenient statistical software with graphical user interfaces, such as Excel, SPSS, JAGS or JASP.
The problem with these tools is that they cannot solve any computation problem.
In their daily life, they will run into problems which are out of the scope of these convenient tools.
This while the **real** tools, general-purpose programming lanuages, have never been easier to use.
Everything you need to automate analyses and work with AI is publicly and freely available.

This explains why I decided to write this book.
With a background in computer science, I have transitioned to a PhD in Psychology.
Here, I see that days are fully spent behind a computer while being hindered by the convenient tools.
I hear the same stories from colleagues in the medical, biological, chemical and mathematical sciences.
I've even heard professors talk about some of their tasks being laborious while knowing that many great tools can easily automate these tasks.
Unfortunately, I know that using these tools cannot be learned in a day; learning only one of them is not enough.
Combining the tools in this book is where the real power lies.
I've often convinced people of some tool by amazing them with the speed.
However, on their way home, they would realise that the tool doesn't work in their workflow.
That's why I wrote this book: to show the whole picture instead of just one tool.
Also, with this book I aim to present the essentials.
These essentials will remain applicable for many years to come and allow you to easily switch to other tools.

## Audience

This book is aimed at scientists.
Actually, most chapters will work for most office jobs, but the book is written with scientists in mind.
This book shows you the tools to get rid of your tedious tasks and how to manage complexity effectively with the proper software.
Software can do this for you because if you read this on a electronic device, then you probably don't know how the transistors, registors, instruction sets, assembly code or application code works.
However, this complexity is all hidden away for you and you can assume all parts to do the work for you.

## Reading this book

The chapters will build on top of each other in the sense that later chapters are easier when the tools of easier chapters are used.
Also, I've tried to order the chapters by decreasing importance.
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
Other people will call this book opinionated, and push for other tools.
That is why I've spent a great amount of arguing for the merits of each tool.
If you already use another similar too and are happy with it, then please skip the chapter in this book.

## Notation {#sec:notation}

To keep the text short and clear, this book uses mathematical notation.
For example, instead of "the mean for the random samples equals three", we write

$$ \text{mean}(X) = 3, $$

where $X$ are the samples or:
let $X$ denote the random samples, then

$$ \text{mean}(X) = 3. $$

In this book, I tried to keep the notation consistent, as well as as close to the code as possible.
Therefore, a single value will be denoted by a lowercase symbol, such as $x$ and a vector or matrix will be denoted by an uppercase symbol, such as $X$.
By default, a vector is assumed to be a column vector like, for example,

$$ X = \begin{bmatrix}
           1 \\
           2 \\
         \end{bmatrix} $$

Or, more generally, a vector of length $n$ is denoted by

$$ X_n = \begin{bmatrix}
           x_1 \\
           x_2 \\
           \vdots \\
           x_n
         \end{bmatrix}. $$

Similarily, a matrix with $n$ rows and $m$ columns is denoted by $X_{n \times m}$.
Note that a vector is just a one dimensional matrix;
hence,

$$ X_{n} = X_{n \times 1}. $$

These sizes in the subscript are omitted when possible.
Transposition for a vector or matrix is denoted by $T$.
So, for example,

$$ X_n^T = [ x_1, x_2, ..., x_n ]. $$

For functions, I try to be explicit about the variables, that is, try to have as little state as possible in the functions.
So, for example, instead of writing a linear model as

$$ y = w_0 + w_1 x, $$

or

$$ y(X) = w_0 + w_1 x_1, $$

I favor

$$ \text{lm}(X, W) = w_0 + w_1 x_1, $$

where $\text{lm}$ could be any name.

## Acknowledgements

Many people have contributed directly and indirectly to this book.
My PhD supervisors have allowed me to do my work with any tools I prefer.
This allowed me to experiment with different tools while keeping in mind that things have to get done.
