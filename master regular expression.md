[toc]



## regex 的作用

regex是软件开发和日常数据处理工作必不可少的工具。

regex不仅值得每一个程序员掌握，而且值得所有知识工作者去掌握，也必须掌握。

regex的产生和发展在UNIX文化体系当中？

想尽一切办法再日常工作中使用regex，提高效率，节省时间

入门——应用——原理——引擎，规避陷阱，优化涉及，提高程序执行效率；这些都需要系统的学习

regex根植于数学理论，能在日常俗事中发挥巨大作用

此书面向具有一定理论素养，却又始终以实践为本的专业开发者。

匹配原理，优化原则等。

把正则学到不会忘的地步，就是对regex学习的超额完成。把regex内化到就像骑车和游泳一样，可以做到“一朝学会，终身不忘”。

正如在游泳的时候如果需要谨记口诀，那么就谈不上“学会”游泳。在开发和日常事务处理的时候使用regex的过程中如果需要频繁查阅文档或者谨记regex口诀，那么也谈不上“学会”regex。其他编程语言，甚至任何事情都是同理。

把regex，或者其他技能内化到就像骑车和游泳一样，可以做到“一朝学会，终身不忘”。那才是真正做到融会贯通。

《master regular expression》中文版译者余晟在翻译此书和写作其regex作品《正则指引》的时候也应用内化学习使用regex的经验来学习了《word排版艺术》、Unicode规范等。

regex是编程语言的一部分。从较低的层面上来看，regex描述的是一串文本（a chunk of text）的特征；从较高层面上来说，regex容许用户掌控他们自己的数据，让它们为自己服务。掌握regex，就是掌握自己的数据。

## 概念

[正则表达式中文维基百科](https://zh.wikipedia.org/wiki/%E6%AD%A3%E5%88%99%E8%A1%A8%E8%BE%BE%E5%BC%8F)



## 第1章 正则表达式入门

标准ANSI的转义字符序列（escape sequence）

正则表达式的通用模式表示法（general pattern notation）

学会用正则表达式思考（think regular expressions）

### 解决实际问题

文本单词的查找，考虑到各种大小写的情况

例如用正则表达式来筛选符合特定主题或地址的邮件

regular expression是一种强大的通用模式语言（generalized pattern language）

### 以语言作类比

完整的正则表达式由两种字符构成。特殊字符（special characters），如 `*`、`？`、`\` 等。这些特殊字符也被称为**元字符**（metacharacters）。其他为**文字**（literal），也就是字符常量，或者是普通文本字符（normal text characters）。正则表达式的元字符提供了更强大的描述能力。

用语言做类比的话，就是在正则表达式这门语言当中，元字符相对于是语法，普通字符是普通单词。“根据语言的规则，按照语法把单词组合起来，就会得到能传达思想的文本”。

### 理解正则表达式的结构

“完整的正则表达式是由小的构建模块单元（building block unit）组成。”

### 检索文本文件：Egrep

“文本检索是正则表达式最简单的应用之一”。许多文本编辑器和文字处理软件提供的正则表达式检索的功能，最简单的就是`egrep`。

E-mail的例子：

```bash
 egrep '^(From|Subject): ' filename
```

这里的`^` 和 `|` 都是元字符。

**Egrep元字符**

#### 行的起始和结束

表示行的起始和结束分别是`^` 和`$`。

“最好能养成按照字符来理解正则表达式的习惯。比如正则表达式`^cat` 匹配的是以c作为一行的第一个字符，紧接一个a，紧接一个t的文本。”

`^cat$` 文字意义：匹配的条件是，行开头，然后是字母 `c` `a` `t` ，然后是行尾；应用意义：只包含`cat`的行——没有多余的单词，空白字符……只有`cat`

`^$` 文字意义：匹配条件是，行开头，然后就是行结尾；应用意义：空行（没有任何字符，包括空白字符）

`^` 匹配条件是行开头，无应用意义，因为每一行都有开头，所以匹配每一行，空行也不例外



#### 字符组

charecter classes

character set 字符集

一个字符组就是一个元素（unit）

正则表达式字符组 `[ea]` 能匹配字符 `a` 或者 `e`。 “字符组的内容是在同一个位置能够匹配的若干字符，所以它的意思是`或`”。

字符组内部常用的元字符，`-` （连字符）。常见的元字符，如 `*`、`?`等在字符组内部就是普通的 `*`、`?`字符。如`[a*]` 表示匹配 `a`或者 `*`

字符组内部有两个元字符，`-` （连字符）必须出现在字符组内部的中间（不是在字符组开头的`^`之后），才能作为一个表示范围的元字符。`^` 必须出现在字符组内部的开头才能表示排除，出现在字符组的其他位置则表示普通的`^`

字符组元字符（character-class metacharater）`-` （连字符）表示一个范围，如`[a-z]` 表示匹配任意一个小写字母字符。`-` （连字符）出现在字符组内部的开头或者结尾表示的就是一个普通的`-` （连字符），如 `[-a]` 表示匹配`-` （连字符）或者 `a` 。

可以把字符范围与普通文本结合起来，`[0-9A-Z_!.?]` 能够匹配一个数字，大写字母，下划线，惊叹号，点号，问号，这些符号中的任意一个

`\` 因为表示转义符，不能出现在字符组尾部，这样会转义字符组的后方括号，从而出现正则语法或者匹配错误。而`\` 出现在字符组内部的其他位置时无意义，在Python中甚至不能当作普通的`\`字符？在Python使用中要在字符组内部表示`\`，需要写成`[\\]`。`/`也是元字符？

**排除型字符组**

`[^1-6]` 表示匹配除了 1到6 以外的任何字符。这个字符组中开头的`^`表示“排除（negate）”，所以这里列出的是不希望匹配的字符。

`^`在字符组外部表示一个行锚点（line anchor），即行开头；在字符组内部，而且是紧接着字符组的第一个方括号之后，它就是字符组里表示排除的元字符。

如`q[^u]` 表示字母`q`后面的字符不是`u`

“排除型字符组表示匹配一个未列出的字符（match a character that's not listed）”可以这样理解“里面包含的是除了排除型字符组中所有字符以外的字符”

“一个字符组，即使是排除型字符组，也需要匹配一个字符”

#### 用点号匹配任意字符

元字符`.`（通常称为dot或者小点point） 是用来匹配任意字符的字符组的简便写法。

如`03.19.76`可以匹配`03-19-76`, `03.19.76`, `03/19/76`，也可以匹配`192033197639`等等。如果你只想匹配`03-19-76`, `03.19.76`, `03/19/76`这三种情况，那么使用`03[-./]19[-./]76`更为精确。

“一个重要但常见的问题是，写正则表达式时，我们需要在对欲检索文本的了解程度与检索精确性之间求得平衡。” 

#### 多选结构 Alternation

**匹配任意子表达式**

元字符`|` 表示 “或（or）”。可以利用这个元字符来讲不同的子表达式组合成一个总的表达式，而这个总的表达式又能够匹配构成它的任意的子表达式。如 `Bob|Robert`是由两个子表达式`Bob`和`Robert`组成的，但`Bob|Robert`能匹配`Bob`或`Robert`。在这样的组合中的子表达式称为“多选分支（alternative）” 

“一个字符组只能匹配目标文本中的单个字符，而每个多选结构自身都可能是完整的正则表达式，都可以匹配任意长度的文本”

#### 忽略大小写

Ignoring Differences in Capitalization

字段类型（field type）

忽略大小写的匹配在egrep命令行工具是添加一个参数`i` ：

```bash
egrep -i '^(you|he|she)' strhouse.md
```

此命令是匹配行首开头的`you` ,`he`, `she`中的一个，且忽略大小写

#### 单词分界符

word boundaries

有些egrep支持元字符序列（metasequences），其中`\<` 和`\>`可以用来匹配单词分界的位置，相当于是单词版的`^` 和`$`，比如`\<cat\>` 匹配单词的开头位置，然后是三个字符，然后是单词的结束位置。直接讲就是匹配`cat`这个单词

#### 可选项元素 optional items

`?` 代表可选项。用在一个字符的后面，便是此处容许出现这个字符，这个字符的出现并非并非匹配成功的必要条件。代表这个字符可出现的次数为0和1。

案例 `July? (fourth|4(th)?)` 匹配7月14日的日期表达

“正则表达式不是死板的教条，它更像是门艺术。”

#### 其他量词：重复出现 Othter quantifier: Repetition

`+` 与 `*` 的作用与 `?` 类似。

`+` 表示之前紧邻的元素出现一次或多次，即至少出现一次

`*` 表示之前紧邻的元素出现任意多次，可以不出现

这三个元字符，统称量词（quantifiers），因为他们限定了所作用元素的重现次数

与`?` 一样，正则表达式中的 `*` 也是永远不会匹配失败的，区别只在于它们的匹配结果。而 `+` 在无法进行任何一次匹配时，会报告匹配失败

`[0-9]` 可匹配任意一个数字（digits）。

使用正则表达式的时候我们要习惯空格符也是普通字符之一。比如阅读`<HR +size *= *[0-9]+ *>`

`<HR( +size *= *[0-9]+)? *>` 在这个例子中体会`?` `+` `*` 的用法和不同之处

**量词区间**

使用元字符序列来自定义重现次数的区间 `{min, max}`，这个被称为区间量词（interval quantifier）

比如`?` 对应的区间量词为`{0,1}`，`+`对应的区间量词为`{1,}`，`*` 对应的区间量词为`{0,}`

#### 括号及反向引用 parentheses and backreferences

目前已经见过括号的两种用途，第一，限制多选项的范围，如 `(Robert|Bryant)`；将若干字符组合为一个单元（unit），受量词的作用，如 `(ae)+`

支持反向引用的工具软件中，括号能够“记忆”其中的子表达式匹配的文本，元字符序列`\1`能记住它们，如`([A-Za-z]+) +\1` 中的`\1`表示重复匹配前面括号（group 1）匹配的文本。

在一个表达式中我们可以使用多个括号。再用`\1`、`\2`、`\3`等来表示第一、第二、第三组括号匹配的文本。

#### 神奇的转义 the great escape

匹配文本中点号`.` 的元序列应该是反斜线（backslash）加上点号的组合 `\.` 。比如 `eag\.att\.com` 匹配 eag.att.com 

这样使用的反斜线称为“转义符（escape）”——它作用的元字符会失去特殊含义，成了普通字符。

我们可以使用`\([A-Za-z]+\)` 来匹配一个括号内的单词，例如 `(very)` 。

如果反斜线后紧跟的不是元字符，反斜线的意义就一句程序的版本而定。

### 基础知识扩展 expanding the foundation

每一种支持正则表达式的语言都提供自己的“改进”。正则表达式不断发展，但多年的变化也造就了数目众多的正则表达式的“流派（flavor）”。

**正则表达式的目标**

在编写正则表达式的时候，我们必须权衡：匹配符合要求的文本，同时忽略不符合要求的文本。

在任何语言中，经验都是非常重要的，练习更多正则表达式匹配常用文本结构的例子。

编写正则表达式时，按照预期获得成功的匹配要花去一半的工夫，另一半的工夫用来考虑如何忽略那些不符合要求的文本。

### 更多的例子 a few more examples

**变量名**

许多程序设计语言都有标识符（identifier，例如变量名）的概念，标识符只包括字母、数字以及下划线，但不能以数字开头。可以用`[A-Za-z_][A-Za-z0-9_]*` 来匹配标识符。

**引号内的字符串**

匹配引号内的字符串的最简单表达式 `"[^"]"` 。两端的引号用来匹配字符串开头和结尾的引号。在这两个引号之间的文本可以包括双引号之外的任何字符。

关于引号字符串，更有用（也更复杂）的定义是，两端的双引号之间可以出现由反斜线转义的双引号，例如 `"nail the 2\"x4\" plank"`

**美元金额**

`\$[0-9]+(\.[0-9][0-9])?`



**HTTP/HTML URL**

`https?://[^ ]*(html)?` 还需完善

“要想在复杂性和完整性之间求得平衡，一个重要的因素是了解待搜索的文本。”

**HTML tag**

在Python实现中，可以使用`<.*?>` 匹配一个html tag，其中这里的`?` 是修饰它前面的`*`，表示非贪婪匹配（non-greedy）

**表示时刻的文字**

例如“9：17 am” 或者 “12：30 pm”，写成正则表达式 `(1[012]|\d):[0-5]\d (am|pm)`

