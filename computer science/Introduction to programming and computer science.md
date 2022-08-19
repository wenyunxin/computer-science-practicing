

[toc]



freeCodeCamp.org on YouTube: [Introduction to Programming and Computer Science](https://www.youtube.com/watch?v=zOjov-2OZ0E&t=5681s)

## Introduction

**Programming**: the process of preparing an instructional program for a device. Attempting to get a computer to complete a specific task without making mistakes



## What is programming?

**Programming**: the process of preparing an instructional program for a device. Attempting to get a computer to complete a specific task without making mistakes.

computers only understand **machine code**: A series of 1's and 0's fed and interpreted by the computer, only way a computer can read English instructions. 

**Programming languages** serve as a middle-man of sorts, translate your instructions into **machine code**. It's very useful for programmers.

Each language is unique in how they operate:

- **Java** and **Python** - General purpose languages
- **HTML/CSS** - designed for specific tasks, in this case webpage design

Each language also varies in how powerful it is:

- **JavaScript** isn't used for big problems
- **Java** and **Python** are

**High vs Low Level**

Each language also has an attribute known as **power** or **level**(basically how similar it is to machine code):

- **Low-level** programming languages: **Assembly** or **C**
- **High-Level** programming languages: **Java** or **Python**
- Lower the level, more similar to machine code

**Programming Languages**

Each language has other minor difference. Explore to find one which you like since there are **thousands**.

 To properly send instructions to the computer we need **Programming Languages**, but we also can't type in a certain language and expect the same thing.



## How do wo write code?

 **Sending Instructions**

Can't simply type words into a text document and expect that the computer is able to carry out a task.

**IDE's**

We use IDE's(Integrated Development Environments) to write code. A place to write, run, and debug code and also convert it to machine code.

IDE's are like any other program on your computer except used for the facilitation of code. Examples: NetBeans, Intellij, Visual Studios.

**IDE Functionality**

In addition to a place to write code, IDE's also include:

- Built-in **Error-checking**(for when code doesn't go right)
- **Auto-fill** for frequently used words
- Project Hierarchy

A big step up from previously used methods of programming.

**An IDE's Look**

Usually has a **central** area for writing code. Additional windows, such as one for a **console**, project hierarchy, preview screes, etc.

**Using IDE's**

Back to another point, each language has its own set of **rules** you must follow within an IDE. You can't simply type rubbish in an IDE, convert it to machine code and expect the computer to understand it. You need **syntax**.

**Learning Languages**

Learning a computer language can be very similar to learning a real language. All programming languages have a **set of rules** you must follow when writing code in that language, just like in real languages. In computer science it is called **syntax**.

Similar to **grammar** in real life languages.

**What's Syntax?**

**Syntax** - Rules you must follow to a tee if you want your program to run correctly

- How you type out certain functions
- What you put at the end of each line of code
- How you set up certain functions

Syntax for each programming language is **unique**.

Breaking programming rules will result in an **error**.

**Variable Example**

As a example, Let's initialize a **variable** in **Java**, **Python**, and **JavaScript**. We don't covered variables but basically they **hold information**.

In each we have to follow different rules to complete the same task.

**variable** in **Java**:

```java
int variable = 3;
```

**variable** in **Python**

```python
x = 3
```

**variable** in **JavaScript**

```javascript
var x = 3
```

**Syntax Matters**

As you can see in just this simple example, **syntax matters** when learning a new language.

The goal of the program was the same, but all three languages shown took different approaches.

**What if we mess up**

If you forget one semicolon or misplace a character, the entire program will not run and send you back a **syntax error**.

Real-Life example: This is similar to forgetting a comma in an English sentence, and the entire context of your statement be misinterpreted.

 **Built-In Error Checks**

Another cool thing about IDE's is that they will let you know if and when there are **syntax errors** in your code. Parts of your code which do not follow the rules.



## How do we get information from computer?

Now that we know how to write code, and where to write it(along with that rules to follow), how do we know if our program worked?

**The Console**

Programmers keep track of their progress by looking at **the console**. A **text interface** within the computer that us programmers can use for a variety of purposes.

**How to use the Console**

The main use of the **console** is to output text from the **program** using code. More specifically a **print statement**. 

**Prints** text to the **console** for the programmers viewing pleasure.

**Using the print Statement**

To use the print statement, simply instruct the console to print, and then include whatever you want to be printed **inside the parenthesis**. 

Using **Python**, we can print to the console like so:

```python
print("Hello World")
```

Print statement is also used for viewing and interpreting the computer's output from a program. Example: computing 4+3 will print nothing to the console. **PRINTING** 4+3 however, will print 7 to the **console**.

```python
print(4 + 3)
```

**Variations on the Print Statement**

The print statement will vary depending on the language. Example: In **Java**, there are actually multiple versions of the print statement depending on whether or not you want a *line break*.

```java
System.out.print("Hi");
System.out.print("Hi");
System.out.println("New line");
```

 **A Background Tool**

The console is mainly a Developer Tool. Not usually meant to be used and interacted with by the end user except in *very abstract cases*. -Text-based games/simple programs.

Tends to be hidden away behind the scenes.

Don't try and implement the console in the final product.



## What can computers do?

Computer's are dumb, but how dumb? Do they know anything intuitively?

the computer already knows how to do *simple arithmetic*, such as Addition, Subtraction, Multiplication, and Division.

You'll be able to print the result of any math operation in an IDE that you may install.

May seem useless, but comes in handy **extremely often**.

**Calculator Example**

Building a Calculator App

We'd need to utilize this functionality in order to correctly display the answer to an arithmetic problem.

**Modulus**

Most programming languages has an additional operator known as **modulus**. Represented with **%**

Allows us to get the **remainder** of a divisional operation.

**Modulus Example**

When we take **10 modulus 3 ...**

We essentially tell the computer to divide 10 by 3, *ignore the answer*, and give us the reminder: 1

**No Reminder Case**

In the case where **isn't a reminder...** The computer will simply print/return *0*

**Events and Odds**

This is extremely useful when determining if a number is **even or odd**.

- If a number molulo 2 is 0, the number is *even*
- If a number molulo 2 is 1, the number is *odd*

  **Strings**

Strings are another way of say *text*.

-  "Hello World"
- "A"
- *Anything enclosed by quotation marks* is denoted as a String

**Strings Continued**

Game over, 4 was your final score.

```python
print("Game over, 4 was your final score.")
```



Using concatenation(Adding strings together):

```python
print("Game over, " + 4 + " was your final score.")
```

Console: Game over, 4 was your final score.



**Combining Knowledge**

print("Game over, " + (4+4) + " was your final score.")



**Adding Spaces**

In last example, don't forget to add spaces between quotation and strings. Always put a space after and before your strings.

**The 4 "4" Dilema**

4 in quotation marks (**"4"**) is treated as a *STRING*

4 without quotation marks (**4**) is threated as an *INTEGER* 



## What are variables?

What is a variable? And why is it the MOST IMPORTANT thing we'll be teaching in this series?

**So what are they?**

**Variables**: Something that can *store information*, can be *referenced* and *manipulated*

**Cardboard Box Example**

Think of variables like a cardboard box. Cardboard boxes, servers means to store items in them, which can be changed that replaced and modified. Variables are like cardboard boxes to store information for the programmer to reference or manipulate.

**Variable Basics**

Each Variables has a *type*, a *name*, and a piece of *information* stored inside of it. Name is simple a name for the variable.

**Cardboard Label Example**

Think of the name for the variable as writing out a label on the cardboard box in Sharpie.

**Types of Variables**

Many types of variables, but we will be focusing on **primitive type variables**:

*Integers*, *Booleans*, *floats*, *doubles*, *Strings*, and *Chars*(Characters) 

Integer: 4

Boolean: False

Float: 3.14

Double: 4.0

String: "Hi" 

Char's: "A"

**Integers**

**Integer's**: A *variable* that can store and Integer value. such as -2, 147, 648 to 2, 147, 483, 648

*CAN'T* and *WILL NOT* hold any decimal values

**Booleans**

Can store a value of either *true* or *false*

Can *ONLY* hold true or false. No other types of information. Extremely useful for conditional statements.

 **Floats and Doubles**

Both are types of **floating point data types**, can store numbers with decimal places.

**Float Variables** can store up to 32 bits of information.

**Double Variables** can store up 64 bits of information.

**Strings**

What we talked about before, except stored somewhere in a variable.

Useful for displaying text and store **input information**, information the user puts into our program.

Also useful for outputting information in a readable format for the user.

**Name Variable Example**

Prompt the user for their name. 

Store the value inside of the "name" variable

```py
print("Your name is " + name + ".")
```

**Char's**

**Char** stand for *character*. Each hold *one* character. 

Useful when a programmer wants to read one button press of one character in a string without using a String variable. Example: Game controlled by keyboard

Tip: You can store char's in a String variable, but not Strings longer than 1 character in a char variable.

**Why are Variable so Useful**

Often times you're going to want to keep track of things, such as a user's *name* or *score*. By creating a variable you can store this information in that variable and then *reference*, *add to*, or *modify it*.

Other important uses for variable:

- Taking input from the user
- Making your program have **variability**, Have it changed based on *certain factors*.
- Manipulating variables is necessary for many tasks in programming.



## How do we manipulate variables?

How do we change the variables we have, and how do we even make them?

**What happens when we define a variables?**

Create a little space in memory that stores your variable name and its contents.

```java
int x = 10;
```

**Warehouse Example**

Think about you had your own storage facility, and you make a new cardboard box labeled name. And inside of it, you put a piece of paper with the word no pointer exception on it. Now, anytime you want to know the content of your name box, you could simply look inside and see that it has the contents no pointer exception.

This is what the computer does, except the storage facility is the memory in your computer. The box is a variable and the contents of the box are whatever the variable is set to equal to. Anytime you want to know the contents of the name variable, you can simply call it and the computer will pull the information that is stored in that variable, and use it how the user see fits.

**Blank Variable Example**

Just like you build a new cardboard box, gave it a label with a sharpie, but just didn't put information inside of it. You're simply saving that space in your storage facility for later.

Reasons you would do this...

- Because you want to store information in the variable down the road
- Because you are going to use it to store information given to you by the user

Trying to *reference* a blank variable will result in a **NullPointerException**

**Dual Pointed Variables**

```java
String channelName = name;
```

instead of setting it equal to no pointer exception, we instead set it equal to our already created named variable. This doesn't create a space in memory for this new variable. However, it simply points to the same location of memory we have already created for the name variable.

Back to our storage facility example, this would be like instead of creating a whole new box labelled "channel name", and storing sheet of paper with the word no pointer exception on it, we instead simply added another label below the name box, and titled "channel name". Now we have two variables which point to the same contents, that being the string no pointer exception, we usually do this to save space in our code for things that we know are going to have the same value. 

**Changing variables Example**

```pyt
age = 17
## after the 18 birthday
age = 18
```

This would be the same as having a box labeled age with a sheet of paper eating 17 inside it, and then taking that piece of paper out, erasing 17, replacing it with 18 and then placing it back in the box. Doing this we are able to easily update the contents of our variables throughout the code as things dynamically shift.

**RPG Example**

We want to make an RPG Game which has different stats, such as attack, defense manner, etc. As the game progressed, you could continuously update the variables so that the player could get more powerful, the further along they went through the game. And you wouldn't have to create new variables, you would simply need to just keep grabbing that box from your storage facility, erasing and replacing the numbers on the piece of paper and then continue along with your code.

Just keep in mind that these variables are nothing more than places in memory in which a certain value is stored. So we can easily update the number and their place will remain constant.

**The Fate of Variables**

After code has run its course, variables are deleted in memory. Until you run the code again, and the program dedicated space for the variable again, each time you run the code, you're making new boxes in your storage facility. And at the end of the code, you destroy them all to make room for the new boxes next time.

**Other Ways of Manipulating Variables**

Integer, Float, and double variables can be:

- Added
- Subtracted
- Multiplied 
- Divided
- Modulus

String variables can be: Added

Char's and Boolean's *can't be operated on*

**Manipulating Strings**

While you can't *subtract*, *multiply*, *divide*, or *modulo* strings, you are able to **add them**...

```py
"Hello" + " There" = "Hello There"
```



**Naming Variables**

There is **one big rule** when naming variables: They *must* be one continuous String

Most programmer name variable according to **camelCase**: *Don't* capitalize the first word, but *capitalize* the first letter of all words after it. example: camelCaseVariable



## What are conditional statements?

Depending on certain conditions, we want our code to do different things.

**Special Rules for this Section**

RED LINES: Our code will not be going down this path.

GREEN LINIES: Our code will be going down this path.

**The If Statement**

The most basic conditional statement is the If Statement: If something is True do this, otherwise do something else

Most programming language use **braces ()**: Whatever is inside the braces will be evaluated as either *true* or *false*.

If the statement is true, whatever is *enclosed inside a set of curly braces* directly after the if statement will run.

**Example Conditions**

```javascript
if (name == "Steven") {
    print("Hello Steven")
}
```

```javascript
if (score > 5) {
    print("Nice Score!")
}
```



 **Booleans**

Each condition is evaluated as a **boolean**: *True* or *False*

**The Else-If Statement**

The Else-if statement will only be evaluated if the preceding if (or if-else) statement was bypassed due to it being false.

**Else-If Example**

```javascript
if (Age = 10) {
    print("Your are 10")
} else if (Age = 12){
    print("You are 12")
}
```



**Running through If-Else Statements**

Check the initial statement: If it's true we run that segment of code and move on with the program.

If it's not true: We move on to any else if statements and evaluate those conditional statements.

If any of them are true: Run that segment of code and move on.

**The Else Statement**

The else statement comes after an if/if-else statement and *will always* carry out instructions: Carries out instructions *if all previous cases are not true*.

**The Switch Statement**

An easily collapsible way to write many if-else statements: You input a variable, then determine which *"Cases"* that variable could be.

**Switch Statement Example**

Start with a colon (:)

Each switch statement also includes a "default" case (Else Statement)

![image-20220412171142078](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20220412171142078.png)



**The Usefulness of Conditional Statements**

Add **variability** to programming: Program runs differently based on *user input*

If a user does something, we want to be able to *adapt* accordingly

Without, a program would run the same way every time.



## What are Array's?

How can we store large amounts of similar information in one place?

**Where do Variables Fail?**

Variables are very good at storing *singular bits of information*

As a result, they are unable to hold *more than one* piece of data. 

**Grocery List Example**

For example, let's say you're making an app which allows a user to create a grocery list. Well there's no real easy way to create lists using variables. Because it's not like you can have one variable store the names of six or seven different food items. Not like this:

```java
String groceryList = "EggsMilkBUtterPancakeMixBrownSugarCinamonMoreEggsMoreMilkMoreButter";
```



**Well what are they?**

An array is a *list* of **something**:

- Can be Integers
- Can be Strings
- Can even be *other array's*

All information in an array is *related*.

Like columns in Google Sheets.

**Grocery List Example**

![image-20220412172952429](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20220412172952429.png)

**Start-Up Company Example**

Start-Up Company with 100,000 users, Every time a person wants to create a new username, we want to check to see if the account name already taken.

**Referencing Arrays**

The *single most important thing to note about arrays* is **how we reference each element inside of them**.

In programming we use **Indexes**: That numbers *"place"* in the array. Indexing for arrays *begins at 0*

In computer science, programming languages refer to the first cell as zero with element in the array. This means that if we were talking about our array of numbers we just made, the number four would actually be in the third index, five would be in the fourth, and so on. So instead of starting our count from one, we start from zero.

If you slip up and accidentally reference the 10th elements in this array, would result in an *"Out of Bounds"* error since you are actually trying to reference the *9th element*.

**Create Arrays**

Populate First, insert the elements you would like in the array *immediately*.

Populate Later, create an array with a specific size, but choose to *add elements later*. (How?)

This is because when we initialize an array, it creates a space in memory that has a size of exactly what you give it, no more or less. This is great for when we want to access elements in the array, because we can do so instantaneously since the computer knows exactly where in memory the array is stored.

**Array Sizes**

When we create their sizes are **Final**, cannot be *increased* or *decreased* in size through conventional methods, this is what  allows us to easily access their indexes.

**Bookshelf Example**

We *CANNOT* change the size of an array within the code

**Array Types**

When initializing an array, you must determine its type *then and there*.

**Example (String array, Integer Array, Double Array, etc**

They have to all be the same type.

**2D Arrays**

Putting an *array inside an array* is known as a **2-D Dimensional Array**, Similar to *Matrices* in math/physics classes.

**Indexing 2D Arrays**

To index 2D arrays we use **2 numbers**, *First number* is the *row*, *Second number* is the *column*



## What are loops?

How can we save have code repeat segments without repeating lines of code?

A **Loop** is a *statement that is used to run certain instructions repeatedly*, very useful for repeated sections of code.

**Example**, if we want to print something 15 times... we could use 15 print statements. Or we could use a loop, allows us to repeat parts of code multiple times.

**The For Loop**

The **For Loop** : used when you would like to carry out a certain set of instructions *numerous times*.

Consists of **3 parts**: an *integer value*, a *conditional statement* the integer must reach to exit the loop.

An operation to *modify* the integer value *after* the instructions inside of the loop are competed.

**Example**

```java
for(int i = 0; i < 3; i++) {
    System.out.println("Hello World");
}
```

**Infinite Loop Caution**

When using a for loop, you *MUST* make sure you set up a condition that, *given the initial integer* value and the *operation*, will at some point be met. Otherwise an **infinite loop** will occur.

example:

```java
for(int i = 10; i > 0; i++) {
    System.out.println("Hello World");
}
```

An integer starting at 10, and only increasing will never be less than 0, and then adding one to either the end of the loop will never terminate.

**The For Each Loop**

The **For Each Loop** used for *iterating* through entire *arrays* or *lists*.

The Loop will go through each *element* in the array and carry out a *set of instructions* for each value.

Useful for *performing operations* across an *entire collection* of data.

```python
for each in [1, 2, 3]:
    print(each)
```

**The While Loop**

The **While Loop** will *continually* carry out its instructions while *a conditional statement* given to it is true.

Similar to a for loop, but broken apart. It can sometimes be used to purposely create an *infinite loop*.

```java
while (true) {
    playGame();
}
```

**The Do-While Loop**

The **Do-While Loop** functionally similar to while loops. However, will *always* carry out instructions *AT LEAST ONCE*.

Instructions inside loop will run once *before checking the conditional statement*.

**Benefits of Loops**

- perform operations many times *in a row*
- able to *iterate* through arrays and list
- decrease *clutter* of your code



## What are Errors?

What happens when our code doesn't work the way that we want it to?

**Error Introduction**

Code doesn't always work as expected. There are known as **errors** come up *often* in computer science. Three different **types**:

- *Syntax* Errors
- *Runtime* Errors
- *Logic* Errors

**Syntax Errors**

Parts in your program where you *fail to meet the program rules*, resulting in an *error*. Usually the *easiest* of the 3 to solve.

Highlighted by the *IDE* in most cases.

**Debugging Syntax Errors**

IDE's *underline* syntax errors and usually *provide helpful hints*. Syntax Errors are like small *misspellings* or *grammatical* errors. Some IDE's will *restrict* you from running the code unless all syntax errors are cleared.

**Runtime Errors**

Don't appear until you actually *'run'* the code. Caused by a part of your code not being able to be computed in a *reasonable amount of time*. Most common form-- The Infinite Loop.

**The Office Loop**

1. Sit down your friend
2. Put the office on repeat
3. Stop when Michael makes a "That's what she said" joke

**Infinite Loops**

Essentially what happens with the computer. It is given some *condition* with no *feasible* way to finish that task.

Puts the computer in *error mode*.

Will never reach the ending condition, causing a *crash*. Example:

```java
for(int i = 100; i > 99; i++) {
    System.out.println("Hello World");
}
```

**Preventing Runtime Errors**

Avoiding **runtime errors**, 

think through the *flow* of your code before running it *(especially loops)*.

Carefully plan out your code before writing -> Pseudocode

**Logic Errors**

The code runs smoothely *without runtime or syntax errors*, but the result *isn't what you wanted*.

Often the *hardest* type of errors to solve. Most of the time, the errors is *unknown* to the programmer.

 **Preventing Logic Errors**

One stratagy is coding **incrementally**. *Test* your application *often* so that if you mess up you know where the error is.



## How do we Debug code?

How do we fix syntax, runtime, and logic errors in our code?

**Debugging Intro**

**Steps to Debug**

First step is to *read the error*. IDE will often print out an *error message* to the console.

Traverse to the *line of code* provided by the error.

Use online forums such as *StackOverflow*. (My opinion: to read the manual document also help)

When a **syntax** or **runtime** error pops up, you should be able to find a fix for it *fairly easily*.

**Print Statement Debugging**

```java
print(X)
if (x > 5) {
    print("X is large")
} else {
    print("X is small")
}
```

**Breakpoint Debugging**

Breakpoints *pause* the program when the line you placed the breakpoint at is reached until you continue.

**Actually fixing the Bug**

When you think you've found the section of code causing *the error*.

- First try **commenting** it out. Comments are used to markup code and explain their surrouding section. They can also be used to the bug. Anything that is designated as a comment will not be read by the program as code and will be skipped over.

**Commenting**

Commenting allows us to *mark-up* the code without the computer reading it as *actual code*. Essentially a *documentation tool* for programmers.

**Preventing Errors**

Backup code *frequently*. Version managers such as **Github** or **SubVersion** can help. Backup code to an *online cloud service* in which you can easily pull *previous versions* of the program.

Useful for backtracking to find *when* the error was written.

Run your program *frequently*, prevents you from *saving a backup* that doesn't work. And make it easier to figure out *when* you wrote the error.



## What are functions?

How can we reuse code to make our program more space-efficient and easy to read?

We've actually been using **function** this whole video:

- print statement
- for loop
- basic Math operators

**What are Functions**

A **Function** is:

- a *segment of code* that can be easily run by *"calling"* the function name
- depending on the type of function, *may do something* in return

Can be called *numerous times*, and in *numerous places*.

Like wrapping code into a *present* and giving it a name.

**Print Statement**

We "*Call*" the print *function*, and enter in what we want to be printed to the console *inside the parenthesis*. Computer does it for us.

```python
print("This will be printed")
```

Behind the scenes there is *more code*, which takes care of printing our message to *the console*.

*Abstracts* all that code down to a *single line*.

**The use of Functions**

Function serve **many purpose**:

- used to *recycle* sections of code which serve the same purpose
- used for *equations* you want to allow multiple inputs of
- used to save *space* within your program

There are *thousands* of types of functions. Oftentimes you will just *import* the ones you need in your program.

**The types of Functions**

There are 4 different *types* of **functions**:

- Separated by whether or not they *take in arguments*
- Separated by whether or not they *return values*

**What are arguments**

**Arguments** are *variables* we *pass into a function* in order to be manipulated and then either...

- *Returned* back to us
- *Printed* to the console
- Used in another *operation*

Example: **Max Function**: Takes in *two arguments* (two *integers*) and returns the *higher* one.

 ```java
 int maxNumber = Max(60, 2);
 ```

**Why arguments are extremely useful**

Arguments are a way for programmers to have one function that *can do many different things*.

Add *variability* to programming.

Helps *diversify* your code.

**Functions without argument example**

**Returning or not**

Functions can either **return** variables, or not. Returning something simply means the function will *return back to the user* something. A *String*, *Integer*, *Array*, etc.

**Returning functions**

Returning functions *MUST* be returned *INTO* something. Usually a *variable* but can also be *printed*.

Another example:

```java
combineString("Hello ", "World");
Strinig combinedString
Hello World
```

**No return/No argument functions**

A function which takes *no arguments* and return *no values* is similar to the **printStatess()** function. Cannot be *set* to any variable since it returns no values.

**Adaptability of Functions**

Functions are super useful for making *large changes* to your code *easily*. Each function call is just a *copy* of that functions code. Changing the function will change *all future calls* of that function.



## How can we import functions?

How can we use already created functions to our benefit, without creating then ourselves?

**Introduction to packages and imports**

Imagine you're trying to build a house. Sure, you could grow your own trees, chop down your own wood, make your own tools and nails and build from scratch. But why do that when you can simply go to your local Home Depot and buy these materials that others have already made ready for you. That's the main idea behind importing functions into your code.

**Importing functions**

**Importing functions** allows you to gain access to libraries of *pre-made functions*. There are *thousands* of already made functions at your disposal.

**What are libraries**

Libraries: *Collection* of functions that all have the *same theme*, Math library, Data Analysis library, etc.

In fact, a good portion of any programmers job is looking online for packages, which can make his or her job easier, instead of hand writing functions.

**Importing libraries**

Importing *libraries* is as simple as using an *import statement*. Usually consists of the word "*Import*" followed by the *library* you would like to import.

```java
Import Java.util.Scanner
```

the structure of the above example is-> Library.Package.Class

A package is simply a smaller set of functions and methods to help differentiate between the 1000s of methods contained in a library, and a class is even more specialized than that.

Now, if you don't know what specific classes you're going to want to pull methods from, you can use a star import all classes within the package you'd like. 

However, it can be beneficial to be more specific, and only import the classes you would like, as it helps with the efficiency of the program in the long run.

**Drawback of importing all classes**

If you are only using *one or two classes* from a package, it would be a waste of computing power to import the *entire library*.

example, if you would like to use factorial from the math library in Python, you pefer:

```python
from math import factorial
```

**Finding functions to import**

A simple Google Search will tell you if your *IDE* has a package that can fit your needs. If not, there are ways to *download additional packages*.



## How do we make our own functions?

What do we do when we can't find a function online to suit our needs?

**Introduction to function creation**

There are going to be moments where you want to *create* your own functions.

*Basic rules* you must follow. Previous example where *abstract* and didn't go in-depth.

**The types of functions**

There are 4 different *types* of **functions**

Takes in arguments & return values; Takes in arguments & return no values;

Don't takes in arguments & return values; Don't takes in arguments & return no values;

**Function naming convention**

Function naming convention follow **variable naming conventions**:

- Can't be *two words*
- Often follow *CamelCase* Structure, which is not capitalizing the first word, but capitalizing each word after that. (maybe different languages differential naming conventions)

**Telling the computer we're making a function**

Each language *differentiates* how you tell the computer you are about to make a function.

In Java: 

```java
public void printStats() {
    code goes here
}
```

Finally is a set of parentheses where you would put your arguments.

In Python: 

```python
def printStats():
    pass
```

Finally is a set of parenthesis.

The main thing we want to remember is to always add parentheses.

**Making functions which take in arguments**

We put any *variables* we want the user to *pass into the function* inside the parenthesis. When we *call* that function, we are then required to pass those variables in as *arguments*.

example in Java:

```java
Public void prodctCalculator(int num1, num2) {
    System.out.println(num1 * num2);
}
```

**Mixing variable types**

You can also *mix variable type* when making arguments. example in Java:

```java
public void someFunction(char a, int num1, String str1, String str2) {
    
}
```

**Calling functions**

When you *call* a function, you *HAVE* to pass in it's designated variable types. Otherwise an error will be thrown.

**The difference between returning and not**

When making a function which will **return a variable**, in some cases you must *define* what type of variable you will return from that function. Example in Java:

```java
public int productCalculator(int num1, num2) {
    
}
```

**Returning functions**

The most important thing about making functions that return variables is that *no matter what* path your code takes, it *MUST* return a variable. Example in Java:

```java
Public String congradulationUser() {
    if (playerScore > 10) {
        return("Good Job");
    } else {
        
    }
}
```

Then if the player score was less than 10, you don't enter statement, you don't have something prepared to be returned to the user. And so the function is going to threw you an error. You have to have all your paths covered.

You *cannot* return one type of variable if you have already defined the function to return *another type*.

**Returning with arguments**

Combine what we learned from previous example.

- Assign your *arguments* between the parentheses
- Define what you want to return
- Ensure *no matter what path* your code takes, it returns something.



## What are ArrayLists and Dictionaries?

What can we use if Array's don't fit the program we're trying to make?

**ArrayLists**

**ArrayLists** or **Lists**: A *growing array* which dynamically changes its size. Starts with an *initial size of 10*. 

 Useful for when you *don't know* the exact number of values that the arrayList will need to *store*. Also for it you want the ability to store values to your heart's content, such as a *Database of users*.

**An introduction to Dictionaries**

A dictionary is *like an array* in that it stores *multiple values*. However, instead of being referenced linearly, each value is *tied* to an identifier that is used to *reference* it, called it's **"key"**.

Basically we say each position in a dictionary holds a key value pair. When referencing a *value* in a *dictionary*, you use it's *unique key*, and the dictionary will tell you the value *tied to it*.

Each key *MUST* be unique, otherwise the computer will get *confused* as to what value the key is trying to *reference*.

You *CAN* however store the same values to different keys.

**Store Example**

Imagine you have a dictionary of prices at a store where the key is the name of the product, and the value is the price of the item. Maybe apples cost \$1, milk costs \$2 and bread costs \$3. You can see that in the dictionary, each key is the name of a product, and each value corresponds to the price of each product. So find the price of bread, all you need to do is simply call the dictionary using the key "bread". This makes it extremely easy  to track values through your code. Since you're working with tangible values rather than numbers which don't mean anything to you.

**Uses for dictionaries**

Dictionaries are also *iterable*, meaning you can go through a dictionary and perform *operations* or *comparisons* on all values in them.

For example, If you want to find the product with the highest price, you can iterate through the dictionary to find the value that is highest amongst the grocery store items.

**Arrays, arrayLists, and dictionaries**

All three boast certain *advantages* over one another.



## How can we use Date Structures?

What are some ways we can use data structures to benefit our program?

**An intro to searching algorithms**

**searching algorithms** are ways in which we can *look* through a list of values *stored* in an array and find a *particular piece of data*.

**The speed of computers**

While computers today *ARE* much faster than before... When searching through *huge* lists, small differences in efficiency *add up*.

**The 2 states of lists**

Lists can either be *sorted* or *unsorted*. A sorted list of information is characterized by some sort of ranking value, whether that be a patient ID, credit card number, or even by alphabetical values, like usernames or legal names.

An unsorted list is just some random assortment of related information not sorted by any particular order or reason.

Some searching algorithms only works for sorted lists, usually the more efficient ones. And some work for both sorted and unsorted lists.

**Determining efficiency**

Efficiency is based on **two values**: *Worse* case scenario, *average* number of items.

Known as **[Big O notation](https://en.wikipedia.org/wiki/Big_O_notation)**. In which each searching algorithm has an equation which takes in the size of the array as an integer, and will output a worst case scenario efficiency value that we can use to compare with other searching algorithms. We can then also look at how long on average it takes to find an element in a list. Using these two methods allows us to easily compare how efficient two algorithms are. 

**The linear search**

**Linear search** starts at the beginning and systematically check *each data point* until you find what you are looking for.

**Efficiency of the linear search**

**Worst case scenario**. We have to check *every element* in the list. - O(n)

**Average scenario**. On average we find our search term *halfway*. - O(n/2)

**The duality of the linear search**

The linear search can work on both *sorted* and *unsorted lists*. The linear search is a good basic searching algorithm for if you have an unsorted list.

But if your list is sorted, there are way more efficient options out there for you, such as the binary search.

**The binary search**

Uses a **recursive process**: breaks down the list into *smaller and smaller* parts to find the item you're looking for *faster*.

Takes advantage of the fact the list is *sorted*.

**Binary search example**

Let's say you have a list of 10 names sorted alphabetically, like shown on the screen now(93:05min), and you want it to find your name within that list. In binary search, you would look for the middle most name, in this case, the one at the fourth index. Just a quick aside, since there is no true middle since the list is 10 names long, the computer automatically uses the next one down as the middle value. Once you find your middle value, you first check to see if the name you're searching for at the index you've chosen is the name that you're looking for. If it is, simply return that index.

But 99% of the time it's not going to including right now. So let's keep going. If the value at the middle name is not equal to the one you're searching for, you check to see if the value you're searching for comes before or after the middle index. Since the list is sorted, it will find out that if it's comes before or after the middle index. For example, if it's come before the middle index, it will cut the back half, and searching the middle value of remain half, and so on.

 Now if we don't find it, the algorithm will simply return a null value to let you know that the item you're searching for cannot be found in the list.

**Efficiency of the binary**

**Worst case scenario**. We have to check *every element* in the list. - O(log n)

**Average scenario**. On average we find our search term *logarithmic* time. - O(log n)



## What is Recursion?

How can we use functions which call each other to break down problems?

**An introduction**

**Recursion**: The practice of using functions that *repeatedly* call themselves.

In the *instructions* that occur within a function... One of the instructions will be a *call* to that same function. Example in Java:

```java
public int MyFunction(int n) {
    Instructions;
    MyFunction(n+1);
}
```

A recursive function will usually take into account some integer as an argument. And we'll use this to carry out some instructions, modifying the integer that was entered before calling itself again with a new integer as its argument.

**Summative example**

```java
public int recursiveSum(int n) {
    if (n <= 1) {
        return n;
    } else {
        return (n + recursiveSum(n -1));
    }
}
```

**The stack**

**[Stack](https://en.wikipedia.org/wiki/Stack_(abstract_data_type))**: A *data structure* which contains all of the tasks you instruct your program to *complete*. Based on a *certain method*, your program will then carry out the tasks you give it.

Because if we start another process before the previous one complete, the process is stacked on top of the other one, such as the animation on your screen(101:40 min) is showing now, programs we write will follow the LIFO(Last In First Out) structure. 

**LIFO structure**

Our programs will follow the **LIFO** data structure: Last in First Out.

This means the *last* item put on the stack will be the *first* one removed from it.

Think of it like a stack of stones, you can keep adding stones on top of your pile. But in order to get to the one at the bottom, you must first remove all the rocks on top of it.

**Stack overflow**

If you were to create a recursive function *without a reachable base case*, processes would continue to be added to the stack, causing a *[stack overflow](https://en.wikipedia.org/wiki/Stack_overflow) error*. Like in infinite loop example, then this stack will  never be resolved, as items will be continually added to the stack without any of them ever been completed. 

In this case, the memory allocated to the stack exceeds the maximum allowed and a Stack Overflow error occurs resulting in your program crashing. 

**Chore example**

Think of this as if you're doing chores. Before you complete one chore, you get called to do another chore. Then before you can complete that one, you get called to do another one. Since you keep stacking tasks, or shores on top of one another, the stack of tasks will never be completed. And you will probably die before ever finishing all of your chores.

This is the same logic that makes infinite loops crash your program, recursion works on these same principles.

**The use of recursion**

Recursion is so useful because it breaks *large problems* into much *simpler pieces* to compute, and results in the program being more efficient.

Small parts of problems are easier to solve and less taxing to compute than the entire problem at once. The compute can combine these small solutions into whole solution at the end.



## What is Psedudocode?

How can we plan our code before-hand to reduce errors and make our software development process run smoothly? （Soft skills)

**An introduction**

Most programmers spend the *majority* of their job *thinking about code* rather than writing it. This is because much of programming boils down to problem solving:

How do we optimize the system? How can we make this feature for our App? What types of movement do we want for our game? How can we program it? 

The harsh truth is No *good* program has ever been written simply from the programmer *getting the prompt* or idea, sitting down, hopping on an *IDE*, and starting to write code.

There are many tasks we should go through before-hand in order to plan out our code. So we ensure that when the time comes to program, it's a clean and easy process and not riddled with mistakes and bugs. This is where pseudocode comes into play. 

**Road trip example**

Think of pseudocode like this, if you wanted to take a family trip to the Grand Canyon, would you simple hop in your car and drive off and figure out things later? No, because that would be ridiculous. Instead, you would spend some time planning out the trip. What sites or places do you want to visit? What hotel reservations are you going to have to make? What kinds of things are you going to do when you get there? What routes or highways are you going to take and why? All of these things must be determined before you can even think about hopping in your Ford Explorer.

So how does this translate to pseudocode? Well think of our family trip tp the Grand Canyon as a program, programmers use pseudocode. Pseudo meaning not real, and code, meaning code, as a means to plan out their programs before they write down. Just like plan our trip before going.

**Pseudocode intro**

Programmers use **Pseudocode** to *plan out* their code. They throw away syntax and naming conventions for variables and just focus on what they want the program to accomplish, and how they plan on doing that.

Pseudocode is very similar to constructing an outline for a paper that you're writing, you write down the main topics of the essay, and plan out your major talking points. But you don't worry about the **nitty gritty** details of it all. Such as word choice, grammar, conventions, and proper formatting.

By doing this, we allow ourselves to think freely and not worry about stressing the small stuff, at least not yet.

How to write Pseudocode? Pseudocode can take many *different forms* based on the type of programmer you are. *Hundreds* of different pseudocode methods. Each computer scientist has their own methodology for planning out their code. And there are probably hundreds of different methods of writing pseudocode that are out there today. Now, however I'd like to focus on three popular ones that I think you might find to be extremely useful.

**Flowcharts**

Flowcharts can be used to think through the process of a particular *function*. A flowchart is fundamentally a graphical representation of a function and how it might flow. Many programmers do this and lay out the conditional statements and loops that they want as different blocks in the flow chart connected by arrows and charting out every path of their function.

From there, it's extremely easy to create test cases and follow them through the flow of the function through the different blocks and arrows.

**Flowchart example**

We could have a flow chart that goes something like this, a user enters in a number, and if the number is eight, I want the program to return true. However, if the number is not eight, then I want it to return false. It's a great way to visualize what the functions overall purpose is, and also look for any errors that you may have missed when think about the function, such as a missing path.

It also abstracts the programming statements up to simple blocks, making it easier to modify or change completely. The best part is that when you  have finished testing cases, you can simply convert the blocks into programming statements, and you have a well written function without any debugging.

**Write-up introduction**

Another strategy is writing what you want your code to do *chronologically*. What is the program you are wring trying to *accomplish*?. Step by step.

**Write-up example**

Let's say you're making an App that takes in two numbers and divides them. The pseudocode for that would like a little something like this.

1. prompt the user to enter a number.
2. Wait for user to input the first number
3. prompt the user for a second number
4. Wait for user to input a second number
5. Divide the two number and store in a variable
6. return the variable back to the user

Remember that oftentimes, we're not going to be working with simple multiplication or division functions. We may be working with full scale games, algorithms or user interfaces with many different options. 

**Pros of write-up**

This method allows you the programmer to not get bogged down with the *syntax* and *naming conventions* you have to follow. Simply making a note of what the programs *ultimate goal* should be.

**Functionality planning**

Writing out the *main features* you want the user to have when using your program. Also what *functions* or *smaller programs* you're going to need to complete those features.

**Banking example**

Say you're making a banking interface. On startup, you want the user to initially have two options, they can set up a new account, or log into an existing account. From there, if they log into their account, then you want them to have the functionality to withdraw money, deposit money, take out a loan or pay back a loan. If they decide to set up a new account, you want them to be able to create an account, store their information in a database, and then access all of the features that are returning member would have.

This may look very similar to the flow chart method. The only difference being that this is abstracted one level higher over an entire program, rather than just a single function. If you really wanted to, you could also create a flowchart would go through the functionality of all the four methods described above.

Setting up a hierarchy like seeing on your screen now(109:42 min) makes it easy and clear to see every function interface you're going to have to make. This prevents you from having to try to shoehorn a function or feature into an already finished program at the last second, which is not a very fun experience in the slightest.

**Review**

**flowchart method** is good for thinking through the *flow* of a function.

**write-up method** is good for getting the *general idea* of a program down.

**functionality planning method** is good for listing out the *functions* of a certain program.

The main goal here is to drastically minimize the amount of errors that occurred during your program and relieve a lot of stress on your head. The importance of pseudocode cannot be stressed enough.



## Choosing the right language?

Now that you have a basic understanding of computer science, what kind of language should you delve into?

By now, you can program just about anything you have on your mind. Anything from simply games to complex software.

**low-level vs. high-level languages**

high-level languages are more abstract from machine code, easier to learn.

low-level languages is closer to machine code, harder to learn, often provides more functionality.

**What language should I learn?**

It depends what you're going to do, as sometimes you need very specialized languages to get done what you want.

The world of computer science is *vast* and contains many fields, so trying to cover *everything* in on language would be impossible. Which led to the creation of *thousands* of different programming languages.

**HTML/CSS**

Used for *web development*. **HTML** is a *markup* language used for writing the content of a website. **CSS** is used to design the *style* of a website.

**scriting languages**

Scriting languages: language with many *commands* for you to use that can be run *without being compiled*. Easier to *port* between operating systems. Many times also used in *Web Development*.

Perl, PHP, AJAX, JavaScript

**General Purpose**

Offer a wide variety of uses and *applications*, very good *basic* languages.

Java, C++, Python. They each have their own different benefits over one another. Java is very useful for developing games and interactive web pages. Python can act as a scripting language for web programming, as well as writing applications and data analysis. C++ tends to be used for writing applications and system programs.



## Applications of programming

What's next? What happens after this video cuts out? How do I continue my computer science journey?

**the next step**

Research a language we've talked about that *interests* you. Official *Websites*, *wikipedia* page.

Decide if that's really the language you would like to start with.

**learning the language**

*Learn* the language you decide to pursue. Use *YouTube* as a source starting with an introduction series to the language.

**start programming**

If you don't know *what* you want to make. Use *websites* that have *provided prompts* to kick-start your code-writing.

Firs is coding bat, next is coderbyte, final is HackerRank.

Take programming *classes* available to you at your school, **AP CSA/CSP**

**Conclusion**

The world of code has now been opened up to you. *Take advantage of it*.

You could get into GitHub and start contributing to your projects. You could work on your own projects and collaborate with others. The possibilities are endless.

---

## 阮一峰科技周刊6.10

[How to read a book](https://dkb.io/post/how-to-read-a-book): words --> reading --> asking and answering difficult questions about the book --> knowledge; A good book can improve your mental model of the world, increase your overall knowledge, and change the way you operate. But reading for understanding requires you to put in more effort than the  other kinds of reading.

[ThinkDSP with examples that are written in Python](https://github.com/AllenDowney/ThinkDSP).

[Markov chain](https://en.wikipedia.org/wiki/Markov_chain#:~:text=A%20Markov%20chain%20or%20Markov,attained%20in%20the%20previous%20event.)

translation part time jobs

威客中国，猪八戒网

Dash集成各个编程语言的API？Github的Coplite插件？

## 阮一峰科技周刊6.17

[Salesforce](https://en.wikipedia.org/wiki/Salesforce)

[Building a Budget Homelab NAS Server (2022 Edition)](https://mtlynch.io/budget-nas/)

[My free-software photography workflow](https://blog.fidelramos.net/photography/photography-workflow#5-replication-with-syncthing)

[Free Image Hosting With Cloudflare Transform Rules and Backblaze B2](https://www.backblaze.com/blog/free-image-hosting-with-cloudflare-transform-rules-and-backblaze-b2/)

[How Much Money is Flowing into Crypto?](https://tomtunguz.com/how-much-money-flowing-into-crypto/)

[According to Stephen King: “The Scariest Moment Is Always ____.”](https://gretchenrubin.com/2016/08/according-stephen-king-scariest-moment-always-____)

## 阮一峰科技周刊6.24

## 阮一峰科技周刊7.1

[fintopea](https://www.fintopea.com/quote/AAPL/income-statement)

[How to control the metacognition process of programming?](https://lambdaisland.com/blog/2022-02-17-the-fg-command):

> 1. Explain the code to another person. ([Rubber Duck Method](https://en.wikipedia.org/wiki/Rubber_duck_debugging))
> 2. Ask myself some pre-made questions. ([Drucker Method](https://www.processexcellencenetwork.com/lessons_from_peter_drucker/articles/druckers-method-for-solving-a-clients-problem))

## 阮一峰科技周刊7.8

[2022 Developer Survey](https://survey.stackoverflow.co/2022/#most-loved-dreaded-and-wanted-office-stack-sync-want)

[Software Engineering at Google（中文版）](https://qiangmzsx.github.io/Software-Engineering-at-Google/#/?id=software-engineering-at-google)

[You have to evolve](https://blog.devgenius.io/why-developers-stagnate-77d9bfc5c91e)

## 阮一峰科技周刊7.15

[Tiny_Python_Projects](http://tinypythonprojects.com/Tiny_Python_Projects.pdf)

[making-friends-online](https://jon.bo/posts/making-friends-online/)

## [阮一峰科技周刊7.22](https://www.ruanyifeng.com/blog/2022/07/weekly-issue-215.html)

[Web Scraping with Python: Everything you need to know](https://www.scrapingbee.com/blog/web-scraping-101-with-python/)

## [阮一峰科技周刊7.29](https://www.ruanyifeng.com/blog/2022/07/weekly-issue-216.html)

[minimalism](https://en.wikipedia.org/wiki/Minimalism)

[how to use chrome as a code editor and debugger](https://blog.openreplay.com/how-to-use-chrome-as-a-code-editor-and-debugger)

[professional programming the first 10 years](https://thorstenball.com/blog/2022/05/17/professional-programming-the-first-10-years/)

## [阮一峰科技周刊8.5](https://www.ruanyifeng.com/blog/2022/08/weekly-issue-217.html)

[The untold story of SQLite](https://corecursive.com/066-sqlite-with-richard-hipp/)

[Professional Programming: The First 10 years](https://thorstenball.com/blog/2022/05/17/professional-programming-the-first-10-years/)

[How to be successful](https://blog.samaltman.com/how-to-be-successful)

## [阮一峰科技周刊8.12](https://www.ruanyifeng.com/blog/2022/08/weekly-issue-218.html)

[雷军2022年度演讲](https://www.sohu.com/a/576060273_358836)

日本樱花的英文是sakura？

[Use Live Caption in Chrome](https://support.google.com/chrome/answer/10538231?hl=en)

[stemroller.com](https://www.stemroller.com/): 将歌曲的人声与伴奏分离

[welcome to the new database era](https://ethanjb.medium.com/welcome-to-the-new-database-era-f4f8c8c407e1)

## [阮一峰科技周刊8.19](https://www.ruanyifeng.com/blog/2022/08/weekly-issue-219.html)

[twilio social engineering attack](https://www.twilio.com/blog/august-2022-social-engineering-attack): 这家公司采用2FA认证依然被攻破，其关键在于员工点击了钓鱼网站链接，并在钓鱼网站页面输入了账户密码，及TOTP密码（比如谷歌密码认证器生成的密码）。这告诉我们密码+物理密钥认证比密码+TOTP认证更为安全，因为黑客有可能没有拿到物理密钥。其次要识别钓鱼网站及钓鱼信息。

[understanding quantum technologies 2021](https://www.oezratty.net/wordpress/2021/understanding-quantum-technologies-2021/): 量子力学介绍书籍，800多页

[OA.mg](https://oa.mg/): 论文搜索网站

[top 5 product and management skills: SQL, Excel, Clear Communication, Story, Prioritization](https://www.craigkerstiens.com/2021/04/27/top-5-product-and-management-skills-sql-excel-clear-communication-story-prioritization/)
