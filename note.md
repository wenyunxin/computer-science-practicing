# computer-science-practicing
computer science learning and practicing, apply computer science in daily life and work.



## Part1 Value & Value Operator

计算程序主要由两个最基本的成分构成：
> **运算**（Evaluation）
> **流程控制**（Control Flow）

函数的调用，也是控制流程，可以**把函数看作是 “子程序”**；

### Value

在程序中，被运算（**Evaluate**）的可分为**常量**（Literals）和**变量**（Variables）
```bash
a = 1 + 2 * 3
a += 1
print(a)
```

上面代码中，`1`、`2`、`3`，都是**常量**。*Literal*的意思是“字面的”，顾名思义，常量的值就是它字面上的值。`1` 的值，就是 1

第 1 句中的 `+`、`*`，是**操作符**（Operators），它用来对其左右的值进行相应的*运算*而后得到一个值。

*值*是程序的基础成分（Building blocks），就像盖房子的砖块

*常量*，当然有个*值*——就是它们字面所表达的值

在 Python 中每个函数都有*返回值*，即便你在定义一个函数的时候没有设定返回值，它也会加上默认的返回值 `None`

### Types of Values

在编程语言中，总是包含最基本的三种数据类型：

> - 布尔值（Boolean Value)
> - 数字（Numbers）：整数（Int）、浮点数（Float）、复数（Complex Numbers）
> - 字符串（Strings）

既然有不同类型的数据，它们就分别对应着不同类型的值。

**Type Casting**（类型转换）：

> - 将字符串转换为数字用 `int()`、`float()`；
> - 将数字转换成字符串用 `str()`；

### Operator

针对不同的数据类型，有各自专用的**操作符**，Python官方文档的完整操作符优先级列表：

> https://docs.python.org/3/reference/expressions.html#operator-precedence

大体上是数值操作符的优先级大于逻辑操作符，大于布尔运算操作符的优先级

所有的操作符，在 Python 内部也是调用函数完成的：https://docs.python.org/3.7/library/operator.html



### Container

String, List, Array, Set, Dictionary



### 更复杂的运算