24小时制时间表示的正则表达式：`[0-2][0-3]:[0-5]\d:[0-5]\d`

### 正则表达式术语汇总

regular expression nomenclature

**正则**（regex），是正则表达式（regular expression）的缩写；正则引擎（regex engine）指的是程序中实际执行匹配的那个部分

**匹配**（matching），一个正则表达式“匹配”一个字符串，其实是指这个正则表达式能在字符串中找到匹配文本。严格地将，正则表达式 `a` 能匹配 cat 中的 a，而不能说 `a` 匹配 cat 。

**元字符**（metacharacter），或者是“元字符序列（metasequence）”。一个字符是否是元字符，取决于应用的具体情况。

**流派**（flavor）。“不同的工具使用不同的正则表达式完成不同的任务，每样工具支持的元字符和其他特性各有不同。”不要混淆流派（flavor）和工具（tool）这两个概念。

**子表达式**（subexpression）。指的是整个正则表达式中的一部分，通常是括号内的表达式，或者是由 `|` 分隔的多选（alternation）分支。例如，在`^(Subject|Date): *` 中，`Subject|Date`通常被视为一个子表达式。其中的`Subject`和`Date`也算得上子表达式。而且，严格算起来，`S`、`u`、`b`、`j`这些字符，都算子表达式。

`1-6`这样的字符序列并不能算`H[1-6] *`的子表达式，因为'1-6'所属的字符组是不可分割的“单元（unit）”。但是，`H`、`[1-6]`、` *`都是`H[1-6] *`的子表达式。

与多选分支不同的是，量词（`*`、`+`、`?`）作用的对象是它们之前紧邻的子表达式。所以`mis+pell`中的`+`作用的是`s`，而不是`mis`或者`is`。当然，如果量词之前紧邻的是一个括号包围的子表达式，整个子表达式（无论多复杂）都被视为一个单元。

**字符**（character），“字符”在计算机领域是一个有特殊意义的单词。一个字节所代表的单词取决于计算机如何解释。单个字节的值不会变化，但这个**值**所代表的**字符**却是由解释所用的编码来决定的。例如，值为64和53的字节，在ASCII**编码**中分别代表了字符“@”和“5”，但在EBCDIC编码中，则是完全不同的字符（一个是空格，一个是控制字符）。

关于多字节编码的权威著作是*CJKV Information Processing*，CJKV表示Chinese，Japanese，Korean，Vietnamese。这四种语言必须使用多字节编码。

### 改进现状

Improving on the status quo

“学会如何以正则表达式的方式来思考问题。面对属于不同流派的新工具时，需要注意哪些差异和特性……能够在复杂性、效率和匹配准确性间进行取舍权衡。面对特别复杂的任务，知道如何通过程序容许的方式来构建和使用正则表达式。”

“学习正则表达式就如同学习如何造车，而不是如何开车。在制造汽车之前，我们必须了解汽车的工作原理。”同样，在编写正则表达式来解决问题之前，我们必须了解正则表达式的工作原理。

### 总结 

summary

egrep的元字符总结（区间量词，单词分界符，反向引用，这三项并非所有版本的egrep都支持）

|                      | 元字符       | 匹配对象                                                     |
| -------------------- | ------------ | ------------------------------------------------------------ |
| 匹配单个字符的元字符 |              |                                                              |
| `.`                  | 点号         | 匹配单个任意字符                                             |
| `[...]`              | 字符组       | 匹配单个列出的字符                                           |
| `[^...]`             | 排除型字符组 | 匹配单个未列出的字符                                         |
| `\char`              | 转义字符     | 若char是元字符，或转义序列无特殊含义时，匹配char对应的普通字符 |
| 提供计算功能的元字符 |              |                                                              |
| `?`                  | 问号         | 容许匹配一次，但非必须                                       |
| `*`                  | 星号         | 可以匹配任意多次，也可能不匹配                               |
| `+`                  | 加号         | 至少需要匹配一次，至多可能任意多次                           |
| `{min, max}`         | 区间量词     | 至少需要匹配min次，至多容许max次                             |
| 匹配位置的元字符     |              |                                                              |
| `^`                  | 脱字符       | 匹配一行的开头位置                                           |
| `$`                  | 美元符       | 匹配一行的结束位置                                           |
| `\<`                 | 单词分界符   | 匹配单词的开始位置                                           |
| `\>`                 | 单词分界符   | 匹配单词的结束位置                                           |
| 其他元字符           |              |                                                              |
| `|`                  | alternation  | 匹配任意分隔的表达式                                         |
| `(...)`              | 括号         | 限定多选结构的范围，标注量词作用的元素（分组），为反向引用“捕获”文本 |
| `\1, \2, ...`        | 反向引用     | 匹配之前的第一、第二组括号内的子表达式匹配的文本             |

- 排除型字符组同样是一种“肯定断言（positive assertion）”——即使它的名字里包含了“排除”两个字，它仍然需要匹配一个字符。只是因为列出的字符都会被排除，所以最终匹配的字符肯定不在列出的字符之内。

- 转义由三种情况：

  1. `\` 加上元字符，表示匹配元字符所使用的普通字符（例如`\*`匹配普通的星号）
  2. `\` 加上非元字符，组成一种由具体实现方式规定其意义的元字符序列（例如`\<` 表示“单词的起始边界”）
  3. `\` 加上任意其他字符，默认情况就是匹配此字符（也就是说，反斜线被忽略了）

  对大多数版本的egrep来说，字符组内部的反斜线没有任何特殊意义，所以此时它并不是一个转义字符。

- 由`*` 和`?` 限定的对象在“匹配成功”时可能并没有匹配任何字符。即使什么字符都不能匹配到，它们仍然会报告“匹配成功”。

“一旦你掌握了正则表达式的强大功能，就会感到花在学习上的那些时间真是物超所值”。

## 第2章 入门示例拓展

编程语言Perl的三个正则表达式例子

`\b([a-z]+)((?:\s|<[^>]+>)+)(\1\b)`

`^(?:[^\e]*\n)+`

`^`

前面两个正则表达式包含在egrep中未见过的东西，比如`(?:...)` 和 `\e`

这是因为一些编程语言，如Perl，与egrep不属于同一个流派，所以某些表示法有所不同，而且Perl等编程语言和工具程序提供的元字符远远多于egrep

常见问题示例：

验证用户的输入数据，处理E-mail header，把纯文本数据转换为超文本格式（HTML）

“用Perl做示例，主要是因为在所有流行的语言中Perl对正则表达式的支持很完整，且易于使用。”

匹配一个温度输入：`^[-+]?[0-9]+(\.[0-9]*)?$`

### 使用正则表达式匹配文本

matching text with regular expression

大多数语言工具都支持反向引用功能，一般用`\1`、`\2`等表示前面的组1（group 1），组2（group 2）等；而perl语言将其存储在变量`$1`、`$2`等中。

在perl之类的高级语言中，正则表达式的使用与其他程序的逻辑是混合在一起的。

在正则表达式中`^([-+]?[0-9]+(\.[0-9]*)?)([CF])$` 中，反向引用的`\1`捕获的组1是`([-+]?[0-9]+(\.[0-9]*)?)`（从左往右第一个开扩号），而`\2`捕获的是组2是`(\.[0-9]*)`（从左往右第二个开扩号）

**数量丰富的元字符**

`\t` 制表符；`\n` 换行符；`\f` formfeed；`\b` 退格符（有些情况下又表示单词分界符）

Perl等编程语言的字符串也有自己的元字符，它们完全不同于正则表达式的元字符。字符串的元字符有一些跟正则表达式中对应的元字符一模一样。可以在字符串中用`\t`加入制表符，也可以在正则表达式中用元字符`\t`来匹配制表符。

对于将要使用的各种不同语言和工具来说，知道在什么情况下应该使用什么元字符是极其重要的。

对于command shell来说，空格符就是一个元字符，它用来分隔命令和参数，或者分隔参数与参数。在shell中使用引号容许我们在正则表达式中使用空格。否则shell会把空格认作参数之间的分隔符，而不是把整个正则表达式传递给egrep。许多shell能够识别的元字符包括`$`、`*`、`?`之类——我们在正则表达式中也会用到这些元字符。

“随着阅读的深入，我们会见到许多（有时候还很复杂）情况，我们需要同时在不同层级上使用元字符交互（multiple levels of simultaneously interacting metecharacters）。”

在Perl的正则表达式中，`\b` 通常是匹配一个单词分界符的，但是在字符组中，它匹配一个退格符（backspace）。单词分界符作为字符组的一部分则没有任何意义，所以Perl完全可以用它来匹配其他的字符。

**用`\s` 匹配所有“空白”**

`\s` 能表示所有表示“空白字符（whitespace character）”的字符组。其中包括空格符、制表符、换行符和回车符。

在Perl的正则表达式结构后添加`i` 修饰符（modifier），告诉Perl进行不区分大小写的匹配，i是ignorecase的缩写。修饰符不是正则表达式的一部分。



**非捕获型括号** `(?:...)`

在正则表达式`^([-+]?[0-9]+(\.[0-9]*)?)([CF])$` 中用括号包围`(\.[0-9]*)?`来正确分组，所以我们能够用一个问号正确地作用域整个`\.[0-9]*`，把它们作为可选项部分。这样的副作用就是这个括号内的子表达式捕获的文本保存到组2，在Perl中组2的表示是`$2`，而我们并不会使用组2。

如果有这样一种括号，它只能用于分组，而不会影响文本的捕获和变量的保存，问题就好办多了。Perl以及其他正则表达式流派提供了这个功能。`()` 用来分组和捕获，而`(?:)` 表示只分组不捕获。

所以正则表达式`^([-+]?[0-9]+(?:\.[0-9]*)?)(CF)$` 中，即使`[CF]` 两端的括号排在第三位，它匹配的文本也会保存到$2中，因为`(?:)` 不会影响捕获计数。

这样做的好处：第一避免了不必要的捕获操作，提高了匹配效率；另一个好处是总督来时，根据情况选择合适的括号能够让程序更清晰，看代码的人不会被括号的具体细节所困扰。

Perl和其他流派的正则表达式提供了许多有用的简记法（shorthands）：

| 字符 | 释义                                                    | 备注                    |
| ---- | ------------------------------------------------------- | ----------------------- |
| `\t` | 制表符                                                  | t是tab的首字母缩写      |
| `\n` | 换行符                                                  | n是new line的首字母缩写 |
| `\r` | 回车符                                                  | r是return的首字母缩写   |
| `\s` | 任何“空白”字符（例如空格符、制表符、进纸符等）          | s是space的首字母缩写    |
| `\S` | 除`\s`之外的任何字符                                    | S是Space的首字母缩写    |
| `\w` | `[A-Za-z0-9_]`（在`\w+`中很有用，可以用来匹配一个单词） | w是word的首字母缩写     |
| `\W` | 除`\w`之外的任何字符，也就是`[^A-Za-z0-9_]`             | W是Word的首字母缩写     |
| `\d` | `[0-9]`，即数字                                         | d是digit的首字母缩写    |
| `\D` | 除`\d`外的任何字符，即`[^0-9]`                          | D是Digit的首字母缩写    |

`(?:)` 用来分组文本，但不捕获

### 使用正则表达式修改文本

Perl和其他许多语言提供一个正则表达式特性：替换（substitution），也可以叫“查找和替换（search and replace）”

在Perl中，使用`$var =~ s/.../.../` 可以改变`$var`中文本（如果没有找到匹配的文本，也就不会有替换发生）。Perl提供统一的元字符`\b` 来代表单词分界

在Perl中，`$var =~ s/\bJeff\b/Jeff/i` 将所有的大小写组合的`Jeff` 统一替换为`Jeff`

**例子：公函生成程序**

example: Form letter

在Perl中，用于替换的文本能够引用变量，参数`/g` 表示“全局替换”（global repleacement）的修饰符。它告诉s/.../.../在第一次替换完成之后继续搜索更多的匹配文本，进行更多的替换。

**例子：修正数字小数点位数**

example: prettifying trailing number of decimal number

在Perl中用`$prince =~ s/(\.\d\d[1-9]?)\d*/$1` 来将多数位的小数点修正为两位或者三位（如果第三位小数不为零）的小数点数字

**自动的编辑操作**

automated editing

在Perl中将文件中出现的sysread改为read的方法`perl -p -i -e 's/sysread/read/g' file` 。参数-e表示整个程序接在命令的后面，参数-p表示对目标文件的每一行进行查找和替换，-i表示将替换的结果写回到文件。“这样简单的编辑方式是Perl独有的，这个例子说明即使执行的是简单的任务，作为脚本语言一部分的正则表达式的功能仍然非常强大”

**处理邮件的小工具**

a small mail utility

在Perl中，“如果脚本程序叫做mkreply，而原始的信息保存在king.in中，用如下的命令来生成回复模板：” `perl -w mkreply king.in > king.out`

Perl提供了神奇的“<>”操作符。在应用到变量`$variable`时，使用`“$variable = <>”`，这个有趣的结构能够每次读入一行数据。输入的数据来自命令行中Perl脚本之后列出的文件名。

正则表达式需要处理的可能时一个包含多行文本的字符串。通常，脱字符和美元符只匹配整个字符串的开头和结尾。

**关于 `.*` 的警告**

`.*` 通常用来表示“一组任何字符串”（a bunch of anything），因为点号可以匹配任何字符（在某些工具中，不包括换行符），而星号表示可以为任意数目，但并非必须。`.*` 可能很有用。

**用环视功能为数值添加逗号**

adding commas to a number with lookaround

正则表达式的特性——环视（lookaround），环视结构不匹配任何字符，只匹配文本中的特定位置，这一点与单词分界符`\b`、锚点`^` 和`$` 相似。环视比它们更加通用。

一种类型的环视叫“顺序环视（lookahead）”，作为表达式的一部分，顺序环视顺序（从左至右）查看文本，尝试匹配子表达式，如果能够匹配，就返回匹配成功信息。肯定型顺序环视（positive lookahead）用特殊的序列 `(?=)` 来表示，例如 `(?=\d)` ，它表示如果当前位置右边的字符是数字则匹配成功。另一种环视是逆序环视，它逆序（从右向左）查看文本。它用特殊的序列`(?<=)`表示，例如`(?<=\d)`，如果当前位置左边有一位数字，则匹配成功（也就是紧跟在数字后面）

**环视不会“占用”字符**

在正则表达式`(?=Jeffrey)` 顺序环视中，匹配标记的位置Jeffrey前面的位置；即顺序环视会检查子表达式能否匹配，但它只寻找能够匹配的位置，而不会真正“占用”这些字符。

`(?=Jeffrey)Jeff` 只匹配Jeffrey前面的Jeff。并且只能匹配Jeffrey的Jeff

`(?=Jeffrey)Jeff` 和 `Jeff(?=rey)` 是等价的

再看一下`s/\bJeff(?=s\b)/Jeff'/g` ，它表示的是匹配Jeff，然后以一个在s前面的位置，用`Jeff'`替换`Jeff`

将逆序环视和顺序环视结合起来 `(?<=\bJeff)(?=s\b)` 它表示找到前面是Jeff而后面是s的这样一个位置。这个表达式没有匹配任何字符，匹配了一个位置。因此perl的 `s/(?<=\bJeff)(?=s\b)/'/g` 没有“替换”任何字符，而只是插入了一个撇号。这个和 `s/^/|> /`表示在行首加入`|> `一样的意味

