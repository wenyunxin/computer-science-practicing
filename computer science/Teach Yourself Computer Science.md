[toc]



# Teach yourself computer science

**Note: this guide was extensively updated in May 2020. For the prior version,** [see here](https://teachyourselfcs.com/2016/)**.**

注意：本指南在2020年5月进行了广泛的更新。之前的版本请看[这里](https://teachyourselfcs.com/2016/)。



If you’re a self-taught engineer or bootcamp grad, you owe it to yourself to learn computer science. Thankfully, you can give yourself a world-class CS education without investing years and a small fortune in a degree program 💸.

There are plenty of resources out there, but some are better than others. You don’t need yet another “200+ Free Online Courses” listicle. You need answers to these questions:

- **Which subjects** should you learn, and why?
- What is the **best book or video lecture series** for each subject?

This guide is our attempt to definitively answer these questions.

> 如果你是一个自学成才的工程师或训练营的毕业生，你应该为自己学习计算机科学。值得庆幸的是，你可以给自己一个世界级的CS教育，而不需要在一个学位课程上投资几年和一小笔钱💸。
>
> 外面有很多资源，但有些资源比其他资源要好。你不需要另一个 "200多个免费在线课程 "的列表文章。你需要这些问题的答案。
>
> - **你应该学习哪些科目**，为什么？
> - 每个科目的**最好的书或视频讲座系列**是什么？
>
> 本指南是我们试图明确地回答这些问题。



- [中文翻译见此](https://github.com/keithnull/TeachYourselfCS-CN/blob/master/TeachYourselfCS-CN.md) (Chinese) by Wu Zhengke



## TL;DR:

Study all nine subjects below, in roughly the presented order, using either the suggested textbook or video lecture series, but ideally both. Aim for 100-200 hours of study of each topic, then revisit favorites throughout your career 🚀.

> 学习以下所有九个主题，大致按照提出的顺序，使用建议的教科书或视频讲座系列，但最好是两者都使用。每个主题的学习时间为100-200小时，然后在你的职业生涯中重新审视最喜欢的主题🚀。
>



| **Subject**                                                  | **Why study?**                                               | **Book**                                                     | **Videos**                                                   |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **[Programming](https://teachyourselfcs.com/#programming)**  | Don’t be the person who “never quite understood” something like recursion. | [*Structure and Interpretation of Computer Programs*](https://mitpress.mit.edu/sites/default/files/sicp/full-text/book/book.html) | [Brian Harvey’s Berkeley CS 61A](https://archive.org/details/ucberkeley-webcast-PL3E89002AA9B9879E?sort=titleSorter) |
| **[Computer Architecture](https://teachyourselfcs.com/#architecture)** | If you don’t have a solid mental model of how a computer actually works, all of your higher-level abstractions will be brittle. | [*Computer Systems: A Programmer's Perspective*](http://csapp.cs.cmu.edu/3e/home.html) | [Berkeley CS 61C](https://inst.eecs.berkeley.edu//~cs61c/sp15/) |
| **[Algorithms and Data Structures](https://teachyourselfcs.com/#algorithms)** | If you don’t know how to use ubiquitous data structures like stacks, queues, trees, and graphs, you won’t be able to solve challenging problems. | *[The Algorithm Design Manual](https://smile.amazon.com/Algorithm-Design-Manual-Steven-Skiena/dp/1848000693/)* | [Steven Skiena’s lectures](https://www3.cs.stonybrook.edu/~skiena/373/videos/) |
| **[Math for CS](https://teachyourselfcs.com/#math)**         | CS is basically a runaway branch of applied math, so learning math will give you a competitive advantage. | *[Mathematics for Computer Science](https://courses.csail.mit.edu/6.042/spring17/mcs.pdf)* | Tom Leighton’s MIT 6.042J                                    |
| **[Operating Systems](https://teachyourselfcs.com/#operating-systems)** | Most of the code you write is run by an operating system, so you should know how those interact. | [*Operating Systems: Three Easy Pieces*](https://pages.cs.wisc.edu/~remzi/OSTEP/) | Berkeley CS 162                                              |
| **[Computer Networking](https://teachyourselfcs.com/#networking)** | The Internet turned out to be a big deal: understand how it works to unlock its full potential. | *Computer Networking: A Top-Down Approach*                   | Stanford CS 144                                              |
| **[Databases](https://teachyourselfcs.com/#databases)**      | Data is at the heart of most significant programs, but few understand how database systems actually work. | *Readings in Database Systems*                               | Joe Hellerstein’s Berkeley CS 186                            |
| **[Languages and Compilers](https://teachyourselfcs.com/#languages)** | If you understand how languages and compilers actually work, you’ll write better code and learn new languages more easily. | *Crafting Interpreters*                                      | Alex Aiken’s course on edX                                   |
| **[Distributed Systems](https://teachyourselfcs.com/#distributed-systems)** | These days, *most* systems are distributed systems.          | *Designing Data-Intensive Applications* by Martin Kleppmann  | MIT 6.824                                                    |



## Still too much?

If the idea of self-studying 9 topics over multiple years feels overwhelming, we suggest you focus on just two books: [*Computer Systems: A Programmer's Perspective*](http://csapp.cs.cmu.edu/3e/home.html) and [*Designing Data-Intensive Applications*](https://www.amazon.com/Designing-Data-Intensive-Applications-Reliable-Maintainable-ebook/dp/B06XPJML5D/?pldnSite=1). In our experience, these two books provide incredibly high return on time invested, particularly for self-taught engineers and bootcamp grads working on networked applications. They may also serve as a "gateway drug" for the other topics and resources listed above.

> 如果在多年内自学9个课题的想法感到难以承受，我们建议你只专注于两本书。《[计算机系统：程序员的视角]((http://csapp.cs.cmu.edu/3e/home.html))》和《[设计数据密集型应用程序]((https://www.amazon.com/Designing-Data-Intensive-Applications-Reliable-Maintainable-ebook/dp/B06XPJML5D/?pldnSite=1))》。根据我们的经验，这两本书的投资回报率非常高，特别是对于自学成才的工程师和从事网络应用的训练营毕业生。它们也可以作为上述其他主题和资源的 "入门药物"。



## Why learn computer science?

There are 2 types of software engineer: those who understand computer science well enough to do challenging, innovative work, and those who just get by because they’re familiar with a few high level tools.

> 有两种类型的软件工程师：一种是对计算机科学有足够的了解，能够从事具有挑战性的创新工作；另一种是由于熟悉一些高水平的工具而勉强应付。

Both call themselves software engineers, and both tend to earn similar salaries in their early careers. But Type 1 engineers progress toward more fulfilling and well-remunerated work over time, whether that’s valuable commercial work or breakthrough open-source projects, technical leadership or high-quality individual contributions.

> 两者都称自己为软件工程师，而且在早期的职业生涯中，两者都倾向于获得类似的薪水。但第一类工程师随着时间的推移，会朝着更有成就感和更高报酬的工作发展，无论是有价值的商业工作还是突破性的开源项目、技术领导力或高质量的个人贡献。

Type 1 engineers find ways to learn computer science in depth, whether through conventional means or by relentlessly learning throughout their careers. Type 2 engineers typically stay at the surface, learning specific tools and technologies rather than their underlying foundations, only picking up new skills when the winds of technical fashion change.

> 第一类工程师找到了深入学习计算机科学的方法，无论是通过传统的方法还是通过在整个职业生涯中不懈地学习。第二类工程师通常停留在表面，学习具体的工具和技术，而不是它们的基础，只有在技术时尚的风向改变时才会学习新的技能。

Currently, the number of people entering the industry is rapidly increasing, while the number of CS grads is relatively static. This oversupply of Type 2 engineers is starting to reduce their employment opportunities and keep them out of the industry’s more fulfilling work. Whether you’re striving to become a Type 1 engineer or simply looking for more job security, learning computer science is the only reliable path.

> 目前，进入该行业的人数正在迅速增加，而CS毕业生的数量却相对稳定。这种第二类工程师供过于求的情况开始减少他们的就业机会，使他们无法从事该行业更有成就感的工作。无论你是努力成为第一类工程师，还是仅仅为了寻找更多的工作保障，学习计算机科学是唯一可靠的途径。



## Subject guides

专题指南

### Programming

Most undergraduate CS programs start with an “introduction” to computer programming. The best versions of these courses cater not just to novices, but also to those who missed beneficial concepts and programming models while first learning to code.

> 大多数本科CS课程以计算机编程的 "入门 "开始。这些课程的最佳版本不仅迎合了新手，也迎合了那些在第一次学习代码时错过了有益概念和编程模型的人。

Our standard recommendation for this content is the classic *Structure and Interpretation of Computer Programs*, which is available online for free both as [a book](https://mitpress.mit.edu/sites/default/files/sicp/full-text/book/book.html), and as a set of [MIT video lectures](http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-001-structure-and-interpretation-of-computer-programs-spring-2005/video-lectures/). While those lectures are great, our video suggestion is actually [Brian Harvey’s SICP lectures](https://archive.org/details/ucberkeley-webcast-PL3E89002AA9B9879E?sort=titleSorter) (for the 61A course at Berkeley) instead. These are more refined and better targeted at new students than are the MIT lectures.

> 我们对这些内容的标准推荐是经典的*《计算机程序的结构与解释》*，它既可以作为[书](https://mitpress.mit.edu/sites/default/files/sicp/full-text/book/book.html)，也可以作为一套[MIT视频讲座](http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-001-structure-and-interpretation-of-computer-programs-spring-2005/video-lectures/)在网上免费获得。虽然这些讲座很好，但我们的视频建议实际上是[Brian Harvey的SICP讲座](https://archive.org/details/ucberkeley-webcast-PL3E89002AA9B9879E?sort=titleSorter)（用于伯克利的61A课程）。与麻省理工学院的讲座相比，这些讲座更精炼，更针对新生。

We recommend working through at least the first three chapters of SICP and doing the exercises. For additional practice, work through a set of small programming problems like those on [exercism](http://exercism.io/).

> 我们建议至少读完SICP的前三章并做练习。为了增加练习，可以通过一组小的编程问题，如[exercism](http://exercism.io/)上的问题。

Since this guide was first published in 2016, one of the most commonly asked questions has been whether we’d now recommend recordings of a more recent iteration of 61A taught by John DeNero, and/or the corresponding book *[Composing Programs](https://composingprograms.com/)*, which is “in the tradition of SICP” but uses Python. We think the DeNero resources are also great, and some students may end up preferring them, but we still suggest SICP, Scheme, and Brian Harvey’s lectures as the first set of resources to try.

> 自从本指南在2016年首次出版以来，最常问的问题之一是我们现在是否会推荐John DeNero讲授的61A的最新迭代录音，和/或相应的书*[Composing Programs](https://composingprograms.com/)*，它是 "SICP的传统 "但使用Python。我们认为DeNero的资源也很好，有些学生可能最终会喜欢它们，但我们仍然建议把SICP、Scheme和Brian Harvey的讲座作为第一套资源来尝试。

Why? Because SICP is unique in its ability—at least potentially—to alter your fundamental beliefs about computers and programming. Not everybody will experience this. Some will hate the book, others won't get past the first few pages. But the potential reward makes it worth trying.

> 为什么？因为SICP是独一无二的，它能够--至少是潜在地--改变你对计算机和编程的基本信念。不是每个人都会有这种体验。有些人会讨厌这本书，有些人则连前几页都看不下去了。但是，潜在的回报使它值得尝试。

If you don't enjoy SICP, try *Composing Programs*. If that still doesn't suit, try *[How to Design Programs](http://www.htdp.org/)*. If none of these seem to be rewarding your effort, perhaps that's a sign that you should focus on other topics for some time, and revisit the discipline of programming in another year or two.

> 如果你不喜欢SICP，可以试试*Composing Programs*。如果还是不适合，就试试*[如何设计程序](http://www.htdp.org/)*。如果这些似乎都不能使你的努力得到回报，也许这就是一个信号，你应该在一段时间内专注于其他主题，并在另一年或两年内重新审视编程的学科。

Finally, a point of clarification: this guide is NOT designed for those who are entirely new to programming. We assume that you are a competent programmer without a background in computer science, looking to fill in some knowledge gaps. The fact that we've included a section on "programming" is simply a reminder that there may be more to learn. For those who've never coded before, but who'd like to, you might prefer a guide like [this one](https://www.reddit.com/r/learnprogramming/wiki/faq#wiki_getting_started).

> 最后，有一点需要澄清：本指南不是为那些完全不懂编程的人设计的。我们假设你是一个有能力的程序员，没有计算机科学的背景，希望填补一些知识空白。我们包括 "编程 "一节，只是提醒你可能有更多的东西需要学习。对于那些从来没有编过代码，但又想学的人来说，你可能更喜欢像[这个](https://www.reddit.com/r/learnprogramming/wiki/faq#wiki_getting_started)这样的指南。
>



### Computer Architecture

Computer Architecture—sometimes called “computer systems” or “computer organization”—is an important first look at computing below the surface of software. In our experience, it’s the most neglected area among self-taught software engineers.

> 计算机体系结构--有时被称为 "计算机系统 "或 "计算机组织"--是对软件表面以下的计算的一个重要的初步了解。根据我们的经验，它是自学成才的软件工程师中最容易被忽视的领域。

Our favorite introductory book is *[Computer Systems: A Programmer's Perspective](http://csapp.cs.cmu.edu/3e/home.html)*, and a typical introductory computer architecture course using the book [would cover](http://csapp.cs.cmu.edu/3e/courses.html) most of chapters 1-6.

> 我们最喜欢的入门书是*[计算机系统：程序员的视角](http://csapp.cs.cmu.edu/3e/home.html)*，使用该书的典型计算机结构入门课程[将涵盖](http://csapp.cs.cmu.edu/3e/courses.html)1-6章的大部分内容。

We love CS:APP for the practical, programmer-oriented approach. While there's much more to computer architecture than what's covered in the book, it serves as a great starting point for those who'd like to understand computer systems primarily in order to write faster, more efficient and more reliable *software*.

> 我们喜欢CS:APP的实用、面向程序员的方法。虽然计算机体系结构比书中所涉及的内容要多得多，但对于那些想了解计算机系统，主要是为了编写更快、更有效、更可靠的*软件*的人来说，它是一个很好的起点。

For those who'd prefer both a gentler introduction to the topic and a balance of hardware and software concerns, we suggest *The Elements of Computing Systems*, also known as “Nand2Tetris”. This is an ambitious book attempting to give you a cohesive understanding of how everything in a computer works. Each chapter involves building a small piece of the overall system, from writing elementary logic gates in HDL, through a CPU and assembler, all the way to an application the size of a Tetris game.

> 对于那些既喜欢比较温和的主题介绍，又喜欢平衡硬件和软件问题的人来说，我们建议*《计算机系统要素》*，也叫《Nand2Tetris》。这是一本雄心勃勃的书，试图让你对计算机中的一切如何工作有一个连贯的理解。每一章都涉及构建整个系统的一小部分，从用HDL编写基本的逻辑门，到CPU和汇编程序，一直到俄罗斯方块游戏大小的应用程序。

We recommend reading through the first six chapters of the book and completing the associated projects. This will develop your understanding of the relationship between the architecture of the machine and the software that runs on it.

> 我们建议通读本书的前六章并完成相关的项目。这将培养你对机器的结构和在其上运行的软件之间关系的理解。

The first half of the book (and all of its projects), are available for free from [the Nand2Tetris website](http://www.nand2tetris.org/). It’s also available as [a Coursera course with accompanying videos](https://www.coursera.org/learn/build-a-computer).

> 这本书的前半部分（以及所有的项目），可以从[Nand2Tetris网站](http://www.nand2tetris.org/)免费获得。它也可以作为[带有配套视频的Coursera课程](https://www.coursera.org/learn/build-a-computer)。

In seeking simplicity and cohesiveness, Nand2Tetris trades off depth. In particular, two very important concepts in modern computer architectures are pipelining and memory hierarchy, but both are mostly absent from the text.

> 为了追求简单和凝聚力，Nand2Tetris牺牲了深度。特别是，现代计算机架构中两个非常重要的概念是流水线和内存层次结构，但这两个概念在文中大多没有出现。
>

Once you feel comfortable with the content of Nand2Tetris, we suggest either returning to CS:APP, or considering Patterson and Hennessy’s *[Computer Organization and Design](https://smile.amazon.com/Computer-Organization-Design-Fifth-Architecture/dp/0124077269)*, an excellent and now classic text. Not every section in the book is essential; we suggest following Berkeley’s [CS61C course](http://inst.eecs.berkeley.edu/~cs61c/sp15/) “Great Ideas in Computer Architecture” for specific readings. The lecture notes and labs are available online, and past lectures are [on the Internet Archive](https://archive.org/details/ucberkeley-webcast-PL-XXv-cvA_iCl2-D-FS5mk0jFF6cYSJs_).

> 一旦你对Nand2Tetris的内容感到满意，我们建议你回到CS:APP，或者考虑Patterson和Hennessy的*[计算机组织与设计](https://smile.amazon.com/Computer-Organization-Design-Fifth-Architecture/dp/0124077269)*，这是一本优秀的、现在已经成为经典的文本。并非书中的每一节都是必要的；我们建议按照伯克利的[CS61C课程](http://inst.eecs.berkeley.edu/~cs61c/sp15/) "计算机结构中的伟大思想 "进行具体阅读。讲义和实验可以在网上找到，过去的讲义也在[互联网档案馆](https://archive.org/details/ucberkeley-webcast-PL-XXv-cvA_iCl2-D-FS5mk0jFF6cYSJs_)上。



### Algorithms and Data Structures

We agree with decades of common wisdom that familiarity with common algorithms and data structures is one of the most empowering aspects of a computer science education. This is also a great place to train one’s general problem-solving abilities, which will pay off in every other area of study.

> 我们同意几十年来的普遍看法，即熟悉普通算法和数据结构是计算机科学教育中最有能力的方面之一。这也是训练一个人的一般问题解决能力的好地方，这将在每个其他研究领域得到回报。

There are hundreds of books available, but our favorite is *[The Algorithm Design Manual](https://smile.amazon.com/Algorithm-Design-Manual-Steven-Skiena/dp/1848000693/)* by Steven Skiena. He clearly loves algorithmic problem solving and typically succeeds in fostering similar enthusiasm among his students and readers. In our opinion, the two more commonly suggested texts (CLRS and Sedgewick) tend to be a little too proof-heavy for those learning the material primarily to help with practical problem solving.

> 有数以百计的书籍，但我们最喜欢的是*[《算法设计手册》](https://smile.amazon.com/Algorithm-Design-Manual-Steven-Skiena/dp/1848000693/)*，作者是Steven Skiena。他显然热爱算法问题的解决，并且通常成功地在他的学生和读者中培养了类似的热情。在我们看来，两本更常见的推荐书目（CLRS和Sedgewick）对于那些主要为了帮助解决实际问题而学习这些材料的人来说，往往有点太重证明了。

For those who prefer video lectures, [Skiena generously provides his online](https://www3.cs.stonybrook.edu/~skiena/373/videos/). We also really like Tim Roughgarden’s course, available [on Coursera](https://www.coursera.org/specializations/algorithms) and [elsewhere](http://timroughgarden.org/videos.html). Whether you prefer Skiena’s or Roughgarden’s lecture style will be a matter of personal preference. In fact, there are dozens of good alternatives, so if you happen to find another that you like, we encourage you to stick with it!

> 对于那些喜欢视频讲座的人，[Skiena慷慨地提供他的在线](https://www3.cs.stonybrook.edu/~skiena/373/videos/)。我们也非常喜欢Tim Roughgarden的课程，[在Coursera](https://www.coursera.org/specializations/algorithms)和[其他地方](http://timroughgarden.org/videos.html)。你是喜欢Skiena的还是Roughgarden的讲课风格将是一个个人偏好的问题。事实上，有几十个很好的替代品，所以如果你碰巧找到了你喜欢的另一个，我们鼓励你坚持下去

For practice, our preferred approach is for students to solve problems on [Leetcode](http://leetcode.com/). These tend to be interesting problems with decent accompanying solutions and discussions. They also help you test progress against questions that are commonly used in technical interviews at the more competitive software companies. We suggest solving around 100 random leetcode problems as part of your studies.

> 对于实践，我们首选的方法是让学生在[Leetcode](http://leetcode.com/)上解决问题。这些问题往往是有趣的，并有很好的配套解决方案和讨论。它们还可以帮助你测试在竞争激烈的软件公司的技术面试中常用的问题的进展。我们建议解决大约100个随机的leetcode问题作为你学习的一部分。

Finally, we strongly recommend *[How to Solve It](https://smile.amazon.com/How-Solve-Mathematical-Princeton-Science/dp/069116407X/)* as an excellent and unique guide to general problem solving; it’s as applicable to computer science as it is to mathematics.

> 最后，我们强烈推荐*[如何解决](https://smile.amazon.com/How-Solve-Mathematical-Princeton-Science/dp/069116407X/)*，作为一般问题解决的优秀和独特指南；它对计算机科学和数学一样适用。



### Mathematics for Computer Science

In some ways, computer science is an overgrown branch of applied mathematics. While many software engineers try—and to varying degrees succeed—at ignoring this, we encourage you to embrace it with direct study. Doing so successfully will give you an enormous competitive advantage over those who don’t.

> 在某些方面，计算机科学是应用数学的一个过度发展的分支。虽然许多软件工程师试图--并在不同程度上成功地--忽视这一点，但我们鼓励你通过直接学习来拥抱它。成功地这样做将使你比那些不这样做的人有巨大的竞争优势。

The most relevant area of math for CS is broadly called “discrete mathematics”, where “discrete” is the opposite of “continuous” and is loosely a collection of interesting applied math topics outside of calculus. Given the vague definition, it’s not meaningful to try to cover the entire breadth of “discrete mathematics”. A more realistic goal is to build a working understanding of logic, combinatorics and probability, set theory, graph theory, and a little of the number theory informing cryptography. Linear algebra is an additional worthwhile area of study, given its importance in computer graphics and machine learning.

> 与CS最相关的数学领域被广泛称为 "离散数学"，其中 "离散 "与 "连续 "相反，是微积分之外有趣的应用数学课题的松散集合。考虑到这个模糊的定义，试图涵盖 "离散数学 "的全部范围是没有意义的。一个更现实的目标是建立对逻辑学、组合学和概率论、集合论、图论的工作理解，以及为密码学提供信息的少量数论。鉴于线性代数在计算机图形和机器学习中的重要性，它是一个额外的值得研究的领域。

Our suggested starting point for discrete mathematics is the set of [lecture notes by László Lovász](https://cims.nyu.edu/~regev/teaching/discrete_math_fall_2005/dmbook.pdf). Professor Lovász did a good job of making the content approachable and intuitive, so this serves as a better starting point than more formal texts.

> 我们建议离散数学的起点是一套[László Lovász的讲义](https://cims.nyu.edu/~regev/teaching/discrete_math_fall_2005/dmbook.pdf)。Lovász教授很好地将内容变得平易近人和直观，所以这可以作为一个比更正式文本更好的起点。

For a more advanced treatment, we suggest *[Mathematics for Computer Science](https://courses.csail.mit.edu/6.042/spring17/mcs.pdf)*, the book-length lecture notes for the MIT course of the same name. That course’s video lectures are also [freely available](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-042j-mathematics-for-computer-science-fall-2010/video-lectures/), and are our recommended video lectures for discrete math.

> 对于更高级的处理，我们建议*[Mathematics for Computer Science](https://courses.csail.mit.edu/6.042/spring17/mcs.pdf)*，这是麻省理工学院同名课程的长篇讲义。该课程的视频讲座也是[免费提供](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-042j-mathematics-for-computer-science-fall-2010/video-lectures/)，而且是我们推荐的离散数学的视频讲座。

For linear algebra, we suggest starting with the [Essence of linear algebra](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) video series, followed by Gilbert Strang’s [book](https://www.amazon.com/Introduction-Linear-Algebra-Gilbert-Strang/dp/0980232775/) and [video lectures](https://ocw.mit.edu/courses/mathematics/18-06-linear-algebra-spring-2010/video-lectures/).

> 对于线性代数，我们建议从[线性代数精华](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab)系列视频开始，然后是Gilbert Strang的[书](https://www.amazon.com/Introduction-Linear-Algebra-Gilbert-Strang/dp/0980232775/)和[视频讲座](https://ocw.mit.edu/courses/mathematics/18-06-linear-algebra-spring-2010/video-lectures/)。



### Operating Systems

*[Operating System Concepts](https://www.amazon.com/dp/1118063333/)* (the “Dinosaur book”) and *[Modern Operating Systems](https://www.amazon.com/dp/013359162X/)* are the “classic” books on operating systems. Both have attracted criticism for their lack of clarity and general student unfriendliness.

> *[操作系统概念](https://www.amazon.com/dp/1118063333/)*（"恐龙书"）和*[现代操作系统](https://www.amazon.com/dp/013359162X/)*是操作系统的 "经典 "书籍。这两本书都因为缺乏清晰度和对学生不友好而受到批评。

*Operating Systems: Three Easy Pieces* is a good alternative that’s [freely available online](http://pages.cs.wisc.edu/~remzi/OSTEP/). We particularly like the structure and readability of the book, and feel that the exercises are worthwhile.

> *Operating Systems: Three Easy Pieces*是一个很好的选择，它可以[免费在线获取](http://pages.cs.wisc.edu/~remzi/OSTEP/)。我们特别喜欢这本书的结构和可读性，并认为其练习是值得的。

After OSTEP, we encourage you to explore the design decisions of specific operating systems, through “{OS name} Internals” style books such as *[Lion's commentary on Unix](https://www.amazon.com/Lions-Commentary-Unix-John/dp/1573980137/)*, *[The Design and Implementation of the FreeBSD Operating System](https://www.amazon.com/Design-Implementation-FreeBSD-Operating-System/dp/0321968972/)*, and *[Mac OS X Internals](https://www.amazon.com/Mac-OS-Internals-Systems-Approach/dp/0321278542/)*. For Linux, we suggest Robert Love's fantastic [Linux Kernel Development](https://www.amazon.com/Linux-Kernel-Development-Robert-Love/dp/0672329468).

> 在OSTEP之后，我们鼓励你通过"{OS name} Internals "风格的书籍，如*[Lion's commentary on Unix](https://www.amazon.com/Lions-Commentary-Unix-John/dp/1573980137/)*，*[The Design and Implementation of the FreeBSD Operating System](https://www.amazon.com/Design-Implementation-FreeBSD-Operating-System/dp/0321968972/)*，和*[Mac OS X Internals](https://www.amazon.com/Mac-OS-Internals-Systems-Approach/dp/0321278542/)*，探索特定操作系统的设计决定。对于Linux，我们推荐Robert Love精彩的[Linux Kernel Development](https://www.amazon.com/Linux-Kernel-Development-Robert-Love/dp/0672329468)。

A great way to consolidate your understanding of operating systems is to read the code of a small kernel and add features. One choice is [xv6](https://pdos.csail.mit.edu/6.828/2016/xv6.html), a port of Unix V6 to ANSI C and x86, maintained for a course at MIT. OSTEP has an appendix of potential [xv6 labs](http://pages.cs.wisc.edu/~remzi/OSTEP/lab-projects-xv6.pdf) full of great ideas for potential projects.

> 巩固你对操作系统的理解的一个好方法是阅读一个小内核的代码并添加功能。一个选择是[xv6](https://pdos.csail.mit.edu/6.828/2016/xv6.html)，这是一个将Unix V6移植到ANSI C和x86的版本，为麻省理工学院的一门课程所维护。OSTEP有一个潜在的[xv6实验室](http://pages.cs.wisc.edu/~remzi/OSTEP/lab-projects-xv6.pdf)的附录，充满了对潜在项目的伟大想法。

### Computer Networking

Given that so much of software engineering is on web servers and clients, one of the most immediately valuable areas of computer science is computer networking. Our self-taught students who methodically study networking find that they finally understand terms, concepts and protocols they’d been surrounded by for years.

Our favorite book on the topic is *[Computer Networking: A Top-Down Approach](https://smile.amazon.com/Computer-Networking-Top-Down-Approach-7th/dp/0133594149/)*. The small projects and exercises in the book are well worth doing, and we particularly like the “Wireshark labs”, which they have [generously provided online](http://www-net.cs.umass.edu/wireshark-labs/).

For those who prefer video lectures, we suggest Stanford’s [*Introduction to Computer Networking course*](https://www.youtube.com/playlist?list=PLoCMsyE1cvdWKsLVyf6cPwCLDIZnOj0NS) previously available via Stanford's MOOC platform Lagunita, but sadly now only available as unofficial playlists on Youtube.



---



# Learn programming

## Welcome

Welcome to [/r/learnprogramming](https://www.reddit.com/r/learnprogramming). This is a list of some of the most frequently asked questions on this subreddit. If your question is one of these, it has probably been answered many times before, and you should try using reddit's search facilities (look in the sidebar) to find previous answers before posting here.

> 欢迎来到[/r/learnprogramming](https://www.reddit.com/r/learnprogramming)。这是本分论坛上一些最常问的问题的列表。如果你的问题是其中之一，它可能已经被回答过很多次了，你应该尝试使用reddit的搜索功能（在侧边栏中查看），在这里发帖之前找到以前的答案。



## Getting Started

### Where do I start?

If you're interested in learning to code, it's very helpful to start with the right mindset. This [YouTube video](https://www.youtube.com/watch?v=mvK0UzFNw1Q) by Kevin Cheers does a great job of explaining the proper perspective you should have when starting out.

> 如果你对学习代码感兴趣，以正确的心态开始是很有帮助的。凯文-切尔斯的这个[YouTube视频](https://www.youtube.com/watch?v=mvK0UzFNw1Q)很好地解释了你在开始时应该有的正确观点。

Next, you should keep in mind that there's no universally agreed way of learning to code -- everybody prefers learning in a slightly different way, and you may need to do some experimenting to find an approach that works best for you. Nevertheless, the majority of people seem to learn best using the following approach, which we strongly recommend you try:

> 接下来，你应该记住，没有普遍认同的学习代码的方法--每个人喜欢的学习方式略有不同，你可能需要做一些实验来找到最适合你的方法。然而，大多数人似乎使用以下方法学习效果最好，我们强烈建议你尝试这种方法。
>

1. Find some small problem or project that you're interested in tackling. You could try building a tool to solve a small problem in your life, or try implementing a program you find interesting from scratch. This project will help motivate you to continue to learn to code and will give you opportunities to practice applying what you're learning.
2. Do some research to figure out which programming language is most appropriate for your project. (See below for recommendations)
3. Find and follow a single, high-quality beginner-oriented resource for that language. (Again, see below)
4. Supplement that resource by googling and asking questions
5. Eventually complete several non-trivial projects using that language.

> 1. 找到一些你有兴趣解决的小问题或项目。你可以尝试建立一个工具来解决你生活中的一个小问题，或者尝试从头开始实施一个你觉得有趣的程序。这个项目将有助于激励你继续学习代码，并让你有机会实践应用你所学的知识。
> 2. 做一些研究，找出哪种编程语言最适合你的项目。(建议见下文)
> 3. 找到并关注该语言的单一的、高质量的面向初学者的资源。(同样，见下文)
> 4. 通过谷歌搜索和提问来补充该资源
> 5. 最终完成几个使用该语言的非微不足道的项目。

Here are some things we recommend you avoid doing:

> 以下是我们建议你避免做的一些事情。

1. Don't just simply passively follow along whatever resource you're using. Do the exercises and homework assignments; practice is an absolutely essential part of learning to code.
2. Avoid needlessly switching back and forth between programming languages; pick one and stick with it. This is because programming is ultimately about problem solving, not about programming languages. Learning to problem-solve is challenging and is a skill you can hone only through practice. Every time you switch languages, you're losing time you could have spent practicing applying what you've learned to improve your problem-solving skills.
3. Don't stop learning once you've completed a tutorial. Programming is the kind of field where there's always something new to learn.

> 1. 不要只是简单地被动地跟着你使用的任何资源走。做**练习和家庭作业**；**练习**是学习代码的一个绝对必要的部分。
> 2. 避免不必要地在编程语言之间来回切换；**选择一种并坚持下去**。这是因为编程最终是**关于问题的解决**，而不是关于编程语言。学习解决问题是具有挑战性的，是一种只有通过实践才能**磨练**出来的技能。每当你切换语言时，你就会损失一些时间，而这些时间本可以用来练习应用你所学到的知识来提高你解决问题的能力。
> 3. 一旦你完成了一个教程，不要停止学习。编程是那种**总是有新东西要学**的领域。

And finally, remember that learning to code can be a [long](http://norvig.com/21-days.html) and [difficult](https://www.thinkful.com/blog/why-learning-to-code-is-so-damn-hard/) process. If learning to code feels hard, don't get discouraged! That's completely normal -- many people will spend years of their lives learning and practicing before they consider themselves competent enough to look for a job or contribute to a significant project. Fortunately, just getting started is not difficult at all.

> 最后，请记住，学习代码可能是一个[漫长](http://norvig.com/21-days.html)和[困难](https://www.thinkful.com/blog/why-learning-to-code-is-so-damn-hard/)的过程。如果学习代码感到困难，不要灰心！这完全是正常的。这是完全正常的 -- 许多人在他们认为自己有能力寻找工作或为一个重要的项目做出贡献之前，会花费数年的时间来学习和练习。幸运的是，刚开始学习一点都不难。

### Which programming language should I start with?

There are two common misconceptions that cause people to ask this question. The first is that there actually is a "best" programming language for learning and the second is that the first language you learn will decide what the rest of your programming career looks like.

> 有两个常见的误解，导致人们问这个问题。第一个是，实际上有一种 "最好的 "编程语言可供学习，第二个是，你学习的第一种语言将决定你其余的编程生涯是什么样子。

In reality, there is no best language to start with, and your first language has virtually no lasting effect on your eventual career. Programming languages can look very different on the surface, but the majority of the fundamental concepts will transfer from language to language. Learning a new language will also get easier over time -- it can take a beginner months before they feel comfortable with their first language; an experienced programmer can become familiar with a new language in a matter of days.

> 在现实中，没有最好的语言可以开始，你的第一门语言对你最终的职业生涯几乎没有持久的影响。编程语言在表面上看起来非常不同，但大多数的基本概念会从一种语言转移到另一种语言。学习一门新的语言也会随着时间的推移而变得容易 -- 初学者可能需要几个月的时间才能对他们的第一门语言感到舒适；而有经验的程序员可以在几天内熟悉一门新的语言。

All programmers should ideally have experience in multiple types of languages. Once you are comfortable with one language, move on to another language which differs in some fundamental way. As you learn more languages, you will become more equipped to choose the right tool for the task at hand, which is a hallmark of a good programmer. Since programming concepts are what matter most, we recommended that beginners start with one of the mainstream languages from the table below. All these languages enable beginners to start writing simple applications and practice programming without having to use any of the more complex language features.

> 所有的程序员最好都有多类语言的经验。一旦你对一种语言驾轻就熟，就转而学习另一种在某些基本方面不同的语言。随着你学习更多的语言，你将变得更有能力为手头的任务选择正确的工具，这是一个优秀程序员的标志。由于编程概念是最重要的，我们建议初学者从下表中的一种主流语言开始学习。所有这些语言都能使初学者开始编写简单的应用程序，练习编程，而不必使用任何更复杂的语言功能。

If you already have a project or goal in mind, you will learn faster if you can apply your skills to the problem you are trying to solve. The table below contains some recommended language choices for common projects:

> 如果你已经有了一个项目或目标，如果你能把你的技能应用于你要解决的问题，你会学得更快。下表包含一些常见项目的推荐语言选择。

| I want to learn how to...                                    | Consider using...                                            |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ...**make iPhone Apps**                                      | **Swift** ([more](https://www.reddit.com/r/learnprogramming/wiki/faq#wiki_how_do_i_get_starting_making_mobile_apps.2Fandroid_apps.2Fios_apps.2Fwindows_phone_apps.3F)) |
| ...make Android Apps                                         | Kotlin/Java ([more](https://www.reddit.com/r/learnprogramming/wiki/faq#wiki_how_do_i_get_starting_making_mobile_apps.2Fandroid_apps.2Fios_apps.2Fwindows_phone_apps.3F)) |
| ...build a website                                           | JavaScript, CSS, HTML5 ([more](https://www.reddit.com/r/learnprogramming/wiki/faq#wiki_how_do_i_get_started_making_websites.2Fmaking_webapps.2Fdoing_web_development.3F)) |
| ...make 2D/3D games                                          | JavaScript, C#, or C++ ([more](https://www.reddit.com/r/learnprogramming/wiki/faq#wiki_how_can_i_get_started_making_video_games.3F)) |
| ...program Arduinos/micro-controllers/robots                 | C                                                            |
| ...**do scientific/mathematical computing or data analysis** | Julia, **Python,** **R**, or Matlab                          |
| ...**do automation and scripting**                           | Many languages (Python, Ruby, **Bash**, Powershell, AutoHotKey...) |
| ...write Windows desktop applications                        | C#                                                           |

If you still can't decide, try Python. Python is a good, beginner-friendly language with a huge community and many libraries for doing almost anything you want, ranging from making games to automating things at your home or workplace or doing data analysis to making websites. Try to find a learning resource which focuses on concepts and fundamentals before diving into more complex applications.

> 如果你仍然无法决定，可以试试Python。Python是一种很好的、对初学者友好的语言，有一个巨大的社区和许多库，几乎可以做任何你想做的事情，从制作游戏到家庭或工作场所的自动化，或做数据分析到制作网站。试着找一个学习资源，在深入到更复杂的应用之前，重点是概念和基础知识。

### Where do I find good learning resources?

- [Books](http://www.reddit.com/r/learnprogramming/wiki/books)
- [Online Resources](http://www.reddit.com/r/learnprogramming/wiki/online)
- [Curated Programming Resources](https://github.com/Michael0x2a/curated-programming-resources/blob/master/resources.md)
- [Project based tutorials in several programming languages](https://github.com/tuvtran/project-based-learning)
- [Build Your Own X](https://github.com/danistefanovic/build-your-own-x)
- [InfoCobuild Education](http://www.infocobuild.com/education/audio-video-courses/) - aggregated University courses
- [OSSU Computer Science](https://github.com/ossu/computer-science) - a full long-term curriculum for CS starting from zero

> - [书籍](http://www.reddit.com/r/learnprogramming/wiki/books)
> - [在线资源](http://www.reddit.com/r/learnprogramming/wiki/online)
> - [策划的编程资源](https://github.com/Michael0x2a/curated-programming-resources/blob/master/resources.md)
> - [基于项目的几种编程语言的教程](https://github.com/tuvtran/project-based-learning)
> - [建立你自己的X](https://github.com/danistefanovic/build-your-own-x)
> - [InfoCobuild教育](http://www.infocobuild.com/education/audio-video-courses/) - 汇集的大学课程
> - [OSSU计算机科学](https://github.com/ossu/computer-science) - 一个从零开始的完整的CS长期课程

## How to Improve

### How do I move from a beginning to an intermediate level?

A common question we get from many beginners is "now what?". In particular, you might have tried working through some tutorials, books, courseworks, but ultimately have difficulty making the gap from understanding how things like if statements and for loop works to understanding how to actually *apply* what you've learned to make complex and interesting programs.

> 

Making this jump between intro tutorials to complex code can be difficult, and is a normal part of learning to code. [This article](https://www.thinkful.com/blog/why-learning-to-code-is-so-damn-hard/) describes this phenomenon very well. Many tutorials (in particular, commercialized "learn-to-code" websites like CodeCademy) tend to hand-hold you through the basics, but stop after that point, leaving many beginners floundering.

However, if you stick with it and work through the confusion, you'll eventually find yourself gradually growing better and better, until one day, without realizing it, you'll find that you've started to become competent.

Here are some suggestions on how to persevere, and what you should be doing next.