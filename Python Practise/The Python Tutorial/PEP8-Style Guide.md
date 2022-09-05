[toc]

[PEP8 Style Guide for Python](https://peps.python.org/pep-0008/)



## Introduction

This document gives coding conventions for the Python code comprising the standard library in the main Python distribution. Please see the companion informational PEP describing [style guidelines for the C code in the C implementation of Python](https://peps.python.org/pep-0007).

This document and [PEP 257](https://peps.python.org/pep-0257) (Docstring Conventions) were adapted from Guido’s original Python Style Guide essay, with some additions from Barry’s style guide<a href='#fn2' name='fn2b'><sup>[2]</sup></a>.

This style guide evolves over time as additional conventions are identified and past conventions are rendered obsolete by changes in the language itself.

Many projects have their own coding style guidelines. In the event of any conflicts, such project-specific guides take precedence for that project.

> 这份文件给出了由Python主发行版中的标准库组成的Python代码的编码规范。请参阅配套的信息性PEP描述 [Python的C实现中的C代码的风格指南](https://peps.python.org/pep-0007)。
>
> 本文档和 [PEP 257](https://peps.python.org/pep-0257) (Docstring Conventions) 是根据Guido最初的Python风格指南文章改编的，并从Barry的风格指南[[2\]](https://peps.python.org/pep-0008/#id6)中增加了一些内容。
>
> 这个风格指南随着时间的推移而演变，因为有更多的约定被确定下来，而过去的约定又因为语言本身的变化而变得过时。
>
> 许多项目都有自己的编码风格指南。在任何冲突的情况下，这种项目特定的指南在该项目中具有优先权。
>

## A foolish consistency is the Hobgoblin of little minds

One of Guido’s key insights is that code is read much more often than it is written. The guidelines provided here are intended to improve the readability of code and make it consistent across the wide spectrum of Python code. As [PEP 20](https://peps.python.org/pep-0020) says, “Readability counts”.

A style guide is about consistency. Consistency with this style guide is important. Consistency within a project is more important. Consistency within one module or function is the most important.

However, know when to be inconsistent – sometimes style guide recommendations just aren’t applicable. When in doubt, use your best judgment. Look at other examples and decide what looks best. And don’t hesitate to ask!

In particular: do not break backwards compatibility just to comply with this PEP!

Some other good reasons to ignore a particular guideline:

1. When applying the guideline would make the code less readable, even for someone who is used to reading code that follows this PEP.
2. To be consistent with surrounding code that also breaks it (maybe for historic reasons) – although this is also an opportunity to clean up someone else’s mess (in true XP style).
3. Because the code in question predates the introduction of the guideline and there is no other reason to be modifying that code.
4. When the code needs to remain compatible with older versions of Python that don’t support the feature recommended by the style guide.

> Guido的一个重要见解是，代码被阅读的次数远远多于被书写的次数。这里提供的指南是为了提高代码的可读性，并使其在广泛的Python代码中保持一致。正如 [PEP 20](https://peps.python.org/pep-0020) 所说，"可读性很重要"。
>
> 风格指南是关于一致性的。与本风格指南保持一致是很重要的。在一个项目中的一致性更为重要。一个模块或功能内的一致性是最重要的。
>
> 然而，要知道什么时候可以不一致--有时风格指南的建议就是不适用。当有疑问时，使用你的最佳判断。看看其他的例子，决定什么看起来最好。而且不要犹豫，要问清楚
>
> 特别是：不要为了遵守这个PEP而破坏了向后的兼容性。
>
> 其他一些忽略某条准则的好理由：
>
> 1. 当应用该准则会使代码的可读性降低时，即使是对于那些习惯于阅读遵循该PEP的代码的人来说。
> 2. 为了与周围的代码保持一致，这些代码也会破坏它（也许是出于历史原因）--尽管这也是一个清理别人的烂摊子的机会（以真正的XP风格）。
> 3. 因为有问题的代码是在引入该准则之前就存在的，而且没有其他理由要修改该代码。
> 4. 当代码需要与不支持风格指南所推荐的特性的旧版本的 Python 保持兼容时。
>

## Code Lay-out

### Indentation

Use 4 spaces per indentation level.

Continuation lines should align wrapped elements either vertically using Python’s implicit line joining inside parentheses, brackets and braces, or using a *hanging indent* <a href='#fn1' name='fn1b'><sup>[1]</sup></a>. When using a hanging indent the following should be considered; there should be no arguments on the first line and further indentation should be used to clearly distinguish itself as a continuation line:

> 每个缩进级别使用4个空格。
>
> 延续行应该使用Python的圆括号、方括号和大括号内的隐式连线，或者使用*悬挂缩进* <a href='#fn1' name='fn1b'><sup>[1]</sup></a>，将包裹的元素垂直对齐。当使用悬空缩进时，应该考虑以下问题；第一行不应该有参数，应该使用进一步的缩进来明确区分自己是一个延续行。

```python
# Correct:

# Aligned with opening delimiter.
foo = long_function_name(var_one, var_two,
                         var_three, var_four)

# Add 4 spaces (an extra level of indentation) to distinguish arguments from the rest.
def long_function_name(
        var_one, var_two, var_three,
        var_four):
    print(var_one)
    
# Hanging indents should add a level.
foo = long_function_name(
    var_one, var_two,
    var_three, var_four)
```

The 4-space rule is optional for continuation lines.

Optional:

> 4-空格规则对于续行来说是可选的。
>
> 可选的：

```python
# Hanging indents *may* be indented to other than 4 spaces.
foo = long_function_name(
  var_one, var_two,
  var_three, var_four)
```

When the conditional part of an `if`-statement is long enough to require that it be written across multiple lines, it’s worth noting that the combination of a two character keyword (i.e. `if`), plus a single space, plus an opening parenthesis creates a natural 4-space indent for the subsequent lines of the multiline conditional. This can produce a visual conflict with the indented suite of code nested inside the `if`-statement, which would also naturally be indented to 4 spaces. This PEP takes no explicit position on how (or whether) to further visually distinguish such conditional lines from the nested suite inside the `if`-statement. Acceptable options in this situation include, but are not limited to:

> 当 `if` 语句的条件部分长到需要写多行时，值得注意的是，两个字符的关键字（即 `if`），加上一个空格，再加上一个开头的圆括号，为多行条件的后续行创造了一个自然的4空格缩进。这可能会与嵌套在 `if` 语句中的缩进代码产生视觉冲突，这些代码也会自然缩进到4个空格。本PEP对如何（或是否）进一步从视觉上区分这些条件行和嵌套在 `if` 语句中的套件没有明确的立场。这种情况下可接受的选项包括，但不限于：

```python
# No extra indentation.
if (this_is_one thing and
    that_is_anohter_thing):
    do_something()
    
# Add a commment, which will provide some distinction in editors
# supporting syntax highlighting.
if (this_is_one thing and
    that_is_anohter_thing):
    # since both conditions are true, we can frobnicate.
    do_something()
    
# Add some extra indentation on the conditional continuation line.
if (this_is_one thing
        and that_is_anohter_thing):
    do_something()
```

(Also see the discussion of whether to break before or after binary operators below.)

The closing brace/bracket/parenthesis on multiline constructs may either line up under the first non-whitespace character of the last line of list, as in:

> (参见下面关于二元运算符之前或之后是否断句的讨论）。
>
> 多行结构上的结束大括号/方括号/圆括号可以排在列表最后一行的第一个非空格字符下，如：

```python
my_list = [
    1, 2, 3
    4, 5, 6
    ]

result = some_function_that_takes_arguments(
    'a', 'b', 'c',
    'd', 'e', 'f',
    )
```

or it may be lined up under the first character of the line that starts the multiline construct, as in:

> 或者它可以排在开始多行结构的一行的第一个字符下面，如：

```python
my_list = [
    1, 2, 3
    4, 5, 6
]

result = some_function_that_takes_arguments(
    'a', 'b', 'c',
    'd', 'e', 'f',
)
```

### Tables or Spaces?

Spaces are the preferred indentation method.

Tabs should be used solely to remain consistent with code that is already indented with tabs.

Python disallows mixing tabs and spaces for indentation.

> 白空格是首选的缩进方法。
>
> Tab空格应该只用于与已经用Tab空格缩进的代码保持一致。
>
> Python不允许将Tab空格和白空格混合在一起缩进。

### Maximum Line Length

Limit all lines to a maximum of 79 characters.

For flowing long blocks of text with fewer structural restrictions (docstrings or comments), the line length should be limited to 72 characters.

Limiting the required editor window width makes it possible to have several files open side by side, and works well when using code review tools that present the two versions in adjacent columns.

The default wrapping in most tools disrupts the visual structure of the code, making it more difficult to understand. The limits are chosen to avoid wrapping in editors with the window width set to 80, even if the tool places a marker glyph in the final column when wrapping lines. Some web based tools may not offer dynamic line wrapping at all.

Some teams strongly prefer a longer line length. For code maintained exclusively or primarily by a team that can reach agreement on this issue, it is okay to increase the line length limit up to 99 characters, provided that comments and docstrings are still wrapped at 72 characters.

The Python standard library is conservative and requires limiting lines to 79 characters (and docstrings/comments to 72).

The preferred way of wrapping long lines is by using Python’s implied line continuation inside parentheses, brackets and braces. Long lines can be broken over multiple lines by wrapping expressions in parentheses. These should be used in preference to using a backslash for line continuation.

Backslashes may still be appropriate at times. For example, long, multiple `with`-statements could not use implicit continuation before Python 3.10, so backslashes were acceptable for that case:

> 将所有的行限制在最多79个字符。
>
> 对于结构限制较少的流动的长文本块（文档字符串或注释），行长应限制为72个字符。
>
> 限制所需的编辑器窗口宽度使得并排打开几个文件成为可能，并且在使用将两个版本呈现在相邻列的代码审查工具时效果很好。
>
> 大多数工具中的默认包裹破坏了代码的视觉结构，使其更加难以理解。选择这些限制是为了避免在窗口宽度设置为80的编辑器中进行包装，即使工具在包装行时在最后一列放置一个标记字形。一些基于网络的工具可能根本就不提供动态换行。
>
> 有些团队强烈希望行的长度长一些。对于完全或主要由一个团队维护的代码，如果能在这个问题上达成一致，可以将行长限制增加到99个字符，但注释和文档字符串仍以72个字符包装。
>
> Python 标准库是保守的，它要求将行长度限制在 79 个字符 (而 docstrings/comments 限制在 72 个字符)。
>
> 包裹长行的首选方法是在圆括号、方括号和大括号内使用 Python 的隐含续行功能。长行可以通过将表达式包裹在圆括号中而分成多行。应该优先使用这些圆括号，而不是使用反斜杠来延续行。
>
> 有时反斜杠仍然是合适的。例如，在Python 3.10之前，长而多的`with`语句不能使用隐式续行，所以反斜杠在这种情况下是可以接受的：
>

```python
with open('/path/to/some/file/you/want/to/read') as file_1, \
     open('/path/to/some/file/being/written', 'w') as file_2:
    file_2.write(file_1.read())
```

(See the previous discussion on [multiline if-statements](https://peps.python.org/pep-0008/#multiline-if-statements) for further thoughts on the indentation of such multiline `with`-statements.)

Another such case is with `assert` statements.

Make sure to indent the continued line appropriately.

> (参见前面关于[多行if语句](https://peps.python.org/pep-0008/#multiline-if-statements)的讨论，以进一步了解这种多行`with`语句的缩进。)
>
> 另一种情况是 `assert` 语句。
>
> 请确保适当地缩进续行。

### Should a line break before or after a binary operation?

For decades the recommended style was to break after binary operators. But this can hurt readability in two ways: the operators tend to get scattered across different columns on the screen, and each operator is moved away from its operand and onto the previous line. Here, the eye has to do extra work to tell which items are added and which are subtracted:

> 几十年来，推荐的风格是在二元运算符之后断开。但这在两个方面会损害可读性：运算符往往分散在屏幕的不同列中，而且每个运算符都被从其操作数上移到了前一行。在这里，眼睛不得不做额外的工作来分辨哪些项目是加法，哪些是减法：

```python
# Wrong:
# operators sit far away from their operands
income = (gross_wages +
          taxable_interest +
          (dividends - qualified_dividends) -
          ira_deduction -
          student_loan_interest)
```

To solve this readability problem, mathematicians and their publishers follow the opposite convention. Donald Knuth explains the traditional rule in his *Computers and Typesetting* series: “Although formulas within a paragraph always break after binary operations and relations, displayed formulas always break before binary operations”<a href='#fn3' name='fn3b'><sup>[3]</sup></a>.

Following the tradition from mathematics usually results in more readable code:

```python
#Correct
# easy to match operators with operands
incom = (gross_wage
         + taxable_interest
         + (dividends - qulified_dividends)
         - ira_deduction
         - student_loan_interest)
```

In Python code, it is permissible to break before or after a binary operator, as long as the convention is consistent locally. For new code Knuth’s style is suggested.

### Blank lines

Surround top-level function and class definitions with two blank lines.

Method definitions inside a class are surrounded by a single blank line.

Extra blank lines may be used (sparingly) to separate groups of related functions. Blank lines may be omitted between a bunch of related one-liners (e.g. a set of dummy implementations).

Use blank lines in functions, sparingly, to indicate logical sections.

Python accepts the control-L (i.e. ^L) form feed character as whitespace; many tools treat these characters as page separators, so you may use them to separate pages of related sections of your file. Note, some editors and web-based code viewers may not recognize control-L as a form feed and will show another glyph in its place.

> 用两行空行包围顶级函数和类的定义。
>
> 类中的方法定义由一个空行包围。
>
> 额外的空行可以被用来分隔相关的函数组（少用）。在一堆相关的单行代码之间可以省略空行（例如，一组假的实现）。
>
> 在函数中使用空行，少用，表示逻辑部分。
>
> Python 接受 control-L (即 ^L) 形式的换行字符作为空白；许多工具将这些字符视为页面分隔符，所以你可以用它们来分隔文件中相关部分的页面。注意，一些编辑器和基于网络的代码查看器可能无法识别 control-L 为换页字符，而会显示另一个字形来代替它。

### Source file encoding

Code in the core Python distribution should always use UTF-8, and should not have an encoding declaration.

In the standard library, non-UTF-8 encodings should be used only for test purposes. Use non-ASCII characters sparingly, preferably only to denote places and human names. If using non-ASCII characters as data, avoid noisy Unicode characters like z̯̯͡a̧͎̺l̡͓̫g̹̲o̡̼̘ and byte order marks.

All identifiers in the Python standard library MUST use ASCII-only identifiers, and SHOULD use English words wherever feasible (in many cases, abbreviations and technical terms are used which aren’t English).

Open source projects with a global audience are encouraged to adopt a similar policy.

> 核心Python发行版中的代码应该始终使用UTF-8，并且不应该有编码声明。
>
> 在标准库中，非UTF-8编码应该只用于测试目的。少用非ASCII字符，最好只用来表示地方和人名。如果使用非ASCII字符作为数据，要避免像z̡̯̯̼̘̫͡g̹̲o̡̼̘和字节顺序标记这样的噪声Unicode字符。
>
> Python标准库中的所有标识符都必须使用纯ASCII的标识符，并且在可行的情况下应该使用英文单词（在很多情况下，使用的缩写和技术术语都不是英文）。
>
> 我们鼓励有全球受众的开源项目采用类似的政策。

### Imports

Imports should usually be on separate lines:

```python
# Correct:
import os
import sys
```

```python
# Wrong:
import sys, os
```

It’s okay to say this though:

```python
# Correct:
from subprocess import Popen, PIPE
```

- Imports are always put at the top of the file, just after any module comments and docstrings, and before module globals and constants.

  Imports should be grouped in the following order:

  1. Standard library imports.
  2. Related third party imports.
  3. Local application/library specific imports.

  You should put a blank line between each group of imports.

- Absolute imports are recommended, as they are usually more readable and tend to be better behaved (or at least give better error messages) if the import system is incorrectly configured (such as when a directory inside a package ends up on `sys.path`):

```python
import mypkg.sibling
from mypkg import sibling
from mypkg.sibling import example
```

However, explicit relative imports are an acceptable alternative to absolute imports, especially when dealing with complex package layouts where using absolute imports would be unnecessarily verbose:

```python
from . import sibling
from .sibling import example
```

Standard library code should avoid complex package layouts and always use absolute imports.

- When importing a class from a class-containing module, it’s usually okay to spell this:

  ```python
  from myclass import MyClass
  from foo.bar.yourclass import YourClass
  ```

  If this spelling causes local name clashes, then spell them explicitly:

  ```python
  import myclass
  import foo.bar.yourclass
  ```

  and use “myclass.MyClass” and “foo.bar.yourclass.YourClass”.

- Wildcard imports (`from <module> import *`) should be avoided, as they make it unclear which names are present in the namespace, confusing both readers and many automated tools. There is one defensible use case for a wildcard import, which is to republish an internal interface as part of a public API (for example, overwriting a pure Python implementation of an interface with the definitions from an optional accelerator module and exactly which definitions will be overwritten isn’t known in advance).

  When republishing names this way, the guidelines below regarding public and internal interfaces still apply.

### Module level Dunder names

Module level “dunders” (i.e. names with two leading and two trailing underscores) such as `__all__`, `__author__`, `__version__`, etc. should be placed after the module docstring but before any import statements *except* `from __future__` imports. Python mandates that future-imports must appear in the module before any other code except docstrings:

> 模块级的 "unders"(即带有两个前导和两个尾部下划线的名字)，如 `__all__`, `__author__`, `__version__`，等等，应该放在模块文档字符串之后，但在任何导入语句之前，*除了* `from __future__`导入。Python 规定future-imports必须在模块中出现在任何其他代码之前，除了文档字符串：

```python
"""This is the example module

This module does stuff.
"""

from __future__ import barry_as_FLUFL

__all__ = ['a', 'b', 'c']
__version__ = '0.1'
__author__ = 'Cardinal Biggles'

import os
import sys
```

## String quotes

In Python, single-quoted strings and double-quoted strings are the same. This PEP does not make a recommendation for this. Pick a rule and stick to it. When a string contains single or double quote characters, however, use the other one to avoid backslashes in the string. It improves readability.

For triple-quoted strings, always use double quote characters to be consistent with the docstring convention in [PEP 257](https://peps.python.org/pep-0257).

> 在 Python 中，单引号字符串和双引号字符串是一样的。本 PEP 并没有对此提出建议。选择一个规则并坚持下去。然而，当一个字符串包含单引号或双引号字符时，使用另一个，以避免字符串中的反斜线。它可以提高可读性。
>
> 对于三引号的字符串，总是使用双引号字符，以便与[PEP 257](https://peps.python.org/pep-0257)中的docstring约定一致。

## Whitespace in expressions and statements

### Pet peeves

Avoid extraneous whitespace in the following situations:

- Immediately inside parentheses, brackets or braces:

  ```python
  # Correct:
  spam(ham[1], {eggs: 2})
  ```

  ```python
  # Wrong:
  spam( ham[ 1 ], { eggs: 2 } )
  ```

- Between a trailing comma and a following close parenthesis:

  ```python
  # Correct:
  foo = (0,)
  ```

  ```python
  # Wrong:
  bar = (0, )
  ```

- Immediately before a comma, semicolon, or colon:

  ```python
  # Correct:
  if x == 4: print(x, y); x, y = y, x
  ```

  ```python
  # Wrong:
  if x == 4 : print(x , y) ; x , y = y , x
  ```

- However, in a slice the colon acts like a binary operator, and should have equal amounts on either side (treating it as the operator with the lowest priority). In an extended slice, both colons must have the same amount of spacing applied. Exception: when a slice parameter is omitted, the space is omitted:

  ```python
  # Correct:
  ham[1:9], ham[1:9:3], ham[:9:3], ham[1::3], ham[1:9:]
  ham[lower:upper], ham[lower:upper:], ham[lower::step]
  ham[lower+offset : upper+offset]
  ham[: upper_fn(x) : step_fn(x)], ham[:: step_fn(x)]
  ham[lower + offset : upper + offset]
  ```

  ```python
  # Wrong:
  ham[lower + offset:upper + offset]
  ham[1: 9], ham[1 :9], ham[1:9 :3]
  ham[lower : : upper]
  ham[ : upper]
  ```

- Immediately before the open parenthesis that starts the argument list of a function call:

  ```python
  # Correct:
  spam(1)
  ```

  ```python
  # Wrong:
  spam (1)
  ```

- Immediately before the open parenthesis that starts an indexing or slicing:

  ```python
  # Correct:
  dct['key'] = lst[index]
  ```

  ```python
  # Wrong:
  dct ['key'] = lst [index]
  ```

- More than one space around an assignment (or other) operator to align it with another:

  ```
  # Correct:
  x = 1
  y = 2
  long_variable = 3
  ```

  ```python
  # Wrong:
  x             = 1
  y             = 2
  long_variable = 3
  ```

### Other recommendations

- Avoid trailing whitespace anywhere. Because it’s usually invisible, it can be confusing: e.g. a backslash followed by a space and a newline does not count as a line continuation marker. Some editors don’t preserve it and many projects (like CPython itself) have pre-commit hooks that reject it.

- Always surround these binary operators with a single space on either side: assignment (`=`), augmented assignment (`+=`, `-=` etc.), comparisons (`==`, `<`, `>`, `!=`, `<>`, `<=`, `>=`, `in`, `not in`, `is`, `is not`), Booleans (`and`, `or`, `not`).

- If operators with different priorities are used, consider adding whitespace around the operators with the lowest priority(ies). Use your own judgment; however, never use more than one space, and always have the same amount of whitespace on both sides of a binary operator:

  ```python
  # Correct:
  i = i + 1
  submitted += 1
  x = x*2 - 1
  hypot2 = x*x + y*y
  c = (a+b) * (a-b)
  ```

  ```Python
  # Wrong:
  i=i+1
  submitted +=1
  x = x * 2 - 1
  hypot2 = x * x + y * y
  c = (a + b) * (a - b)
  ```

- Function annotations should use the normal rules for colons and always have spaces around the `->` arrow if present. (See [Function Annotations](https://peps.python.org/pep-0008/#function-annotations) below for more about function annotations.):

  ```python
  # Correct:
  def munge(input: AnyStr): ...
  def munge() -> PosInt: ...
  ```

  ```python
  # Wrong:
  def munge(input:AnyStr): ...
  def munge()->PosInt: ...
  ```

- Don’t use spaces around the `=` sign when used to indicate a keyword argument, or when used to indicate a default value for an *unannotated* function parameter:

  ```python
  # Correct:
  def complex(real, imag=0.0):
      return magic(r=real, i=imag)
  ```

  ```python
  # Wrong:
  def complex(real, imag = 0.0):
      return magic(r = real, i = imag)
  ```

  When combining an argument annotation with a default value, however, do use spaces around the `=` sign:

  ```python
  # Correct:
  def munge(sep: AnyStr = None): ...
  def munge(input: AnyStr, sep: AnyStr = None, limit=1000): ...
  ```

  ```python
  # Wrong:
  def munge(input: AnyStr=None): ...
  def munge(input: AnyStr, limit = 1000): ...
  ```

- Compound statements (multiple statements on the same line) are generally discouraged:

  ```python
  # Correct:
  if foo == 'blah':
      do_blah_thing()
  do_one()
  do_two()
  do_three()
  ```

  Rather not:

  ```python
  # Wrong:
  if foo == 'blah': do_blah_thing()
  do_one(); do_two(); do_three()
  ```

- While sometimes it’s okay to put an if/for/while with a small body on the same line, never do this for multi-clause statements. Also avoid folding such long lines!

  Rather not:

  ```python
  # Wrong:
  if foo == 'blah': do_blah_thing()
  for x in lst: total += x
  while t < 10: t = delay()
  ```

  Definitely not:

  ```Python
  # Wrong:
  if foo == 'blah': do_blah_thing()
  else: do_non_blah_thing()
  
  try: something()
  finally: cleanup()
  
  do_one(); do_two(); do_three(long, argument,
                               list, like, this)
  
  if foo == 'blah': one(); two(); three()
  ```

## When to use trailing commas

Trailing commas are usually optional, except they are mandatory when making a tuple of one element. For clarity, it is recommended to surround the latter in (technically redundant) parentheses:

```python
# Correct:
FILES = ('setup.cfg',)
# Wrong:
FILES = 'setup.cfg',
```

When trailing commas are redundant, they are often helpful when a version control system is used, when a list of values, arguments or imported items is expected to be extended over time. The pattern is to put each value (etc.) on a line by itself, always adding a trailing comma, and add the close parenthesis/bracket/brace on the next line. However it does not make sense to have a trailing comma on the same line as the closing delimiter (except in the above case of singleton tuples):

```python
# Correct:
FILES = [
    'setup.cfg',
    'tox.ini',
    ]
initialize(FILES,
           error=True,
           )
# Wrong:
FILES = ['setup.cfg', 'tox.ini',]
initialize(FILES, error=True,)
```

## Comments

Comments that contradict the code are worse than no comments. Always make a priority of keeping the comments up-to-date when the code changes!

Comments should be complete sentences. The first word should be capitalized, unless it is an identifier that begins with a lower case letter (never alter the case of identifiers!).

Block comments generally consist of one or more paragraphs built out of complete sentences, with each sentence ending in a period.

You should use two spaces after a sentence-ending period in multi- sentence comments, except after the final sentence.

Ensure that your comments are clear and easily understandable to other speakers of the language you are writing in.

Python coders from non-English speaking countries: please write your comments in English, unless you are 120% sure that the code will never be read by people who don’t speak your language.

> 与代码相抵触的注释比没有注释更糟糕。当代码发生变化时，一定要优先考虑保持注释的更新。
>
> 注释应该是完整的句子。第一个词应该大写，除非它是一个以小写字母开头的标识符（永远不要改变标识符的大小写！）。
>
> 块状注释通常由一个或多个完整的句子组成，每个句子以句号结束。
>
> 在多句注释中，你应该在句子结束的句号后使用两个空格，但最后一句话后除外。
>
> 确保你的注释是清晰的，对于其他使用你所写语言的人来说容易理解。
>
> 来自非英语国家的Python编码员：请用英语写注释，除非你有120%的把握，代码不会被不讲你的语言的人阅读。

### Block comments

Block comments generally apply to some (or all) code that follows them, and are indented to the same level as that code. Each line of a block comment starts with a `#` and a single space (unless it is indented text inside the comment).

Paragraphs inside a block comment are separated by a line containing a single `#`.

> 块状注释通常适用于它们后面的一些（或全部）代码，并缩进到与该代码相同的水平。区块注释的每一行都以`#`和一个空格开始（除非它是注释内的缩进文本）。
>
> 区块注释内的段落由包含一个`#`的行来分隔。

### inline comments

Use inline comments sparingly.

An inline comment is a comment on the same line as a statement. Inline comments should be separated by at least two spaces from the statement. They should start with a # and a single space.

Inline comments are unnecessary and in fact distracting if they state the obvious. Don’t do this:

```python
x = x + 1                 # Increment x
```

But sometimes, this is useful:

```python
x = x + 1                 # Compensate for border
```

### Documentation strings

Conventions for writing good documentation strings (a.k.a. “docstrings”) are immortalized in [PEP 257](https://peps.python.org/pep-0257).

- Write docstrings for all public modules, functions, classes, and methods. Docstrings are not necessary for non-public methods, but you should have a comment that describes what the method does. This comment should appear after the `def` line.

- PEP 257 describes good docstring conventions. Note that most importantly, the `"""` that ends a multiline docstring should be on a line by itself:

  ```python
  """Return a foobang
  
  Optional plotz says to frobnicate the bizbaz first.
  """
  ```

- For one liner docstrings, please keep the closing `"""` on the same line:

  ```python
  """Return an ex-parrot."""
  ```

## Naming conventions

The naming conventions of Python’s library are a bit of a mess, so we’ll never get this completely consistent – nevertheless, here are the currently recommended naming standards. New modules and packages (including third party frameworks) should be written to these standards, but where an existing library has a different style, internal consistency is preferred.

> Python 库的命名规则有点乱，所以我们永远不会让它完全一致--尽管如此，这里是目前推荐的命名标准。新的模块和包 (包括第三方框架) 应该按照这些标准编写，但如果现有的库有不同的风格，内部的一致性是首选。

### Overriding principle

Names that are visible to the user as public parts of the API should follow conventions that reflect usage rather than implementation.

> 作为API的公共部分，对用户可见的名称应该遵循反映使用情况而不是实现情况的惯例。
>

### Descriptive: naming style

There are a lot of different naming styles. It helps to be able to recognize what naming style is being used, independently from what they are used for.

The following naming styles are commonly distinguished:

- `b` (single lowercase letter)

- `B` (single uppercase letter)

- `lowercase`

- `lower_case_with_underscores`

- `UPPERCASE`

- `UPPER_CASE_WITH_UNDERSCORES`

- `CapitalizedWords` (or CapWords, or CamelCase – so named because of the bumpy look of its letters <a href='#fn4' name='fn4b'><sup>[4]</sup></a>). This is also sometimes known as StudlyCaps.

  Note: When using acronyms in CapWords, capitalize all the letters of the acronym. Thus HTTPServerError is better than HttpServerError.

- `mixedCase` (differs from CapitalizedWords by initial lowercase character!)

- `Capitalized_Words_With_Underscores` (ugly!)

There’s also the style of using a short unique prefix to group related names together. This is not used much in Python, but it is mentioned for completeness. For example, the `os.stat()` function returns a tuple whose items traditionally have names like `st_mode`, `st_size`, `st_mtime` and so on. (This is done to emphasize the correspondence with the fields of the POSIX system call struct, which helps programmers familiar with that.)

The X11 library uses a leading X for all its public functions. In Python, this style is generally deemed unnecessary because attribute and method names are prefixed with an object, and function names are prefixed with a module name.

In addition, the following special forms using leading or trailing underscores are recognized (these can generally be combined with any case convention):

- `_single_leading_underscore`: weak “internal use” indicator. E.g. `from M import *` does not import objects whose names start with an underscore.

- `single_trailing_underscore_`: used by convention to avoid conflicts with Python keyword, e.g.

  ```python
  tkinter.Toplevel(master, class_='ClassName')
  ```

- `__double_leading_underscore`: when naming a class attribute, invokes name mangling (inside class FooBar, `__boo` becomes `_FooBar__boo`; see below).

- `__double_leading_and_trailing_underscore__`: “magic” objects or attributes that live in user-controlled namespaces. E.g. `__init__`, `__import__` or `__file__`. Never invent such names; only use them as documented.

### Prescriptive: naming conventions

#### [Names to Avoid](https://peps.python.org/pep-0008/#names-to-avoid)

Never use the characters ‘l’ (lowercase letter el), ‘O’ (uppercase letter oh), or ‘I’ (uppercase letter eye) as single character variable names.

In some fonts, these characters are indistinguishable from the numerals one and zero. When tempted to use ‘l’, use ‘L’ instead.

> 不要使用字符'l'（小写字母el）、'O'（大写字母oh）或'I'（大写字母eye）作为单字符变量名。
>
> 在某些字体中，这些字符与数字1和0无法区分。当想使用'l'时，请使用'L'代替。

#### [ASCII Compatibility](https://peps.python.org/pep-0008/#ascii-compatibility)

Identifiers used in the standard library must be ASCII compatible as described in the [policy section](https://peps.python.org/pep-3131#policy-specification) of [PEP 3131](https://peps.python.org/pep-3131).

> 如[PEP 3131](https://peps.python.org/pep-3131)的[政策部分](https://peps.python.org/pep-3131#policy-specification)所述，标准库中使用的标识符必须是ASCII兼容。

#### [Package and Module Names](https://peps.python.org/pep-0008/#package-and-module-names)

Modules should have short, all-lowercase names. Underscores can be used in the module name if it improves readability. Python packages should also have short, all-lowercase names, although the use of underscores is discouraged.

When an extension module written in C or C++ has an accompanying Python module that provides a higher level (e.g. more object oriented) interface, the C/C++ module has a leading underscore (e.g. `_socket`).

> 模块应该有简短的、全小写的名字。如果能提高可读性，可以在模块名称中使用下划线。Python 包也应该有短的、全小写的名字，尽管不鼓励使用下划线。
>
> 当一个用C或C++编写的扩展模块有一个附带的Python模块，它提供了一个更高级别的(例如，更多的面向对象的)接口，C/C++模块有一个前导下划线(例如，`_socket`)。

#### [Class Names](https://peps.python.org/pep-0008/#class-names)

Class names should normally use the CapWords convention.

The naming convention for functions may be used instead in cases where the interface is documented and used primarily as a callable.

Note that there is a separate convention for builtin names: most builtin names are single words (or two words run together), with the CapWords convention used only for exception names and builtin constants.

> 类的名字通常应该使用CapWords惯例。
>
> 在接口被记录下来并主要作为可调用的情况下，可以使用函数的命名惯例。
>
> 请注意，对于内建程序的名称有一个单独的约定：大多数内建程序的名称是单字（或两个字并列），CapWords约定只用于异常名称和内建程序常量。

example:

```python
class MyInfo():
    pass
```

#### [Type Variable Names](https://peps.python.org/pep-0008/#type-variable-names)

Names of type variables introduced in [PEP 484](https://peps.python.org/pep-0484) should normally use CapWords preferring short names: `T`, `AnyStr`, `Num`. It is recommended to add suffixes `_co` or `_contra` to the variables used to declare covariant or contravariant behavior correspondingly:

```python
from typing import TypeVar

VT_co = TypeVar('VT_co', covariant=True)
KT_contra = TypeVar('KT_contra', contravariant=True)
```

#### [Exception Names](https://peps.python.org/pep-0008/#exception-names)

Because exceptions should be classes, the class naming convention applies here. However, you should use the suffix “Error” on your exception names (if the exception actually is an error).

> 因为异常应该是类，所以类的命名惯例在此适用。然而，你应该在你的异常名称上使用后缀 "Error"（如果这个异常实际上是一个错误）。

#### [Global Variable Names](https://peps.python.org/pep-0008/#global-variable-names)

(Let’s hope that these variables are meant for use inside one module only.) The conventions are about the same as those for functions.

Modules that are designed for use via `from M import *` should use the `__all__` mechanism to prevent exporting globals, or use the older convention of prefixing such globals with an underscore (which you might want to do to indicate these globals are “module non-public”).

> (希望这些变量只在一个模块内使用。）这些约定与函数的约定差不多。
>
> 通过 `from M import *` 设计的模块应该使用 `__all__` 机制来防止导出globals，或者使用较早的惯例，在这些globals前加一个下划线（你可能想这样做来表示这些globals是 "模块非公共的"）。

#### [Function and Variable Names](https://peps.python.org/pep-0008/#function-and-variable-names)

Function names should be lowercase, with words separated by underscores as necessary to improve readability.

Variable names follow the same convention as function names.

mixedCase is allowed only in contexts where that’s already the prevailing style (e.g. threading.py), to retain backwards compatibility.

> 函数名称应该是小写的，必要时用下划线隔开，以提高可读性。
>
> 变量名遵循与函数名相同的约定。
>
> 混合大小写只允许在已经是主流风格的情况下使用（例如threading.py），以保持向后兼容。

example

```python
# Function naming
def add_two_number(num_one, num_two):
    return num_one + num_two

# Variable naming
add_number = add_two_number(1, 2)
```

#### [Function and Method Arguments](https://peps.python.org/pep-0008/#function-and-method-arguments)

Always use `self` for the first argument to instance methods.

Always use `cls` for the first argument to class methods.

If a function argument’s name clashes with a reserved keyword, it is generally better to append a single trailing underscore rather than use an abbreviation or spelling corruption. Thus `class_` is better than `clss`. (Perhaps better is to avoid such clashes by using a synonym.)

> 总是使用`self`作为实例方法的第一个参数。
>
> 总是使用`cls`作为类方法的第一个参数。
>
> 如果一个函数参数的名字与一个保留关键字冲突，一般来说，最好在后面加上一个下划线，而不是使用缩写或拼写错误。因此`class_`比`clss`好。(也许更好的是通过使用同义词来避免这种冲突)。
>

#### [Method Names and Instance Variables](https://peps.python.org/pep-0008/#method-names-and-instance-variables)

Use the function naming rules: lowercase with words separated by underscores as necessary to improve readability.

Use one leading underscore only for non-public methods and instance variables.

To avoid name clashes with subclasses, use two leading underscores to invoke Python’s name mangling rules.

Python mangles these names with the class name: if class Foo has an attribute named `__a`, it cannot be accessed by `Foo.__a`. (An insistent user could still gain access by calling `Foo._Foo__a`.) Generally, double leading underscores should be used only to avoid name conflicts with attributes in classes designed to be subclassed.

Note: there is some controversy about the use of __names (see below).

> 使用函数命名规则：小写字母，必要时用下划线分隔，以提高可读性。
>
> 只对非公共方法和实例变量使用一个前导下划线。
>
> 为了避免与子类的名称冲突，使用两个前导下划线来调用 Python 的名称混合规则。
>
> Python 将这些名字与类的名字混在一起：如果类 Foo 有一个名为 `__a` 的属性，它就不能被 `Foo.__a` 访问。(一个执着的用户仍然可以通过调用 `Foo._Foo__a` 获得访问权。)一般来说，双引号应该只用于避免与设计为子类的类中的属性发生名称冲突。
>
> 注意：关于__names的使用有一些争议（见下文）。
>

example

```python
class MyInfo():
    
    _name = "xiaowen"
    
    def _walk_to_work(way):
        return "on foot"
```

#### [Constants](https://peps.python.org/pep-0008/#constants)

Constants are usually defined on a module level and written in all capital letters with underscores separating words. Examples include `MAX_OVERFLOW` and `TOTAL`.

> 常量通常定义在模块层面，用大写字母书写，用下划线隔开单词。例子包括 `MAX_OVERFLOW` 和`TOTAL`。

```python
TOTAL_NUM = "all"
```

#### [Designing for Inheritance](https://peps.python.org/pep-0008/#designing-for-inheritance)

Always decide whether a class’s methods and instance variables (collectively: “attributes”) should be public or non-public. If in doubt, choose non-public; it’s easier to make it public later than to make a public attribute non-public.

Public attributes are those that you expect unrelated clients of your class to use, with your commitment to avoid backwards incompatible changes. Non-public attributes are those that are not intended to be used by third parties; you make no guarantees that non-public attributes won’t change or even be removed.

We don’t use the term “private” here, since no attribute is really private in Python (without a generally unnecessary amount of work).

Another category of attributes are those that are part of the “subclass API” (often called “protected” in other languages). Some classes are designed to be inherited from, either to extend or modify aspects of the class’s behavior. When designing such a class, take care to make explicit decisions about which attributes are public, which are part of the subclass API, and which are truly only to be used by your base class.

With this in mind, here are the Pythonic guidelines:

- Public attributes should have no leading underscores.

- If your public attribute name collides with a reserved keyword, append a single trailing underscore to your attribute name. This is preferable to an abbreviation or corrupted spelling. (However, notwithstanding this rule, ‘cls’ is the preferred spelling for any variable or argument which is known to be a class, especially the first argument to a class method.)

  Note 1: See the argument name recommendation above for class methods.

- For simple public data attributes, it is best to expose just the attribute name, without complicated accessor/mutator methods. Keep in mind that Python provides an easy path to future enhancement, should you find that a simple data attribute needs to grow functional behavior. In that case, use properties to hide functional implementation behind simple data attribute access syntax.

  Note 1: Try to keep the functional behavior side-effect free, although side-effects such as caching are generally fine.

  Note 2: Avoid using properties for computationally expensive operations; the attribute notation makes the caller believe that access is (relatively) cheap.

- If your class is intended to be subclassed, and you have attributes that you do not want subclasses to use, consider naming them with double leading underscores and no trailing underscores. This invokes Python’s name mangling algorithm, where the name of the class is mangled into the attribute name. This helps avoid attribute name collisions should subclasses inadvertently contain attributes with the same name.

  Note 1: Note that only the simple class name is used in the mangled name, so if a subclass chooses both the same class name and attribute name, you can still get name collisions.

  Note 2: Name mangling can make certain uses, such as debugging and `__getattr__()`, less convenient. However the name mangling algorithm is well documented and easy to perform manually.

  Note 3: Not everyone likes name mangling. Try to balance the need to avoid accidental name clashes with potential use by advanced callers.

> 始终决定一个类的方法(methods)和实例变量(instance variables)（统称："属性(attributes)"）应该是公共的(public)还是非公共的(non-public)。如果有疑问，请选择非公共的；以后把它变成公共的比把公共属性变成非公共的要容易。
>
> 公共属性是那些你期望你的类的无关客户使用的属性，你的承诺是避免向后不兼容的改变。非公共属性是那些不打算被第三方使用的属性；你不保证非公共属性不会改变，甚至不会被删除。
>
> 我们在这里不使用 "私有"这个术语，因为在 Python 中没有一个属性是真正私有的 (不需要做大量的工作)。
>
> 另一类属性是那些属于 "子类 API "的属性 (在其它语言中通常称为 "保护")。一些类被设计成可以被继承的，用来扩展或修改类的行为的各个方面。在设计这样的类时，要注意明确决定哪些属性是公共的，哪些是子类API的一部分，哪些是真正只能由你的基类使用的。
>
> 考虑到这一点，下面是Pythonic指南：
>
> - 公共属性不应该有前导下划线。
>
> - 如果你的公共属性名称与一个保留关键字相冲突，请在你的属性名称**后面**加上一个下划线。这比缩写或破坏性的拼写更可取。(然而，尽管有这个规则，'cls' 是任何已知为类的变量或参数的首选拼写，特别是类方法的第一个参数。)
>
>   注1：参见上面关于类方法的参数名称建议。
>
> - 对于简单的公共数据属性，最好只公开属性名称，而不公开复杂的访问器/混合器方法。请记住，如果你发现一个简单的数据属性需要增加功能行为，Python 提供了一个方便的途径来实现未来的增强。在这种情况下，使用属性将功能实现隐藏在简单的数据属性访问语法的后面。
>
>   注意1：尽量保持功能行为不受副作用影响，尽管像缓存这样的副作用通常是可以的。
>
>   注意2：避免将属性用于计算成本高的操作；属性符号使调用者相信访问是（相对）便宜的。
>
> - 如果你的类打算被子类化，并且你有不想让子类使用的属性，考虑用双头下划线和无尾下划线来命名它们。这将调用 Python 的名称混合算法，类的名称将被混合成属性名称。这有助于在子类无意中包含相同名称的属性时避免属性名称的冲突。
>
>   注意1：注意只有简单的类名被用于混杂的名称中，所以如果一个子类选择了相同的类名和属性名，你仍然可以得到名称碰撞。
>
>   注意 2: 名字混杂会使某些使用变得不那么方便，例如调试和 `__getattr__()`。然而，名称混杂的算法有很好的文件记录，并且很容易手动执行。
>
>   注意 3: 不是每个人都喜欢名字的混杂。试着在避免意外的名字冲突与高级调用者的潜在使用之间取得平衡。

### [Public and Internal Interfaces](https://peps.python.org/pep-0008/#public-and-internal-interfaces)

Any backwards compatibility guarantees apply only to public interfaces. Accordingly, it is important that users be able to clearly distinguish between public and internal interfaces.

Documented interfaces are considered public, unless the documentation explicitly declares them to be provisional or internal interfaces exempt from the usual backwards compatibility guarantees. All undocumented interfaces should be assumed to be internal.

To better support introspection, modules should explicitly declare the names in their public API using the `__all__` attribute. Setting `__all__` to an empty list indicates that the module has no public API.

Even with `__all__` set appropriately, internal interfaces (packages, modules, classes, functions, attributes or other names) should still be prefixed with a single leading underscore.

An interface is also considered internal if any containing namespace (package, module or class) is considered internal.

Imported names should always be considered an implementation detail. Other modules must not rely on indirect access to such imported names unless they are an explicitly documented part of the containing module’s API, such as `os.path` or a package’s `__init__` module that exposes functionality from submodules.

> 任何向后兼容的保证只适用于公共接口。因此，重要的是，用户必须能够明确区分公共接口和内部接口。
>
> 有文档记载的接口被认为是公共的，除非文档中明确声明它们是临时的或内部的接口，不受通常的向后兼容性保证的影响。所有无文档的接口应该被认为是内部的。
>
> 为了更好地支持自省，模块应该使用 `__all__` 属性明确地声明它们的公共 API 中的名称。将 `__all__` 设置为一个空列表，表示该模块没有公共 API。
>
> 即使适当地设置了 `__all__`，内部接口（包、模块、类、函数、属性或其他名称）仍应在前面加上一个下划线。
>
> 如果任何包含命名空间（包、模块或类）的接口也被认为是内部的。
>
> 导入的名字应该总是被认为是一个实现细节。其他模块不能依赖对这些导入名称的间接访问，除非它们是包含模块的API中明确记录的一部分，例如`os.path`或包的`__init__`模块，它暴露了子模块的功能。
>

## [Programming Recommendations](https://peps.python.org/pep-0008/#programming-recommendations)

- Code should be written in a way that does not disadvantage other implementations of Python (PyPy, Jython, IronPython, Cython, Psyco, and such).

  For example, do not rely on CPython’s efficient implementation of in-place string concatenation for statements in the form `a += b` or `a = a + b`. This optimization is fragile even in CPython (it only works for some types) and isn’t present at all in implementations that don’t use refcounting. In performance sensitive parts of the library, the `''.join()` form should be used instead. This will ensure that concatenation occurs in linear time across various implementations.

- Comparisons to singletons like None should always be done with `is` or `is not`, never the equality operators.

  Also, beware of writing `if x` when you really mean `if x is not None` – e.g. when testing whether a variable or argument that defaults to None was set to some other value. The other value might have a type (such as a container) that could be false in a boolean context!

- Use `is not` operator rather than `not ... is`. While both expressions are functionally identical, the former is more readable and preferred:

  ```python
  # Correct:
  if foo is not None:
  ```

  ```python
  # Wrong:
  if not foo is None:
  ```

> - 代码的编写方式不应不利于Python的其他实现(PyPy, Jython, IronPython, Cython, Psyco, 等等)。
>
>   例如，不要依赖CPython对 `a += b` 或 `a = a + b` 形式的语句进行原地字符串连接的高效实现。这种优化即使在CPython中也是脆弱的（它只对某些类型有效），而且在不使用refcounting的实现中根本不存在。在库的性能敏感部分，应该使用`''.join()`形式来代替。这将确保连接在不同的实现中以线性时间发生。
>
> - 对None这样的单子的比较应该总是用 `is` 或 `is not` 来完成，而不是用相等运算符。
>
>   另外，当你真正的意思是 `if x is not None` 时，要注意写 `if x`--例如，当测试一个默认为None的变量或参数是否被设置为其他值时。其他的值可能有一个类型（如容器），在布尔语境中可能是假的。
>
> - 使用 `is not` 操作符，而不是 `not ... is`。虽然这两个表达式在功能上是相同的，但前者更具可读性，是首选：
>
>   ```python
>   # Correct:
>   if foo is not None:
>         
>   # Wrong:
>   if not foo is None:
>   ```
>

- When implementing ordering operations with rich comparisons, it is best to implement all six operations (`__eq__`, `__ne__`, `__lt__`, `__le__`, `__gt__`, `__ge__`) rather than relying on other code to only exercise a particular comparison.

  To minimize the effort involved, the `functools.total_ordering()` decorator provides a tool to generate missing comparison methods.

  [PEP 207](https://peps.python.org/pep-0207) indicates that reflexivity rules *are* assumed by Python. Thus, the interpreter may swap `y > x` with `x < y`, `y >= x` with `x <= y`, and may swap the arguments of `x == y` and `x != y`. The `sort()` and `min()` operations are guaranteed to use the `<` operator and the `max()` function uses the `>` operator. However, it is best to implement all six operations so that confusion doesn’t arise in other contexts.

- Always use a def statement instead of an assignment statement that binds a lambda expression directly to an identifier:

  ```python
  # Correct:
  def f(x): return 2*x
  ```

  ```python
  # Wrong:
  f = lambda x: 2*x
  ```

  The first form means that the name of the resulting function object is specifically ‘f’ instead of the generic ‘<lambda>’. This is more useful for tracebacks and string representations in general. The use of the assignment statement eliminates the sole benefit a lambda expression can offer over an explicit def statement (i.e. that it can be embedded inside a larger expression)

> - 当用丰富的比较实现排序操作时，最好是实现所有的六种操作（`__eq__`, `__ne__`, `__lt__`, `__le__`, `__gt__`, `__ge__`），而不是依靠其他代码只行使一个特定的比较。
>
>   为了最小化所涉及的工作，`functools.total_ordering()`装饰器提供了一个工具来生成缺少的比较方法。
>
>   [PEP 207](https://peps.python.org/pep-0207)指出反身性规则*是*被Python假定的。因此，解释器可以将`y > x`与`x < y`交换，`y >= x`与`x <= y`交换，并且可以交换`x == y`和`x != y`的参数。`sort()`和`min()`操作保证使用`<`操作符，`max()`函数使用`>`操作符。然而，最好是实现所有六种操作，这样在其他情况下就不会出现混乱。
>
> - 始终使用def语句而不是赋值语句，将λ表达式直接绑定到标识符上。
>
>   ```python
>   # Correct:
>   def f(x): return 2*x
>   ```
>
>   ```python
>   # Wrong:
>   f = lambda x: 2*x
>   ```
>
>   第一种形式意味着产生的函数对象的名称是具体的 "f"，而不是通用的"<lambda>"。这对回溯和一般的字符串表示法更有用。使用赋值语句消除了lambda表达式比显式def语句所能提供的唯一好处（即它可以嵌入到一个更大的表达式中）。

- Derive exceptions from `Exception` rather than `BaseException`. Direct inheritance from `BaseException` is reserved for exceptions where catching them is almost always the wrong thing to do.

  Design exception hierarchies based on the distinctions that code *catching* the exceptions is likely to need, rather than the locations where the exceptions are raised. Aim to answer the question “What went wrong?” programmatically, rather than only stating that “A problem occurred” (see [PEP 3151](https://peps.python.org/pep-3151) for an example of this lesson being learned for the builtin exception hierarchy)

  Class naming conventions apply here, although you should add the suffix “Error” to your exception classes if the exception is an error. Non-error exceptions that are used for non-local flow control or other forms of signaling need no special suffix.

- Use exception chaining appropriately. `raise X from Y` should be used to indicate explicit replacement without losing the original traceback.

  When deliberately replacing an inner exception (using `raise X from None`), ensure that relevant details are transferred to the new exception (such as preserving the attribute name when converting KeyError to AttributeError, or embedding the text of the original exception in the new exception message).

- When catching exceptions, mention specific exceptions whenever possible instead of using a bare `except:` clause:

  ```python
  try:
      import platform_specific_module
  except ImportError:
      platform_specific_module = None
  ```

  A bare `except:` clause will catch SystemExit and KeyboardInterrupt exceptions, making it harder to interrupt a program with Control-C, and can disguise other problems. If you want to catch all exceptions that signal program errors, use `except Exception:` (bare except is equivalent to `except BaseException:`).

  A good rule of thumb is to limit use of bare ‘except’ clauses to two cases:

  1. If the exception handler will be printing out or logging the traceback; at least the user will be aware that an error has occurred.
  2. If the code needs to do some cleanup work, but then lets the exception propagate upwards with `raise`. `try...finally` can be a better way to handle this case.

> - 从 `Exception` 而不是 `BaseException` 派生异常。从`BaseException` 直接继承是保留给那些抓取异常几乎都是错误的事情的异常。
>
>   在设计异常层次时，要考虑到*抓取*异常的代码可能需要的区别，而不是异常发生的位置。旨在以编程方式回答 "什么地方出错了？"的问题，而不是仅仅说明 "发生了一个问题"（参见[PEP 3151](https://peps.python.org/pep-3151)，这是一个关于内置异常层次结构的例子）
>
>   类的命名惯例在此适用，不过如果异常是一个错误，你应该在你的异常类中添加后缀 "Error"。用于非本地流控制或其他形式的信号的非错误异常不需要特殊的后缀。
>
> - 适当地使用异常链。`raise X from Y`应该被用来表示显式替换而不丢失原始回溯。
>
>   当故意替换内部异常时（使用`raise X from None`），确保相关的细节被转移到新的异常中（比如在将KeyError转换为AttributeError时保留属性名称，或者将原始异常的文本嵌入新的异常消息中）。
>
> - 在捕获异常时，尽可能地提到具体的异常，而不是使用赤裸裸的 `except:`子句。
>
>   ```python
>   try:
>       import platform_specific_module
>   except ImportError:
>       platform_specific_module = None
>   ```
>
>   一个光秃秃的`except:`子句会捕捉SystemExit和KeyboardInterrupt异常，使得用Control-C中断程序更加困难，并且可以掩盖其他问题。如果你想捕捉所有提示程序错误的异常，请使用`except Exception:`（裸except等同于`except BaseException:`）。
>
>   一个好的经验法则是将裸 "except " 子句的使用限制在两种情况下：
>
>   1. 如果异常处理程序将打印出来或记录回溯；至少用户会意识到发生了错误。
>   2. 如果代码需要做一些清理工作，但又让异常通过`raise`向上传播。`try...finally`可以是处理这种情况的更好方法。

- When catching operating system errors, prefer the explicit exception hierarchy introduced in Python 3.3 over introspection of `errno` values.

- Additionally, for all try/except clauses, limit the `try` clause to the absolute minimum amount of code necessary. Again, this avoids masking bugs:

  ```python
  # Correct:
  try:
      value = collection[key]
  except KeyError:
      return key_not_found(key)
  else:
      return handle_value(value)
  ```

  ```python
  # Wrong:
  try:
      # Too broad!
      return handle_value(collection[key])
  except KeyError:
      # Will also catch KeyError raised by handle_value()
      return key_not_found(key)
  ```

> - 当捕捉操作系统错误时，宁愿选择Python 3.3中引入的显式异常层次结构，而不是对`errno` 值的反省。
>
> - 此外，对于所有的 try/except 子句，将 `try` 子句限制在绝对必要的最小代码量。同样，这也避免了掩盖错误。
>
>   ```python
>   # Correct
>   try:
>       value = collection[key]
>   except KeyError:
>       return key_not_found(key)
>   else:
>       return handle_value(value)
>   ```
>
>   
>   
>   ```python
>   # Wrong
>   try:
>       # 太宽泛了!
>       return handle_value(collection[key])
>   except KeyError:
>       # 也会抓住handle_value()引发的KeyError。
>       return key_not_found(key)
>   ```
>

- When a resource is local to a particular section of code, use a `with` statement to ensure it is cleaned up promptly and reliably after use. A try/finally statement is also acceptable.

- Context managers should be invoked through separate functions or methods whenever they do something other than acquire and release resources:

  ```python
  # Correct:
  with conn.begin_transaction():
      do_stuff_in_transaction(conn)
  ```

  ```python
  # Wrong:
  with conn:
      do_stuff_in_transaction(conn)
  ```

  The latter example doesn’t provide any information to indicate that the `__enter__` and `__exit__` methods are doing something other than closing the connection after a transaction. Being explicit is important in this case.

> - 当一个资源是某段代码的局部时，使用`with`语句来确保它在使用后被及时可靠地清理掉。try/finally语句也是可以接受的。
>
> - 除了获取和释放资源外，上下文管理程序应通过单独的函数或方法来调用。
>
>   ```python
>   # Correct
>   with conn.begin_transaction():
>       do_stuff_in_transaction(conn)
>   ```
>
>   ```python
>   # Wrong
>   with conn:
>       do_stuff_in_transaction(conn)
>   ```
>
>   后面的例子没有提供任何信息来说明`__enter__`和`__exit__`方法除了在事务结束后关闭连接外还做了其他事情。在这种情况下，明确说明是很重要的。

- Be consistent in return statements. Either all return statements in a function should return an expression, or none of them should. If any return statement returns an expression, any return statements where no value is returned should explicitly state this as `return None`, and an explicit return statement should be present at the end of the function (if reachable):

  > 在返回语句中要保持一致。在一个函数中，要么所有的返回语句都应该返回一个表达式，要么都不应该。如果任何返回语句都返回一个表达式，任何没有返回值的返回语句都应该明确说明为 `return None`，并且在函数的末尾应该有一个明确的返回语句（如果可以到达）。

  ```python
  # Correct:
  
  def foo(x):
      if x >= 0:
          return math.sqrt(x)
      else:
          return None
  
  def bar(x):
      if x < 0:
          return None
      return math.sqrt(x)
  ```

  ```python
  # Wrong:
  
  def foo(x):
      if x >= 0:
          return math.sqrt(x)
  
  def bar(x):
      if x < 0:
          return
      return math.sqrt(x)
  ```

- Use `''.startswith()` and `''.endswith()` instead of string slicing to check for prefixes or suffixes.

  startswith() and endswith() are cleaner and less error prone:

  > 使用`''.startswith()` 和 `''.endswith()`代替字符串切分来检查前缀或后缀。
  >
  > startswith()和endswith()更干净，更不容易出错。

  ```python
  # Correct:
  if foo.startswith('bar'):
  ```

  ```python
  # Wrong:
  if foo[:3] == 'bar':
  ```

- Object type comparisons should always use isinstance() instead of comparing types directly:

  > 对象类型比较应该总是使用isinstance()，而不是直接比较类型

  ```python
  # Correct:
  if isinstance(obj, int):
  ```

  ```python
  # Wrong:
  if type(obj) is type(1):
  ```

- For sequences, (strings, lists, tuples), use the fact that empty sequences are false:

  > 对于序列，（字符串、列表、元组），使用空序列是false这一事实

  ```python
  # Correct:
  if not seq:
  if seq:
  ```

  ```python
  # Wrong:
  if len(seq):
  if not len(seq):
  ```

- Don’t write string literals that rely on significant trailing whitespace. Such trailing whitespace is visually indistinguishable and some editors (or more recently, reindent.py) will trim them.

- Don’t compare boolean values to True or False using `==` :

  > - 不要写那些依赖大量尾部空白的字符串常量。这样的尾部空白在视觉上是无法区分的，一些编辑器（或最近的reindent.py）会修剪它们。
  > - 不要用 `==` 来比较布尔值的True或False。

  ```python
  # Correct:
  if greeting:
  ```

  ```python
  # Wrong:
  if greeting == True:
  ```

  Worse:

  ```python
  # Wrong:
  if greeting is True:
  ```

- Use of the flow control statements `return/break/continue` within the finally suite of a `try...finally`, where the flow control statement would jump outside the finally suite, is discouraged. This is because such statements will implicitly cancel any active exception that is propagating through the finally suite:

  > 不鼓励在 `try...finally` 的finally套件中使用流控制语句 `return/break/continue`，因为流控制语句会跳出finally套件。这是因为这样的语句会隐含地取消任何正在通过final套件传播的活动异常。

  ```python
  # Wrong:
  def foo():
      try:
          1 / 0
      finally:
          return 42
  ```

### [Function Annotations](https://peps.python.org/pep-0008/#function-annotations)

With the acceptance of [PEP 484](https://peps.python.org/pep-0484), the style rules for function annotations have changed.

- Function annotations should use [PEP 484](https://peps.python.org/pep-0484) syntax (there are some formatting recommendations for annotations in the previous section).

- The experimentation with annotation styles that was recommended previously in this PEP is no longer encouraged.

- However, outside the stdlib, experiments within the rules of [PEP 484](https://peps.python.org/pep-0484) are now encouraged. For example, marking up a large third party library or application with [PEP 484](https://peps.python.org/pep-0484) style type annotations, reviewing how easy it was to add those annotations, and observing whether their presence increases code understandability.

- The Python standard library should be conservative in adopting such annotations, but their use is allowed for new code and for big refactorings.

- For code that wants to make a different use of function annotations it is recommended to put a comment of the form:

  ```python
  # type: ignore
  ```

  near the top of the file; this tells type checkers to ignore all annotations. (More fine-grained ways of disabling complaints from type checkers can be found in [PEP 484](https://peps.python.org/pep-0484).)

- Like linters, type checkers are optional, separate tools. Python interpreters by default should not issue any messages due to type checking and should not alter their behavior based on annotations.

- Users who don’t want to use type checkers are free to ignore them. However, it is expected that users of third party library packages may want to run type checkers over those packages. For this purpose [PEP 484](https://peps.python.org/pep-0484) recommends the use of stub files: .pyi files that are read by the type checker in preference of the corresponding .py files. Stub files can be distributed with a library, or separately (with the library author’s permission) through the typeshed repo <a href='#fn5' name='fn5b'><sup>[5]</sup></a>.

> 随着[PEP 484](https://peps.python.org/pep-0484)的接受，函数注释的样式规则也发生了变化。
>
> - 函数注释应该使用[PEP 484](https://peps.python.org/pep-0484)的语法（在前一节中有一些注释的格式建议）。
>
> - 不再鼓励本PEP之前推荐的注释样式的实验。
>
> - 然而，在stdlib之外，现在鼓励在[PEP 484](https://peps.python.org/pep-0484)的规则内进行实验。例如，用 [PEP 484](https://peps.python.org/pep-0484) 风格的类型注解标记一个大型的第三方库或应用程序，回顾一下添加这些注解有多容易，并观察它们的存在是否增加了代码的可理解性。
>
> - Python标准库在采用这种注解时应该是保守的，但对于新代码和大的重构来说，允许使用它们。
>
> - 对于想要对函数注解进行不同的使用的代码，建议加上一个注释，其形式为：
>
>   ```python
>   # type: ignore
>   ```
>
>   靠近文件的顶部；这告诉类型检查器忽略所有注释。(禁用类型检查器投诉的更精细的方法可以在[PEP 484](https://peps.python.org/pep-0484)中找到。)
>
> - Like linters, type checkers are optional, separate tools. Python interpreters by default should not issue any messages due to type checking and should not alter their behavior based on annotations.
>
> - Users who don’t want to use type checkers are free to ignore them. However, it is expected that users of third party library packages may want to run type checkers over those packages. For this purpose [PEP 484](https://peps.python.org/pep-0484) recommends the use of stub files: .pyi files that are read by the type checker in preference of the corresponding .py files. Stub files can be distributed with a library, or separately (with the library author’s permission) through the typeshed repo <a href='#fn5' name='fn5b'><sup>[5]</sup></a>.

### [Variable Annotations](https://peps.python.org/pep-0008/#variable-annotations)

[PEP 526](https://peps.python.org/pep-0526) introduced variable annotations. The style recommendations for them are similar to those on function annotations described above:

- Annotations for module level variables, class and instance variables, and local variables should have a single space after the colon.

- There should be no space before the colon.

- If an assignment has a right hand side, then the equality sign should have exactly one space on both sides:

  ```python
  # Correct:
  
  code: int
  
  class Point:
      coords: Tuple[int, int]
      label: str = '<unknown>'
  ```

  ```python
  # Wrong:
  
  code:int  # No space after colon
  code : int  # Space before colon
  
  class Test:
      result: int=0  # No spaces around equality sign
  ```

- Although the [PEP 526](https://peps.python.org/pep-0526) is accepted for Python 3.6, the variable annotation syntax is the preferred syntax for stub files on all versions of Python (see [PEP 484](https://peps.python.org/pep-0484) for details).

> [PEP 526](https://peps.python.org/pep-0526)引入了变量注释。对它们的风格建议与上面描述的关于函数注释的建议相似。
>
> - 模块级变量、类和实例变量以及局部变量的注释应该在冒号后面有一个空格。
>
> - 冒号前不应该有空格。
>
> - 如果一个赋值有一个右侧，那么相等符号的两边应该正好有一个空格。
>
>   ```python
>   # Correct
>   
>   code: int
>   
>   class Point:
>       coords: Tuple[int, int]
>       label: str = '<unknown>'
>   ```
>
>   ```python
>   # Wrong
>   
>   code:int # 冒号后面没有空格
>   code : int # 冒号前有空格
>   
>   class Test:
>       result: int=0 # 等号周围没有空格
>   ```
>
> - 尽管[PEP 526](https://peps.python.org/pep-0526)被接受用于Python 3.6，但变量注释语法是所有Python版本上存根文件的首选语法(详情见[PEP 484](https://peps.python.org/pep-0484))。

---



**Footnotes**

<a href='#fn1b' name='fn1'>[1]</a>：*Hanging indentation* is a type-setting style where all the lines in a paragraph are indented except the first line. In the context of Python, the term is used to describe a style where the opening parenthesis of a parenthesized statement is the last non-whitespace character of the line, with subsequent lines being indented until the closing parenthesis.

> <a href='#fn1b' name='fn1'>[1]</a>：*悬空缩进*是一种类型设置风格，段落中的所有行都缩进，除了第一行。在Python的语境中，该术语用于描述这样一种风格：括号内语句的开头括号是该行的最后一个非空格字符，随后的行被缩进到结尾括号。



## References

<a href='#fn2b' name='fn2'>[2]</a>: Barry’s GNU Mailman style guide http://barry.warsaw.us/software/STYLEGUIDE.txt

<a href='#fn3b' name='fn3'>[3]</a>: Donald Knuth’s *The TeXBook*, pages 195 and 196.

<a href='#fn4b' name='fn4'>[4]</a>: http://www.wikipedia.com/wiki/CamelCase

<a href='#fn5b' name='fn5'>[5]</a>: Typeshed repo https://github.com/python/typeshed