而`(?<=\bJeff)(?=s\b)` 是顺序环视和逆序环视结合的案例，适合讲解环视。

Perl在数字中加入千分数符号的表达式 `s/(?<=\d)(?=(?:\d\d\d)+$)/,/g` ，使用`(?:\d\d\d)`的好处在于，见到这个正则表达式的人不会担心与捕获型括号关联的`$1`是否会被用到；而且它的效率更高，因为引擎不需要记忆捕获的文本

**单词分界符和否定环视**

Perl和其他语言都把数字、字母和下划线当作单词的一部分。单词分界符的意思就是，在此位置的一侧是单词（数字、字母和下划线），另一侧不是（例如行尾，或者数字后面的空格）

上面用到的被称作肯定顺序环视（positive lookahead）和肯定逆序环视（positive lookbehind）。此后还有否定顺序环视（negative lookahead）和否定逆序环视（negative lookbehind）

四种类型的环视

| 类型         | 正则表达式 | 匹配成功的条件           |
| ------------ | ---------- | ------------------------ |
| 肯定顺序环视 | `(?=)`     | 子表达式能够匹配右侧文本 |
| 否定顺序环视 | `(?!)`     | 子表达式不能匹配右侧文本 |
| 肯定逆序环视 | `(?<=)`    | 子表达式能够匹配左侧文本 |
| 否定逆序环视 | `(?<!)`    | 子表达式不能匹配左侧文本 |

**Text-to-HTML转换**

大多数支持正则表达式的语言提供“增强的行锚点（enhanced line anchor）”

匹配E-mail地址的最简单的方法是 `\w+\@\w+(\.\w+)+` 

Perl中的 `/x` 修饰符，容许用户重新编排表达式

在Perl和其他工具中，所有的正则表达式都应用与同一个包含多行文本的字符串。在Perl中使用m修饰符，将`^` 和 `$` 从字符串模式切换到需要的逻辑行模式。

Perl和其他语言都提供了创建正则表达式对象的方法。

Perl, PHP, Python, Ruby, Tcl支持变量插值（variable interpolation） 

**运算符、函数和对象**

在学习任何一门支持正则表达式的语言时，我们需要注意两点：正则表达式的流派，以及该语言运用正则表达式的方式。

## 第3章 正则表达式的特性和流派概览

工具不同，正则表达式的写法和用法都有很大的不同。

在某种特定的宿主语言或工具软件中使用正则表达式时，主要有3个问题值得注意：

- 支持的元字符，以及这些元字符的意义。这通常称为正则表达式的“流派（flavor）”
- 正则表达式与语言或工具的“交互”（interface）方式。譬如如何进行正则表达式操作，容许进行哪些操作，以及这些操作的目标文本类型
- 正则表达式引擎如何将表达式应用到文本。语言或工具的设计者实现正则表达式的方法，对正则表达式能够取得的结果有重要影响

正则表达式中正则引擎的匹配原理，以及该原理对表达式的调校和使用的影响，这些细节对实际使用正则表达式又极其重要，本书会在第4章的篇幅讲解。

第3章的目的时提供关于正则表达式本身和使用它的工具软件的完整图景。了解我们所使用工具的技术渊源，或许能够提供有趣而又有价值的启示。

### 在正则的世界中漫步

#### 正则表达式的起源