Python中更复杂的运算由内置函数（[Built-in Functions](https://docs.python.org/3/library/functions.html)）完成：

| (                                                            | Python                                                       | Built-in                                                     | Functions                                                    | )                                                            |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| [abs()](https://docs.python.org/3/library/functions.html#abs) | [delattr()](https://docs.python.org/3/library/functions.html#delattr) | [hash()](https://docs.python.org/3/library/functions.html#hash) | [memoryview()](https://docs.python.org/3/library/functions.html#func-memoryview) | [set()](https://docs.python.org/3/library/functions.html#func-set) |
| [all()](https://docs.python.org/3/library/functions.html#all) | [dict()](https://docs.python.org/3/library/functions.html#func-dict) | [help()](https://docs.python.org/3/library/functions.html#help) | [min()](https://docs.python.org/3/library/functions.html#min) | [setattr()](https://docs.python.org/3/library/functions.html#setattr) |
| [any()](https://docs.python.org/3/library/functions.html#any) | [dir()](https://docs.python.org/3/library/functions.html#dir) | [hex()](https://docs.python.org/3/library/functions.html#hex) | [next()](https://docs.python.org/3/library/functions.html#next) | [slice()](https://docs.python.org/3/library/functions.html#slice) |
| [ascii()](https://docs.python.org/3/library/functions.html#ascii) | [divmod()](https://docs.python.org/3/library/functions.html#divmod) | [id()](https://docs.python.org/3/library/functions.html#id)  | [object()](https://docs.python.org/3/library/functions.html#object) | [sorted()](https://docs.python.org/3/library/functions.html#sorted) |
| [bin()](https://docs.python.org/3/library/functions.html#bin) | [enumerate()](https://docs.python.org/3/library/functions.html#enumerate) | [input()](https://docs.python.org/3/library/functions.html#input) | [oct()](https://docs.python.org/3/library/functions.html#oct) | [staticmethod()](https://docs.python.org/3/library/functions.html#staticmethod) |
| [bool()](https://docs.python.org/3/library/functions.html#bool) | [eval()](https://docs.python.org/3/library/functions.html#eval) | [int()](https://docs.python.org/3/library/functions.html#int) | [open()](https://docs.python.org/3/library/functions.html#open) | [str()](https://docs.python.org/3/library/functions.html#func-str) |
| [breakpoint()](https://docs.python.org/3/library/functions.html#breakpoint) | [exec()](https://docs.python.org/3/library/functions.html#exec) | [isinstance()](https://docs.python.org/3/library/functions.html#isinstance) | [ord()](https://docs.python.org/3/library/functions.html#ord) | [sum()](https://docs.python.org/3/library/functions.html#sum) |
| [bytearray()](https://docs.python.org/3/library/functions.html#func-bytearray) | [filter()](https://docs.python.org/3/library/functions.html#filter) | [issubclass()](https://docs.python.org/3/library/functions.html#issubclass) | [pow()](https://docs.python.org/3/library/functions.html#pow) | [super()](https://docs.python.org/3/library/functions.html#super) |
| [bytes()](https://docs.python.org/3/library/functions.html#func-bytes) | [float()](https://docs.python.org/3/library/functions.html#float) | [iter()](https://docs.python.org/3/library/functions.html#iter) | [print()](https://docs.python.org/3/library/functions.html#print) | [tuple()](https://docs.python.org/3/library/functions.html#func-tuple) |
| [callable()](https://docs.python.org/3/library/functions.html#callable) | [format()](https://docs.python.org/3/library/functions.html#format) | [len()](https://docs.python.org/3/library/functions.html#len) | [property()](https://docs.python.org/3/library/functions.html#property) | [type()](https://docs.python.org/3/library/functions.html#type) |
| [chr()](https://docs.python.org/3/library/functions.html#chr) | [frozenset()](https://docs.python.org/3/library/functions.html#func-frozenset) | [list()](https://docs.python.org/3/library/functions.html#func-list) | [range()](https://docs.python.org/3/library/functions.html#func-range) | [vars()](https://docs.python.org/3/library/functions.html#vars) |
| [classmethod()](https://docs.python.org/3/library/functions.html#classmethod) | [getattr()](https://docs.python.org/3/library/functions.html#getattr) | [locals()](https://docs.python.org/3/library/functions.html#locals) | [repr()](https://docs.python.org/3/library/functions.html#repr) | [zip()](https://docs.python.org/3/library/functions.html#zip) |
| [compile()](https://docs.python.org/3/library/functions.html#compile) | [globals()](https://docs.python.org/3/library/functions.html#globals) | [map()](https://docs.python.org/3/library/functions.html#map) | [reversed()](https://docs.python.org/3/library/functions.html#reversed) | [**import**()](https://docs.python.org/3/library/functions.html#__import__) |
| [complex()](https://docs.python.org/3/library/functions.html#complex) | [hasattr()](https://docs.python.org/3/library/functions.html#hasattr) | [max()](https://docs.python.org/3/library/functions.html#max) | [round()](https://docs.python.org/3/library/functions.html#round) |                                                              |

但有些更高级的运算，需要借助标准库（[Standard Library](https://docs.python.org/3/library/index.html)）来完成，如调用标准库（Standard Library）中的 math 模块（Module）来完成三角函数的计算

```bash
import math
math.sin(5)
```

代码 `math.sin(5)` 这里的 `.`，也可以被理解为 “操作符”，它的作用是：

> 从其它模块中调用函数。

其实就是属性引用（attribute reference），可以理解为`sin`函数是`math`这个标准库的一个属性。属性（`attribute`）有特征（`property`？）属性（名词性属性）和方法（`method`）属性（动词性属性）

`attribute`这个概念原本在类`Class`的定义中表达的。



### 关于布尔值的补充

这是因为 Python 将 `True` 定义为：

> By default, an object is considered true unless its class defines either a __bool__() method that returns `False` or a __len__() method that returns zero, when called with the object.
>
> https://docs.python.org/3/library/stdtypes.html#truth-value-testing

这一段文字，初学者是看不懂的。但下一段就好理解了：

> Here are most of the built-in objects considered `False`:
>
> > - constants defined to be false: `None` and `False`.
> > - zero of any numeric type: `0`, `0.0`, `0j`, `Decimal(0)`, `Fraction(0, 1)`
> > - empty sequences and collections: `''`, `()`, `[]`, `{}`, `set()`, `range(0)`

所以，`'Python'` 是个非空的字符串，即，不属于是 `empty sequences`，所以它不被认为是 `False`，即，它的布尔值是 `True`

于是，这么理解就轻松了：

> 每个变量或者常量，除了它们的值之外，同时还相当于有一个对应的布尔值。

### 关于值的类型的补充

除了数字、布尔值、字符串，以及上一小节介绍的列表之外，还有若干数据类型，比如 `range()`（等差数列）、`tuple`（元组）、`set`（集合）、`dictionary`（字典），再比如 `Date Type`（日期）等等。

他们之间有时候也需要进行相应的Type Casting

复杂数学计算的库：https://docs.python.org/3/library/math.html



## Part1 control flow

流程控制分为*分支*和*循环*

分支，一般用`if...else`的表达式

循环有两种，一种是`for`循环，一种是`while`循环

循环中的`continue`，`break`，`pass`

`for`循环是**以集合为基础的循环**

`while`循环是**以条件为基础的循环**

> 有控制流，才能算得上是程序；函数从控制流角度去看其实就是子程序



## Part1 Function

f-string 功能？

flie=sys.stdout? sys.stdout?

flush?

花一点时间阅读官方文档

原来 `print()` 这个函数是可以往文件里写数据的，只要指定 `file` 这个参数为一个已经打开的文件对象就可以了——那么如何操作呢？

作为函数的使用这，必须阅读函数使用说明

“这就好像你拿着一张地图，不可能一下子掌握其中所有的细节，但花几分钟搞清楚 “图例”（Legend）部分总是可以的，知道什么样的线标示的是公交车，什么样的线标示的是地铁，什么样的线标示的是桥梁，然后知道上北下南左西右东 —— 这之后，就可以开始慢慢研究地图了……”

文档的图示非常重要，这是读懂文档的基础。

## Part1 String

"程序的主要功能就是要完成人机交互，因而处理字符串是计算机程序最普遍的需求"。

浮点数的精度处理问题，查阅[关于decimal模块的文档](https://docs.python.org/3/library/decimal.html)。

字符串是有序容器（sequence container）,`[]`是有序容器的*索引操作符*（index operator）

[关于字母大小写的文章]( https://www.b-list.org/weblog/2018/nov/26/case/)

### 使用`str.zfill()`方法批量生成文件名

例子：

```python
for i in range(1, 11):
    filename = str(i).zfill(3) + '.mp3'
    print(filename)
```

### 格式化字符串

`str.format()`

tip: # 两个连续使用的大括号，不被认为是占位符；且只打印出一对大括号；# "%s is %d years old." % (name, age)



`f-string`

```python
name = 'John'
age = 25
f'{name} is {age} years old.'
f'{name} is a grown up? {age >= 18}'
```



'-' 相减操作符只适用于集合容器

```python
{'Py','thon'} - {'thon'}    # operator '-' only apply to set continer
```



## Part1 containers

数据容器里的数据是可迭代的（iterable）

in all container of Python, Sequence Type: String, range(), List, Tuple, Bytes

Set: Set, Frozen Set; map: Dictionary; in all of thoes, mutable container: List, Set, Dictionary, the rest of thoes are immutable.

“列表中的元素可以是不同类型。不过，在解决现实问题的时候，我们总是倾向于创建由同一个类型的数据构成的列表。遇到由不同类型数据构成的列表，我们更可能做的是想办法把不同类型的数据分门别类地拆分出来，整理清楚 —— 这种工作甚至有个专门的名称与之关联：*数据清洗*。

[List Comprehensions](https://docs.python.org/3.7/tutorial/datastructures.html#tut-listcomps)：列表生成式

根据列表索引删除元素用del

> "字符串常量（String Literal）是不可变有序容器，所以，虽然字符串也有一些 Methods 可用，但那些 Methods 都不改变它们自身，而是在操作后返回一个值给另外一个变量。"

对列表使用`sort()`方法后直接覆盖原来变量

列表的浅拷贝是直接使用`a.copy()`方法，拷贝后的变量与原变量独立，对拷贝后的变量的修改不对原变量产生影响

### Tuple

单个元素的tuple，需要在元素后面加一个逗号：

```python
c = tupel(1,)
```

"可在元组末尾追加元素。所以，严格意义上，对元组来讲，“不可变” 的意思是说，“**当前已有部分不可变**”……"

“从计算机的角度来看，Tuple 相对于 List 占用更小的内存。”

“range()` 函数返回的等差数列就是一个 Tuple —— `range(6)` 就相当于 `(0, 1, 2, 3, 4, 5)”

### Set

集合是包含无序不重复元素的容器；

注意：创建空集合的时候，必须用 `set()`，而不能用 `{}`:

也可以将序列数据转换（Casting）为集合。转换后，返回的是一个已**去重**的集合。

“对于集合，推荐更多使用 Methods 而不是操作符的主要原因是：更易读 —— 对人来说，因为有意义、有用处的代码终将需要人去维护。”

frozonset的文档：https://docs.python.org/3/library/stdtypes.html#frozenset

### Dictionary

`del` 删除，是一个删除语句

## part1 files

打开文件的with语句

用函数结合文件操作语句来处理文件

## Part1 deal with forward references

[forward declaration](https://en.wikipedia.org/wiki/Forward_declaration#id=Forward_reference)

不懂也要读完，并且要反复读很多遍

磨炼“只字不差”的能力，“尤其是当你在阅读一个重要概念的定义之时”

反复做整理归纳

善于学习的好例子：https://nvie.com/posts/iterators-vs-generators/

过早引用的案例，释迦牟尼打坐了六年，向他人说明打坐的好处。今天有对[Meditation](https://en.wikipedia.org/wiki/Meditation)系统的研究。

代码规范：如何为变量命名，如何组织代码

阅读官方文档，将来你在学习任何新软件包（库）、语言更新后的新特性、甚至另外一个新语言的时候，都要这么做

## 笨拙与耐心

自学的过程的四个阶段：

> 学-练-用-造

学的阶段靠重复，整理归纳总结；练的阶段和用的阶段相结合，以用带练；投入足够的时间预算，正所谓：

> 人生很长，何必惊慌

## deliberate-practicing 刻意练习

“刻意思考哪些四方我应该去刻意练习”

githun上的Python官方文档仓库，Tools/demo的练习

```python
# beer.py
import sys

n = 100
if sys.argv[1:]:
    n = int(sys.argv[1])

def bottle(n):
    if n == 0: return "no more bottles of beer"
    if n == 1: return "one bottle of beer"
    return str(n) + " bottles of beer"

for i in range(n, 0, -1):
    print(bottle(i), "on the wall,")
    print(bottle(i) + ".")
    print("Take one down, pass it around,")
    print(bottle(i-1), "on the wall.")
```

`sys` （This module provides access to some variables used or maintained by the interpreter and to functions that interact strongly with the interpreter. It is always available.该模块提供了对解释器使用或维护的一些变量的访问，以及对与解释器强烈互动的函数的访问。它总是可用的。）是Python Library里的内置模块（module），`sys.argv`是该模块里的一个方法属性（method）。

```python
# eiffel.py

"""
Support Eiffel-style preconditions and postconditions for functions.

An example for Python metaclasses.
"""

import unittest
from types import FunctionType as function

class EiffelBaseMetaClass(type):

    def __new__(meta, name, bases, dict):
        meta.convert_methods(dict)
        return super(EiffelBaseMetaClass, meta).__new__(
            meta, name, bases, dict)

    @classmethod
    def convert_methods(cls, dict):
        """Replace functions in dict with EiffelMethod wrappers.

        The dict is modified in place.

        If a method ends in _pre or _post, it is removed from the dict
        regardless of whether there is a corresponding method.
        """
        # find methods with pre or post conditions
        methods = []
        for k, v in dict.items():
            if k.endswith('_pre') or k.endswith('_post'):
                assert isinstance(v, function)
            elif isinstance(v, function):
                methods.append(k)
        for m in methods:
            pre = dict.get("%s_pre" % m)
            post = dict.get("%s_post" % m)
            if pre or post:
                dict[m] = cls.make_eiffel_method(dict[m], pre, post)


class EiffelMetaClass1(EiffelBaseMetaClass):
    # an implementation of the "eiffel" meta class that uses nested functions

    @staticmethod
    def make_eiffel_method(func, pre, post):
        def method(self, *args, **kwargs):
            if pre:
                pre(self, *args, **kwargs)
            rv = func(self, *args, **kwargs)
            if post:
                post(self, rv, *args, **kwargs)
            return rv

        if func.__doc__:
            method.__doc__ = func.__doc__

        return method


class EiffelMethodWrapper:

    def __init__(self, inst, descr):
        self._inst = inst
        self._descr = descr

    def __call__(self, *args, **kwargs):
        return self._descr.callmethod(self._inst, args, kwargs)


class EiffelDescriptor:

    def __init__(self, func, pre, post):
        self._func = func
        self._pre = pre
        self._post = post

        self.__name__ = func.__name__
        self.__doc__ = func.__doc__

    def __get__(self, obj, cls=None):
        return EiffelMethodWrapper(obj, self)

    def callmethod(self, inst, args, kwargs):
        if self._pre:
            self._pre(inst, *args, **kwargs)
        x = self._func(inst, *args, **kwargs)
        if self._post:
            self._post(inst, x, *args, **kwargs)
        return x


class EiffelMetaClass2(EiffelBaseMetaClass):
    # an implementation of the "eiffel" meta class that uses descriptors

    make_eiffel_method = EiffelDescriptor


class Tests(unittest.TestCase):

    def testEiffelMetaClass1(self):
        self._test(EiffelMetaClass1)

    def testEiffelMetaClass2(self):
        self._test(EiffelMetaClass2)

    def _test(self, metaclass):
        class Eiffel(metaclass=metaclass):
            pass

        class Test(Eiffel):
            def m(self, arg):
                """Make it a little larger"""
                return arg + 1

            def m2(self, arg):
                """Make it a little larger"""
                return arg + 1

            def m2_pre(self, arg):
                assert arg > 0

            def m2_post(self, result, arg):
                assert result > arg

        class Sub(Test):
            def m2(self, arg):
                return arg**2

            def m2_post(self, Result, arg):
                super(Sub, self).m2_post(Result, arg)
                assert Result < 100

        t = Test()
        self.assertEqual(t.m(1), 2)
        self.assertEqual(t.m2(1), 2)
        self.assertRaises(AssertionError, t.m2, 0)

        s = Sub()
        self.assertRaises(AssertionError, s.m2, 1)
        self.assertRaises(AssertionError, s.m2, 10)
        self.assertEqual(s.m2(5), 25)


if __name__ == "__main__":
    unittest.main()

```

`Support Eiffel-style preconditions and postconditions for functions.`是什么意思？

`metaclass`