关于正则表达式，最初的想法来自20世纪40年代的两位神经学家，Warren McCulloch和Walter Pitts，他们研究出一种模型，认为神经系统在神经元层面上就是这样工作的。（文章的标题是*[A logical calculus of the ideas immanent in nervous activity](https://www.cs.cmu.edu/~./epxing/Class/10715/reading/McCulloch.and.Pitts.pdf)*。这篇文章的开头简要描述了神经细胞的行为方式）。若干年后，数学家Stephen Kleene在代数中正式描述了这种被他称为“正则合集”（regular sets）的模型，正则表达式才称为现实。Stephen发明了一套简洁的表示正则集合的办法，他称之为“正则表达式”（regular expression）。

作者能找到的关于计算方面使用正则表达式的资料，最早发表的是1968年Ken Thompson 的文章 *[Regular expression search algorithm](https://www.oilshell.org/archive/Thompson-1968.pdf)*。在文中，他描述了一种正则表达式编译器，该编译器生成了IBM 7094的object 代码。

**Grep中的元字符**

早期的grep和其他工具所支持的元字符相当有限。

**POSIX——标准化的尝试**

[POSIX](https://en.wikipedia.org/wiki/POSIX)是Portable Operating System Interface（可移植操作系统接口）的缩写。它是一系列标准，确保操作系统之间的移植性。

POSIX把各种常见的流派分为两大类：basic regular expressions（BREs）和 extended regular expressions（EREs）。

POSIX标准的主要特性之一是locale，它是一组关于语言和文化传统——例如日期和时间的格式、货币币值、字符编码对应的意义等——的设定。

**Henry Spencer的正则表达式包**

Henry Spencer发布了用C语言写的正则表达式包，这个包可以毫无困难地置入其他程序中。每一个使用Henry的包的程序都术语相同的流派。除非程序的作者去修改

**流派的部分整合**

Perl的初衷是文本处理，而Web页的生成其实正是文本处，所以Perl迅速成为了开发Web程序的语言。

#### 最初印象

最重要的是程序会不断变化。

关于工具的共同点的疑问：

- 星号之类的量词能否作用与括号之内的子表达式？
- 点号能够匹配换行符？排除型字符组能否匹配换行符？以上两者能否匹配NUL字符？
- 行锚点（line anchor）是名副其实的吗（例如能够识别目标内部的换行符）？它们算正则表达式中的基础级别（first-class）的元字符吗？还是只能应用在某些结构中？
- 字符组内部能出现转义字符吗？字符组内部还容许或不容许出现哪些字符？
- 括号能够嵌套吗？如果是，嵌套的深度是否有限制呢（还有个问题，一共容许出现多少括号呢）？
- 如果容许反向引用，在进行不区分大小写的匹配时，反向引用能顺利进行吗？在极端的情况下，反向引用还能正常工作吗？
- 是否可以出现八进制的转义字符\123？如果能，怎么区分它和反向引用呢？十六进制的转义字符呢？这种支持时正则引擎提供的，还是由其他工具提供的？
- `\w` 只支持数字和字符，还是包括其他字符？不同的单词分界符元字符对构成“单词分界符”的字符的定义不一样，`\w` 是否与它们保持一致？它们时按照locale的定义呢，还是支持Unicode？

在匹配尝试过程中的语义差异通常被忽视。

“当然，一款工具软件能够利用正则表达式实现的功能，通常比它所属的正则流派更重要。”

### 正则表达式的注意事项和处理方式

care and handling of regular expressions

正则表达式的句法规则（syntactic packaging），它告诉应用程序“这有一个正则表达式，我需要你做这些”。egrep是一个简单的例子，因为正则表达式是作为命令行参数传过去的。其他的“语法诀窍（syntactic sugar）”，例如使用单引号是考虑到shell而不是egrep。复杂的系统，例如程序设计语言中的正则表达式，需要更多的包装 ，系统才能知道哪些部分是正则表达式，需要如何处理。

下一步考察我们能够对匹配进行的操作。egrep在这方面很简单，因为它做的都是同样的事情（现实包含匹配文本的行）。真正有意义的是更复杂的操作。其中最基本的是匹配（检查一个正则表达式是否能匹配一个字符串，或者从字符串中提取信息），以及查找和替换，根据匹配的结果修改字符串。

一般来说，程序设计语言有3种处理正则表达式的方式：集成式（integrated）、程序式（procedural）和面向对象式（object-oriented）。在第一种方式中，正则表达式式直接内建在语言之中的，Perl就是如此。但是在其他两种方式中，正则表达式不属于语言的低级语法。相反，普通的函数接收普通的字符串，把它们作为正则表达式进行处理。由不同的函数进行不同的、关系到一个或多个正则表达式的操作。大多数语言（不包括Perl）采用的都是这两种方式之一，包括Java、.NET、Tcl、Python、PHP、Emacs、lisp和Ruby。

#### 集成式处理

Integrated handling

例如如之前Perl程序处理的

```perl
if ($line =~ m/^Suject: (.*)/i) {
    $subject = $1;
}
```

另一个集成的例子式把正则表达式作为配置文件的一部分，例如*procmail*（Unix下的一个邮件处理程序）。在配置文件中，正则表达式用于将邮件信息发布到对应的处理程序中。这个例子比Perl更简单，因为不需要指明操作对象（邮件信息）

集成处理方式减轻了程序员的负担，因为它隐藏了一些工作，例如正则表达式的预处理，准备匹配，应用正则表达式，返回结果。但有些情况下，这样处理反而更慢，更复杂。

#### 程序式处理和面向对象式处理

procedural and object-oriented handling

程序式处理和面向对象式处理非常相似。这两种方式下，正则功能不是由内建的操作符来提供，而是由普通函数（函数式）或构造函数及方法（面向对象式）来提供的。这种情况下，并没有专属与正则表达式的操作符，只有平常的字符串，普通的函数、构造函数和方法把这些字符串作为正则表达式来处理。

Java处理正则表达式是通过`java.util.regex` 包来进行。

```java
import java.util.regex.*;  // 这样使用regex包中的类更加容易
Pattern r = Pattern.compile("^Subject: (.*)", Pattern.CASE_INSENSITIVE);
Match m = r.matcher(line);
if (m.find()) {
    subject = m.group(1);
}
```

Python中的正则处理

```python
import re
R = re.compile("^Subject: (.*)", re.IGNORECASE);
M = R.search(line)
if M:
    subject = M.group(1)
```

#### 查找和替换

A search-and-replace example

学习任何特定的工具软件都比学习原理要容易。

### 字符串，字符编码和匹配模式

#### 作为正则表达式的字符串

string as regular expressions

对于大多数语言来说，正则引擎接收的是以普通字符串形式提供的正则表达式，这些字符串文字类似“^From:(.*)”。在构造作为正则表达式的字符串时，程序员还需要留意编程语言定义的字符串元字符。

我们在使用时都不要忘记考虑“在编程语言的字符串处理结束之后，正则引擎接收到的是什么？”

#### 字符编码

character-encoding issues

字符编码是一种写明的共识，它规定不同数值的字节应该如何解释。例如，在ASCII编码中，值为十进制110的字节代表字符'n'，不过在EBCDIC编码中代表'>'。因为这是由不同的人规定的，没有明确的标准判断各种编码的优劣。字节（byte，8bit）的值是一样的，不一样的是解释。

使用正则表达式需要注意特定的正则是否能够支持特定的字符编码。

**编码的支持程度**

程序采用的编码需要考虑的问题：

- 程序能够识别这种编码吗？
- 程序如何决定采用哪种编码来处理这些数据？
- 正则表达式对这种编码的支持程度如何？

编码的支持程序包括的若干重要的问题：

#### Unicode

[Unicode](https://en.wikipedia.org/wiki/Unicode)是一组字符设定，或者是从数字到字符之间的逻辑映射的概念编码。

**字符，还是组合字符序列**

字符（character），组合字符（combining character），代码点（[code point](https://en.wikipedia.org/wiki/Code_point)）？

[Unicode](https://en.wikipedia.org/wiki/Unicode)提供了许多组合字符（combining character），用来修饰（组合）一个基本字符。这回给正则引擎带来麻烦，例如点号是应该匹配单个代码点呢，还是组合成一个字符的两个或多个代码点呢？

\X元序列？

**Unicode行终止符**

| 字符  | 代码点        | 描述             | 英文                      |
| ----- | ------------- | ---------------- | ------------------------- |
| LF    | U+000A        | ASCII 换行符     | Line Feed                 |
| VT    | U+000B        | ASCII 垂直制表符 | Vertical Table            |
| FF    | U+000C        | ASCII 进纸符     | Form Feed?                |
| CR    | U+000D        | ASCII 回车       | Carriage Return           |
| CR/LF | U+000D U+000A | ASCII 回车/换行  | Carriage Return/Line Feed |
| NEL   | U+0085        | Unicode 换行     |                           |
| LS    | U+2028        | Unicode 行分隔符 | Line Separation           |
| PS    | U+2029        | Unicode 段分隔符 | Paragraph Sparation       |

如果行终止符获得了完全的支持，它会影响文本行从文本（在脚本语言中，还包括程序读取的文件）读入的方式。

#### 正则模式和匹配模式

regex modes and match modes

**不区分大小写的匹配模式**

此功能依赖正确的字符编码支持。

并非所有的ASCII字母和数字字符都存在大小写形式，而某些字符在作为单词首字母时会有单独的标题格式（title case）。

**宽松排列和注释模式**

“空白字符”的定义取决于所采用的字符编码的定义，以及此编码对空白字符的支持程度。大多数程序只能识别ASCII的空白字符。

### 常见的元字符和特性

common metacharacters and features

本节介绍常见的元字符及其作用，以及与此相关的一些问题。需要用户参考自己擅长的工具提供的使用手册。

#### 字符表示法

**字符缩略表示法**

| 元字符 | 含义       | 说明                                 |
| ------ | ---------- | ------------------------------------ |
| \a     | 警报       | 对应ACII中的`BEL`字符，八进制编码007 |
| \b     | 退格       | 对应ACII中的`BS`字符，八进制编码010  |
| \e     | Escape字符 | 对应ACII中的`ESC`字符，八进制编码033 |
| \f     | 进纸符     | 对应ACII中的`FF`字符，八进制编码014  |
| \n     | 换行符     | 对应ACII中的`LF`字符，八进制编码012  |
| \r     | 回车       | 对应ACII中的`CR`字符                 |
| \t     | 水平制表符 | 对应ACII中的`HT`字符，八进制编码011  |
| \v     | 垂直制表符 | 对应ACII中的`VT`字符，八进制编码013  |

**八进制转义\num**

支持八进制（以8为基数）转义的实现方式通常容许以2到3位数字表示该值所代表的字节或字符。例如`\015\012`表示ASCII的CR/LF序列。

#### 字符组及相关结构

character classes and class-like constructs

普通字符组：`[a-a]` 和 `[^a-z]`

字符组通常表示肯定断言（positive assertion）。也就是说它们必须匹配一个字符。排除型字符组仍然需要匹配一个字符，只是它没有在字符组中列出而已。

Unicode组合字符序列：`\X`。需要注意的是点号通配模式下的点号无论什么情况下都能匹配任何字符，而`\X`不能匹配以组合字符开头的字符。

locale是[POSIX](https://en.wikipedia.org/wiki/POSIX)中的特性之一，它是一组关于语言和文化传统——例如日期和时间的格式、货币币值、字符编码对应的意义等——的设定。locale的目的在于让程序变得国际化。

#### 锚点及其他“零长度断言”

anchors and other "zero-width assertions"

行/字符串的起始位置：`^`、`\A`

单词分界符：`\b`、`\B`、`\<`、`\>`、`...`

#### 注释和模式修饰符

comments and mode modifiers

常见的模式修饰符字母

| 字母 | 模式                   |
| ---- | ---------------------- |
| i    | 不区分大小写的匹配模式 |
| x    | 宽松排列和注释模式     |
| s    | 点号通配模式           |
| m    | 增强的行锚点模式       |

#### 分组、捕获，条件判断和控制

groups, capturing, conditions, and control

捕获/分组括号：`(...)`和`\1` , `\2` `...`

仅用于分组的括号（非捕获型括号）：`(?:...)`

命名捕获：`(?<Name>...)`

固化分组：`(?>...)`，就是一旦括号内的子表达式匹配之后，匹配的内容就固定下来（atomic）无法改变。

多选结构：



## 第4章 表达式的匹配原理

the mechanics of expression processing

正则引擎决定其工作原理，构建正则表达式的方式决定某个正则表达式能否匹配一个特定字符串，在何处匹配，以及匹配成功或报告失败的速度。

### 发动引擎

start your engines

### 匹配的基础

match basics

规则1 优先匹配最左端的匹配结果

正则引擎中的零件分为几类——文字字符（literal characters）、量词（qualfiers）、字符组（character classes），括号，等等。

规则2 标准量词是匹配优先的

标准量词（`?`、`*`、`+`、`{min, max}`）

### 表达式主导与文本主导

regex-directed versus text-directed

#### NFA引擎：表达式主导

NFA Engine: Regex-Directed

表达式中的控制权在不同的元素之间转换

#### DFA引擎：文本主导

DFA Engie: Text-Directed

### 关于匹配优先和回溯的更多内容

more about greediness and backtracking

匹配优先 greediness

忽略优先 laziness

回溯 backtracking

#### 匹配优先和忽略优先都期望获得匹配

greediness and laziness always favor a match

在例子`(\.\d\d[1-9]?)\d*`中括号里的`[1-9]?`是有两个备选状态，即`[1-9]?`匹配一个空字符或者一个字符这两种状态。

#### 占有优先量词和固化分组

possessive quantifiers and atomic grouping

在例子`(\.\d\d[1-9]?)\d*`中，我们希望在这个表达式应用在1.62500000002828这样的数字的时候括号的字表达式能够完整匹配小数点的前三位，这就需要固化分组

用`(?>...)`实现固化分组：在固化分组匹配结束时，它已经匹配的文本已经固化为一个单元，只能作为整体而保留或放弃。意味着此结构体中的所有备用状态都会被抛弃。

固化分组非常有价值，作者认为可能会成为最常用的技巧。

#### 占有优先量词，`?+`、`*+`、`++`和`{m,n}+`

possessive quantifiers,

#### 多选结构也是匹配优先的吗？

is alternation greedy?

传统的NFA引擎是按顺序排列

### NFA、DFA、和POSIX

NFA、DFA, and POSIX

#### 最左最长规则

the longest-leftmost

DFA同时记录多个匹配，在任何时候都清楚所有的匹配可能。例子用`one(self)?(selfsufficient)?`来匹配“oneselfsufficient”，NFA只能匹配到“oneself”，而DFA能匹配到“oneselfsufficient”

#### POSIX和最左最长规则

POSIX and Longest-Leftmost Rule

POSIX NFA会检查前面备选分支的备选状态，然后向后找出可能的最长匹配



---



## [re](https://docs.python.org/3/library/re.html#module-re)—Regular expression operations

Python RE **Source code:** [Lib/re/](https://github.com/python/cpython/tree/3.11/Lib/re/)

This module provides regular expression matching operations similar to those found in Perl.

> 该模块提供类似于Perl中的正则表达式匹配操作。

Both patterns and strings to be searched can be Unicode strings ([`str`](https://docs.python.org/3/library/stdtypes.html#str)) as well as 8-bit strings ([`bytes`](https://docs.python.org/3/library/stdtypes.html#bytes)). However, Unicode strings and 8-bit strings cannot be mixed: that is, you cannot match a Unicode string with a byte pattern or vice-versa; similarly, when asking for a substitution, the replacement string must be of the same type as both the pattern and the search string.

> 要搜索的模式和字符串都可以是Unicode字符串（[`str`](https://docs.python.org/3/library/stdtypes.html#str)）以及8位字符串（[`bytes`](https://docs.python.org/3/library/stdtypes.html#bytes)）。然而，Unicode字符串和8位字符串不能混合使用：也就是说，你不能用字节模式匹配Unicode字符串，反之亦然；同样，当要求进行替换时，替换的字符串必须与模式和搜索字符串的类型相同。

Regular expressions use the backslash character (`'\'`) to indicate special forms or to allow special characters to be used without invoking their special meaning.  This collides with Python’s usage of the same character for the same purpose in string literals; for example, to match a literal backslash, one might have to write `'\\\\'` as the pattern string, because the regular expression must be `\\`, and each backslash must be expressed as `\\` inside a regular Python string literal. Also, please note that any invalid escape sequences in Python’s usage of the backslash in string literals now generate a [`DeprecationWarning`](https://docs.python.org/3/library/exceptions.html#DeprecationWarning) and in the future this will become a [`SyntaxError`](https://docs.python.org/3/library/exceptions.html#SyntaxError). This behaviour will happen even if it is a valid escape sequence for a regular expression.

> 正则表达式使用反斜杠字符 (`'\'`) 来表示特殊形式，或者允许使用特殊字符而不调用其特殊含义。 这与 Python 在字符串字面量上对同一字符的使用发生了冲突；例如，要匹配一个字面量的反斜杠，可能要写成 `'\\\\'`作为模式字符串，因为正则表达式必须是 `\\`，而每个反斜杠必须在 Python 正则字符串字面常量内表达为 `\\`。另外，请注意，Python 在字符串字面中使用反斜杠时，任何无效的转义序列现在都会产生 [`DeprecationWarning`](https://docs.python.org/3/library/exceptions.html#DeprecationWarning)，将来会变成 [`SyntaxError`](https://docs.python.org/3/library/exceptions.html#SyntaxError) 。即使它是正则表达式的有效转义序列，也会发生这种行为。

The solution is to use Python’s raw string notation for regular expression patterns; backslashes are not handled in any special way in a string literal prefixed with `'r'`.  So `r"\n"` is a two-character string containing `'\'` and `'n'`, while `"\n"` is a one-character string containing a newline.  Usually patterns will be expressed in Python code using this raw string notation.

> 解决办法是使用 Python 的原始字符串符号来表示正则表达式模式；在以 `'r'` 为前缀的字符串字面中，不会以任何特殊方式处理反斜线。 所以`r"\n"` 是一个包含`'\'`和`'n'`的双字符字符串，而`"\n"`是一个包含换行的单字符字符串。 通常模式会在Python代码中使用这种原始字符串符号来表达。

It is important to note that most regular expression operations are available as module-level functions and methods on [compiled regular expressions](https://docs.python.org/3/library/re.html#re-objects).  The functions are shortcuts that don’t require you to compile a regex object first, but miss some fine-tuning parameters.

> 需要注意的是，大多数正则表达式操作都可以作为模块级的函数和方法在[编译的正则表达式](https://docs.python.org/3/library/re.html#re-objects)上使用。 这些函数是捷径，不需要你先编译一个正则表达式对象，但缺少一些微调的参数。

**See also:** The third-party [regex](https://pypi.org/project/regex/) module, which has an API compatible with the standard library [`re`](https://docs.python.org/3/library/re.html#module-re) module, but offers additional functionality and a more thorough Unicode support.

> **参见：**第三方[regex](https://pypi.org/project/regex/)模块，它的API与标准库[`re`](https://docs.python.org/3/library/re.html#module-re)模块兼容，但提供额外的功能和更彻底的Unicode支持。

### Regular Expression Syntax

A regular expression (or RE) specifies a set of strings that matches it; the functions in this module let you check if a particular string matches a given regular expression (or if a given regular expression matches a particular string, which comes down to the same thing).

Regular expressions can be concatenated to form new regular expressions; if *A* and *B* are both regular expressions, then *AB* is also a regular expression. In general, if a string *p* matches *A* and another string *q* matches *B*, the string *pq* will match AB.  This holds unless *A* or *B* contain low precedence operations; boundary conditions between *A* and *B*; or have numbered group references.  Thus, complex expressions can easily be constructed from simpler primitive expressions like the ones described here.  For details of the theory and implementation of regular expressions, consult the Friedl book [[Frie09\]](https://docs.python.org/3/library/re.html#frie09), or almost any textbook about compiler construction.

A brief explanation of the format of regular expressions follows.  For further information and a gentler presentation, consult the [Regular Expression HOWTO](https://docs.python.org/3/howto/regex.html#regex-howto).

> 一个正则表达式（或RE）指定了一组与之匹配的字符串；本模块中的函数让你检查一个特定的字符串是否与给定的正则表达式匹配（或者一个给定的正则表达式是否与一个特定的字符串匹配，这归结起来是一样的）。
>
> 正则表达式可以串联起来形成新的正则表达式；如果*A*和*B*都是正则表达式，那么*AB*也是一个正则表达式。一般来说，如果一个字符串*p*匹配*A*，另一个字符串*q*匹配*B*，那么字符串*pq*将匹配AB。 这一点是成立的，除非*A*或*B*包含低优先级的操作；*A*和*B*之间的边界条件；或者有编号的组引用。 因此，复杂的表达式可以很容易地从较简单的原始表达式中构造出来，比如这里描述的表达式。 关于正则表达式的理论和实现的细节，请参考Friedl的书[[Frie09\]](https://docs.python.org/3/library/re.html#frie09)，或者几乎所有关于编译器构造的教科书。
>
> 下面是对正则表达式格式的简要解释。 如果想了解更多信息和更温和的介绍，请查阅 [Regular Expression HOWTO](https://docs.python.org/3/howto/regex.html#regex-howto)。

Regular expressions can contain both special and ordinary characters. Most ordinary characters, like `'A'`, `'a'`, or `'0'`, are the simplest regular expressions; they simply match themselves.  You can concatenate ordinary characters, so `last` matches the string `'last'`.  (In the rest of this section, we’ll write RE’s in `this special style`, usually without quotes, and strings to be matched `'in single quotes'`.)

Some characters, like `'|'` or `'('`, are special. Special characters either stand for classes of ordinary characters, or affect how the regular expressions around them are interpreted.

Repetition operators or quantifiers (`*`, `+`, `?`, `{m,n}`, etc) cannot be directly nested. This avoids ambiguity with the non-greedy modifier suffix `?`, and with other modifiers in other implementations. To apply a second repetition to an inner repetition, parentheses may be used. For example, the expression `(?:a{6})*` matches any multiple of six `'a'` characters.

> 正则表达式可以包含特殊字符和普通字符。大多数**普通字符**，如`'A'`、`'a'`或`'0'`，是最简单的正则表达式；它们只是匹配自己。 你可以将普通字符连接起来，所以`last`匹配字符串`'last'`。 (在本节的其余部分，我们将用 `这种特殊的风格` 来写RE's，通常不加引号，而要匹配的字符串则用 `'单引号'`）。
>
> 有些字符，如`'|'`或`'('`，是特殊的。**特殊字符**要么代表普通字符的类别，要么影响它们周围的正则表达式的解释方式。
>
> 重复操作符或**量词**（`*`, `+`, `?`, `{m,n}`, 等等）不能直接嵌套。这可以避免与**非贪婪**的修饰符后缀`?`，以及其他实现中的其他修饰符产生歧义。为了将第二个重复应用于一个内部重复，可以使用括号。例如，表达式`(?:a{6})*`匹配六个`'a'`字符的任何倍数。

The special characters are:

> 特殊字符有：

- `.`

  (Dot.)  In the default mode, this matches any character except a newline.  If the [`DOTALL`](https://docs.python.org/3/library/re.html#re.DOTALL) flag has been specified, this matches any character including a newline.

- `^`

  (Caret.)  Matches the start of the string, and in [`MULTILINE`](https://docs.python.org/3/library/re.html#re.MULTILINE) mode also matches immediately after each newline.

- `$`

  Matches the end of the string or just before the newline at the end of the string, and in [`MULTILINE`](https://docs.python.org/3/library/re.html#re.MULTILINE) mode also matches before a newline.  `foo` matches both ‘foo’ and ‘foobar’, while the regular expression `foo$` matches only ‘foo’.  More interestingly, searching for `foo.$` in `'foo1\nfoo2\n'` matches ‘foo2’ normally, but ‘foo1’ in [`MULTILINE`](https://docs.python.org/3/library/re.html#re.MULTILINE) mode; searching for a single `$` in `'foo\n'` will find two (empty) matches: one just before the newline, and one at the end of the string.

> - `.`
>
>   (Dot.) 在默认模式下，它匹配**除换行以外**的任何字符。 如果指定了[`DOTALL`](https://docs.python.org/3/library/re.html#re.DOTALL)标志，这将匹配包括换行在内的任何字符。
>
> - `^`
>
>   (Caret.) 匹配**字符串的开头**，在[`MULTILINE`](https://docs.python.org/3/library/re.html#re.MULTILINE)模式下，还可以在每个换行后立即匹配。
>
> - `$`
>
>   匹配字符串的末尾或字符串末尾的换行前，在[`MULTILINE`](https://docs.python.org/3/library/re.html#re.MULTILINE)模式下也匹配换行前。 `foo`同时匹配 'foo'和 'foobar'，而正则表达式`foo$`只匹配 'foo'。 更有趣的是，在`'foo1\nfoo2\n'`中搜索`foo.$`，正常情况下匹配'foo2'，但在[`MULTILINE`](https://docs.python.org/3/library/re.html#re.MULTILINE)模式下匹配'foo1'；在`'foo\n'`中搜索单个`$`会发现两个（空）匹配：一个在换行之前，一个在字符串的末尾。

- `*`

  Causes the resulting RE to match 0 or more repetitions of the preceding RE, as many repetitions as are possible.  `ab*` will match ‘a’, ‘ab’, or ‘a’ followed by any number of ‘b’s.

- `+`

  Causes the resulting RE to match 1 or more repetitions of the preceding RE. `ab+` will match ‘a’ followed by any non-zero number of ‘b’s; it will not match just ‘a’.

- `?`

  Causes the resulting RE to match 0 or 1 repetitions of the preceding RE. `ab?` will match either ‘a’ or ‘ab’.

> - `*`
>
>   导致产生的RE与前面的RE的0个或多个重复相匹配，重复的次数越多越好。 `ab*`将匹配'a', 'ab', 或'a'后面有任意数量的'b'.
>
> - `+`
>
>   导致产生的RE与前面的RE的1个或多个重复相匹配。`ab+`将匹配'a'后面有任何非零数量的'b'；它不会只匹配'a'。
>
> - `?`
>
>   导致产生的RE与前面的RE的0或1次重复相匹配。`ab?`将匹配'a'或'ab'。

- `*?`, `+?`, `??`

  The `'*'`, `'+'`, and `'?'` quantifiers are all *greedy*; they match as much text as possible.  Sometimes this behaviour isn’t desired; if the RE `<.*>` is matched against `'<a> b <c>'`, it will match the entire string, and not just `'<a>'`.  Adding `?` after the quantifier makes it perform the match in *non-greedy* or *minimal* fashion; as *few* characters as possible will be matched.  Using the RE `<.*?>` will match only `'<a>'`.

- `*+`, `++`, `?+`

  Like the `'*'`, `'+'`, and `'?'` quantifiers, those where `'+'` is appended also match as many times as possible. However, unlike the true greedy quantifiers, these do not allow back-tracking when the expression following it fails to match. These are known as *possessive* quantifiers. For example, `a*a` will match `'aaaa'` because the `a*` will match all 4 `'a'`s, but, when the final `'a'` is encountered, the expression is backtracked so that in the end the `a*` ends up matching 3 `'a'`s total, and the fourth `'a'` is matched by the final `'a'`. However, when `a*+a` is used to match `'aaaa'`, the `a*+` will match all 4 `'a'`, but when the final `'a'` fails to find any more characters to match, the expression cannot be backtracked and will thus fail to match. `x*+`, `x++` and `x?+` are equivalent to `(?>x*)`, `(?>x+)` and `(?>x?)` correspondingly.  New in version 3.11.

> - `*?`, `+?`, `??`
>
>   `'*'`, `'+'`, and `'?'` 量词全都是***匹配优先的***（贪婪的）; 它们尽可能多的匹配文本。  有时候这样的行为不是想要的；如果 RE `<.*>` 用来匹配 `'<a> b <c>'`，它将匹配整个字符串，而不仅仅是 `'<a>'`.  在量词后面加 `?`  使它执行匹配**非贪婪**或**最小量**的方式；尽可能少的字符将会被匹配。使用 RE `<.*?>` 将只匹配 `'<a>'`.
>
> - `*+`, `++`, `?+`
>
>   像`'*'`、`'+'`和`'?'`量词一样，那些附加了`'+'`的量词也是尽可能多地匹配。然而，与真正的贪婪量词不同，这些量词不允许在它后面的表达式无法匹配时进行**回溯**。这些被称为*占有式*量词。例如，`a*a` 将匹配`'aaaa'`，因为 `a*`将匹配所有4个 `'a'`，但是，当遇到最后的 `'a'`时，表达式会被回溯，所以最后 `a*`总共匹配3个 `'a'`，而第四个 `'a'` 被最后的 `'a'` 匹配。然而，当使用`a*+a`来匹配`'aaa'`时，`a*+`将匹配所有4个`'a'`，但是当最后的`'a'`未能找到更多的字符来匹配时，该表达式不能被回溯，因此将无法匹配。`x*+`、`x++`和`x?+`相应地等同于`(?>x*)`、`(?>x+)`和`(?>x?)`。
>   
>    **3.11版中的新内容。**

- `{m}`

  Specifies that exactly *m* copies of the previous RE should be matched; fewer matches cause the entire RE not to match.  For example, `a{6}` will match exactly six `'a'` characters, but not five.

- `{m,n}`

  Causes the resulting RE to match from *m* to *n* repetitions of the preceding RE, attempting to match as many repetitions as possible.  For example, `a{3,5}` will match from 3 to 5 `'a'` characters.  Omitting *m* specifies a lower bound of zero,  and omitting *n* specifies an infinite upper bound.  As an example, `a{4,}b` will match `'aaaab'` or a thousand `'a'` characters followed by a `'b'`, but not `'aaab'`. The comma may not be omitted or the modifier would be confused with the previously described form.

- `{m,n}?`

  Causes the resulting RE to match from *m* to *n* repetitions of the preceding RE, attempting to match as *few* repetitions as possible.  This is the non-greedy version of the previous quantifier.  For example, on the 6-character string `'aaaaaa'`, `a{3,5}` will match 5 `'a'` characters, while `a{3,5}?` will only match 3 characters.

- `{m,n}+`

  Causes the resulting RE to match from *m* to *n* repetitions of the preceding RE, attempting to match as many repetitions as possible *without* establishing any backtracking points. This is the possessive version of the quantifier above. For example, on the 6-character string `'aaaaaa'`, `a{3,5}+aa` attempt to match 5 `'a'` characters, then, requiring 2 more `'a'`s, will need more characters than available and thus fail, while `a{3,5}aa` will match with `a{3,5}` capturing 5, then 4 `'a'`s by backtracking and then the final 2 `'a'`s are matched by the final `aa` in the pattern. `x{m,n}+` is equivalent to `(?>x{m,n})`. 

  New in version 3.11.

> - `{m}`
>
>   指定匹配确切m个前面的RE; 更少的数量将会导致整个RE不匹配。例如，`a{6}` 将匹配确切的6个 `'a'` 字符，而不是5个。
>
> - `{m,n}`
>
>   让RE去匹配m到n个重复，试图匹配尽可能多的重复。例如，`a{3,5}`将匹配3到5 `'a'` 字符。省略*m*将指定最低的边界数为零个。省略*n*指定一个无限的上限次数。例如，`a{4,}b` 将匹配 `'aaaab'` 或者一千个 `'a'` 字符后面跟着一个 `'b'`，但不匹配 `'aaab'`. 逗号不能省略 否则这个修饰符会和前面描述的形式混淆。
>
> - `{m,n}?`
>
>   让RE去匹配m到n个重复，试图匹配尽可能*少*的重复。这是前面量词的**非贪婪匹配**版本。例如，在6字符的字符串 `'aaaaaa'`中，`a{3,5}`将匹配5个`'a'`字符。然而`a{3,5}?` 将仅仅匹配3个字符。
>
> - `{m,n}+`
>
>   让RE去匹配m到n个重复，试图匹配尽可能多的重复而不建立任何回溯点。这是上述量词的**占有优先**版本。例如，在6个字符的字符串 `'aaaaaa'`中，`a{3,5}+aa` 试图匹配5个`'a'` 字符。 然后还需要2个`'a'`，如果可用的比需要的少将会匹配失败。然而 `a{3,5}aa` 将用 `a{3,5}` 匹配捕抓 5个,然后回溯到4个 `'a'`并且最终的2个 `'a'` 将被模式中最后的 `aa` 匹配。`x{m,n}+` 相当于 `(?>x{m,n})`. 
>
>    **3.11版中的新内容。**

量词的占有优先（possessive）修饰符是3.11版中的新增内容。

- `\`

  Either escapes special characters (permitting you to match characters like `'*'`, `'?'`, and so forth), or signals a special sequence; special sequences are discussed below. If you’re not using a raw string to express the pattern, remember that Python also uses the backslash as an escape sequence in string literals; if the escape sequence isn’t recognized by Python’s parser, the backslash and subsequent character are included in the resulting string.  However, if Python would recognize the resulting sequence, the backslash should be repeated twice.  This is complicated and hard to understand, so it’s highly recommended that you use raw strings for all but the simplest expressions.

> `\`
>
> 要么**转义特殊字符** (允许你匹配字符，像 `'*'`, `'?'`, 诸如此类)，或者**表明特殊序列**。特殊序列在下面讨论。
>
> 如果你不使用原字符串来表达模式，记住Python同样使用反斜线作为一个转义序列字面常量；如果转义序列不被Python分析器所识别，反斜线和随后的字符将被包括在结果字符串。然而，如果Python会识别结果序列，反斜线会被重复两次。这很复杂且难以理解，因此除了最简单的表达式之外强烈建议你使用原字符串。

- `[]`

  Used to indicate a set of characters.  In a set: 

  - Characters can be listed individually, e.g. `[amk]` will match `'a'`, `'m'`, or `'k'`.  

  - Ranges of characters can be indicated by giving two characters and separating them by a `'-'`, for example `[a-z]` will match any lowercase ASCII letter, `[0-5][0-9]` will match all the two-digits numbers from `00` to `59`, and `[0-9A-Fa-f]` will match any hexadecimal digit.  If `-` is escaped (e.g. `[a\-z]`) or if it’s placed as the first or last character (e.g. `[-a]` or `[a-]`), it will match a literal `'-'`. 

  - Special characters lose their special meaning inside sets.  For example, `[(+*)]` will match any of the literal characters `'('`, `'+'`, `'*'`, or `')'`.  

  - Character classes such as `\w` or `\S` (defined below) are also accepted inside a set, although the characters they match depends on whether [`ASCII`](https://docs.python.org/3/library/re.html#re.ASCII) or [`LOCALE`](https://docs.python.org/3/library/re.html#re.LOCALE) mode is in force.  

  - Characters that are not within a range can be matched by *complementing* the set.  If the first character of the set is `'^'`, all the characters that are *not* in the set will be matched.  For example, `[^5]` will match any character except `'5'`, and `[^^]` will match any character except `'^'`.  `^` has no special meaning if it’s not the first character in the set. 

  - To match a literal `']'` inside a set, precede it with a backslash, or place it at the beginning of the set.  For example, both `[()[\]{}]` and `[]()[{}]` will both match a parenthesis.  

  - Support of nested sets and set operations as in [Unicode Technical Standard #18](https://unicode.org/reports/tr18/) might be added in the future.  This would change the syntax, so to facilitate this change a [`FutureWarning`](https://docs.python.org/3/library/exceptions.html#FutureWarning) will be raised in ambiguous cases for the time being. That includes sets starting with a literal `'['` or containing literal character sequences `'--'`, `'&&'`, `'~~'`, and `'||'`.  To avoid a warning escape them with a backslash.  

    Changed in version 3.7: [`FutureWarning`](https://docs.python.org/3/library/exceptions.html#FutureWarning) is raised if a character set contains constructs that will change semantically in the future.

> `[]`
>
> 用来表明一个字符组。在一个字符组中：
>
> - 字符可以**单独**列出，e.g. `[amk]` 将匹配 `'a'`, `'m'`, or `'k'`.  
>
> - **字符范围**可以用两个字符和一个将这两个字符分开的`'-'`来表明，例如 `[a-z]` 将匹配任何小写ASCII字母，`[0-5][0-9]` 将匹配所有的两位数字，从 `00` 到 `59`，而`[0-9A-Fa-f]` 将匹配任何十六进制数字。如果 `-` 被转义(e.g. `[a\-z]`) 或者如果被放置在最前面或最后面 (e.g. `[-a]` or `[a-]`)，它将匹配字面的`'-'`。
>
> - 特殊字符在字符组内将**失去**它们的特殊含义。比如，`[(+*)]` 将匹配任何字面常量的字符 `'('`, `'+'`, `'*'`, 或者 `')'`.  
>
> - **字符类**，比如 `\w` or `\S` (在下面定义) 也可以放在字符组内，尽管它们匹配的字符取决于是否 [`ASCII`](https://docs.python.org/3/library/re.html#re.ASCII) or [`LOCALE`](https://docs.python.org/3/library/re.html#re.LOCALE) 模式被强制。  
>
> - 不在范围内的字符可以被范围的**补集**所匹配。如果字符组的第一个字符是 `'^'`, 所有不在这个字符组的字符将会被匹配。比如 `[^5]` 将匹配除了 `'5'`之外的任何字符， `[^^]` 将匹配除了 `'^'`之外的任何字符。`^` 如果不是字符组的第一个字符将没有特殊含义。 
>
> - 在字符组内部匹配 `']'`，在它之前**放置一个反斜线或者把它放在字符组的开头**。比如`[()[\]{}]` 和 `[]()[{}]` 都将匹配括号。 
>
> - 支持字符组嵌套和字符组操作，就像在 [Unicode Technical Standard #18](https://unicode.org/reports/tr18/)，可能未来会被增加。这会改变语法，为了减缓这个改变，一个 [`FutureWarning`](https://docs.python.org/3/library/exceptions.html#FutureWarning) 在模糊的情况发生时将被引发。这包括以字面`'['` 开头的字符组或者包含字面字符序列，如 `'--'`, `'&&'`, `'~~'`, 和`'||'`。为避免警告，用反斜线转义它们。
>
>   在3.7版本的变化：[`FutureWarning`](https://docs.python.org/3/library/exceptions.html#FutureWarning) is raised if a character set contains constructs that will change semantically in the future.

- `|`

  `A|B`, where *A* and *B* can be arbitrary REs, creates a regular expression that will match either *A* or *B*.  An arbitrary number of REs can be separated by the `'|'` in this way.  This can be used inside groups (see below) as well.  As the target string is scanned, REs separated by `'|'` are tried from left to right. When one pattern completely matches, that branch is accepted. This means that once *A* matches, *B* will not be tested further, even if it would produce a longer overall match.  In other words, the `'|'` operator is never greedy.  To match a literal `'|'`, use `\|`, or enclose it inside a character class, as in `[|]`.

> `|`
>
> `A|B`, *A* 和 *B* 可以是**任意的**REs，创造一个正则表达式来匹配 *A* 或者 *B*。任意数量的REs可以用这种方式被 `'|'`隔开。这个同样也可以在分组内使用。当目标字符串被扫描，被 `'|'`隔开的REs 从左到右依次尝试。当一个模式完全匹配，这个分支**被接受**。这意味着一旦 *A* 匹配，*B* 不会被进一步测试，尽管它可能产生整体上更长的匹配。换句话说，`'|'`操作符从来不是贪婪的。匹配一个字面的 `'|'`，使用 `\|`, 或者把它闭合在一个字符类内，就像在 `[|]`。

- `(...)`

  Matches whatever regular expression is inside the parentheses, and indicates the start and end of a group; the contents of a group can be retrieved after a match has been performed, and can be matched later in the string with the `\number` special sequence, described below.  To match the literals `'('` or `')'`, use `\(` or `\)`, or enclose them inside a character class: `[(]`, `[)]`.

> `(...)`
>
> 匹配括号里的正则表达式，并且表明一组的开头和结尾。一组的内容在一次匹配之后可以被检索，并且可以在之后匹配在`\number`特殊序列里的字符串。见下面描述。匹配字面的 `'('` 或者 `')'`, 使用 `\(` or `\)`，或者把它们闭合在一个字符类里：`[(]`, `[)]`。

- `(?...)`

  This is an extension notation (a `'?'` following a `'('` is not meaningful otherwise).  The first character after the `'?'` determines what the meaning and further syntax of the construct is. Extensions usually do not create a new group; `(?P<name>...)` is the only exception to this rule. Following are the currently supported extensions.

- `(?aiLmsux)`

  (One or more letters from the set `'a'`, `'i'`, `'L'`, `'m'`, `'s'`, `'u'`, `'x'`.)  The group matches the empty string; the letters set the corresponding flags: [`re.A`](https://docs.python.org/3/library/re.html#re.A) (ASCII-only matching), [`re.I`](https://docs.python.org/3/library/re.html#re.I) (ignore case), [`re.L`](https://docs.python.org/3/library/re.html#re.L) (locale dependent), [`re.M`](https://docs.python.org/3/library/re.html#re.M) (multi-line), [`re.S`](https://docs.python.org/3/library/re.html#re.S) (dot matches all), `re.U` (Unicode matching), and [`re.X`](https://docs.python.org/3/library/re.html#re.X) (verbose), for the entire regular expression. (The flags are described in [Module Contents](https://docs.python.org/3/library/re.html#contents-of-module-re).) This is useful if you wish to include the flags as part of the regular expression, instead of passing a *flag* argument to the [`re.compile()`](https://docs.python.org/3/library/re.html#re.compile) function.  Flags should be used first in the expression string. Changed in version 3.11: This construction can only be used at the start of the expression.

> - `(?...)`
>
>   这是一个扩展标记符 (一个 `'?'` 跟在一个 `'('` 后面没有什么意义)。`'?'`之后的第一个字符决定这个结构的意思和进一步的语法是什么。扩展通常不会创造新的分组。`(?P<name>...)` 是这条规则的唯一例外。下面是当前支持的扩展。
>
> - `(?aiLmsux)`
>
>   (一个或更多字母来自这个字符组 `'a'`, `'i'`, `'L'`, `'m'`, `'s'`, `'u'`, `'x'`。) 这个组匹配空字符串；字母设置相对应的flags: [`re.A`](https://docs.python.org/3/library/re.html#re.A) (ASCII-only matching), [`re.I`](https://docs.python.org/3/library/re.html#re.I) (ignore case), [`re.L`](https://docs.python.org/3/library/re.html#re.L) (locale dependent), [`re.M`](https://docs.python.org/3/library/re.html#re.M) (multi-line), [`re.S`](https://docs.python.org/3/library/re.html#re.S) (dot matches all), `re.U` (Unicode matching), and [`re.X`](https://docs.python.org/3/library/re.html#re.X) (verbose)，给整个正则表达式。(The flags are described in [Module Contents](https://docs.python.org/3/library/re.html#contents-of-module-re).) 
>
>   这很有用如果你想在正则表达式中包含flags作为正则的部分，而不是传递一个 *flag* 参数到 [`re.compile()`](https://docs.python.org/3/library/re.html#re.compile) 函数。Flags应当在表达式字符串中首先被使用。
>
>   Changed in version 3.11: 这个结构智能在表达式的开始使用。

- `(?:...)`

  A non-capturing version of regular parentheses.  Matches whatever regular expression is inside the parentheses, but the substring matched by the group *cannot* be retrieved after performing a match or referenced later in the pattern.

- `(?aiLmsux-imsx:...)`

  (Zero or more letters from the set `'a'`, `'i'`, `'L'`, `'m'`, `'s'`, `'u'`, `'x'`, optionally followed by `'-'` followed by one or more letters from the `'i'`, `'m'`, `'s'`, `'x'`.) The letters set or remove the corresponding flags: [`re.A`](https://docs.python.org/3/library/re.html#re.A) (ASCII-only matching), [`re.I`](https://docs.python.org/3/library/re.html#re.I) (ignore case), [`re.L`](https://docs.python.org/3/library/re.html#re.L) (locale dependent), [`re.M`](https://docs.python.org/3/library/re.html#re.M) (multi-line), [`re.S`](https://docs.python.org/3/library/re.html#re.S) (dot matches all), `re.U` (Unicode matching), and [`re.X`](https://docs.python.org/3/library/re.html#re.X) (verbose), for the part of the expression. (The flags are described in [Module Contents](https://docs.python.org/3/library/re.html#contents-of-module-re).) The letters `'a'`, `'L'` and `'u'` are mutually exclusive when used as inline flags, so they can’t be combined or follow `'-'`.  Instead, when one of them appears in an inline group, it overrides the matching mode in the enclosing group.  In Unicode patterns `(?a:...)` switches to ASCII-only matching, and `(?u:...)` switches to Unicode matching (default).  In byte pattern `(?L:...)` switches to locale depending matching, and `(?a:...)` switches to ASCII-only matching (default). This override is only in effect for the narrow inline group, and the original matching mode is restored outside of the group. New in version 3.6.  Changed in version 3.7: The letters `'a'`, `'L'` and `'u'` also can be used in a group.

- `(?>...)`

  Attempts to match `...` as if it was a separate regular expression, and if successful, continues to match the rest of the pattern following it. If the subsequent pattern fails to match, the stack can only be unwound to a point *before* the `(?>...)` because once exited, the expression, known as an *atomic group*, has thrown away all stack points within itself. Thus, `(?>.*).` would never match anything because first the `.*` would match all characters possible, then, having nothing left to match, the final `.` would fail to match. Since there are no stack points saved in the Atomic Group, and there is no stack point before it, the entire expression would thus fail to match. 
  
  New in version 3.11.

> - `(?:...)`
>
>   正则括号的一个**非捕获**版本。 匹配括号内的任何正则表达式，但该组匹配的子串*不能*在进行匹配后被检索，也不能在模式的后面被引用。
>
> - `(?aiLmsux-imsx:......)`
>
>   (从集合`'a'`, `'i'`, `'L'`, `'m'`, `'s'`, `'u'`, `'x'`中的零个或多个字母，可选择在`'-'`后跟一个或多个来自`'i'`, `'m'`, `'s'`, `'x'`的字母。) 这些字母设置或删除相应的标志（flags）。[`re.A`](https://docs.python.org/3/library/re.html#re.A) (只匹配ASCII码), [`re.I`](https://docs.python.org/3/library/re.html#re.I) (忽略大小写), [`re.L`](https://docs.python.org/3/library/re.html#re.L) (与地域有关), [`re.M`](https://docs.python.org/3/library/re.html#re.M) (多行), [`re.S`](https://docs.python.org/3/library/re.html#re.S) (点匹配所有), `re.U` (Unicode匹配), 和 [`re.X`](https://docs.python.org/3/library/re.html#re.X) (verbose) ，针对表达式的部分。(这些标志在[模块内容](https://docs.python.org/3/library/re.html#contents-of-module-re)中描述)。
>
>   字母`'a'`，`'L'`和`'u'`作为内联标志（flags）使用时是相互排斥的，所以它们不能合并或跟在`'-'`后面。 相反，当它们中的一个出现在一个内联组中时，它将覆盖闭合组中的匹配模式。 在Unicode模式中，`(?a:...)`切换到纯ASCII匹配，`(?u:...)`切换到Unicode匹配（默认）。 在字节模式中，`(?L:...)`切换到根据locale匹配，`(?a:...)`切换到仅ASCII匹配（默认）。这个覆盖只对窄内联组有效，在组外恢复原来的匹配模式。
>
>   3.6版中的新功能。 
>
>   3.7版中的改变：字母`'a'`、`'L'`和`'u'`也可以在组中使用。
>
> - `(?>...)` 固化分组（atomic group）？
>
>   尝试匹配`...`，就像它是一个单独的正则表达式一样，如果成功，继续匹配后面的模式。如果后面的模式匹配失败，堆栈只能解开到`(?>...)`之前的一个点，因为一旦退出，这个被称为*原子组*的表达式已经丢弃了自己内部的所有堆栈点。因此，`(?>.*).`永远不会匹配任何东西，因为首先`.*`会匹配所有可能的字符，然后，由于没有剩余的字符可以匹配，最后的`.`将无法匹配。由于原子组中没有保存堆栈点，而且在它之前也没有堆栈点，因此整个表达式将无法匹配。
>
>   3.11版的新内容。

- `(?P<name>...)`

  Similar to regular parentheses, but the substring matched by the group is accessible via the symbolic group name *name*.  Group names must be valid Python identifiers, and each group name must be defined only once within a regular expression.  A symbolic group is also a numbered group, just as if the group were not named. 

  Named groups can be referenced in three contexts.  If the pattern is `(?P<quote>['"]).*?(?P=quote)` (i.e. matching a string quoted with either single or double quotes):    

  | Context of reference to group “quote”                   | Ways to reference it                       |
  | ------------------------------------------------------- | ------------------------------------------ |
  | in the same pattern itself                              | `(?P=quote)` (as shown) `\1`               |
  | when processing match object *m*                        | `m.group('quote')` `m.end('quote')` (etc.) |
  | in a string passed to the *repl* argument of `re.sub()` | `\g<quote>` `\g<1>` `\1`                   |

  **Deprecated since version 3.11**: Group names containing non-ASCII characters in bytes patterns.

- `(?P=name)`

  A backreference to a named group; it matches whatever text was matched by the earlier group named *name*.

> - `(?P<name>...)`
>
>   类似于正则小括号，但是由组匹配的子串可以通过象征性的**组名** *name* 访问。 组名必须是有效的 Python 标识符，并且每个组名在正则表达式中只能定义一次。 符号组也是一个有编号的组，就像该组没有被命名一样。
>
>   命名的组可以在三种情况下被引用。 如果模式是`(?P<quote>['"]).*?(?P=quote)`（即匹配一个用单引号或双引号引用的字符串）。
>
>   自3.11版起废止：在字节模式中包含非ASCII字符的组名。
>
> - `(?P=name)`
>
>   对一个**命名的组的反向引用**；它匹配任何被先前名为*name*的组所匹配的文本。

- `(?#...)`

  A comment; the contents of the parentheses are simply ignored.

> - `(?#...)`
>
> 一个注释；圆括号内的内容被简单地忽略了。

- `(?=...)`

  Matches if `...` matches next, but doesn’t consume any of the string.  This is called a *lookahead assertion*.  For example, `Isaac (?=Asimov)` will match `'Isaac '` only if it’s followed by `'Asimov'`.

- `(?!...)`

  Matches if `...` doesn’t match next.  This is a *negative lookahead assertion*. For example, `Isaac (?!Asimov)` will match `'Isaac '` only if it’s *not* followed by `'Asimov'`.

- `(?<=...)`

  Matches if the current position in the string is preceded by a match for `...` that ends at the current position.  This is called a *positive lookbehind assertion*. `(?<=abc)def` will find a match in `'abcdef'`, since the lookbehind will back up 3 characters and check if the contained pattern matches. The contained pattern must only match strings of some fixed length, meaning that `abc` or `a|b` are allowed, but `a*` and `a{3,4}` are not.  Note that patterns which start with positive lookbehind assertions will not match at the beginning of the string being searched; you will most likely want to use the [`search()`](https://docs.python.org/3/library/re.html#re.search) function rather than the [`match()`](https://docs.python.org/3/library/re.html#re.match) function: 

```python
import re
m = re.search('(?<=abc)def', 'abcdef')
m.group(0)
'def'
```

This example looks for a word following a hyphen:

```python
m = re.search(r'(?<=-)\w+', 'spam-egg')
m.group(0)
'egg'
```

- `(?<!...)`

  Matches if the current position in the string is not preceded by a match for `...`.  This is called a *negative lookbehind assertion*.  Similar to positive lookbehind assertions, the contained pattern must only match strings of some fixed length.  Patterns which start with negative lookbehind assertions may match at the beginning of the string being searched.

> - `(?=...)`
>
>   如果`...`匹配下一个，但不消耗任何字符串，则匹配。 这被称为*展望断言*。 例如，`Isaac (?=Asimov)`将匹配`'Isaac'`，只有当它后面是`'Asimov'`时才匹配。
>
> - `(?!...)`
>
>   如果`...`后面不匹配，则进行匹配。 这是一个*否定前瞻断言*。例如，`Isaac (?!Asimov)` 只有在 `'Isaac '`后面没有 `'Asimov'` 时才会匹配 `'Isaac'`。
>   
> - `(?<=...)`
>
>   如果字符串中的当前位置之前有一个以当前位置结束的`...`的匹配，则进行匹配。 这被称为*正向查找后方的断言*。`(?<=abc)def`将在`'abcdef'`中找到一个匹配，因为lookbehind将后退3个字符并检查所包含的模式是否匹配。包含的模式必须只匹配某种固定长度的字符串，这意味着允许`abc`或`a|b`，但`a*`和`a{3,4}`不允许。 请注意，以正向查找断言开始的模式不会在被搜索的字符串的开头匹配；你很可能想使用[`search()`](https://docs.python.org/3/library/re.html#re.search)函数而不是[`match()`](https://docs.python.org/3/library/re.html#re.match)函数。
>
>   ```python
>   import re
>   m = re.search('(?<=abc)def', 'abcdef')
>   m.group(0)
>   'def'
>   ```
>
>   This example looks for a word following a hyphen:
>
>   ```python
>   m = re.search(r'(?<=-)\w+', 'spam-egg')
>   m.group(0)
>   'egg'
>   
>   ```
>
> - `(?<!...)`
>
>   如果字符串中的当前位置之前没有匹配到`...`，则进行匹配。 这被称为*否定的后视断言*。 与正向查找断言类似，包含的模式必须只匹配某个固定长度的字符串。 以负的lookbehind断言开始的模式可以在被搜索的字符串的开头处匹配。

- `(?(id/name)yes-pattern|no-pattern)`

  Will try to match with `yes-pattern` if the group with given *id* or *name* exists, and with `no-pattern` if it doesn’t. `no-pattern` is optional and can be omitted. For example, `(<)?(\w+@\w+(?:\.\w+)+)(?(1)>|$)` is a poor email matching pattern, which will match with `'<user@host.com>'` as well as `'user@host.com'`, but not with `'<user@host.com'` nor `'user@host.com>'`. 

  Deprecated since version 3.11: Group *id* containing anything except ASCII digits.

> - `(?(id/name)yes-pattern|no-pattern)`
>
> 如果给定的*id*或*name*的组存在，将尝试用 `yes-pattern` 匹配，如果不存在，则用 `no-pattern`。`no-pattern`是可选的，可以省略。例如，`(<)?(\w+@\w+(?:\.\w+)+)(?(1)>|$)`是一个糟糕的邮件匹配模式，它将与`'<user@host.com>'`以及`'user@host.com'`匹配，但不能与`'<user@host.com'`或`'user@host.com>'`匹配。
>
> 从3.11版开始被弃用：群组*id*包含除ASCII数字以外的任何内容。

The special sequences consist of `'\'` and a character from the list below. If the ordinary character is not an ASCII digit or an ASCII letter, then the resulting RE will match the second character.  For example, `\$` matches the character `'$'`.

> 由`\`和一个字符组成的特殊序列在下面列出。如果普通的字符不是一个ASCII数字或者一个ASCII字母，那么结果RE将匹配第二个字符。例如，`\$`匹配字符`'$'`。

- `\number`

  Matches the contents of the group of the same number.  Groups are numbered starting from 1.  For example, `(.+) \1` matches `'the the'` or `'55 55'`, but not `'thethe'` (note the space after the group).  This special sequence can only be used to match one of the first 99 groups.  If the first digit of *number* is 0, or *number* is 3 octal digits long, it will not be interpreted as a group match, but as the character with octal value *number*. Inside the `'['` and `']'` of a character class, all numeric escapes are treated as characters.

- `\A`

  Matches only at the start of the string.

> - `\number`
>
>   匹配**相同编号的组**的内容。 组的编号从1开始。例如，`(.+) \1`匹配`'the the'`或`'55 55'`，但不匹配`'thethe'`（注意组后面的空格）。 这个特殊的序列只能用于匹配前99组中的一组。 如果*number*的第一个数字是0，或者*number*是3个八进制数字，它将不会被解释为组别匹配，而是解释为八进制值*number*的字符。在一个字符类的`'['`和`']'`内，所有数字转义都被当作字符处理。
>
> - `\A`
>
>   只在**字符串的开头处**进行匹配。

- `\b`

  Matches the empty string, but only at the beginning or end of a word. A word is defined as a sequence of word characters.  Note that formally, `\b` is defined as the boundary between a `\w` and a `\W` character (or vice versa), or between `\w` and the beginning/end of the string. This means that `r'\bfoo\b'` matches `'foo'`, `'foo.'`, `'(foo)'`, `'bar foo baz'` but not `'foobar'` or `'foo3'`. By default Unicode alphanumerics are the ones used in Unicode patterns, but this can be changed by using the [`ASCII`](https://docs.python.org/3/library/re.html#re.ASCII) flag.  Word boundaries are determined by the current locale if the [`LOCALE`](https://docs.python.org/3/library/re.html#re.LOCALE) flag is used. Inside a character range, `\b` represents the backspace character, for compatibility with Python’s string literals.

- `\B`

  Matches the empty string, but only when it is *not* at the beginning or end of a word.  This means that `r'py\B'` matches `'python'`, `'py3'`, `'py2'`, but not `'py'`, `'py.'`, or `'py!'`. `\B` is just the opposite of `\b`, so word characters in Unicode patterns are Unicode alphanumerics or the underscore, although this can be changed by using the [`ASCII`](https://docs.python.org/3/library/re.html#re.ASCII) flag.  Word boundaries are determined by the current locale if the [`LOCALE`](https://docs.python.org/3/library/re.html#re.LOCALE) flag is used.

> - `\b` 这需要**好好研究**
>
>   匹配空字符串，但只在一个**词的开头或结尾**。一个词被定义为一连串的单词字符。 注意，从形式上看，`\b`被定义为`\w`和`\W`字符（或反之）之间的边界，或者`\w`和字符串的开头/结尾之间的边界。这意味着`r'\bfoo\b'`可以匹配`'foo'`、`'foo.'`、`'(foo)'`、`'bar foo baz'`，但不能匹配`'foobar'`或`'foo3'`。默认情况下，Unicode字母数字是Unicode模式中使用的字母数字，但这可以通过使用[`ASCII`](https://docs.python.org/3/library/re.html#re.ASCII)标志来改变。 如果使用了[`LOCALE`](https://docs.python.org/3/library/re.html#re.LOCALE)标志，字的边界由当前的地域决定。在一个字符范围内，`\b`代表退格字符，以便与Python的字符串字面兼容。
>
> - `\B`
>
>   匹配空字符串，但只有当它*不*在一个词的开头或结尾时。 这意味着`r'py\B'`匹配`'python'`, `'py3'`, `'py2'`, 但不匹配`'py'`, `'py.'`, 或`'py!'` 。`\B`与`\b`正好相反，所以Unicode模式中的单词字符是Unicode字母数字或下划线，尽管这可以通过使用[`ASCII`](https://docs.python.org/3/library/re.html#re.ASCII)标志来改变。 如果使用了[`LOCALE`](https://docs.python.org/3/library/re.html#re.LOCALE)标志，字的边界由当前的地域决定。

- `\d`

  For Unicode (str) patterns:Matches any Unicode decimal digit (that is, any character in Unicode character category [Nd]).  This includes `[0-9]`, and also many other digit characters.  If the [`ASCII`](https://docs.python.org/3/library/re.html#re.ASCII) flag is used only `[0-9]` is matched. For 8-bit (bytes) patterns:Matches any decimal digit; this is equivalent to `[0-9]`.

- `\D`

  Matches any character which is not a decimal digit. This is the opposite of `\d`. If the [`ASCII`](https://docs.python.org/3/library/re.html#re.ASCII) flag is used this becomes the equivalent of `[^0-9]`.

> - `\d`
>
>   对于Unicode（str）模式：匹配任何**Unicode十进制数字**（即Unicode字符类别[Nd]中的任何字符）。 这包括`[0-9]`，也包括许多其他数字字符。 如果使用[`ASCII`](https://docs.python.org/3/library/re.html#re.ASCII)标志，只匹配`[0-9]`。
>
>   对于8位（字节）模式：匹配任何十进制数字；这等同于`[0-9]`。
>
> - `\D`
>
>   匹配任何非十进制数字的字符。这与`\d`相反。如果使用[`ASCII`](https://docs.python.org/3/library/re.html#re.ASCII)标志，则相当于`[^0-9]`。

- `\s`

  For Unicode (str) patterns:Matches Unicode whitespace characters (which includes `[ \t\n\r\f\v]`, and also many other characters, for example the non-breaking spaces mandated by typography rules in many languages). If the [`ASCII`](https://docs.python.org/3/library/re.html#re.ASCII) flag is used, only `[ \t\n\r\f\v]` is matched. For 8-bit (bytes) patterns:Matches characters considered whitespace in the ASCII character set; this is equivalent to `[ \t\n\r\f\v]`.

- `\S`

  Matches any character which is not a whitespace character. This is the opposite of `\s`. If the [`ASCII`](https://docs.python.org/3/library/re.html#re.ASCII) flag is used this becomes the equivalent of `[^ \t\n\r\f\v]`.

> - `\s`
>
>   对于Unicode（str）模式：匹配**Unicode空白字符**（包括`[ \t\n\r\f\v]`，以及许多其他字符，例如许多语言的排版规则规定的非断裂空格）。如果使用[`ASCII`](https://docs.python.org/3/library/re.html#re.ASCII)标志，只有
>
>   `[ \t\n\r\f\v]`被匹配。
>
>   对于8位（字节）模式：匹配ASCII字符集中被认为是空白的字符；这相当于
>
>   `[ \t\n\r\f\v]`。
>
> - `\S`
>
>   匹配**任何不是空白字符的字符**。这与`\s`相反。如果使用[`ASCII`](https://docs.python.org/3/library/re.html#re.ASCII)标志，这就相当于
>   
>   `[^ \t\n\r\f\v]`。

- `\w`

  For Unicode (str) patterns:Matches Unicode word characters; this includes alphanumeric characters (as defined by [`str.isalnum()`](https://docs.python.org/3/library/stdtypes.html#str.isalnum)) as well as the underscore (`_`). If the [`ASCII`](https://docs.python.org/3/library/re.html#re.ASCII) flag is used, only `[a-zA-Z0-9_]` is matched. For 8-bit (bytes) patterns:Matches characters considered alphanumeric in the ASCII character set; this is equivalent to `[a-zA-Z0-9_]`.  If the [`LOCALE`](https://docs.python.org/3/library/re.html#re.LOCALE) flag is used, matches characters considered alphanumeric in the current locale and the underscore.

- `\W`

  Matches any character which is not a word character. This is the opposite of `\w`. If the [`ASCII`](https://docs.python.org/3/library/re.html#re.ASCII) flag is used this becomes the equivalent of `[^a-zA-Z0-9_]`.  If the [`LOCALE`](https://docs.python.org/3/library/re.html#re.LOCALE) flag is used, matches characters which are neither alphanumeric in the current locale nor the underscore.

> - `\w`
>
>   对于Unicode (str)模式：匹配**Unicode单词字符**；这包括字母数字字符（由[`str.isalnum()`](https://docs.python.org/3/library/stdtypes.html#str.isalnum)定义）以及下划线（`_`）。如果使用[`ASCII`](https://docs.python.org/3/library/re.html#re.ASCII)标志，只匹配`[a-zA-Z0-9_]`。
>
>   对于8位（字节）模式：匹配ASCII字符集中认为是字母数字的字符；这相当于`[a-zA-Z0-9_]`。 如果使用了[`LOCALE`](https://docs.python.org/3/library/re.html#re.LOCALE)标志，则匹配在当前地区视为字母数字的字符和下划线。
>
> - `\W`
>
>   匹配任何不属于单词的字符。这与`\w`相反。如果使用[`ASCII`](https://docs.python.org/3/library/re.html#re.ASCII)标志，这就相当于`[^a-zA-Z0-9_]`。 如果使用了[`LOCALE`](https://docs.python.org/3/library/re.html#re.LOCALE)标志，则匹配在当前区域内既不是字母数字也不是下划线的字符。

- `\Z`

  Matches only at the end of the string.

> - `\Z` 和`\A`一样需要仔细研究
>
>   只在**字符串的末尾**进行匹配。

Most of the standard escapes supported by Python string literals are also accepted by the regular expression parser:

```
\a      \b      \f      \n
\N      \r      \t      \u
\U      \v      \x      \\
```

(Note that `\b` is used to represent word boundaries, and means “backspace” only inside character classes.)

`'\u'`, `'\U'`, and `'\N'` escape sequences are only recognized in Unicode patterns.  In bytes patterns they are errors.  Unknown escapes of ASCII letters are reserved for future use and treated as errors.

Octal escapes are included in a limited form.  If the first digit is a 0, or if there are three octal digits, it is considered an octal escape. Otherwise, it is a group reference.  As for string literals, octal escapes are always at most three digits in length.

> Python 字符串支持的大多数标准转义也被正则表达式分析器所接受。
>
> ```
> \a      \b      \f      \n
> \N      \r      \t      \u
> \U      \v      \x      \\
> ```
>
> (注意，`\b`是用来表示**词的边界**的，只在**字符类**中表示 "退格（backspace）"。)
>
> `'\u'`, `'\U'`, 和`'\N'`的转义序列只在**Unicode模式**中被识别。 在字节模式中，它们是错误的。 ASCII字母的未知转义被保留给未来使用，并被视为错误。
>
> **八进制转义**以一种有限的形式被包括在内。 如果第一个数字是0，或者有三个八进制数字，它被认为是一个八进制转义。否则，它就是一个**分组引用**。 对于字符串字面，八进制转义的长度总是最多三位。

Changed in version 3.3: The `'\u'` and `'\U'` escape sequences have been added.

Changed in version 3.6: Unknown escapes consisting of `'\'` and an ASCII letter now are errors.

Changed in version 3.8: The `'\N{name}'` escape sequence has been added. As in string literals, it expands to the named Unicode character (e.g. `'\N{EM DASH}'`).

> 3.3版中的改动：增加了`'\u'`和`'\U'`的转义序列。
>
> 在3.6版中有所改变。由`'\'`和一个ASCII字母组成的未知转义现在是错误的。
>
> 在3.8版中进行了修改。增加了`'\N{name}'`转义序列。如同在字符串字面中一样，它可以扩展到指定的Unicode字符（例如：`'N{EM DASH}'`）。



疑问：

POSIX中关于正则表达式的标准

locale是什么

ASCII

Unicode

[PCRE](https://en.wikipedia.org/wiki/Perl_Compatible_Regular_Expressions)

Perl regexes



### Module Contents

The module defines several functions, constants, and an exception. Some of the functions are simplified versions of the full featured methods for compiled regular expressions.  Most non-trivial applications always use the compiled form.

> 该模块定义了几个**函数**、**常数**和一个**异常**。一些函数是用于编译**正则表达式的全功能方法**的简化版本。 大多数非微不足道的应用总是使用编译后的形式。

#### Flags

