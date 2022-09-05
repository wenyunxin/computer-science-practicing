[toc]



# Arithmetic logic unit (ALU)

In [computing](https://en.wikipedia.org/wiki/Computing), an [**arithmetic logic unit**](https://en.wikipedia.org/wiki/Arithmetic_logic_unit) (**ALU**) is a [combinational](https://en.wikipedia.org/wiki/Combinational_logic) [digital circuit](https://en.wikipedia.org/wiki/Digital_circuit) that performs [arithmetic](https://en.wikipedia.org/wiki/Arithmetic) and [bitwise operations](https://en.wikipedia.org/wiki/Bitwise_operation) on [integer](https://en.wikipedia.org/wiki/Integer) [binary numbers](https://en.wikipedia.org/wiki/Binary_number).[[1\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-A.P.GodseD.A.Godse2009-1)[[2\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-let2pt-2)[[3\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-A.P.GodseD.A.Godse2009-2-3) This is in contrast to a [floating-point unit](https://en.wikipedia.org/wiki/Floating-point_unit) (FPU), which operates on [floating point](https://en.wikipedia.org/wiki/Floating_point) numbers. It is a fundamental building block of many types of computing circuits, including the [central processing unit](https://en.wikipedia.org/wiki/Central_processing_unit) (CPU) of computers, FPUs, and [graphics processing units](https://en.wikipedia.org/wiki/Graphics_processing_unit) (GPUs).[[4\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-4)

The inputs to an ALU are the data to be operated on, called [operands](https://en.wikipedia.org/wiki/Operand), and a code indicating the operation to be performed; the ALU's output is the result of the performed operation. In many designs, the ALU also has status inputs or outputs, or both, which convey information about a previous operation or the current operation, respectively, between the ALU and external [status registers](https://en.wikipedia.org/wiki/Status_register).

> 在[计算](https://en.wikipedia.org/wiki/Computing)中，**算术逻辑单元**(**ALU**)是一个[组合](https://en.wikipedia.org/wiki/Combinational_logic)[数字电路](https://en.wikipedia.org/wiki/Digital_circuit)，对[整数](https://en.wikipedia.org/wiki/Integer)[二进制数](https://en.wikipedia.org/wiki/Binary_number)进行[算术](https://en.wikipedia.org/wiki/Arithmetic)和[位操作](https://en.wikipedia.org/wiki/Bitwise_operation)。[[1]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-A.P.GodseD.A.Godse2009-1)[[2]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-let2pt-2)[[3]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-A.P.GodseD.A.Godse2009-2-3)这与[浮点单元](https://en.wikipedia.org/wiki/Floating-point_unit)（FPU）相反，后者对[浮点](https://en.wikipedia.org/wiki/Floating_point)数进行操作。它是许多类型的计算电路的基本构件，包括计算机的[中央处理单元](https://en.wikipedia.org/wiki/Central_processing_unit)(CPU)、FPU和[图形处理单元](https://en.wikipedia.org/wiki/Graphics_processing_unit)(GPU)。[[4\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-4)
>
> ALU的输入是要操作的数据，称为[操作数](https://en.wikipedia.org/wiki/Operand)，以及表明要执行的操作的代码；ALU的输出是执行操作的结果。在许多设计中，ALU也有状态输入或输出，或者两者都有，它们分别在ALU和外部[状态寄存器](https://en.wikipedia.org/wiki/Status_register)之间传递关于先前操作或当前操作的信息。

a image of ALU:

<img src="H:\资料资源\regular-invest-on-evolution\编程课\计算机知识\reference pics\ALU_block.gif" alt="a image of ALU" style="zoom:67%;" />

A symbolic representation of an ALU and its input and output signals, indicated by arrows pointing into or out of the ALU, respectively. Each arrow represents one or more signals. Control signals enter from the left and status signals exit on the right; data flows from top to bottom.

> 一个ALU及其输入和输出信号的符号表示，分别由指向ALU内部或外部的箭头表示。每个箭头代表一个或多个信号。控制信号从左边进入，状态信号从右边退出；数据从上到下流动。



## Signals

An ALU has a variety of input and output [nets](https://en.wikipedia.org/wiki/Net_(electronics)), which are the [electrical conductors](https://en.wikipedia.org/wiki/Electrical_conductors) used to convey [digital signals](https://en.wikipedia.org/wiki/Digital_signal_(electronics)) between the ALU and external circuitry. When an ALU is operating, external circuits apply signals to the ALU inputs and, in response, the ALU produces and conveys signals to external circuitry via its outputs.

> 一个ALU有各种输入和输出[网](https://en.wikipedia.org/wiki/Net_(electronics))，这些网是用来在ALU和外部电路之间传递[数字信号](https://en.wikipedia.org/wiki/Digital_signal_(electronics))的[电导体](https://en.wikipedia.org/wiki/Electrical_conductors)。当ALU工作时，外部电路向ALU的输入端施加信号，作为回应，ALU产生并通过其输出端向外部电路传递信号。

### Data

A basic ALU has three parallel data [buses](https://en.wikipedia.org/wiki/Bus_(computing)) consisting of two input [operands](https://en.wikipedia.org/wiki/Operand) (*A* and *B*) and a result output (*Y*). Each data bus is a group of signals that conveys one binary integer number. Typically, the A, B and Y bus widths (the number of signals comprising each bus) are identical and match the native [word size](https://en.wikipedia.org/wiki/Word_size) of the external circuitry (e.g., the encapsulating CPU or other processor).

> 一个基本的ALU有三条并行的数据[总线](https://en.wikipedia.org/wiki/Bus_(计算))，由两个输入[操作数](https://en.wikipedia.org/wiki/Operand)（*A*和*B*）和一个结果输出（*Y*）组成。每条数据总线是一组信号，传达一个二进制整数。通常，A、B和Y总线的宽度（构成每条总线的信号数量）是相同的，并与外部电路（例如，封装的CPU或其他处理器）的本地[字大小](https://en.wikipedia.org/wiki/Word_size)相匹配。

### Opcode

The *opcode* input is a parallel bus that conveys to the ALU an operation selection code, which is an [enumerated value](https://en.wikipedia.org/wiki/Enumeration) that specifies the desired arithmetic or logic operation to be performed by the ALU. The opcode size (its bus width) determines the maximum number of different operations the ALU can perform; for example, a four-bit opcode can specify up to sixteen different ALU operations. Generally, an ALU opcode is not the same as a [machine language opcode](https://en.wikipedia.org/wiki/Opcode), though in some cases it may be directly encoded as a bit field within a machine language opcode.

> *opcode*输入是一条平行总线，它向ALU传达一个操作选择代码，这是一个[枚举值](https://en.wikipedia.org/wiki/Enumeration)，指定ALU要执行的所需算术或逻辑操作。操作码的大小（其总线宽度）决定了ALU可以执行的不同操作的最大数量；例如，一个四位操作码可以指定多达16个不同的ALU操作。一般来说，ALU操作码与[机器语言操作码](https://en.wikipedia.org/wiki/Opcode)不同，尽管在某些情况下，它可能直接被编码为机器语言操作码中的一个位域。

### Status

#### Outputs

The status outputs are various individual signals that convey supplemental information about the result of the current ALU operation. General-purpose ALUs commonly have status signals such as:

- *Carry-out*, which conveys the [carry](https://en.wikipedia.org/wiki/Carry_(arithmetic)) resulting from an addition operation, the borrow resulting from a subtraction operation, or the overflow bit resulting from a binary shift operation.
- *Zero*, which indicates all bits of Y are logic zero.
- *Negative*, which indicates the result of an arithmetic operation is negative.
- *[Overflow](https://en.wikipedia.org/wiki/Arithmetic_overflow)*, which indicates the result of an arithmetic operation has exceeded the numeric range of Y.
- *[Parity](https://en.wikipedia.org/wiki/Parity_flag)*, which indicates whether an even or odd number of bits in Y are logic one.

Upon completion of each ALU operation, the status output signals are usually stored in external registers to make them available for future ALU operations (e.g., to implement [multiple-precision arithmetic](https://en.wikipedia.org/wiki/Multiple-precision_arithmetic)) or for controlling [conditional branching](https://en.wikipedia.org/wiki/Branch_(computer_science)). The collection of bit registers that store the status outputs are often treated as a single, multi-bit register, which is referred to as the "status register" or "condition code register".

> 状态输出是各种单独的信号，传达关于当前ALU操作结果的**补充**信息。通用ALU通常有这样的状态信号：
>
> - *Carry-out*，传递加法运算产生的[carry](https://en.wikipedia.org/wiki/Carry_(arithmetic))，减法运算产生的borrow，或二进制移位操作产生的溢出位。
> - *Zero*，表示Y的所有位都是逻辑零。
> - *Negative*，表示一个算术运算的结果是负数。
> - *[Overflow](https://en.wikipedia.org/wiki/Arithmetic_overflow)*，表示算术运算的结果超出了Y的数字范围。
> - *[奇偶校验(Parity)](https://en.wikipedia.org/wiki/Parity_flag)*，表示Y中的偶数或奇数位是逻辑一。
>
> 在每个ALU操作完成后，状态输出信号通常被存储在外部寄存器中，使其可用于未来的ALU操作（例如，实现[多精度算术](https://en.wikipedia.org/wiki/Multiple-precision_arithmetic)）或控制[条件性分支](https://en.wikipedia.org/wiki/Branch_(computer_science)) 。存储状态输出的位寄存器的集合通常被视为一个单一的、多比特的寄存器，它被称为 "状态寄存器"或 "条件代码寄存器"。

#### Input

The status inputs allow additional information to be made available to the ALU when performing an operation. Typically, this is a single "carry-in" bit that is the stored carry-out from a previous ALU operation.

> 状态输入允许在执行操作时向ALU提供额外的信息。通常情况下，这是一个单一的 "带入"位，是之前ALU操作中存储的带出。

## Circuit operation

An ALU is a [combinational logic](https://en.wikipedia.org/wiki/Combinational_logic) circuit, meaning that its outputs will change asynchronously in response to input changes. In normal operation, stable signals are applied to all of the ALU inputs and, when enough time (known as the "[propagation delay](https://en.wikipedia.org/wiki/Propagation_delay)") has passed for the signals to propagate through the ALU circuitry, the result of the ALU operation appears at the ALU outputs. The external circuitry connected to the ALU is responsible for ensuring the stability of ALU input signals throughout the operation, and for allowing sufficient time for the signals to propagate through the ALU before sampling the ALU result.

> ALU是一个[组合逻辑](https://en.wikipedia.org/wiki/Combinational_logic)电路，意味着它的输出会随着输入的变化而发生异步变化。在正常操作中，稳定的信号被应用到所有的ALU输入端，当有足够的时间（称为"[传播延迟](https://en.wikipedia.org/wiki/Propagation_delay)"）让信号在ALU电路中传播时，ALU操作的结果会出现在ALU输出端。连接到ALU的外部电路负责确保ALU输入信号在整个操作过程中的稳定性，并在对ALU的结果进行采样之前，让信号有足够的时间传播到ALU。

The [combinational logic](https://en.wikipedia.org/wiki/Combinational_logic) circuitry of the [74181](https://en.wikipedia.org/wiki/74181) integrated circuit, which is a simple four-bit ALU:

<img src="H:\资料资源\regular-invest-on-evolution\编程课\计算机知识\reference pics\74181aluschematic.png" style="zoom: 80%;" />

In general, external circuitry controls an ALU by applying signals to its inputs. Typically, the external circuitry employs [sequential logic](https://en.wikipedia.org/wiki/Sequential_logic) to control the ALU operation, which is paced by a [clock signal](https://en.wikipedia.org/wiki/Clock_signal) of a sufficiently low frequency to ensure enough time for the ALU outputs to settle under worst-case conditions.

> 一般来说，外部电路通过向ALU的输入施加信号来控制ALU。通常，外部电路采用[顺序逻辑](https://en.wikipedia.org/wiki/Sequential_logic)来控制ALU的运行，它由一个频率足够低的[时钟信号](https://en.wikipedia.org/wiki/Clock_signal)来控制，以确保有足够的时间让ALU的输出在最坏情况下稳定下来。
>

For example, a CPU begins an ALU addition operation by routing operands from their sources (which are usually registers) to the ALU's operand inputs, while the [control unit](https://en.wikipedia.org/wiki/Control_unit) simultaneously applies a value to the ALU's opcode input, configuring it to perform addition. At the same time, the CPU also routes the ALU result output to a destination register that will receive the sum. The ALU's input signals, which are held stable until the next clock, are allowed to propagate through the ALU and to the destination register while the CPU waits for the next clock. When the next clock arrives, the destination register stores the ALU result and, since the ALU operation has completed, the ALU inputs may be set up for the next ALU operation.

> 例如，CPU开始进行ALU加法运算时，将操作数从其来源（通常是寄存器）路由到ALU的操作数输入，同时[控制单元](https://en.wikipedia.org/wiki/Control_unit)将一个值应用到ALU的操作码输入，配置它来执行加法。同时，CPU还将ALU的结果输出路由到一个目标寄存器，该寄存器将接收和。ALU的输入信号在下一个时钟之前保持稳定，在CPU等待下一个时钟的时候，允许其通过ALU和目标寄存器进行传播。当下一个时钟到来时，目标寄存器存储ALU的结果，由于ALU操作已经完成，ALU的输入可以为下一个ALU操作进行设置。

## Functions

A number of basic arithmetic and bitwise logic functions are commonly supported by ALUs. Basic, general purpose ALUs typically include these operations in their repertoires:[[1\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-A.P.GodseD.A.Godse2009-1)[[2\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-let2pt-2)[[3\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-A.P.GodseD.A.Godse2009-2-3)[[5\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-hh-5)

> ALU通常支持一些基本的算术和位逻辑功能。基本的、通用的ALU通常包括这些操作：[[1\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-A.P.GodseD.A.Godse2009-1) [[2\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-let2pt-2) [[3\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-A.P.GodseD.A.Godse2009-2-3) [[5\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-hh-5)

### Arithmetic operations

- *[Add](https://en.wikipedia.org/wiki/Binary_number#Addition)*: A and B are summed and the sum appears at Y and carry-out.
- *Add with carry*: A, B and carry-in are summed and the sum appears at Y and carry-out.
- *[Subtract](https://en.wikipedia.org/wiki/Binary_number#Subtraction)*: B is subtracted from A (or vice versa) and the difference appears at Y and carry-out. For this function, carry-out is effectively a "borrow" indicator. This operation may also be used to compare the magnitudes of A and B; in such cases the Y output may be ignored by the processor, which is only interested in the status bits (particularly zero and negative) that result from the operation.
- *Subtract with borrow*: B is subtracted from A (or vice versa) with borrow (carry-in) and the difference appears at Y and carry-out (borrow out).
- *Two's complement (negate)*: A (or B) is subtracted from zero and the difference appears at Y.
- *Increment*: A (or B) is increased by one and the resulting value appears at Y.
- *Decrement*: A (or B) is decreased by one and the resulting value appears at Y.
- *Pass through*: all bits of A (or B) appear unmodified at Y. This operation is typically used to determine the parity of the operand or whether it is zero or negative, or to load the operand into a processor register.

> - *[Add](https://en.wikipedia.org/wiki/Binary_number#Addition)*。A和B相加，“总和”出现在Y处，和一个“进位”输出。
> - *有进位的加法*。A、B和进位相加，“总和”出现在Y处，和一个“进位”输出。
> - *[减法](https://en.wikipedia.org/wiki/Binary_number#Subtraction)*。B被减去A（反之亦然），其差值出现在Y和“进位”输出。对于这个函数，carry-out实际上是一个 "借位"指示器。这个操作也可以用来比较A和B的大小；在这种情况下，Y的输出可以被处理器忽略，它只对操作产生的状态位（特别是零和负）感兴趣。
> - *带借位的减法*。B从A中减去（或反之），有进位输入（carry-in），差值出现在Y和carry-out（进位输出）。
> - *双补（否定）*。A（或B）被减去零，差值出现在Y处。
> - *增量*。A（或B）增加1，所得值出现在Y处。
> - *减量*。A（或B）减少1，结果值出现在Y处。
> - *传递*：该操作通常用于确定操作数的奇偶性，或确定其是否为零或负数，或将操作数加载到一个处理器寄存器。

### Bitwise logical operations

- *[AND](https://en.wikipedia.org/wiki/Bitwise_operation#AND)*: the bitwise AND of A and B appears at Y.
- *[OR](https://en.wikipedia.org/wiki/Bitwise_operation#OR)*: the bitwise OR of A and B appears at Y.
- *[Exclusive-OR](https://en.wikipedia.org/wiki/Bitwise_operation#XOR)*: the bitwise XOR of A and B appears at Y.
- *[Ones' complement](https://en.wikipedia.org/wiki/Bitwise_operation#NOT)*: all bits of A (or B) are inverted and appear at Y.

> - *[AND](https://en.wikipedia.org/wiki/Bitwise_operation#AND)*：A和B的逐位运算AND出现在Y处。
> - *[OR](https://en.wikipedia.org/wiki/Bitwise_operation#OR)*：A和B的逐位运算OR出现在Y处。
> - *[Exclusive-OR](https://en.wikipedia.org/wiki/Bitwise_operation#XOR)*：A和B的逐位运算XOR出现在Y处。
> - *[Ones' complement](https://en.wikipedia.org/wiki/Bitwise_operation#NOT)*：A（或B）的所有位都被倒置，并出现在Y处。

### Bit shift operations

ALU shift operations cause operand A (or B) to shift left or right (depending on the opcode) and the shifted operand appears at Y. Simple ALUs typically can shift the operand by only one bit position, whereas more complex ALUs employ [barrel shifters](https://en.wikipedia.org/wiki/Barrel_shifter) that allow them to shift the operand by an arbitrary number of bits in one operation. In all single-bit shift operations, the bit shifted out of the operand appears on carry-out; the value of the bit shifted into the operand depends on the type of shift.

- *[Arithmetic shift](https://en.wikipedia.org/wiki/Bitwise_operation#Arithmetic_shift)*: the operand is treated as a [two's complement](https://en.wikipedia.org/wiki/Two's_complement) integer, meaning that the most significant bit is a "sign" bit and is preserved.
- *[Logical shift](https://en.wikipedia.org/wiki/Bitwise_operation#Logical_shift)*: a logic zero is shifted into the operand. This is used to shift unsigned integers.
- *[Rotate](https://en.wikipedia.org/wiki/Bitwise_operation#Rotate)*: the operand is treated as a circular buffer of bits so its least and most significant bits are effectively adjacent.
- *[Rotate through carry](https://en.wikipedia.org/wiki/Bitwise_operation#Rotate_through_carry)*: the carry bit and operand are collectively treated as a circular buffer of bits.

> ALU的移位操作使操作数A（或B）向左或向右移位（取决于操作码），移位后的操作数出现在Y处。简单的ALU通常只能将操作数移到一个位上，而更复杂的ALU采用[桶式移位器](https://en.wikipedia.org/wiki/Barrel_shifter)，允许它们在一次操作中对操作数进行任意数量的移位。在所有的单比特移位操作中，从操作数中移出的比特出现在输出端；移入操作数的比特的值取决于移位的类型。
>
> - *[算术移位](https://en.wikipedia.org/wiki/Bitwise_operation#Arithmetic_shift)*：操作数被视为[二补](https://en.wikipedia.org/wiki/Two's_complement)整数，意味着最重要的位是 "符号"位并被保留下来。
> - *[逻辑移位](https://en.wikipedia.org/wiki/Bitwise_operation#Logical_shift)*：一个逻辑零被移到操作数中。这用于无符号整数的移位。
> - *[旋转](https://en.wikipedia.org/wiki/Bitwise_operation#Rotate)*：操作数被视为一个循环的比特缓冲区，因此其最小和最重要的比特实际上是相邻的。
> - *[通过进位旋转](https://en.wikipedia.org/wiki/Bitwise_operation#Rotate_through_carry)*：进位和操作数共同被视为一个循环的位缓冲区。

**Bit shift examples for an eight-bit ALU**

<img src="H:\资料资源\regular-invest-on-evolution\编程课\计算机知识\reference pics\shift operation.jpg"  />

## Application

### Multiple-precision arithmetic

In integer arithmetic computations, **multiple-precision arithmetic** is an algorithm that operates on integers which are larger than the ALU word size. To do this, the algorithm treats each operand as an ordered collection of ALU-size fragments, arranged from most-significant (MS) to least-significant (LS) or vice versa. For example, in the case of an 8-bit ALU, the 24-bit integer `0x123456` would be treated as a collection of three 8-bit fragments: `0x12` (MS), `0x34`, and `0x56` (LS). Since the size of a fragment exactly matches the ALU word size, the ALU can directly operate on this "piece" of operand.

> 在整数算术计算中，**多精度算术**是一种对大于ALU字大小的整数进行运算的算法。为此，该算法将每个操作数视为ALU大小片段的有序集合，从最重要（MS）到最不重要（LS）排列，反之亦然。例如，在8位ALU的情况下，24位整数`0x123456`将被视为三个8位片段的集合。`0x12`（MS），`0x34`，和`0x56`（LS）。由于片段的大小与ALU字大小完全匹配，ALU可以直接对操作数的这个 "片段"进行操作。
>

The algorithm uses the ALU to directly operate on particular operand fragments and thus generate a corresponding fragment (a "partial") of the multi-precision result. Each partial, when generated, is written to an associated region of storage that has been designated for the multiple-precision result. This process is repeated for all operand fragments so as to generate a complete collection of partials, which is the result of the multiple-precision operation.

> 该算法使用ALU直接对特定的操作数片段进行操作，从而产生多精度结果的相应片段（"部分"）。每个部分产生后，被写入指定用于多精度结果的相关存储区域。这个过程对所有操作数片段重复进行，以产生一个完整的部分集合，这就是多精度操作的结果。

In arithmetic operations (e.g., addition, subtraction), the algorithm starts by invoking an ALU operation on the operands' LS fragments, thereby producing both a LS partial and a carry out bit. The algorithm writes the partial to designated storage, whereas the processor's state machine typically stores the carry out bit to an ALU status register. The algorithm then advances to the next fragment of each operand's collection and invokes an ALU operation on these fragments along with the stored carry bit from the previous ALU operation, thus producing another (more significant) partial and a carry out bit. As before, the carry bit is stored to the status register and the partial is written to designated storage. This process repeats until all operand fragments have been processed, resulting in a complete collection of partials in storage, which comprise the multi-precision arithmetic result.

> 在算术运算中（例如，加法，减法），算法开始于对操作数的LS片段调用ALU操作，从而产生一个LS部分和一个"进位"输出。该算法将部分内容写入指定的存储空间，而处理器的状态机通常将"进位"输出存储到ALU状态寄存器中。然后算法推进到每个操作数集合的下一个片段，并在这些片段上调用ALU操作，同时从之前的ALU操作中存储进位，从而产生另一个（更重要的）部分和进位。和以前一样，进位被存储到状态寄存器中，部分被写入指定的存储器中。这个过程重复进行，直到所有的操作数片段都被处理完毕，从而在存储器中产生一个完整的部分集合，其中包括多精度算术结果。

In multiple-precision shift operations, the order of operand fragment processing depends on the shift direction. In left-shift operations, fragments are processed LS first because the LS bit of each partial—which is conveyed via the stored carry bit—must be obtained from the MS bit of the previously left-shifted, less-significant operand. Conversely, operands are processed MS first in right-shift operations because the MS bit of each partial must be obtained from the LS bit of the previously right-shifted, more-significant operand.

> 在多精度移位操作中，操作数片段的处理顺序取决于移位方向。在左移操作中，片段首先被处理为LS，因为每个部分的LS位--通过存储的进位传达--必须从先前左移的、较不重要的操作数的MS位获得。相反，在右移操作中，操作数首先被处理为MS，因为每个部分的MS位必须从先前右移的、更重要的操作数的LS位中获得。
>

In bitwise logical operations (e.g., logical AND, logical OR), the operand fragments may be processed in any arbitrary order because each partial depends only on the corresponding operand fragments (the stored carry bit from the previous ALU operation is ignored).

> 在位逻辑运算中（例如，逻辑AND，逻辑OR），操作数片段可以按任意顺序处理，因为每个部分只取决于相应的操作数片段（来自前一个ALU运算的存储进位被忽略）。

### Complex operations

Although an ALU can be designed to perform complex functions, the resulting higher circuit complexity, cost, power consumption and larger size makes this impractical in many cases. Consequently, ALUs are often limited to simple functions that can be executed at very high speeds (i.e., very short propagation delays), and the external processor circuitry is responsible for performing complex functions by orchestrating a sequence of simpler ALU operations.

> 尽管ALU可以被设计成执行复杂的功能，但由此产生的较高的电路复杂性、成本、功耗和较大的尺寸使得这在许多情况下是不现实的。因此，ALU通常被限制在可以以非常高的速度（即非常短的传播延迟）执行的简单功能上，外部处理器电路负责通过协调较简单的ALU操作序列来执行复杂功能。

For example, computing the square root of a number might be implemented in various ways, depending on ALU complexity:

- *Calculation in a [single clock](https://en.wikipedia.org/wiki/Clock_cycle)*: a very complex ALU that calculates a square root in one operation.
- *[Calculation pipeline](https://en.wikipedia.org/wiki/Pipeline_(computing))*: a group of simple ALUs that calculates a square root in stages, with intermediate results passing through ALUs arranged like a factory [production line](https://en.wikipedia.org/wiki/Assembly_line). This circuit can accept new operands before finishing the previous ones and produces results as fast as the very complex ALU, though the results are delayed by the sum of the propagation delays of the ALU stages. For more information, see the article on [instruction pipelining](https://en.wikipedia.org/wiki/Instruction_pipelining).
- *Iterative calculation*: a simple ALU that calculates the square root through several steps under the direction of a [control unit](https://en.wikipedia.org/wiki/Control_unit).

The implementations above transition from fastest and most expensive to slowest and least costly. The square root is calculated in all cases, but processors with simple ALUs will take longer to perform the calculation because multiple ALU operations must be performed.

> 例如，计算一个数字的平方根可能以不同的方式实现，这取决于ALU的复杂性：
>
> - *[单时钟计算](https://en.wikipedia.org/wiki/Clock_cycle)*：一个非常复杂的ALU，在一次操作中计算一个平方根。
> - *[计算管道](https://en.wikipedia.org/wiki/Pipeline_(computing))*：一组简单的ALU，分阶段计算平方根，中间的结果要经过像工厂[生产线](https://en.wikipedia.org/wiki/Assembly_line)一样排列的ALU。这个电路可以在完成前一个操作数之前接受新的操作数，产生的结果与非常复杂的ALU一样快，尽管结果被ALU各阶段的传播延迟之和所延迟。更多信息请参见[指令流水线](https://en.wikipedia.org/wiki/Instruction_pipelining)一文。
> - *迭代计算*：一个简单的ALU，在[控制单元](https://en.wikipedia.org/wiki/Control_unit)的指导下通过几个步骤计算平方根。
>
> 以上的实现方式从最快和最贵的过渡到最慢和最便宜的。在所有情况下都计算平方根，但是具有简单ALU的处理器将需要更长的时间来进行计算，因为必须执行多个ALU操作。

## Implementation

An ALU is usually implemented either as a stand-alone [integrated circuit](https://en.wikipedia.org/wiki/Integrated_circuit) (IC), such as the [74181](https://en.wikipedia.org/wiki/74181), or as part of a more complex IC. In the latter case, an ALU is typically instantiated by synthesizing it from a description written in [VHDL](https://en.wikipedia.org/wiki/VHDL), [Verilog](https://en.wikipedia.org/wiki/Verilog) or some other [hardware description language](https://en.wikipedia.org/wiki/Hardware_description_language). For example, the following VHDL code describes a very simple [8-bit](https://en.wikipedia.org/wiki/8-bit) ALU:

> 一个ALU通常是作为一个独立的[集成电路](https://en.wikipedia.org/wiki/Integrated_circuit)(IC)实现的，例如[74181](https://en.wikipedia.org/wiki/74181)，或者作为一个更复杂的IC的一部分。在后一种情况下，ALU通常是通过用[VHDL](https://en.wikipedia.org/wiki/VHDL)、[Verilog](https://en.wikipedia.org/wiki/Verilog)或其他[硬件描述语言](https://en.wikipedia.org/wiki/Hardware_description_language)编写的描述进行综合实例化的。例如，下面的VHDL代码描述了一个非常简单的[8位](https://en.wikipedia.org/wiki/8-bit)ALU。

```vhdl
entity alu is
port (  -- the alu connections to external circuitry:
  A  : in signed(7 downto 0);   -- operand A
  B  : in signed(7 downto 0);   -- operand B
  OP : in unsigned(2 downto 0); -- opcode
  Y  : out signed(7 downto 0));  -- operation result
end alu;

architecture behavioral of alu is
begin
 case OP is  -- decode the opcode and perform the operation:
 when "000" =>  Y <= A + B;   -- add
 when "001" =>  Y <= A - B;   -- subtract
 when "010" =>  Y <= A - 1;   -- decrement
 when "011" =>  Y <= A + 1;   -- increment
 when "100" =>  Y <= not A;   -- 1's complement
 when "101" =>  Y <= A and B; -- bitwise AND
 when "110" =>  Y <= A or B;  -- bitwise OR
 when "111" =>  Y <= A xor B; -- bitwise XOR
 when others => Y <= (others => 'X');
 end case;
end behavioral;
```



## History

Mathematician [John von Neumann](https://en.wikipedia.org/wiki/John_von_Neumann) proposed the ALU concept in 1945 in a report on the foundations for a new computer called the [EDVAC](https://en.wikipedia.org/wiki/EDVAC).[[6\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-6)

The cost, size, and power consumption of electronic circuitry was relatively high throughout the infancy of the [information age](https://en.wikipedia.org/wiki/Information_age). Consequently, all [serial computers](https://en.wikipedia.org/wiki/Serial_computer) and many early computers, such as the [PDP-8](https://en.wikipedia.org/wiki/PDP-8), had a simple ALU that operated on one data bit at a time, although they often presented a wider word size to programmers. One of the earliest computers to have multiple discrete single-bit ALU circuits was the 1948 [Whirlwind I](https://en.wikipedia.org/wiki/Whirlwind_I), which employed sixteen such "math units" to enable it to operate on 16-bit words.

In 1967, [Fairchild](https://en.wikipedia.org/wiki/Fairchild_Semiconductor) introduced the first ALU implemented as an integrated circuit, the Fairchild 3800, consisting of an eight-bit ALU with accumulator.[[7\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-7) Other integrated-circuit ALUs soon emerged, including four-bit ALUs such as the [Am2901](https://en.wikipedia.org/wiki/AMD_Am2900) and [74181](https://en.wikipedia.org/wiki/74181). These devices were typically "[bit slice](https://en.wikipedia.org/wiki/Bit_slicing)" capable, meaning they had "carry look ahead" signals that facilitated the use of multiple interconnected ALU chips to create an ALU with a wider word size. These devices quickly became popular and were widely used in bit-slice minicomputers.

Microprocessors began to appear in the early 1970s. Even though transistors had become smaller, there was often insufficient die space for a full-word-width ALU and, as a result, some early microprocessors employed a narrow ALU that required multiple cycles per machine language instruction. Examples of this includes the popular [Zilog Z80](https://en.wikipedia.org/wiki/Zilog_Z80), which performed eight-bit additions with a four-bit ALU.[[8\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-8) Over time, transistor geometries shrank further, following [Moore's law](https://en.wikipedia.org/wiki/Moore's_law), and it became feasible to build wider ALUs on microprocessors.

Modern integrated circuit (IC) transistors are orders of magnitude smaller than those of the early microprocessors, making it possible to fit highly complex ALUs on ICs. Today, many modern ALUs have wide word widths, and architectural enhancements such as [barrel shifters](https://en.wikipedia.org/wiki/Barrel_shifter) and [binary multipliers](https://en.wikipedia.org/wiki/Binary_multiplier) that allow them to perform, in a single clock cycle, operations that would have required multiple operations on earlier ALUs.

ALUs can be realized as [mechanical](https://en.wikipedia.org/wiki/Mechanical_computer), [electro-mechanical](https://en.wikipedia.org/wiki/Mechanical_computer#Electro-mechanical_computers) or [electronic](https://en.wikipedia.org/wiki/Electronic_circuit) circuits[[9\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-9)[*[failed verification](https://en.wikipedia.org/wiki/Wikipedia:Verifiability)*] and, in recent years, research into biological ALUs has been carried out[[10\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-10)[[11\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-11) (e.g., [actin](https://en.wikipedia.org/wiki/Actin)-based).[[12\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-12)

> 数学家[约翰-冯-诺伊曼](https://en.wikipedia.org/wiki/John_von_Neumann)于1945年在一份名为[EDVAC](https://en.wikipedia.org/wiki/EDVAC)的新计算机的基础报告中提出了ALU的概念。[[6]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-6)
>
> 在[信息时代](https://en.wikipedia.org/wiki/Information_age)的初级阶段，电子电路的成本、尺寸和功耗都比较高。因此，所有的[串行计算机](https://en.wikipedia.org/wiki/Serial_computer)和许多早期的计算机，如[PDP-8](https://en.wikipedia.org/wiki/PDP-8)，都有一个简单的ALU，每次对一个数据位进行操作，尽管它们经常向程序员提供一个更宽的字大小。1948年的[Whirlwind I](https://en.wikipedia.org/wiki/Whirlwind_I)是最早拥有多个分立单比特ALU电路的计算机之一，它采用了16个这样的 "数学单元"，使其能够对16比特字进行操作。
>
> 1967年，[飞兆](https://en.wikipedia.org/wiki/Fairchild_Semiconductor)推出了第一个作为集成电路实现的ALU，即飞兆3800，由一个带有累加器的8位ALU组成。[[7]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-7)其他集成电路ALU很快出现，包括4位ALU，如[Am2901](https://en.wikipedia.org/wiki/AMD_Am2900)和[74181](https://en.wikipedia.org/wiki/74181)。这些器件通常具有"[位片](https://en.wikipedia.org/wiki/Bit_slicing) "能力，这意味着它们具有 "携带超前 "信号，便于使用多个互连的ALU芯片来创建具有更宽字大小的ALU。这些器件迅速流行起来，并被广泛用于位片式微型计算机。
>
> 微处理器在20世纪70年代初开始出现。尽管晶体管已经变小，但往往没有足够的芯片空间来实现全字宽的ALU，因此，一些早期的微处理器采用了窄的ALU，每条机器语言指令需要多个周期。这方面的例子包括流行的[Zilog Z80](https://en.wikipedia.org/wiki/Zilog_Z80)，它用4位ALU进行8位加法。[[8]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-8)随着时间的推移，晶体管的几何尺寸进一步缩小，遵循[摩尔定律](https://en.wikipedia.org/wiki/Moore's_law)，在微处理器上建立更宽的ALU变得可行了。
>
> 现代集成电路（IC）的晶体管比早期微处理器的晶体管小几个数量级，使得在IC上安装高度复杂的ALU成为可能。今天，许多现代的ALU具有较宽的字宽，以及结构上的改进，如[桶式移位器](https://en.wikipedia.org/wiki/Barrel_shifter)和[二进制乘法器](https://en.wikipedia.org/wiki/Binary_multiplier)，使它们能够在一个时钟周期内完成在早期ALU上需要多次运算的操作。
>
> ALU可以通过[机械](https://en.wikipedia.org/wiki/Mechanical_computer)、[机电](https://en.wikipedia.org/wiki/Mechanical_computer#Electro-mechanical_computers)或[电子](https://en.wikipedia.org/wiki/Electronic_circuit)电路来实现[[9]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-9)[*[失败验证](https://en.wikipedia.org/wiki/Wikipedia:Verifiability)*]，近年来，对生物ALU的研究已经开展[[10]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-10)[[11]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-11)（例如，基于[肌动蛋白](https://en.wikipedia.org/wiki/Actin)[[12\]](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-12)
>

## See also

- [Adder (electronics)](https://en.wikipedia.org/wiki/Adder_(electronics))
- [Address generation unit](https://en.wikipedia.org/wiki/Address_generation_unit) (AGU)
- [Load–store unit](https://en.wikipedia.org/wiki/Load–store_unit)
- [Binary multiplier](https://en.wikipedia.org/wiki/Binary_multiplier)
- [Execution unit](https://en.wikipedia.org/wiki/Execution_unit)

---



# Registers

[Processor register](https://en.wikipedia.org/wiki/Processor_register)

A **processor register** is a quickly accessible location available to a computer's [processor](https://en.wikipedia.org/wiki/Processor_(computing)). Registers usually consist of a small amount of fast [storage](https://en.wikipedia.org/wiki/Computer_storage), although some registers have specific hardware functions, and may be read-only or write-only. In [computer architecture](https://en.wikipedia.org/wiki/Computer_architecture), registers are typically addressed by mechanisms other than [main memory](https://en.wikipedia.org/wiki/Main_memory), but may in some cases be assigned a [memory address](https://en.wikipedia.org/wiki/Memory_address) e.g. DEC [PDP-10](https://en.wikipedia.org/wiki/PDP-10), [ICT 1900](https://en.wikipedia.org/wiki/ICT_1900_series).

> 一个**处理器寄存器**是计算机的[处理器](https://en.wikipedia.org/wiki/Processor_(computing))可快速访问的位置。寄存器通常由少量的快速[存储](https://en.wikipedia.org/wiki/Computer_storage)组成，尽管有些寄存器具有特定的硬件功能，并且可能是只读或只写的。在[计算机结构](https://en.wikipedia.org/wiki/Computer_architecture)中，寄存器通常由[主存储器](https://en.wikipedia.org/wiki/Main_memory)以外的机制来寻址，但在某些情况下可能被分配一个[存储器地址](https://en.wikipedia.org/wiki/Memory_address)，例如，DEC[PDP-10](https://en.wikipedia.org/wiki/PDP-10)，[ICT 1900](https://en.wikipedia.org/wiki/ICT_1900_series)。

Almost all computers, whether [load/store architecture](https://en.wikipedia.org/wiki/Load/store_architecture) or not, load data from a larger memory into registers where it is used for [arithmetic operations](https://en.wikipedia.org/wiki/Arithmetic_operation) and is manipulated or tested by [machine instructions](https://en.wikipedia.org/wiki/Machine_instruction). Manipulated data is then often stored back to main memory, either by the same instruction or by a subsequent one. Modern processors use either [static](https://en.wikipedia.org/wiki/Static_random-access_memory) or [dynamic](https://en.wikipedia.org/wiki/Dynamic_random-access_memory) [RAM](https://en.wikipedia.org/wiki/Random-access_memory) as main memory, with the latter usually accessed via one or more [cache levels](https://en.wikipedia.org/wiki/CPU_cache#Multi-level_caches).

> 几乎所有的计算机，无论是否为[加载/存储结构](https://en.wikipedia.org/wiki/Load/store_architecture)，都从较大的存储器中加载数据到寄存器中，在那里用于[算术运算](https://en.wikipedia.org/wiki/Arithmetic_operation)并由[机器指令](https://en.wikipedia.org/wiki/Machine_instruction)进行操作或测试。然后，被操纵的数据通常被存储回主存储器，由同一指令或随后的指令来完成。现代处理器使用[静态](https://en.wikipedia.org/wiki/Static_random-access_memory)或[动态](https://en.wikipedia.org/wiki/Dynamic_random-access_memory)[RAM](https://en.wikipedia.org/wiki/Random-access_memory)作为主存储器，后者通常通过一个或多个[高速缓存级别](https://en.wikipedia.org/wiki/CPU_cache#Multi-level_caches)访问。
>

Processor registers are normally at the top of the [memory hierarchy](https://en.wikipedia.org/wiki/Memory_hierarchy), and provide the fastest way to access data. The term normally refers only to the group of registers that are directly encoded as part of an instruction, as defined by the [instruction set](https://en.wikipedia.org/wiki/Instruction_set). However, modern high-performance CPUs often have duplicates of these "architectural registers" in order to improve performance via [register renaming](https://en.wikipedia.org/wiki/Register_renaming), allowing parallel and [speculative execution](https://en.wikipedia.org/wiki/Speculative_execution). Modern [x86](https://en.wikipedia.org/wiki/X86) design acquired these techniques around 1995 with the releases of [Pentium Pro](https://en.wikipedia.org/wiki/Pentium_Pro), [Cyrix 6x86](https://en.wikipedia.org/wiki/Cyrix_6x86), [Nx586](https://en.wikipedia.org/wiki/Nx586), and [AMD K5](https://en.wikipedia.org/wiki/AMD_K5).

> 处理器寄存器通常处于[内存层次结构](https://en.wikipedia.org/wiki/Memory_hierarchy)的顶端，并提供了访问数据的最快方式。这个术语通常只指由[指令集](https://en.wikipedia.org/wiki/Instruction_set)定义的、直接作为指令一部分编码的寄存器组。然而，现代高性能CPU通常有这些 "架构寄存器 "的副本，以便通过[寄存器重命名](https://en.wikipedia.org/wiki/Register_renaming)提高性能，允许并行和[推测性执行](https://en.wikipedia.org/wiki/Speculative_execution)。现代[x86](https://en.wikipedia.org/wiki/X86)设计在1995年左右随着[Pentium Pro](https://en.wikipedia.org/wiki/Pentium_Pro)、[Cyrix 6x86](https://en.wikipedia.org/wiki/Cyrix_6x86)、[Nx586](https://en.wikipedia.org/wiki/Nx586)和[AMD K5](https://en.wikipedia.org/wiki/AMD_K5)的发布而获得这些技术。
>

When a [computer program](https://en.wikipedia.org/wiki/Computer_program) accesses the same data repeatedly, this is called [locality of reference](https://en.wikipedia.org/wiki/Locality_of_reference). Holding frequently used values in registers can be critical to a program's performance. [Register allocation](https://en.wikipedia.org/wiki/Register_allocation) is performed either by a [compiler](https://en.wikipedia.org/wiki/Compiler) in the [code generation](https://en.wikipedia.org/wiki/Code_generation_(compiler)) phase, or manually by an [assembly language](https://en.wikipedia.org/wiki/Assembly_language) programmer.

> 当一个[计算机程序](https://en.wikipedia.org/wiki/Computer_program)重复访问相同的数据时，这被称为[参考定位](https://en.wikipedia.org/wiki/Locality_of_reference)。在寄存器中保留经常使用的值对程序的性能至关重要。[寄存器分配](https://en.wikipedia.org/wiki/Register_allocation)由[编译器](https://en.wikipedia.org/wiki/Compiler)在[代码生成](https://en.wikipedia.org/wiki/Code_generation_(compiler))阶段进行，或者由[汇编语言](https://en.wikipedia.org/wiki/Assembly_language)程序员手动进行。

## Size

Registers are normally measured by the number of [bits](https://en.wikipedia.org/wiki/Bit) they can hold, for example, an "[8-bit](https://en.wikipedia.org/wiki/8-bit) register", "[32-bit](https://en.wikipedia.org/wiki/32-bit) register" or a "[64-bit](https://en.wikipedia.org/wiki/64-bit_computing) register" or even more. In some instruction sets, the registers can operate in various modes breaking down its storage memory into smaller ones (32-bit into four 8-bit ones for instance) to which multiple data (vector, or [one dimensional array of data](https://en.wikipedia.org/wiki/Array_data_structure)) can be loaded and operated upon at the same time. Typically it is implemented by adding extra registers that map their memory into a larger register. Processors that have the ability to execute single instructions on multiple data are called [vector processors](https://en.wikipedia.org/wiki/Vector_processor).

> 寄存器通常以其能容纳的[位](https://en.wikipedia.org/wiki/Bit)的数量来衡量，例如，"[8位](https://en.wikipedia.org/wiki/8-bit)寄存器"、"[32位](https://en.wikipedia.org/wiki/32-bit)寄存器 "或"[64位](https://en.wikipedia.org/wiki/64-bit_computing)寄存器 "甚至更多。在一些指令集中，寄存器可以以不同的模式运行，将其存储内存分解成更小的内存（例如，32位分成四个8位），多个数据（矢量，或[一维数据阵列](https://en.wikipedia.org/wiki/Array_data_structure)）可以同时加载和操作。通常，它是通过增加额外的寄存器来实现的，这些寄存器将其内存映射到一个更大的寄存器中。有能力对多个数据执行单一指令的处理器被称为[矢量处理器](https://en.wikipedia.org/wiki/Vector_processor)。

## Types

A processor often contains several kinds of registers, which can be classified according to their content or instructions that operate on them:

- **User-accessible registers** can be read or written by machine instructions. The most common division of user-accessible registers is into data registers and address registers.

  - ***Data registers*** can hold [numeric data values](https://en.wikipedia.org/wiki/Data_(computing)) such as [integer](https://en.wikipedia.org/wiki/Integer_(computer_science)) and, in some architectures, floating-point values, as well as [characters](https://en.wikipedia.org/wiki/Character_(computing)), small [bit arrays](https://en.wikipedia.org/wiki/Bit_array) and other data. In some older and low-end CPUs, a special data register, known as the [accumulator](https://en.wikipedia.org/wiki/Accumulator_(computing)), is used implicitly for many operations.

  - **Address registers** hold addresses and are used by instructions that indirectly access

    primary memory.

    - Some processors contain registers that may only be used to **hold an address** or only to **hold numeric values** (in some cases used as an [index register](https://en.wikipedia.org/wiki/Index_register) whose value is added as an offset from some address); others allow registers to hold either kind of quantity. A wide variety of possible [addressing modes](https://en.wikipedia.org/wiki/Addressing_mode), used to specify the effective address of an operand, exist.
    - The **[stack pointer](https://en.wikipedia.org/wiki/Stack_pointer)** is used to manage the [run-time stack](https://en.wikipedia.org/wiki/Run-time_stack). Rarely, other [data stacks](https://en.wikipedia.org/wiki/Stack_(data_structure)) are addressed by dedicated address registers (see [stack machine](https://en.wikipedia.org/wiki/Stack_machine)).

  - ***General-purpose registers*** (*GPR*s) can store both data and addresses, i.e., they are combined data/address registers; in some architectures, the [register file](https://en.wikipedia.org/wiki/Register_file) is *unified* so that the GPRs can store [floating-point numbers](https://en.wikipedia.org/wiki/Floating-point_number) as well.

  - ***[Status registers](https://en.wikipedia.org/wiki/Status_register)*** hold [truth values](https://en.wikipedia.org/wiki/Truth_value) often used to determine whether some instruction should or should not be executed.

  - ***Floating-point registers*** (*FPR*s) store [floating point numbers](https://en.wikipedia.org/wiki/Floating_point_number) in many architectures.

  - ***[Constant](https://en.wikipedia.org/wiki/Constant_(computer_programming)) registers*** hold read-only values such as zero, one, or [pi](https://en.wikipedia.org/wiki/Pi).

  - ***Vector registers*** hold data for [vector processing](https://en.wikipedia.org/wiki/Vector_processor) done by [SIMD](https://en.wikipedia.org/wiki/Single_instruction,_multiple_data) instructions (Single Instruction, Multiple Data).

  - ***Special-purpose registers*** (***SPR***s) hold program state; they usually include the [program counter](https://en.wikipedia.org/wiki/Program_counter), also called the instruction pointer, and the [status register](https://en.wikipedia.org/wiki/Status_register); the program counter and status register might be combined in a [program status word](https://en.wikipedia.org/wiki/Program_status_word) (PSW) register. The aforementioned stack pointer is sometimes also included in this group. Embedded microprocessors can also have registers corresponding to specialized hardware elements.

  - In some architectures, ***model-specific registers*** (also called *machine-specific registers*) store data and settings related to the processor itself. Because their meanings are attached to the design of a specific processor, they cannot be expected to remain standard between processor generations.

  - ***[Memory type range registers](https://en.wikipedia.org/wiki/Memory_type_range_registers)*** (*MTRR*s)

- **Internal registers** – registers not accessible by instructions, used internally for processor operations.

  - ***[Instruction register](https://en.wikipedia.org/wiki/Instruction_register)***, holding the instruction currently being executed.
  - Registers related to fetching information from [RAM](https://en.wikipedia.org/wiki/Random_access_memory), a collection of storage registers located on separate chips from the CPU:
    - ***[Memory buffer register](https://en.wikipedia.org/wiki/Memory_buffer_register)*** (*MBR*), also known as *Memory data register* (*MDR*)
    - ***[Memory address register](https://en.wikipedia.org/wiki/Memory_address_register)*** (*MAR*)

- ***Architectural register*** – the registers visible to software defined by an architecture may not correspond to the physical hardware, if there is [register renaming](https://en.wikipedia.org/wiki/Register_renaming) being performed by underlying hardware.

> 一个处理器通常包含几种寄存器，可以根据其内容或对其进行操作的指令进行分类：
>
> - **用户可访问的寄存器**可由机器指令读取或写入。最常见的是将用户可访问的寄存器分为数据寄存器和地址寄存器。
> - ***数据寄存器***可以保存[数字数据值](https://en.wikipedia.org/wiki/Data_(computing))，如[整数](https://en.wikipedia.org/wiki/Integer_(computer_science))，在一些架构中，还可以保存浮点值，以及[字符](https://en.wikipedia.org/wiki/Character_(computing))、小型[位阵列](https://en.wikipedia.org/wiki/Bit_array) 和其他数据。在一些旧的和低端的CPU中，一个特殊的数据寄存器，被称为[累加器](https://en.wikipedia.org/wiki/Accumulator_(computing))，被隐含地用于许多操作。
>   
> - **地址寄存器**存放地址，被间接访问[主存储器](https://en.wikipedia.org/wiki/Primary_memory)的指令所使用。
>   - 一些处理器包含的寄存器可能只用于**保存地址**或只用于**保存数值**（在某些情况下用作[索引寄存器](https://en.wikipedia.org/wiki/Index_register)，其值被添加为某个地址的**偏移量**）；其他处理器允许寄存器保存两种数量。存在多种可能的[寻址模式](https://en.wikipedia.org/wiki/Addressing_mode)，用于指定操作数的有效地址。
>   - **[堆栈指针](https://en.wikipedia.org/wiki/Stack_pointer)**是用来管理[运行时堆栈](https://en.wikipedia.org/wiki/Run-time_stack)的。很少有其他的[数据堆栈](https://en.wikipedia.org/wiki/Stack_(data_structure))是由专门的地址寄存器来寻址的（见[堆栈机](https://en.wikipedia.org/wiki/Stack_machine)）。
>   
> - ***通用寄存器***(*GPR*)可以同时存储数据和地址，也就是说，它们是数据/地址的组合寄存器；在一些架构中，[寄存器文件](https://en.wikipedia.org/wiki/Register_file)是*统一的*，这样GPR也可以存储[浮点数](https://en.wikipedia.org/wiki/Floating-point_number)。
>   
>   - ***[状态寄存器](https://en.wikipedia.org/wiki/Status_register)***持有[真值](https://en.wikipedia.org/wiki/Truth_value)，通常用于确定某些指令是否应该被执行。
>
>   - ***浮点寄存器*** (*FPR*s)在许多架构中存储[浮点数](https://en.wikipedia.org/wiki/Floating_point_number)。
>
>   - ***[常数](https://en.wikipedia.org/wiki/Constant_(computer_programming))寄存器***存放只读的值，如0、1或[π](https://en.wikipedia.org/wiki/Pi)。
>
>   - ***矢量寄存器***存放由[SIMD](https://en.wikipedia.org/wiki/Single_instruction,_multiple_data)指令（单指令，多数据）完成的[矢量处理](https://en.wikipedia.org/wiki/Vector_processor)数据。
>
>   - ***特殊用途寄存器***(***SPR***)保存程序状态；它们通常包括[程序计数器](https://en.wikipedia.org/wiki/Program_counter)，也称为指令指针，以及[状态寄存器](https://en.wikipedia.org/wiki/Status_register)；程序计数器和状态寄存器可能合并在一个[程序状态字](https://en.wikipedia.org/wiki/Program_status_word)(PSW)寄存器中。前面提到的堆栈指针有时也包括在这一组中。嵌入式微处理器也可以有对应于专门硬件元素的寄存器。
>
>   - 在一些架构中，***模型专用寄存器***（也叫*机专用寄存器*）存储与处理器本身有关的数据和设置。因为它们的含义与特定处理器的设计有关，所以不能指望它们在各代处理器之间保持标准。
>
>   - ***[内存类型范围寄存器](https://en.wikipedia.org/wiki/Memory_type_range_registers)*** (*MTRR*s)
>
> - ***内部寄存器*** - 不能被指令访问的寄存器，在内部用于处理器操作。
>
>   - ***[指令寄存器](https://en.wikipedia.org/wiki/Instruction_register)***，保存当前正在执行的指令。
>   - 与从[RAM](https://en.wikipedia.org/wiki/Random_access_memory)获取信息有关的寄存器，它是位于与CPU分开的芯片上的存储寄存器的集合。
>     - ***[内存缓冲寄存器](https://en.wikipedia.org/wiki/Memory_buffer_register)*** (*MBR*)，也被称为*内存数据寄存器* (*MDR*)
>     - ***[内存地址寄存器](https://en.wikipedia.org/wiki/Memory_address_register)*** (*MAR*)
>
> - ***架构寄存器*** - 如果底层硬件正在进行[寄存器重命名](https://en.wikipedia.org/wiki/Register_renaming)，那么由架构定义的软件可见的寄存器可能与物理硬件不对应。

**[Hardware registers](https://en.wikipedia.org/wiki/Hardware_register)** are similar, but occur outside CPUs.

In some architectures (such as [SPARC](https://en.wikipedia.org/wiki/SPARC) and [MIPS](https://en.wikipedia.org/wiki/MIPS_architecture)), the first or last register in the integer [register file](https://en.wikipedia.org/wiki/Register_file) is a **pseudo-register** in that it is hardwired to always return zero when read (mostly to simplify indexing modes), and it cannot be overwritten. In [Alpha](https://en.wikipedia.org/wiki/DEC_Alpha) this is also done for the floating-point register file. As a result of this, register files are commonly quoted as having one register more than how many of them are actually usable; for example, 32 registers are quoted when only 31 of them fit within the above definition of a register.

> **[硬件寄存器](https://en.wikipedia.org/wiki/Hardware_register)**是类似的，但出现在CPU之外。
>
> 在一些架构中（比如[SPARC](https://en.wikipedia.org/wiki/SPARC)和[MIPS](https://en.wikipedia.org/wiki/MIPS_architecture)），整数[寄存器文件](https://en.wikipedia.org/wiki/Register_file)中的第一个或最后一个寄存器是一个伪寄存器，因为它被硬连接到读取时总是返回0（主要是为了简化索引模式），而且不能被覆盖。在[Alpha](https://en.wikipedia.org/wiki/DEC_Alpha)中，对于浮点寄存器文件也是这样做的。因此，寄存器文件通常被认为比实际可用的寄存器多一个；例如，32个寄存器被引用，而其中只有31个符合上述寄存器的定义。

## Examples

This section **may require [copy editing](https://en.wikipedia.org/wiki/Wikipedia:Basic_copyediting) for the following reason: Many sentences in the table (col 4) are unclear**.



The following table shows the number of registers in several mainstream CPU architectures. Note that in x86-compatible processors the stack pointer (`ESP`) is counted as an integer register, even though there are a limited number of instructions that may be used to operate on its contents. Similar caveats apply to most architectures.

Although all of the above-listed architectures are different, almost all are in a basic arrangement known as the [von Neumann architecture](https://en.wikipedia.org/wiki/Von_Neumann_architecture), first proposed by the Hungarian-American [mathematician](https://en.wikipedia.org/wiki/Mathematician) [John von Neumann](https://en.wikipedia.org/wiki/John_von_Neumann). It is also noteworthy that the number of registers on [GPUs](https://en.wikipedia.org/wiki/General-purpose_computing_on_graphics_processing_units) is much higher than that on CPUs.

> 下表显示了几种主流CPU架构中的寄存器的数量。请注意，在x86兼容处理器中，堆栈指针（`ESP`）被算作一个整数寄存器，尽管有有限的指令可以用来对其内容进行操作。类似的注意事项适用于大多数体系结构。
>
> 尽管以上列举的架构都不尽相同，但几乎所有的架构都是一种基本的排列方式，被称为[冯-诺伊曼架构](https://en.wikipedia.org/wiki/Von_Neumann_architecture)，由美籍匈牙利[数学家](https://en.wikipedia.org/wiki/Mathematician)[约翰-冯-诺伊曼](https://en.wikipedia.org/wiki/John_von_Neumann)首次提出。同样值得注意的是，[GPU](https://en.wikipedia.org/wiki/General-purpose_computing_on_graphics_processing_units)上的寄存器数量要比CPU上的高得多。

## Usage

The number of registers available on a processor and the operations that can be performed using those registers has a significant impact on the [efficiency](https://en.wikipedia.org/wiki/Algorithmic_efficiency) of code generated by [optimizing compilers](https://en.wikipedia.org/wiki/Optimizing_compilers). The [Strahler number](https://en.wikipedia.org/wiki/Strahler_number) of an expression tree gives the minimum number of registers required to evaluate that expression tree.

> 处理器上可用的寄存器数量以及可以使用这些寄存器进行的操作对[优化编译器](https://en.wikipedia.org/wiki/Algorithmic_efficiency)生成的代码的[效率]有很大影响。表达式树的[Strahler数](https://en.wikipedia.org/wiki/Strahler_number)给出了对该表达式树运算求值所需的最小寄存器数。

## See also

- [CPU cache](https://en.wikipedia.org/wiki/CPU_cache)
- [Register allocation](https://en.wikipedia.org/wiki/Register_allocation)
- [Register file](https://en.wikipedia.org/wiki/Register_file)
- [Shift register](https://en.wikipedia.org/wiki/Shift_register)

---



# RAM(Random-access memory)

**Random-access memory** (**RAM**; [/ræm/](https://en.wikipedia.org/wiki/Help:IPA/English)) is a form of [computer memory](https://en.wikipedia.org/wiki/Computer_memory) that can be read and changed in any order, typically used to store working [data](https://en.wikipedia.org/wiki/Data_(computing)) and [machine code](https://en.wikipedia.org/wiki/Machine_code).[[1\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-1)[[2\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-2) A [random-access](https://en.wikipedia.org/wiki/Random_access) memory device allows [data](https://en.wikipedia.org/wiki/Data) items to be [read](https://en.wikipedia.org/wiki/Read_(computer)) or written in almost the same amount of time irrespective of the physical location of data inside the memory, in contrast with other direct-access data storage media (such as [hard disks](https://en.wikipedia.org/wiki/Hard_disk), [CD-RWs](https://en.wikipedia.org/wiki/CD-RW), [DVD-RWs](https://en.wikipedia.org/wiki/DVD-RW) and the older [magnetic tapes](https://en.wikipedia.org/wiki/Magnetic_tape_data_storage) and [drum memory](https://en.wikipedia.org/wiki/Drum_memory)), where the time required to read and write data items varies significantly depending on their physical locations on the recording medium, due to mechanical limitations such as media rotation speeds and arm movement.

> **随机存取存储器**（**RAM**；[/ræm/](https://en.wikipedia.org/wiki/Help:IPA/English)）是[计算机存储器](https://en.wikipedia.org/wiki/Computer_memory)的一种形式，可以按任何顺序读取和改变，通常用于存储工作[数据](https://en.wikipedia.org/wiki/Data_(computing))和[机器代码](https://en.wikipedia.org/wiki/Machine_code)。[[1\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-1)[[2\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-2) 一个 [随机存取](https://en.wikipedia.org/wiki/Random_access) 存储设备允许 [数据](https://en.wikipedia.org/wiki/Data)项目被 [读取](https://en.wikipedia. org/wiki/Read_(computer))或写入的时间几乎相同，而不考虑数据在存储器内的物理位置，与其他直接存取数据存储介质（如[硬盘](https://en.wikipedia.org/wiki/Hard_disk)、[CD-RWs](https://en.wikipedia.org/wiki/CD-RW)、[DVD-RWs](https://en.wikipedia. org/wiki/DVD-RW)和较早的[磁带](https://en.wikipedia.org/wiki/Magnetic_tape_data_storage)和[鼓式存储器](https://en.wikipedia.org/wiki/Drum_memory)，由于机械限制，如介质旋转速度和机械臂运动，读写数据项所需的时间因其在记录介质上的物理位置而有很大差异。

RAM contains [multiplexing](https://en.wikipedia.org/wiki/Multiplexer) and [demultiplexing](https://en.wikipedia.org/wiki/Demultiplexing) circuitry, to connect the data lines to the addressed storage for reading or writing the entry. Usually more than one bit of storage is accessed by the same address, and RAM devices often have multiple data lines and are said to be "8-bit" or "16-bit", etc. devices.[*[clarification needed](https://en.wikipedia.org/wiki/Wikipedia:Please_clarify)*]

> RAM包含[复用](https://en.wikipedia.org/wiki/Multiplexer)和[解复用](https://en.wikipedia.org/wiki/Demultiplexing)电路，用于将数据线连接到有地址的存储，以便读取或写入条目。通常情况下，同一地址会访问一个以上的存储位，RAM设备通常有多条数据线，被称为 "8位 "或 "16位 "等设备。[*[需要澄清](https://en.wikipedia.org/wiki/Wikipedia:Please_clarify)*]

In today's technology, random-access memory takes the form of [integrated circuit](https://en.wikipedia.org/wiki/Integrated_circuit) (IC) chips with [MOS](https://en.wikipedia.org/wiki/MOSFET) (metal-oxide-semiconductor) [memory cells](https://en.wikipedia.org/wiki/Memory_cell_(computing)). RAM is normally associated with [volatile](https://en.wikipedia.org/wiki/Volatile_memory) types of memory (such as [dynamic random-access memory](https://en.wikipedia.org/wiki/Dynamic_random-access_memory) (DRAM) [modules](https://en.wikipedia.org/wiki/DIMM)), where stored information is lost if power is removed, although non-volatile RAM has also been developed.[[3\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-3) Other types of [non-volatile memories](https://en.wikipedia.org/wiki/Non-volatile_memory) exist that allow random access for read operations, but either do not allow write operations or have other kinds of limitations on them. These include most types of [ROM](https://en.wikipedia.org/wiki/Read-only_memory) and a type of [flash memory](https://en.wikipedia.org/wiki/Flash_memory) called *[NOR-Flash](https://en.wikipedia.org/wiki/Flash_memory#NOR_flash)*.

> 在今天的技术中，随机存取存储器采用带有[MOS](https://en.wikipedia.org/wiki/Integrated_circuit)（金属氧化物-半导体）[存储单元](https://en.wikipedia.org/wiki/Memory_cell_(computing))的[集成电路](https://en.wikipedia.org/wiki/Integrated_circuit)（IC）芯片的形式。RAM通常与[易失性](https://en.wikipedia.org/wiki/Volatile_memory)类型的存储器（如[动态随机存取存储器](https://en.wikipedia.org/wiki/Dynamic_random-access_memory)(DRAM)[模块](https://en.wikipedia.org/wiki/DIMM)）有关，如果电源被切断，存储的信息就会丢失，尽管非易失性RAM也已被开发出来。[[3\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-3) 其他类型的[非易失性存储器](https://en.wikipedia.org/wiki/Non-volatile_memory) 存在，允许随机访问的读取操作，但不允许写入操作或对它们有其他类型的限制。这些包括大多数类型的[ROM](https://en.wikipedia.org/wiki/Read-only_memory)和一种称为*[NOR-Flash](https://en.wikipedia.org/wiki/Flash_memory#NOR_flash)*的[闪存](https://en.wikipedia.org/wiki/Flash_memory)。
>

The two main types of volatile random-access [semiconductor memory](https://en.wikipedia.org/wiki/Semiconductor_memory) are [static random-access memory](https://en.wikipedia.org/wiki/Static_random-access_memory) (SRAM) and [dynamic random-access memory](https://en.wikipedia.org/wiki/Dynamic_random-access_memory) (DRAM). Commercial uses of semiconductor RAM date back to 1965, when IBM introduced the SP95 SRAM chip for their [System/360 Model 95](https://en.wikipedia.org/wiki/IBM_System/360) computer, and [Toshiba](https://en.wikipedia.org/wiki/Toshiba) used DRAM memory cells for its Toscal BC-1411 [electronic calculator](https://en.wikipedia.org/wiki/Electronic_calculator), both based on [bipolar transistors](https://en.wikipedia.org/wiki/Bipolar_transistor). Commercial MOS memory, based on [MOS transistors](https://en.wikipedia.org/wiki/MOS_transistor), was developed in the late 1960s, and has since been the basis for all commercial semiconductor memory. The first commercial DRAM IC chip, the [Intel 1103](https://en.wikipedia.org/wiki/Intel_1103), was introduced in October 1970. [Synchronous dynamic random-access memory](https://en.wikipedia.org/wiki/Synchronous_dynamic_random-access_memory) (SDRAM) later debuted with the [Samsung](https://en.wikipedia.org/wiki/Samsung_Electronics) KM48SL2000 chip in 1992.

> 两种主要的易失性随机存取[半导体存储器](https://en.wikipedia.org/wiki/Semiconductor_memory)是[静态随机存取存储器](https://en.wikipedia.org/wiki/Static_random-access_memory)（SRAM）和[动态随机存取存储器](https://en.wikipedia.org/wiki/Dynamic_random-access_memory)（DRAM）。半导体RAM的商业用途可以追溯到1965年，当时IBM为其[System/360 Model 95](https://en.wikipedia.org/wiki/IBM_System/360)计算机推出了SP95 SRAM芯片，[东芝](https://en.wikipedia.org/wiki/Toshiba)为其Toscal BC-1411[电子计算器](https://en.wikipedia.org/wiki/Electronic_calculator)使用了DRAM存储单元，两者都是基于[双极晶体管](https://en.wikipedia.org/wiki/Bipolar_transistor)。基于[MOS晶体管](https://en.wikipedia.org/wiki/MOS_transistor)的商业MOS存储器在20世纪60年代末被开发出来，此后一直是所有商业半导体存储器的基础。第一个商业DRAM IC芯片，即[英特尔1103](https://en.wikipedia.org/wiki/Intel_1103)，于1970年10月推出。[同步动态随机存取存储器](https://en.wikipedia.org/wiki/Synchronous_dynamic_random-access_memory)（SDRAM）后来在1992年随着[三星](https://en.wikipedia.org/wiki/Samsung_Electronics)KM48SL2000芯片的推出而首次亮相。

## History

Early computers used [relays](https://en.wikipedia.org/wiki/Relay), [mechanical counters](https://en.wikipedia.org/wiki/Mechanical_counter)[[4\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-4) or [delay lines](https://en.wikipedia.org/wiki/Delay-line_memory) for main memory functions. Ultrasonic delay lines were [serial devices](https://en.wikipedia.org/wiki/Bit-serial_architecture) which could only reproduce data in the order it was written. [Drum memory](https://en.wikipedia.org/wiki/Drum_memory) could be expanded at relatively low cost but efficient retrieval of memory items required knowledge of the physical layout of the drum to optimize speed. Latches built out of [vacuum tube](https://en.wikipedia.org/wiki/Vacuum_tube) [triodes](https://en.wikipedia.org/wiki/Triode), and later, out of discrete [transistors](https://en.wikipedia.org/wiki/Transistor), were used for smaller and faster memories such as registers. Such registers were relatively large and too costly to use for large amounts of data; generally only a few dozen or few hundred bits of such memory could be provided.

> 早期的计算机使用[继电器](https://en.wikipedia.org/wiki/Relay)、[机械计数器](https://en.wikipedia.org/wiki/Mechanical_counter)[[4\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-4)或[延迟线](https://en.wikipedia.org/wiki/Delay-line_memory)来实现主存储器功能。超声波延迟线是[串行设备](https://en.wikipedia.org/wiki/Bit-serial_architecture)，只能按照写入的顺序复制数据。[鼓式存储器](https://en.wikipedia.org/wiki/Drum_memory)可以以相对较低的成本进行扩展，但有效检索存储器项目需要了解鼓的物理布局以优化速度。用[真空管](https://en.wikipedia.org/wiki/Vacuum_tube)[三极管](https://en.wikipedia.org/wiki/Triode)制造的锁存器，以及后来用分立的[晶体管](https://en.wikipedia.org/wiki/Transistor)制造的锁存器，被用于更小更快的存储器，如寄存器。这种寄存器相对较大，成本太高，无法用于大量数据；通常只能提供几十或几百比特的这种存储器。

The first practical form of random-access memory was the [Williams tube](https://en.wikipedia.org/wiki/Williams_tube) starting in 1947. It stored data as electrically charged spots on the face of a [cathode-ray tube](https://en.wikipedia.org/wiki/Cathode-ray_tube). Since the electron beam of the CRT could read and write the spots on the tube in any order, memory was random access. The capacity of the Williams tube was a few hundred to around a thousand bits, but it was much smaller, faster, and more power-efficient than using individual vacuum tube latches. Developed at the [University of Manchester](https://en.wikipedia.org/wiki/Victoria_University_of_Manchester) in England, the Williams tube provided the medium on which the first electronically stored program was implemented in the [Manchester Baby](https://en.wikipedia.org/wiki/Manchester_Baby) computer, which first successfully ran a program on 21 June 1948.[[5\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-5) In fact, rather than the Williams tube memory being designed for the Baby, the Baby was a [testbed](https://en.wikipedia.org/wiki/Testbed) to demonstrate the reliability of the memory.[[6\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-6)[[7\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-7)

> 第一个实用的随机存取存储器的形式是1947年开始的[威廉姆斯管](https://en.wikipedia.org/wiki/Williams_tube)。它将数据存储为[阴极射线管](https://en.wikipedia.org/wiki/Cathode-ray_tube)表面的带电点。由于阴极射线管的电子束可以按任何顺序读写管上的光点，因此存储器是随机存取。威廉姆斯管的容量是几百到大约一千比特，但它比使用单个真空管**锁存器**要小得多、快得多，也更省电。在英国的[曼彻斯特大学](https://en.wikipedia.org/wiki/Victoria_University_of_Manchester)开发的威廉斯管提供了媒介，在[曼彻斯特宝贝](https://en.wikipedia.org/wiki/Manchester_Baby)计算机中实现了第一个电子存储程序，该计算机于1948年6月21日首次成功运行了一个程序。[[5\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-5)事实上，与其说威廉斯管存储器是为宝贝设计的，宝贝是一个展示存储器可靠性的[试验台](https://en.wikipedia.org/wiki/Testbed)。

[Magnetic-core memory](https://en.wikipedia.org/wiki/Magnetic-core_memory) was invented in 1947 and developed up until the mid-1970s. It became a widespread form of random-access memory, relying on an array of magnetized rings. By changing the sense of each ring's magnetization, data could be stored with one bit stored per ring. Since every ring had a combination of address wires to select and read or write it, access to any memory location in any sequence was possible. Magnetic core memory was the standard form of [computer memory](https://en.wikipedia.org/wiki/Computer_memory) system until displaced by [solid-state](https://en.wikipedia.org/wiki/Solid-state_electronics) [MOS](https://en.wikipedia.org/wiki/MOSFET) ([metal–oxide–silicon](https://en.wikipedia.org/wiki/Metal–oxide–silicon)) [semiconductor memory](https://en.wikipedia.org/wiki/Semiconductor_memory) in [integrated circuits](https://en.wikipedia.org/wiki/Integrated_circuit) (ICs) during the early 1970s.[[8\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-computerhistory1970-8)

> [磁芯存储器](https://en.wikipedia.org/wiki/Magnetic-core_memory)发明于1947年，一直发展到1970年代中期。它成为一种广泛的随机存取存储器的形式，依赖于一个磁化环的阵列。通过改变每个环的磁化程度，数据可以在每个环上存储一个比特。由于每个环都有一个地址线的组合来选择和读取或写入它，因此可以访问任何序列中的任何存储器位置。磁芯存储器是[计算机存储器](https://en.wikipedia.org/wiki/Computer_memory)系统的标准形式，直到1970年代初被[集成电路](https://en.wikipedia.org/wiki/Integrated_circuit)(IC)中的[固态](https://en.wikipedia.org/wiki/Solid-state_electronics)[MOS](https://en.wikipedia.org/wiki/MOSFET)（[金属-氧化物-硅](https://en.wikipedia.org/wiki/Metal-oxide-silicon)）[半导体存储器](https://en.wikipedia.org/wiki/Semiconductor_memory)取代。[[8]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-computerhistory1970-8)

Prior to the development of integrated [read-only memory](https://en.wikipedia.org/wiki/Read-only_memory) (ROM) circuits, *permanent* (or *read-only*) random-access memory was often constructed using [diode matrices](https://en.wikipedia.org/wiki/Diode_matrix) driven by [address decoders](https://en.wikipedia.org/wiki/Address_decoder), or specially wound [core rope memory](https://en.wikipedia.org/wiki/Core_rope_memory) planes.[*[citation needed](https://en.wikipedia.org/wiki/Wikipedia:Citation_needed)*]

> 在开发集成的[只读存储器](https://en.wikipedia.org/wiki/Read-only_memory)(ROM)电路之前，*永久*(或*只读*)的随机存取存储器通常是使用由[地址解码器](https://en.wikipedia.org/wiki/Address_decoder)驱动的[二极管矩阵](https://en.wikipedia.org/wiki/Diode_matrix)，或特别缠绕的[芯绳存储器](https://en.wikipedia.org/wiki/Core_rope_memory)平面构成。[*[需要引用](https://en.wikipedia.org/wiki/Wikipedia:Citation_needed) *]

[Semiconductor memory](https://en.wikipedia.org/wiki/Semiconductor_memory) began in the 1960s with bipolar memory, which used [bipolar transistors](https://en.wikipedia.org/wiki/Bipolar_transistor). While it improved performance, it could not compete with the lower price of magnetic core memory.[[9\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-computerhistory1966-9)

> [半导体存储器](https://en.wikipedia.org/wiki/Semiconductor_memory)始于20世纪60年代的双极存储器，它使用[双极晶体管](https://en.wikipedia.org/wiki/Bipolar_transistor)。虽然它提高了性能，但它无法与价格较低的磁芯存储器竞争。[[9]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-computerhistory1966-9)

### MOS RAM

The invention of the [MOSFET](https://en.wikipedia.org/wiki/MOSFET) (metal-oxide-semiconductor field-effect transistor), also known as the MOS transistor, by [Mohamed M. Atalla](https://en.wikipedia.org/wiki/Mohamed_M._Atalla) and [Dawon Kahng](https://en.wikipedia.org/wiki/Dawon_Kahng) at [Bell Labs](https://en.wikipedia.org/wiki/Bell_Labs) in 1959,[[10\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-computerhistory-10) led to the development of [metal-oxide-semiconductor](https://en.wikipedia.org/wiki/Metal-oxide-semiconductor) (MOS) memory by John Schmidt at [Fairchild Semiconductor](https://en.wikipedia.org/wiki/Fairchild_Semiconductor) in 1964.[[8\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-computerhistory1970-8)[[11\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-11) In addition to higher performance, MOS [semiconductor memory](https://en.wikipedia.org/wiki/Semiconductor_memory) was cheaper and consumed less power than magnetic core memory.[[8\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-computerhistory1970-8) The development of [silicon-gate](https://en.wikipedia.org/wiki/Silicon-gate) [MOS integrated circuit](https://en.wikipedia.org/wiki/MOS_integrated_circuit) (MOS IC) technology by [Federico Faggin](https://en.wikipedia.org/wiki/Federico_Faggin) at Fairchild in 1968 enabled the production of MOS [memory chips](https://en.wikipedia.org/wiki/Memory_chip).[[12\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-12) MOS memory overtook magnetic core memory as the dominant memory technology in the early 1970s.[[8\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-computerhistory1970-8)

> 1959年，[Mohamed M. Atalla](https://en.wikipedia.org/wiki/Mohamed_M._Atalla)和[Dawon Kahng](https://en.wikipedia.org/wiki/Dawon_Kahng)在[贝尔实验室](https://en.wikipedia.org/wiki/Bell_Labs)发明了[MOSFET](https://en.wikipedia.org/wiki/MOSFET)（金属氧化物半导体场效应晶体管），也被称为MOS晶体管。[[10\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-computerhistory-10)促使[金属氧化物半导体](https://en. wikipedia.org/wiki/Metal-oxid-semiconductor)（MOS）存储器，由约翰-施密特于1964年在[飞兆半导体](https://en.wikipedia.org/wiki/Fairchild_Semiconductor)开发。[[8\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-computerhistory1970-8)[[11\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-11) 除了性能更高，MOS[半导体存储器](https://en. wikipedia.org/wiki/Semiconductor_memory)比磁芯存储器更便宜，功耗更低。[[8\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-computerhistory1970-8) 1968年，飞兆半导体公司的[Federico Faggin](https://en.wikipedia.org/wiki/Federico_Faggin)开发了[硅门](https://en.wikipedia.org/wiki/Silicon-gate)[MOS集成电路](https://en.wikipedia.org/wiki/MOS_integrated_circuit)（MOS IC）技术，使MOS [存储器芯片](https://en.wikipedia.org/wiki/Memory_chip)的生产成为可能。[[12\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-12) 1970年代初，MOS存储器超越磁芯存储器成为主导的存储器技术。

An integrated bipolar [static random-access memory](https://en.wikipedia.org/wiki/Static_random-access_memory) (SRAM) was invented by Robert H. Norman at [Fairchild Semiconductor](https://en.wikipedia.org/wiki/Fairchild_Semiconductor) in 1963.[[13\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-13) It was followed by the development of MOS SRAM by John Schmidt at Fairchild in 1964.[[8\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-computerhistory1970-8) SRAM became an alternative to magnetic-core memory, but required six MOS transistors for each [bit](https://en.wikipedia.org/wiki/Bit) of data.[[14\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-ibm100-14) Commercial use of SRAM began in 1965, when [IBM](https://en.wikipedia.org/wiki/IBM) introduced the SP95 memory chip for the [System/360 Model 95](https://en.wikipedia.org/wiki/IBM_System/360).[[9\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-computerhistory1966-9)

> 集成双极[静态随机存取存储器](https://en.wikipedia.org/wiki/Static_random-access_memory)(SRAM)是由Robert H. Norman于1963年在[飞兆半导体](https://en.wikipedia.org/wiki/Fairchild_Semiconductor)发明的。[[13\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-13)随后，[飞兆半导体](https://en.wikipedia.org/wiki/Fairchild_Semiconductor)的John Schmidt于1964年开发出MOS SRAM。SRAM成为磁芯存储器的替代品，但每个[比特](https://en.wikipedia.org/wiki/Bit)数据需要六个MOS晶体管。[[14\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-ibm100-14)SRAM的商业使用始于1965年，当时[IBM](https://en.wikipedia.org/wiki/IBM)为[System/360 Model 95](https://en.wikipedia.org/wiki/IBM_System/360)推出SP95内存芯片。[[9\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-computerhistory1966-9)

[Dynamic random-access memory](https://en.wikipedia.org/wiki/Dynamic_random-access_memory) (DRAM) allowed replacement of a 4 or 6-transistor latch circuit by a single transistor for each memory bit, greatly increasing memory density at the cost of volatility. Data was stored in the tiny capacitance of each transistor, and had to be periodically refreshed every few milliseconds before the charge could leak away. [Toshiba](https://en.wikipedia.org/wiki/Toshiba)'s Toscal BC-1411 [electronic calculator](https://en.wikipedia.org/wiki/Electronic_calculator), which was introduced in 1965,[[15\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-15)[[16\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-bc-spec-16)[[17\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-bc-17) used a form of capacitive bipolar DRAM, storing 180-bit data on discrete [memory cells](https://en.wikipedia.org/wiki/Memory_cell_(computing)), consisting of [germanium](https://en.wikipedia.org/wiki/Germanium) bipolar transistors and capacitors.[[16\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-bc-spec-16)[[17\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-bc-17) While it offered improved performance over magnetic-core memory, bipolar DRAM could not compete with the lower price of the then dominant magnetic-core memory.[[18\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-18)

> [动态随机存取存储器](https://en.wikipedia.org/wiki/Dynamic_random-access_memory)(DRAM)允许用每个存储器位的单个晶体管取代4或6个晶体管锁存电路，以波动性为代价大大提高了存储器的密度。数据被存储在每个晶体管的微小电容中，并且必须在电荷泄漏之前每隔几毫秒定期刷新一次。[东芝](https://en.wikipedia.org/wiki/Toshiba)的Toscal BC-1411[电子计算器](https://en.wikipedia.org/wiki/Electronic_calculator)于1965年推出，[[15]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-15)[[16]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-bc-spec-16)[[17]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-bc-17)使用了一种电容式双极DRAM，将180位数据存储在离散的[内存单元](https://en.wikipedia. org/wiki/Memory_cell_(computing))，由[锗](https://en.wikipedia.org/wiki/Germanium)双极晶体管和**电容器**组成。[[16]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-bc-spec-16)[[17]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-bc-17) 虽然它提供了比磁芯存储器更好的性能，但双极DRAM无法与当时占主导地位的磁芯存储器的低价竞争。[[18]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-18)

MOS technology is the basis for modern DRAM. In 1966, Dr. [Robert H. Dennard](https://en.wikipedia.org/wiki/Robert_H._Dennard) at the [IBM Thomas J. Watson Research Center](https://en.wikipedia.org/wiki/IBM_Thomas_J._Watson_Research_Center) was working on MOS memory. While examining the characteristics of MOS technology, he found it was capable of building [capacitors](https://en.wikipedia.org/wiki/Capacitor), and that storing a charge or no charge on the MOS capacitor could represent the 1 and 0 of a bit, while the MOS transistor could control writing the charge to the capacitor. This led to his development of a single-transistor DRAM memory cell.[[14\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-ibm100-14) In 1967, Dennard filed a patent under IBM for a single-transistor DRAM memory cell, based on MOS technology.[[19\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-Robert_Dennard-19) The first commercial DRAM IC chip was the [Intel 1103](https://en.wikipedia.org/wiki/Intel_1103), which was [manufactured](https://en.wikipedia.org/wiki/Semiconductor_manufacturing_process) on an [8 µm](https://en.wikipedia.org/wiki/10_µm_process) MOS process with a capacity of 1 [kbit](https://en.wikipedia.org/wiki/Kilobit), and was released in 1970.[[8\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-computerhistory1970-8)[[20\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-Lojek-1103-20)[[21\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-21)

> MOS技术是现代DRAM的基础。1966年，[IBM Thomas J. Watson研究中心](https://en.wikipedia.org/wiki/Robert_H._Dennard)的[Robert H. Dennard]博士正在研究MOS存储器。在研究MOS技术的特点时，他发现它能够建造[电容器](https://en.wikipedia.org/wiki/Capacitor)，在MOS电容器上储存电荷或不储存电荷可以代表一个比特的1和0，而MOS晶体管可以控制向电容器写入电荷。这导致他开发了一个单晶体管DRAM存储单元。[[14/]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-ibm100-14) 1967年，Dennard在IBM下申请了一个基于MOS技术的单晶体管DRAM存储单元专利。[[19/]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-Robert_Dennard-19) 第一个商用DRAM IC芯片是[英特尔1103](https://en.wikipedia.org/wiki/Intel_1103)，它是在[8微米](https://en.wikipedia.org/wiki/10_µm_process)MOS工艺上[制造](https://en.wikipedia.org/wiki/Semiconductor_manufacturing_process)，容量为1[kbit](https://en.wikipedia.org/wiki/Kilobit)，并在1970年发布。[[8\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-computerhistory1970-8)[[20\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-Lojek-1103-20)[[21\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-21)

[Synchronous dynamic random-access memory](https://en.wikipedia.org/wiki/Synchronous_dynamic_random-access_memory) (SDRAM) was developed by [Samsung Electronics](https://en.wikipedia.org/wiki/Samsung_Electronics). The first commercial SDRAM chip was the Samsung KM48SL2000, which had a capacity of 16 [Mbit](https://en.wikipedia.org/wiki/Megabit).[[22\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-electronic-design-22) It was introduced by [Samsung](https://en.wikipedia.org/wiki/Samsung) in 1992,[[23\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-23) and mass-produced in 1993.[[22\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-electronic-design-22) The first commercial [DDR SDRAM](https://en.wikipedia.org/wiki/DDR_SDRAM) ([double data rate](https://en.wikipedia.org/wiki/Double_data_rate) SDRAM) memory chip was Samsung's 64 Mbit DDR SDRAM chip, released in June 1998.[[24\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-24) [GDDR](https://en.wikipedia.org/wiki/GDDR) (graphics DDR) is a form of DDR [SGRAM](https://en.wikipedia.org/wiki/SGRAM) (synchronous graphics RAM), which was first released by Samsung as a 16 Mbit memory chip in 1998.[[25\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-25)

> [同步动态随机存取存储器](https://en.wikipedia.org/wiki/Synchronous_dynamic_random-access_memory)（SDRAM）是由[三星电子](https://en.wikipedia.org/wiki/Samsung_Electronics)开发的。第一个商用SDRAM芯片是三星KM48SL2000，它的容量为16[Mbit](https://en.wikipedia.org/wiki/Megabit)。[[22\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-electronic-design-22)它由[三星](https://en.wikipedia.org/wiki/Samsung)在1992年推出，[[23\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-23)并在1993年大规模生产。第一个商用[DDR SDRAM](https://en.wikipedia.org/wiki/DDR_SDRAM)（[双数据率](https://en.wikipedia.org/wiki/Double_data_rate)SDRAM）存储芯片是三星在1998年6月发布的64 Mbit DDR SDRAM芯片。[[24\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-24) [GDDR](https://en.wikipedia.org/wiki/GDDR)（图形DDR）是DDR[SGRAM](https://en.wikipedia.org/wiki/SGRAM)（同步图形RAM）的一种形式，三星在1998年首次发布16 Mbit存储芯片。



## Types

The two widely used forms of modern RAM are [static RAM](https://en.wikipedia.org/wiki/Static_random_access_memory) (SRAM) and [dynamic RAM](https://en.wikipedia.org/wiki/Dynamic_random-access_memory) (DRAM). In SRAM, a [bit of data](https://en.wikipedia.org/wiki/Bit) is stored using the state of a six-[transistor](https://en.wikipedia.org/wiki/Transistor) [memory cell](https://en.wikipedia.org/wiki/Memory_cell_(computing)), typically using six [MOSFETs](https://en.wikipedia.org/wiki/MOSFET) (metal-oxide-semiconductor field-effect transistors). This form of RAM is more expensive to produce, but is generally faster and requires less dynamic power than DRAM. In modern computers, SRAM is often used as [cache memory for the CPU](https://en.wikipedia.org/wiki/CPU_cache). DRAM stores a bit of data using a transistor and [capacitor](https://en.wikipedia.org/wiki/Capacitor) pair (typically a MOSFET and [MOS capacitor](https://en.wikipedia.org/wiki/MOS_capacitor), respectively),[[26\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-26) which together comprise a DRAM cell. The capacitor holds a high or low charge (1 or 0, respectively), and the transistor acts as a switch that lets the control circuitry on the chip read the capacitor's state of charge or change it. As this form of memory is less expensive to produce than static RAM, it is the predominant form of computer memory used in modern computers.

> 现代RAM的两种广泛使用的形式是[静态RAM](https://en.wikipedia.org/wiki/Static_random_access_memory)（SRAM）和[动态RAM](https://en.wikipedia.org/wiki/Dynamic_random-access_memory)（DRAM）。在SRAM中，一个[数据位](https://en.wikipedia.org/wiki/Bit)是利用六个[晶体管](https://en.wikipedia.org/wiki/Transistor)[存储单元](https://en.wikipedia.org/wiki/Memory_cell_(计算))的状态来存储的，通常使用六个[MOSFETs](https://en.wikipedia.org/wiki/MOSFET)（金属氧化物半导体场效应晶体管）。这种形式的RAM生产成本较高，但通常比DRAM更快，所需的动态功率也更小。在现代计算机中，SRAM经常被用作[CPU的缓存存储器](https://en.wikipedia.org/wiki/CPU_cache)。DRAM使用晶体管和[电容](https://en.wikipedia.org/wiki/Capacitor)对（通常分别是MOSFET和[MOS电容](https://en.wikipedia.org/wiki/MOS_capacitor)）来存储一位数据，[[26]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-26)它们共同组成了一个DRAM单元。电容器持有高或低的电荷（分别为1或0），而晶体管作为一个开关，让芯片上的控制电路读取电容器的充电状态或改变它。由于这种形式的存储器比静态RAM的生产成本低，它是现代计算机中使用的最主要的计算机存储器形式。
>

Both static and dynamic RAM are considered *volatile*, as their state is lost or reset when power is removed from the system. By contrast, [read-only memory](https://en.wikipedia.org/wiki/Read-only_memory) (ROM) stores data by permanently enabling or disabling selected transistors, such that the memory cannot be altered. Writeable variants of ROM (such as [EEPROM](https://en.wikipedia.org/wiki/EEPROM) and [NOR flash](https://en.wikipedia.org/wiki/NOR_flash)) share properties of both ROM and RAM, enabling data to [persist](https://en.wikipedia.org/wiki/Persistence_(computer_science)) without power and to be updated without requiring special equipment. [ECC memory](https://en.wikipedia.org/wiki/ECC_memory) (which can be either SRAM or DRAM) includes special circuitry to detect and/or correct random faults (memory errors) in the stored data, using [parity bits](https://en.wikipedia.org/wiki/Parity_bit) or [error correction codes](https://en.wikipedia.org/wiki/Error_detection_and_correction#Error-correcting_code).

> 静态和动态RAM都被认为是*易失性的*，因为它们的状态在系统断电后会丢失或重置。相比之下，[只读存储器](https://en.wikipedia.org/wiki/Read-only_memory) (ROM)通过永久启用或禁用选定的晶体管来存储数据，这样存储器就不能被改变。ROM的可写变体（如[EEPROM](https://en.wikipedia.org/wiki/EEPROM)和[NOR闪存](https://en.wikipedia.org/wiki/NOR_flash)）共享ROM和RAM的特性，使数据能够在没有电源的情况下[持续存在](https://en.wikipedia.org/wiki/Persistence_(computer_science))，并且不需要特殊设备就可以更新。[ECC存储器](https://en.wikipedia.org/wiki/ECC_memory)（可以是SRAM或DRAM）包括特殊的电路，利用[奇偶校验位](https://en.wikipedia.org/wiki/Parity_bit)或[纠错码](https://en.wikipedia.org/wiki/Error_detection_and_correction#Error-correcting_code)检测和/或纠正存储数据中的随机故障（存储器错误）。
>

In general, the term *RAM* refers solely to solid-state memory devices (either DRAM or SRAM), and more specifically the main memory in most computers. In optical storage, the term [DVD-RAM](https://en.wikipedia.org/wiki/DVD-RAM) is somewhat of a misnomer since, unlike [CD-RW](https://en.wikipedia.org/wiki/CD-RW) or [DVD-RW](https://en.wikipedia.org/wiki/DVD-RW) it does not need to be erased before reuse. Nevertheless, a DVD-RAM behaves much like a hard disc drive if somewhat slower.

> 一般来说，术语*RAM*仅指固态存储设备（DRAM或SRAM），更确切地说，是大多数计算机的主存储器。在光学存储中，[DVD-RAM](https://en.wikipedia.org/wiki/DVD-RAM)这个术语有点名不副实，因为与[CD-RW](https://en.wikipedia.org/wiki/CD-RW)或[DVD-RW](https://en.wikipedia.org/wiki/DVD-RW)不同，它在重复使用前不需要被擦除。然而，DVD-RAM的行为与硬盘驱动器很相似，只是速度稍慢一些。

## Memory cell

The memory cell is the fundamental building block of [computer memory](https://en.wikipedia.org/wiki/Computer_memory). The memory cell is an [electronic circuit](https://en.wikipedia.org/wiki/Electronic_circuit) that stores one [bit](https://en.wikipedia.org/wiki/Bit) of binary information and it must be set to store a logic 1 (high voltage level) and reset to store a logic 0 (low voltage level). Its value is maintained/stored until it is changed by the set/reset process. The value in the memory cell can be accessed by reading it.

> 记忆单元是[计算机存储器](https://en.wikipedia.org/wiki/Computer_memory)的基本构成部分。存储单元是一个[电子电路](https://en.wikipedia.org/wiki/Electronic_circuit)，可以存储一个[比特](https://en.wikipedia.org/wiki/Bit)的二进制信息，它必须被设置为存储一个逻辑1（高电压水平），并被重置为存储一个逻辑0（低电压水平）。它的值被保持/储存，直到它被设置/复位过程改变。存储单元中的值可以通过读取它来访问。
>

In SRAM, the memory cell is a type of [flip-flop](https://en.wikipedia.org/wiki/Flip-flop_(electronics)) circuit, usually implemented using [FETs](https://en.wikipedia.org/wiki/Field_effect_transistor). This means that SRAM requires very low power when not being accessed, but it is expensive and has low storage density.

> 在SRAM中，存储单元是一种[触发器](https://en.wikipedia.org/wiki/Flip-flop_(electronic))电路，通常使用[场效应管](https://en.wikipedia.org/wiki/Field_effect_transistor)实现。这意味着SRAM在不被访问时需要非常低的功率，但它很昂贵，而且存储密度低。

<img src="H:\资料资源\regular-invest-on-evolution\编程课\计算机知识\reference pics\1280px-SRAM_Cell.svg.png" style="zoom: 67%;" />

A second type, DRAM, is based around a capacitor. Charging and discharging this capacitor can store a "1" or a "0" in the cell. However, the charge in this capacitor slowly leaks away, and must be refreshed periodically. Because of this refresh process, DRAM uses more power, but it can achieve greater storage densities and lower unit costs compared to SRAM.

> 第二种类型，即DRAM，是基于一个电容器。对这个电容器进行充电和放电可以在单元中存储一个 "1 "或一个 "0"。然而，这个电容器中的电荷会慢慢泄漏，必须定期进行刷新。由于这种刷新过程，DRAM使用更多的电力，但与SRAM相比，它可以实现更大的存储密度和更低的单位成本。
>

<img src="H:\资料资源\regular-invest-on-evolution\编程课\计算机知识\reference pics\DRAM_Cell_Structure_(Model_of_Single_Circuit_Cell).png" style="zoom:67%;" />

## Addressing

To be useful, memory cells must be readable and writeable. Within the RAM device, multiplexing and demultiplexing circuitry is used to select memory cells. Typically, a RAM device has a set of address lines A0... An, and for each combination of bits that may be applied to these lines, a set of memory cells are activated. Due to this addressing, RAM devices virtually always have a memory capacity that is a power of two.

> 为了发挥作用，存储单元必须是可读和可写的。在RAM设备内，**复用**和**解复用**电路被用来选择存储单元。通常情况下，一个RAM设备有一组地址线A0... An，对于可能应用于这些线路的每个比特组合，一组存储单元被激活。由于这种寻址方式，RAM设备几乎总是有一个内存容量为2的幂。

Usually several memory cells share the same address. For example, a 4 bit 'wide' RAM chip has 4 memory cells for each address. Often the width of the memory and that of the microprocessor are different, for a 32 bit microprocessor, eight 4 bit RAM chips would be needed.

> 通常情况下，几个存储单元共享同一个地址。例如，一个4位的 "宽"RAM芯片，每个地址有4个存储单元。通常存储器的宽度和微处理器的宽度是不同的，对于一个32位的微处理器，需要8个4位的RAM芯片。
>

Often more addresses are needed than can be provided by a device. In that case, external multiplexors to the device are used to activate the correct device that is being accessed.

> 通常需要的地址比一个设备所能提供的要多。在这种情况下，设备的外部多路复用器被用来激活被访问的正确设备。

## Memory hierarchy

One can read and over-write data in RAM. Many computer systems have a memory hierarchy consisting of [processor registers](https://en.wikipedia.org/wiki/Processor_register), on-die [SRAM](https://en.wikipedia.org/wiki/Static_random-access_memory) caches, external [caches](https://en.wikipedia.org/wiki/CPU_cache), [DRAM](https://en.wikipedia.org/wiki/DRAM), [paging](https://en.wikipedia.org/wiki/Paging) systems and [virtual memory](https://en.wikipedia.org/wiki/Virtual_memory) or [swap space](https://en.wikipedia.org/wiki/Swap_space) on a hard drive. This entire pool of memory may be referred to as "RAM" by many developers, even though the various subsystems can have very different [access times](https://en.wikipedia.org/wiki/Access_time), violating the original concept behind the *random access* term in RAM. Even within a hierarchy level such as DRAM, the specific row, column, bank, [rank](https://en.wikipedia.org/wiki/Memory_rank), channel, or [interleave](https://en.wikipedia.org/wiki/Interleaved_memory) organization of the components make the access time variable, although not to the extent that access time to rotating [storage media](https://en.wikipedia.org/wiki/Storage_media) or a tape is variable. The overall goal of using a memory hierarchy is to obtain the highest possible average access performance while minimizing the total cost of the entire memory system (generally, the memory hierarchy follows the access time with the fast CPU registers at the top and the slow hard drive at the bottom).

> 人们可以读取和改写RAM中的数据。许多计算机系统有一个内存层次，包括[处理器寄存器](https://en.wikipedia.org/wiki/Processor_register)、片上[SRAM](https://en.wikipedia.org/wiki/Static_random-access_memory)缓存、外部[缓存](https://en.wikipedia.org/wiki/CPU_cache)、[DRAM](https://en.wikipedia.org/wiki/DRAM)、[分页](https://en.wikipedia.org/wiki/Paging)系统和[虚拟内存](https://en.wikipedia.org/wiki/Virtual_memory)或硬盘上的[交换空间](https://en.wikipedia.org/wiki/Swap_space)。这整个内存池可能被许多开发者称为 "RAM"，尽管各种子系统可能有非常不同的[访问时间](https://en.wikipedia.org/wiki/Access_time)，违反了RAM中*随机访问*术语背后的原始概念。即使在诸如DRAM这样的层次结构中，具体的行、列、库、[等级](https://en.wikipedia.org/wiki/Memory_rank)、通道或组件的[互斥](https://en.wikipedia.org/wiki/Interleaved_memory)组织也会使访问时间发生变化，尽管没有达到旋转[存储介质](https://en.wikipedia.org/wiki/Storage_media)或磁带的访问时间的程度。使用存储器层次结构的总体目标是获得尽可能高的平均访问性能，同时使整个存储器系统的总成本最小化（通常，存储器层次结构遵循访问时间，快速的CPU寄存器在顶部，慢速的硬盘在底部）。

In many modern personal computers, the RAM comes in an easily upgraded form of modules called [memory modules](https://en.wikipedia.org/wiki/DIMM) or DRAM modules about the size of a few sticks of chewing gum. These can quickly be replaced should they become damaged or when changing needs demand more storage capacity. As suggested above, smaller amounts of RAM (mostly SRAM) are also integrated in the [CPU](https://en.wikipedia.org/wiki/CPU) and other [ICs](https://en.wikipedia.org/wiki/Integrated_circuit) on the [motherboard](https://en.wikipedia.org/wiki/Motherboard), as well as in hard-drives, [CD-ROMs](https://en.wikipedia.org/wiki/CD-ROM), and several other parts of the computer system.

> 在许多现代个人电脑中，RAM是以一种易于升级的模块形式出现的，这种模块被称为[内存模块](https://en.wikipedia.org/wiki/DIMM)或DRAM模块，其大小与几根口香糖差不多。如果这些模块损坏了，或者当变化的需求需要更多的存储容量时，这些模块可以很快被替换。如上所述，少量的RAM（主要是SRAM）也被集成在[CPU](https://en.wikipedia.org/wiki/CPU)和[主板](https://en.wikipedia.org/wiki/Integrated_circuit)上的其他[IC](https://en.wikipedia.org/wiki/Motherboard)，以及硬盘、[CD-ROMs](https://en.wikipedia.org/wiki/CD-ROM)和计算机系统的其他几个部分。

## Other uses of RAM

In addition to serving as temporary storage and working space for the operating system and applications, RAM is used in numerous other ways.

> 除了作为操作系统和应用程序的临时存储和工作空间外，RAM还被用于许多其他方面。

### Virtual memory

Most modern operating systems employ a method of extending RAM capacity, known as "virtual memory". A portion of the computer's [hard drive](https://en.wikipedia.org/wiki/Hard_drive) is set aside for a *paging file* or a *scratch partition*, and the combination of physical RAM and the paging file form the system's total memory. (For example, if a computer has 2 GB (1024<sup>3</sup> B) of RAM and a 1 GB page file, the operating system has 3 GB total memory available to it.) When the system runs low on physical memory, it can "[swap](https://en.wikipedia.org/wiki/Paging)" portions of RAM to the paging file to make room for new data, as well as to read previously swapped information back into RAM. Excessive use of this mechanism results in [thrashing](https://en.wikipedia.org/wiki/Thrashing_(computer_science)) and generally hampers overall system performance, mainly because hard drives are far slower than RAM.

> 大多数现代操作系统采用一种扩展RAM容量的方法，称为 "虚拟内存"。计算机[硬盘](https://en.wikipedia.org/wiki/Hard_drive)的一部分被留作*分页文件*或*scratch分区*，而物理RAM和分页文件的组合构成了系统的总内存。(例如，如果一台计算机有2GB（1024的3次方B）的内存和1GB的分页文件，操作系统就有3GB的总内存可用）。当系统的物理内存不足时，它可以"[交换](https://en.wikipedia.org/wiki/Paging) "部分内存到分页文件，为新的数据腾出空间，也可以把以前交换的信息读回内存。过度使用这种机制会导致[throwashing](https://en.wikipedia.org/wiki/Thrashing_(computer_science))，并且通常会妨碍系统的整体性能，主要是因为硬盘的速度远比RAM慢。

### RAM dish

Software can "partition" a portion of a computer's RAM, allowing it to act as a much faster hard drive that is called a [RAM disk](https://en.wikipedia.org/wiki/RAM_disk). A RAM disk loses the stored data when the computer is shut down, unless memory is arranged to have a standby battery source, or changes to the RAM disk are written out to a nonvolatile disk. The RAM disk is reloaded from the physical disk upon RAM disk initialization.

> 软件可以对计算机的一部分RAM进行 "分区"，使其作为一个更快的硬盘被称为[RAM盘](https://en.wikipedia.org/wiki/RAM_disk)。当计算机关闭时，RAM盘会丢失存储的数据，除非内存被安排为有备用电池源，或RAM盘的变化被写入非易失性磁盘。在RAM磁盘初始化时，RAM磁盘会从物理磁盘中重新加载。

### Shadow RAM

Sometimes, the contents of a relatively slow ROM chip are copied to read/write memory to allow for shorter access times. The ROM chip is then disabled while the initialized memory locations are switched in on the same block of addresses (often write-protected). This process, sometimes called *shadowing*, is fairly common in both computers and [embedded systems](https://en.wikipedia.org/wiki/Embedded_systems).

As a common example, the [BIOS](https://en.wikipedia.org/wiki/BIOS) in typical personal computers often has an option called “use shadow BIOS” or similar. When enabled, functions that rely on data from the BIOS's ROM instead use DRAM locations (most can also toggle shadowing of video card ROM or other ROM sections). Depending on the system, this may not result in increased performance, and may cause incompatibilities. For example, some hardware may be inaccessible to the [operating system](https://en.wikipedia.org/wiki/Operating_system) if shadow RAM is used. On some systems the benefit may be hypothetical because the BIOS is not used after booting in favor of direct hardware access. Free memory is reduced by the size of the shadowed ROMs.[[27\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-27)

> 有时，一个相对较慢的ROM芯片的内容被复制到读/写存储器中，以便缩短访问时间。然后，ROM芯片被禁用，而初始化的内存位置被切换到相同的地址块上（通常是写保护的）。这个过程，有时被称为*影子*，在计算机和[嵌入式系统](https://en.wikipedia.org/wiki/Embedded_systems)中都相当普遍。
>
> 作为一个常见的例子，典型的个人电脑中的[BIOS](https://en.wikipedia.org/wiki/BIOS)通常有一个叫做 "使用影子BIOS "或类似的选项。启用后，依赖BIOS的ROM数据的功能将使用DRAM的位置（大多数也可以切换影子视频卡的ROM或其他ROM部分）。根据系统的不同，这可能不会导致性能的提高，而且可能导致不兼容。例如，如果使用阴影RAM，一些硬件可能无法被[操作系统](https://en.wikipedia.org/wiki/Operating_system)访问。在一些系统上，这种好处可能是假想的，因为启动后不使用BIOS，而是直接使用硬件访问。自由内存会因影子ROM的大小而减少。[[27\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-27)

### Recent developments

Several new types of [*non-volatile* RAM](https://en.wikipedia.org/wiki/NVRAM), which preserve data while powered down, are under development. The technologies used include [carbon nanotubes](https://en.wikipedia.org/wiki/Carbon_nanotube) and approaches utilizing [Tunnel magnetoresistance](https://en.wikipedia.org/wiki/Tunnel_magnetoresistance). Amongst the 1st generation [MRAM](https://en.wikipedia.org/wiki/Magnetoresistive_random-access_memory), a 128 [kbit](https://en.wikipedia.org/wiki/Kilobit) (128 × 210 bytes) chip was manufactured with 0.18 µm technology in the summer of 2003.[*[citation needed](https://en.wikipedia.org/wiki/Wikipedia:Citation_needed)*] In June 2004, [Infineon Technologies](https://en.wikipedia.org/wiki/Infineon_Technologies) unveiled a 16 [MB](https://en.wikipedia.org/wiki/Megabyte) (16 × 220 bytes) prototype again based on 0.18 µm technology. There are two 2nd generation techniques currently in development: [thermal-assisted switching](https://en.wikipedia.org/wiki/Thermal-assisted_switching) (TAS)[[28\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-28) which is being developed by [Crocus Technology](https://en.wikipedia.org/wiki/Crocus_Technology), and [spin-transfer torque](https://en.wikipedia.org/wiki/Spin-transfer_torque) (STT) on which [Crocus](https://en.wikipedia.org/wiki/Crocus_Technology), [Hynix](https://en.wikipedia.org/wiki/Hynix), [IBM](https://en.wikipedia.org/wiki/IBM), and several other companies are working.[[29\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-29) [Nantero](https://en.wikipedia.org/wiki/Nantero) built a functioning carbon nanotube memory prototype 10 [GB](https://en.wikipedia.org/wiki/Gigabyte) (10 × 230 bytes) array in 2004. Whether some of these technologies can eventually take significant market share from either DRAM, SRAM, or flash-memory technology, however, remains to be seen.

Since 2006, "[solid-state drives](https://en.wikipedia.org/wiki/Solid-state_drive)" (based on flash memory) with capacities exceeding 256 gigabytes and performance far exceeding traditional disks have become available. This development has started to blur the definition between traditional random-access memory and "disks", dramatically reducing the difference in performance.

Some kinds of random-access memory, such as "[EcoRAM](https://en.wikipedia.org/w/index.php?title=EcoRAM&action=edit&redlink=1)", are specifically designed for [server farms](https://en.wikipedia.org/wiki/Server_farm), where [low power consumption](https://en.wikipedia.org/wiki/Low-power_electronics) is more important than speed.[[30\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-30)

> 几种新型的[*非易失性*RAM](https://en.wikipedia.org/wiki/NVRAM)正在开发之中，它们在断电时也能保存数据。使用的技术包括[碳纳米管](https://en.wikipedia.org/wiki/Carbon_nanotube)和利用[隧道磁阻](https://en.wikipedia.org/wiki/Tunnel_magnetoresistance)的方法。在第一代[MRAM](https://en.wikipedia.org/wiki/Magnetoresistive_random-access_memory)中，2003年夏天用0.18微米的技术制造了一个128[kbit](https://en.wikipedia.org/wiki/Kilobit)（128×210字节）的芯片。[*[需要引用](https://en.wikipedia.org/wiki/Wikipedia:Citation_needed*)] 2004年6月，[英飞凌科技公司](https://en.wikipedia.org/wiki/Infineon_Technologies)公布了再次基于0.18微米技术的16[MB](https://en.wikipedia.org/wiki/Megabyte)（16 × 220字节）原型。目前有两种第二代技术正在开发中。[热辅助开关](https://en.wikipedia.org/wiki/Thermal-assisted_switching) (TAS)[[28]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-28)由[Crocus Technology](https://en.wikipedia.org/wiki/Crocus_Technology)开发，而[自旋转移扭矩](https://en.wikipedia.org/wiki/Spin-transfer_torque) (STT)由[Crocus](https://en.wikipedia. org/wiki/Crocus_Technology）、[Hynix](https://en.wikipedia.org/wiki/Hynix)、[IBM](https://en.wikipedia.org/wiki/IBM)和其他几家公司正在研究。[[29\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-29)[Nantero](https://en.wikipedia.org/wiki/Nantero)在2004年建立了一个正常运作的碳纳米管存储器原型10[GB](https://en.wikipedia.org/wiki/Gigabyte)（10×230字节）阵列。然而，这些技术中的某些技术是否能最终从DRAM、SRAM或闪存技术中夺取大量市场份额，还有待观察。
>
> 自2006年以来，容量超过256千兆字节、性能远远超过传统磁盘的"[固态驱动器](https://en.wikipedia.org/wiki/Solid-state_drive)"（基于闪存）已经面世。这一发展已经开始模糊了传统随机存取存储器和 "磁盘 "之间的定义，极大地缩小了性能上的差异。
>
> 一些种类的随机存取存储器，如"[EcoRAM](https://en.wikipedia.org/w/index.php?title=EcoRAM&action=edit&redlink=1)"，是专门为[服务器群](https://en.wikipedia.org/wiki/Server_farm)设计的，其中[低功耗](https://en.wikipedia.org/wiki/Low-power_electronics)比速度更为重要。[[30]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-30)

## Memory wall

The "memory wall" is the growing disparity of speed between CPU and memory outside the CPU chip. An important reason for this disparity is the limited communication bandwidth beyond chip boundaries, which is also referred to as *bandwidth wall*. From 1986 to 2000, [CPU](https://en.wikipedia.org/wiki/Central_processing_unit) speed improved at an annual rate of 55% while memory speed only improved at 10%. Given these trends, it was expected that [memory latency](https://en.wikipedia.org/wiki/Memory_latency) would become an overwhelming [bottleneck](https://en.wikipedia.org/wiki/Bottleneck_(engineering)) in computer performance.[[31\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-31)

CPU speed improvements slowed significantly partly due to major physical barriers and partly because current CPU designs have already hit the memory wall in some sense. [Intel](https://en.wikipedia.org/wiki/Intel_Corporation) summarized these causes in a 2005 document.[[32\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-32)

> First of all, as chip geometries shrink and clock frequencies rise, the transistor [leakage current](https://en.wikipedia.org/wiki/Leakage_(electronics)) increases, leading to excess power consumption and heat... Secondly, the advantages of higher clock speeds are in part negated by memory latency, since memory access times have not been able to keep pace with increasing clock frequencies. Third, for certain applications, traditional serial architectures are becoming less efficient as processors get faster (due to the so-called [Von Neumann bottleneck](https://en.wikipedia.org/wiki/Von_Neumann_architecture#Von_Neumann_bottleneck)), further undercutting any gains that frequency increases might otherwise buy. In addition, partly due to limitations in the means of producing inductance within solid state devices, [resistance-capacitance](https://en.wikipedia.org/wiki/RC_time_constant#Delay) (RC) delays in signal transmission are growing as feature sizes shrink, imposing an additional bottleneck that frequency increases don't address.

The RC delays in signal transmission were also noted in "Clock Rate versus IPC: The End of the Road for Conventional Microarchitectures"[[33\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-33) which projected a maximum of 12.5% average annual CPU performance improvement between 2000 and 2014.

> "内存墙 "是指CPU芯片外的CPU和内存之间的速度差距越来越大。造成这种差距的一个重要原因是芯片边界以外的通信带宽有限，这也被称为*带宽墙*。从1986年到2000年，[CPU](https://en.wikipedia.org/wiki/Central_processing_unit)速度以每年55%的速度提高，而内存速度只提高了10%。鉴于这些趋势，预计[内存延迟](https://en.wikipedia.org/wiki/Memory_latency)将成为计算机性能的一个压倒性的[瓶颈](https://en.wikipedia.org/wiki/Bottleneck_(工程))。[[31]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-31)
>
> CPU速度的提高明显放缓，部分原因是主要的物理障碍，部分原因是目前的CPU设计在某种意义上已经撞到了内存墙。[Intel](https://en.wikipedia.org/wiki/Intel_Corporation)在2005年的一份文件中总结了这些原因。[[32]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-32)
>
> > 首先，随着芯片几何尺寸的缩小和时钟频率的上升，晶体管的[泄漏电流](https://en.wikipedia.org/wiki/Leakage_(electronic))增加，导致了过多的电力消耗和热量...... 其次，更高的时钟速度的优势在一定程度上被存储器的延迟所抵消，因为存储器的访问时间无法跟上时钟频率增加的步伐。第三，对于某些应用来说，传统的串行架构随着处理器速度的提高而变得不那么有效（由于所谓的[冯-诺伊曼瓶颈](https://en.wikipedia.org/wiki/Von_Neumann_architecture#Von_Neumann_bottleneck)），进一步削弱了频率提高可能带来的任何收益。此外，部分原因是由于在固态设备内产生电感的方法的限制，[电阻-电容](https://en.wikipedia.org/wiki/RC_time_constant#Delay)(RC)在信号传输中的延迟随着特征尺寸的缩小而增加，造成了频率增加无法解决的额外瓶颈。
>
> 信号传输中的RC延迟在《时钟频率与IPC：传统微架构的终结者》[[33/]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-33)中也有提及，该书预计在2000年至2014年期间，CPU性能的年平均提高幅度最多为12.5%。

The RC delays in signal transmission were also noted in "Clock Rate versus IPC: The End of the Road for Conventional Microarchitectures"[[33\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-33) which projected a maximum of 12.5% average annual CPU performance improvement between 2000 and 2014.

A different concept is the processor-memory performance gap, which can be addressed by [3D integrated circuits](https://en.wikipedia.org/wiki/Three-dimensional_integrated_circuit) that reduce the distance between the logic and memory aspects that are further apart in a 2D chip.[[34\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-34) Memory subsystem design requires a focus on the gap, which is widening over time.[[35\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-35) The main method of bridging the gap is the use of [caches](https://en.wikipedia.org/wiki/Cache_(computing)); small amounts of high-speed memory that houses recent operations and instructions nearby the processor, speeding up the execution of those operations or instructions in cases where they are called upon frequently. Multiple levels of caching have been developed to deal with the widening gap, and the performance of high-speed modern computers relies on evolving caching techniques.[[36\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-36) There can be up to a 53% difference between the growth in speed of processor and the lagging speed of main memory access.[[37\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-37)

[Solid-state hard drives](https://en.wikipedia.org/wiki/Solid-state_drive) have continued to increase in speed, from ~400 Mbit/s via [SATA3](https://en.wikipedia.org/wiki/Serial_ATA) in 2012 up to ~3 GB/s via [NVMe](https://en.wikipedia.org/wiki/NVM_Express)/[PCIe](https://en.wikipedia.org/wiki/PCI_Express) in 2018, closing the gap between RAM and hard disk speeds, although RAM continues to be an order of magnitude faster, with single-lane [DDR4](https://en.wikipedia.org/wiki/DDR4_SDRAM) 3200 capable of 25 GB/s, and modern [GDDR](https://en.wikipedia.org/wiki/GDDR_SDRAM) even faster. Fast, cheap, [non-volatile](https://en.wikipedia.org/wiki/Non-volatile_memory) solid state drives have replaced some functions formerly performed by RAM, such as holding certain data for immediate availability in [server farms](https://en.wikipedia.org/wiki/Server_farm) - 1 [terabyte](https://en.wikipedia.org/wiki/Terabyte) of SSD storage can be had for $200, while 1 TB of RAM would cost thousands of dollars.[[38\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-38)[[39\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-39)

> 信号传输中的RC延迟在《时钟频率与IPC：传统微架构的终结者》[[33/]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-33)中也有所提及，该书预测在2000年至2014年期间，CPU性能的年平均提高幅度最多为12.5%。
>
> 一个不同的概念是处理器-内存的性能差距，这可以通过[3D集成电路](https://en.wikipedia.org/wiki/Three-dimensional_integrated_circuit)来解决，它减少了逻辑和内存方面的距离，而这些距离在2D芯片中是比较远的。[[34\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-34) 
>
> [内存子系统的设计需要关注这个差距，这个差距随着时间的推移在扩大。 [[35]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-35) 缩小差距的主要方法是使用[缓存](https://en.wikipedia.org/wiki/Cache_(computing))；少量的高速存储器在处理器附近存放最近的操作和指令，在频繁调用这些操作或指令的情况下加快执行速度。为了应对不断扩大的差距，已经开发了多个级别的缓存，现代高速计算机的性能依赖于不断发展的缓存技术。[[36\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-36) 处理器速度的增长与主存储器访问速度的滞后之间的差距可高达53%。[[37\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-37)
>
> [固态硬盘](https://en.wikipedia.org/wiki/Solid-state_drive)的速度不断提高，从2012年通过[SATA3](https://en.wikipedia.org/wiki/Serial_ATA)的~400 Mbit/s提高到2018年通过[NVMe](https://en.wikipedia.org/wiki/NVM_Express)/[PCIe](https://en.wikipedia.org/wiki/PCI_Express)的~3 GB/s，缩小了内存和硬盘速度之间的差距，尽管内存继续快一个数量级，单通道[DDR4](https://en.wikipedia.org/wiki/DDR4_SDRAM) 3200能够达到25 GB/s，现代[GDDR](https://en.wikipedia.org/wiki/GDDR_SDRAM) 甚至更快了。快速、廉价的[非易失性](https://en.wikipedia.org/wiki/Non-volatile_memory)固态硬盘已经取代了以前由RAM执行的一些功能，比如在[服务器群](https://en.wikipedia.org/wiki/Server_farm)中保存某些数据以便立即使用--1[TB](https://en.wikipedia.org/wiki/Terabyte)的固态硬盘存储可以用200美元买到，而1TB的RAM则需要数千美元。[[38\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-38)[[39\]](https://en.wikipedia.org/wiki/Random-access_memory#cite_note-39)

## Timeline

*See also:* [Flash memory § Timeline](https://en.wikipedia.org/wiki/Flash_memory#Timeline)*,* [Read-only memory § Timeline](https://en.wikipedia.org/wiki/Read-only_memory#Timeline)*, and* [Transistor count § Memory](https://en.wikipedia.org/wiki/Transistor_count#Memory)

SRAM

DRAM

SDRAM

SGRAM and HBM

## See also

- [CAS latency](https://en.wikipedia.org/wiki/CAS_latency) (CL)
- [Hybrid Memory Cube](https://en.wikipedia.org/wiki/Hybrid_Memory_Cube)
- [Multi-channel memory architecture](https://en.wikipedia.org/wiki/Multi-channel_memory_architecture)
- [Registered/buffered memory](https://en.wikipedia.org/wiki/Registered_memory)
- [RAM parity](https://en.wikipedia.org/wiki/RAM_parity)
- [Memory Interconnect/RAM buses](https://en.wikipedia.org/wiki/List_of_device_bit_rates#Memory_Interconnect.2FRAM_buses)
- [Memory geometry](https://en.wikipedia.org/wiki/Memory_geometry)
- [Chip creep](https://en.wikipedia.org/wiki/Chip_creep)
- [Read-mostly memory](https://en.wikipedia.org/wiki/Read-mostly_memory) (RMM)
- [Electrochemical random-access memory](https://en.wikipedia.org/wiki/Electrochemical_random-access_memory)

---





# CPU

A [**central processing unit** (**CPU**)](https://en.wikipedia.org/wiki/Central_processing_unit), also called a **central processor**, **main processor** or just **[processor](https://en.wikipedia.org/wiki/Processor_(computing))**, is the [electronic circuitry](https://en.wikipedia.org/wiki/Electronic_circuit) that executes [instructions](https://en.wikipedia.org/wiki/Instruction_(computing)) comprising a [computer program](https://en.wikipedia.org/wiki/Computer_program). The CPU performs basic [arithmetic](https://en.wikipedia.org/wiki/Arithmetic), logic, controlling, and [input/output](https://en.wikipedia.org/wiki/Input/output) (I/O) operations specified by the instructions in the program. This contrasts with external components such as [main memory](https://en.wikipedia.org/wiki/Main_memory) and I/O circuitry,[[1\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-kuck-1) and specialized processors such as [graphics processing units](https://en.wikipedia.org/wiki/Graphics_processing_unit) (GPUs).

The form, [design](https://en.wikipedia.org/wiki/CPU_design), and implementation of CPUs have changed over time, but their fundamental operation remains almost unchanged. Principal components of a CPU include the [arithmetic–logic unit](https://en.wikipedia.org/wiki/Arithmetic–logic_unit) (ALU) that performs arithmetic and [logic operations](https://en.wikipedia.org/wiki/Logic_operation), [processor registers](https://en.wikipedia.org/wiki/Processor_register) that supply [operands](https://en.wikipedia.org/wiki/Operand) to the ALU and store the results of ALU operations, and a [control unit](https://en.wikipedia.org/wiki/Control_unit) that orchestrates the [fetching (from memory)](https://en.wikipedia.org/wiki/Central_processing_unit#Fetch), [decoding](https://en.wikipedia.org/wiki/Central_processing_unit#Decode) and [execution (of instructions)](https://en.wikipedia.org/wiki/Central_processing_unit#Execute) by directing the coordinated operations of the ALU, registers and other components.

Most modern CPUs are implemented on [integrated circuit](https://en.wikipedia.org/wiki/Integrated_circuit) (IC) [microprocessors](https://en.wikipedia.org/wiki/Microprocessor), with one or more CPUs on a single IC chip. Microprocessor chips with multiple CPUs are [multi-core processors](https://en.wikipedia.org/wiki/Multi-core_processor). The individual physical CPUs, **processor cores**, can also be [multithreaded](https://en.wikipedia.org/wiki/Multithreading_(computer_architecture)) to create additional virtual or logical CPUs.[[2\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-intel-pcm-2)

An IC that contains a CPU may also contain [memory](https://en.wikipedia.org/wiki/Computer_memory), [peripheral](https://en.wikipedia.org/wiki/Peripheral) interfaces, and other components of a computer; such integrated devices are variously called [microcontrollers](https://en.wikipedia.org/wiki/Microcontroller) or [systems on a chip](https://en.wikipedia.org/wiki/System_on_a_chip) (SoC).

Array processors or [vector processors](https://en.wikipedia.org/wiki/Vector_processor) have multiple processors that operate in parallel, with no unit considered central. [Virtual CPUs](https://en.wikipedia.org/wiki/Central_processing_unit#Virtual_CPUs) are an abstraction of dynamical aggregated computational resources.[[3\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-3)

> 一个**中央处理单元**（**CPU**），也被称为**中央处理器**、**主处理器**或只是**[处理器](https://en.wikipedia.org/wiki/Processor_(computing))**，是执行由[计算机程序](https://en.wikipedia.org/wiki/Computer_program)组成的[指令](https://en.wikipedia.org/wiki/Electronic_circuit)的[电子电路]。CPU执行基本的[算术](https://en.wikipedia.org/wiki/Arithmetic)、逻辑、控制和[输入/输出](https://en.wikipedia.org/wiki/Input/output)(I/O)操作，由程序中的指令指定。这与[主存储器](https://en.wikipedia.org/wiki/Main_memory)和I/O电路、[[1]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-kuck-1)和[图形处理单元](https://en.wikipedia.org/wiki/Graphics_processing_unit)(GPU)等外部组件形成对比。
>
> 随着时间的推移，CPU的形式、[设计](https://en.wikipedia.org/wiki/CPU_design)和实现都发生了变化，但其基本操作几乎没有变化。CPU的主要组成部分包括执行算术和[逻辑运算](https://en.wikipedia.org/wiki/Logic_operation)的[算术-逻辑单元](https://en.wikipedia.org/wiki/Arithmetic-logic_unit)，向ALU提供[操作数](https://en.wikipedia.org/wiki/Operand)并存储ALU运算结果的[处理器寄存器](https://en.wikipedia.org/wiki/Processor_register)，以及[控制单元](https://en.wikipedia.org/wiki/Control_unit)通过指导ALU、寄存器和其他组件的协调操作来协调[（从内存）获取](https://en.wikipedia.org/wiki/Central_processing_unit#Fetch)、[解码](https://en.wikipedia.org/wiki/Central_processing_unit#Decode)和[（指令的）执行](https://en.wikipedia.org/wiki/Central_processing_unit#Execute)的工作。
>
> 大多数现代CPU是在[集成电路](https://en.wikipedia.org/wiki/Integrated_circuit)(IC)[微处理器](https://en.wikipedia.org/wiki/Microprocessor)上实现的，单个IC芯片上有一个或多个CPU。具有多个CPU的微处理器芯片是[多核处理器](https://en.wikipedia.org/wiki/Multi-core_processor)。单独的物理CPU，**处理器内核**，也可以是[多线程](https://en.wikipedia.org/wiki/Multithreading_(computer_architecture))，以创建额外的虚拟或逻辑CPU。[[2]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-intel-pcm-2)
>
> 包含CPU的集成电路还可能包含[存储器](https://en.wikipedia.org/wiki/Computer_memory)、[外设](https://en.wikipedia.org/wiki/Peripheral)接口和计算机的其他组件；这种集成设备被不同程度地称为[微控制器](https://en.wikipedia.org/wiki/Microcontroller)或[片上系统](https://en.wikipedia.org/wiki/System_on_a_chip)（SoC）。
>
> 阵列处理器或[矢量处理器](https://en.wikipedia.org/wiki/Vector_processor)有多个并行运行的处理器，没有任何单元被视为中心。[虚拟CPU](https://en.wikipedia.org/wiki/Central_processing_unit#Virtual_CPUs)是动态聚合计算资源的一种抽象。[[3]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-3)
>

## History

Early computers such as the [ENIAC](https://en.wikipedia.org/wiki/ENIAC) had to be physically rewired to perform different tasks, which caused these machines to be called "fixed-program computers".[[4\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-4) The "central processing unit" term has been in use since as early as 1955.[[5\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-weik1955-5)[[6\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-weik1961-6) Since the term "CPU" is generally defined as a device for [software](https://en.wikipedia.org/wiki/Software) (computer program) execution, the earliest devices that could rightly be called CPUs came with the advent of the [stored-program computer](https://en.wikipedia.org/wiki/Stored-program_computer).

The idea of a stored-program computer had been already present in the design of [J. Presper Eckert](https://en.wikipedia.org/wiki/J._Presper_Eckert) and [John William Mauchly](https://en.wikipedia.org/wiki/John_William_Mauchly)'s [ENIAC](https://en.wikipedia.org/wiki/ENIAC), but was initially omitted so that it could be finished sooner.[[7\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-7) On June 30, 1945, before ENIAC was made, mathematician [John von Neumann](https://en.wikipedia.org/wiki/John_von_Neumann) distributed the paper entitled *[First Draft of a Report on the EDVAC](https://en.wikipedia.org/wiki/First_Draft_of_a_Report_on_the_EDVAC)*. It was the outline of a stored-program computer that would eventually be completed in August 1949.[[8\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-8) [EDVAC](https://en.wikipedia.org/wiki/EDVAC) was designed to perform a certain number of instructions (or operations) of various types. Significantly, the programs written for EDVAC were to be stored in high-speed [computer memory](https://en.wikipedia.org/wiki/Memory_(computers)) rather than specified by the physical wiring of the computer.[[9\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-9) This overcame a severe limitation of ENIAC, which was the considerable time and effort required to reconfigure the computer to perform a new task.[[10\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-10) With von Neumann's design, the program that EDVAC ran could be changed simply by changing the contents of the memory. EDVAC, was not the first stored-program computer, the [Manchester Baby](https://en.wikipedia.org/wiki/Manchester_Baby) which was a small-scale experimental stored-program computer, ran its first program on 21 June 1948[[11\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-11) and the [Manchester Mark 1](https://en.wikipedia.org/wiki/Manchester_Mark_1) ran its first program during the night of 16–17 June 1949.[[12\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-12)

> 早期的计算机，如[ENIAC](https://en.wikipedia.org/wiki/ENIAC)必须在物理上重新布线以执行不同的任务，这导致这些机器被称为 "固定程序计算机"。[[4]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-4) "中央处理单元 "一词早在1955年就被使用了。[[5]](https://en.wikipedia. org/wiki/Central_processing_unit#cite_note-weik1955-5)[[6]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-weik1961-6)由于 "CPU"一词通常被定义为用于[软件](https://en.wikipedia.org/wiki/Software)（计算机程序）执行的设备，最早的设备可以正确地被称为CPU，是随着[存储程序计算机](https://en.wikipedia.org/wiki/Stored-program_computer)的出现。
>
> 在[J.Presper Eckert](https://en.wikipedia.org/wiki/J._Presper_Eckert)和[John William Mauchly](https://en.wikipedia.org/wiki/John_William_Mauchly)的[ENIAC](https://en.wikipedia.org/wiki/ENIAC)的设计中已经出现了存储程序计算机的想法，但最初被省略了，以便能够更快完成。[[7\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-7) 
>
> 1945年6月30日，在ENIAC制成之前，数学家 [John von Neumann](https://en.wikipedia.org/wiki/John_von_Neumann)分发了题为[EDVAC报告初稿](https://en.wikipedia.org/wiki/First_Draft_of_a_Report_on_the_EDVAC) 的论文。这是一台最终将于1949年8月完成的存储程序计算机的大纲。[[8]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-8) [EDVAC](https://en.wikipedia.org/wiki/EDVAC)被设计为执行一定数量的各种类型的指令（或操作）。重要的是，为EDVAC编写的程序将存储在高速[计算机存储器](https://en.wikipedia.org/wiki/Memory_(计算机))中，而不是由计算机的物理线路来指定。[[9\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-9)
>
> 这克服了ENIAC的一个严重限制，即重新配置计算机以执行新任务所需的大量时间和精力。[[10\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-10)
>
> 通过冯诺依曼的设计，EDVAC运行的程序可以通过改变存储器的内容而改变。EDVAC并不是第一台存储程序计算机，[Manchester Baby](https://en.wikipedia.org/wiki/Manchester_Baby)是一台小规模的实验性存储程序计算机，它在1948年6月21日运行了第一个程序[[11]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-11)，[Manchester Mark 1](https://en.wikipedia.org/wiki/Manchester_Mark_1)在1949年6月16-17日的夜晚运行了第一个程序。[[12]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-12)

Early CPUs were custom designs used as part of a larger and sometimes distinctive computer.[[13\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-13) However, this method of designing custom CPUs for a particular application has largely given way to the development of multi-purpose processors produced in large quantities. This standardization began in the era of discrete [transistor](https://en.wikipedia.org/wiki/Transistor) [mainframes](https://en.wikipedia.org/wiki/Mainframe_computer) and [minicomputers](https://en.wikipedia.org/wiki/Minicomputer) and has rapidly accelerated with the popularization of the [integrated circuit](https://en.wikipedia.org/wiki/Integrated_circuit) (IC). The IC has allowed increasingly complex CPUs to be designed and manufactured to tolerances on the order of [nanometers](https://en.wikipedia.org/wiki/Nanometre).[[14\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-nobel-14) Both the miniaturization and standardization of CPUs have increased the presence of digital devices in modern life far beyond the limited application of dedicated computing machines. Modern microprocessors appear in electronic devices ranging from automobiles[[15\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-15) to cellphones,[[16\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-16) and sometimes even in toys.[[17\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-17)[[18\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-18)

While von Neumann is most often credited with the design of the stored-program computer because of his design of EDVAC, and the design became known as the [von Neumann architecture](https://en.wikipedia.org/wiki/Von_Neumann_architecture), others before him, such as [Konrad Zuse](https://en.wikipedia.org/wiki/Konrad_Zuse), had suggested and implemented similar ideas.[[19\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-19) The so-called [Harvard architecture](https://en.wikipedia.org/wiki/Harvard_architecture) of the [Harvard Mark I](https://en.wikipedia.org/wiki/Harvard_Mark_I), which was completed before EDVAC,[[20\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-20)[[21\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-21) also used a stored-program design using [punched paper tape](https://en.wikipedia.org/wiki/Punched_tape) rather than electronic memory.[[22\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-22) The key difference between the von Neumann and Harvard architectures is that the latter separates the storage and treatment of CPU instructions and data, while the former uses the same memory space for both.[[23\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-23) Most modern CPUs are primarily von Neumann in design, but CPUs with the Harvard architecture are seen as well, especially in embedded applications; for instance, the [Atmel AVR](https://en.wikipedia.org/wiki/Atmel_AVR) microcontrollers are Harvard architecture processors.[[24\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-24)

> 早期的CPU是定制设计，作为更大的、有时是独特的计算机的一部分使用。[[13]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-13)然而，这种为特定应用设计定制CPU的方法，在很大程度上已经让位于大量生产的多用途处理器的发展。这种标准化始于分立[晶体管](https://en.wikipedia.org/wiki/Transistor)[大型机](https://en.wikipedia.org/wiki/Mainframe_computer)和[微型计算机](https://en.wikipedia.org/wiki/Minicomputer)时代，随着[集成电路](https://en.wikipedia.org/wiki/Integrated_circuit)(IC)的普及而迅速加快。集成电路使日益复杂的中央处理器的设计和制造达到了[纳米](https://en.wikipedia.org/wiki/Nanometre)的公差。[[14]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-nobel-14)中央处理器的小型化和标准化使数字设备在现代生活中的存在远远超过了专用计算机的有限应用。现代微处理器出现在从汽车[[15]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-15)到手机的各种电子设备中，[[16]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-16)有时甚至出现在玩具中。[[17]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-17)[[18]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-18)
>
> 虽然冯-诺依曼因为设计EDVAC而最常被认为是设计了存储程序计算机，而且这种设计被称为[冯-诺依曼架构](https://en.wikipedia.org/wiki/Von_Neumann_architecture)，但在他之前的其他人，如[康拉德-祖思](https://en.wikipedia.org/wiki/Konrad_Zuse)，也提出并实现了类似的想法。[[19]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-19)所谓的[哈佛架构](https://en.wikipedia.org/wiki/Harvard_architecture)的[哈佛马克一世](https://en.wikipedia.org/wiki/Harvard_Mark_I)，在EDVAC之前就已经完成了，[[20]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-20)[[21]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-21)也采用了存储程序设计，使用[打孔纸带](https://en.wikipedia.org/wiki/Punched_tape)而不是电子存储器。[[22]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-22) 
>
> 冯-诺伊曼和哈佛架构的关键区别在于，后者将CPU指令和数据的存储和处理分开，而前者将两者使用同一个存储器空间。 [[23]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-23)大多数现代CPU在设计上主要是冯-诺依曼结构，但也可以看到哈佛结构的CPU，特别是在嵌入式应用中；例如，[Atmel AVR](https://en.wikipedia.org/wiki/Atmel_AVR)微控制器就是哈佛结构的处理器。

[Relays](https://en.wikipedia.org/wiki/Relay) and [vacuum tubes](https://en.wikipedia.org/wiki/Vacuum_tube) (thermionic tubes) were commonly used as switching elements;[[25\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-25)[[26\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-26) a useful computer requires thousands or tens of thousands of switching devices. The overall speed of a system is dependent on the speed of the switches. [Vacuum-tube computers](https://en.wikipedia.org/wiki/Vacuum-tube_computer) such as EDVAC tended to average eight hours between failures, whereas relay computers like the (slower, but earlier) [Harvard Mark I](https://en.wikipedia.org/wiki/Harvard_Mark_I) failed very rarely.[[6\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-weik1961-6) In the end, tube-based CPUs became dominant because the significant speed advantages afforded generally outweighed the reliability problems. Most of these early synchronous CPUs ran at low [clock rates](https://en.wikipedia.org/wiki/Clock_rate) compared to modern microelectronic designs. Clock signal frequencies ranging from 100 [kHz](https://en.wikipedia.org/wiki/Hertz) to 4 MHz were very common at this time, limited largely by the speed of the switching devices they were built with.[[27\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-27)

> [继电器](https://en.wikipedia.org/wiki/Relay)和[真空管](https://en.wikipedia.org/wiki/Vacuum_tube)（热离子管）通常被用作开关元件；[[25]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-25)[[26]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-26)一台有用的计算机需要几千或几万个开关器件。一个系统的整体速度取决于开关的速度。像EDVAC这样的[真空管计算机](https://en.wikipedia.org/wiki/Vacuum-tube_computer)往往在两次故障之间平均间隔8小时，而像[哈佛Mark I](https://en.wikipedia.org/wiki/Harvard_Mark_I)这样的继电器计算机（速度较慢，但较早）很少发生故障。[[6]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-weik1961-6)最终，基于管子的CPU成为主导，因为其提供的显著速度优势通常超过了可靠性问题。与现代微电子设计相比，这些早期的同步CPU大多以低[时钟率](https://en.wikipedia.org/wiki/Clock_rate)运行。时钟信号频率从100[kHz](https://en.wikipedia.org/wiki/Hertz)到4MHz不等，这在当时非常普遍，主要受限于它们所使用的开关器件的速度。[[27]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-27)



### Transistor CPUs

The design complexity of CPUs increased as various technologies facilitated building smaller and more reliable electronic devices. The first such improvement came with the advent of the [transistor](https://en.wikipedia.org/wiki/Transistor). Transistorized CPUs during the 1950s and 1960s no longer had to be built out of bulky, unreliable and fragile switching elements like [vacuum tubes](https://en.wikipedia.org/wiki/Vacuum_tube) and [relays](https://en.wikipedia.org/wiki/Relay).[[28\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-28) With this improvement, more complex and reliable CPUs were built onto one or several [printed circuit boards](https://en.wikipedia.org/wiki/Printed_circuit_board) containing discrete (individual) components.

> 随着各种技术促进了制造更小、更可靠的电子设备，CPU的设计复杂性也在增加。第一个这样的改进是随着[晶体管](https://en.wikipedia.org/wiki/Transistor)的出现。在20世纪50年代和60年代，晶体管CPU不再需要用笨重、不可靠和脆弱的开关元件，如[真空管](https://en.wikipedia.org/wiki/Vacuum_tube)和[继电器](https://en.wikipedia.org/wiki/Relay)。[[28]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-28)随着这一改进，更复杂和可靠的CPU被建在一个或几个[印刷电路板](https://en.wikipedia.org/wiki/Printed_circuit_board)上，包含分立（单独）元件。

In 1964, [IBM](https://en.wikipedia.org/wiki/IBM) introduced its [IBM System/360](https://en.wikipedia.org/wiki/IBM_System/360) computer architecture that was used in a series of computers capable of running the same programs with different speed and performance.[[29\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-29) This was significant at a time when most electronic computers were incompatible with one another, even those made by the same manufacturer. To facilitate this improvement, IBM used the concept of a [microprogram](https://en.wikipedia.org/wiki/Microprogram) (often called "microcode"), which still sees widespread usage in modern CPUs.[[30\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-amdahl1964-30) The System/360 architecture was so popular that it dominated the [mainframe computer](https://en.wikipedia.org/wiki/Mainframe_computer) market for decades and left a legacy that is still continued by similar modern computers like the IBM [zSeries](https://en.wikipedia.org/wiki/IBM_System_z).[[31\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-31)[[32\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-32) In 1965, [Digital Equipment Corporation](https://en.wikipedia.org/wiki/Digital_Equipment_Corporation) (DEC) introduced another influential computer aimed at the scientific and research markets, the [PDP-8](https://en.wikipedia.org/wiki/PDP-8).[[33\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-33)

> 1964年，[IBM](https://en.wikipedia.org/wiki/IBM)推出了[IBM System/360](https://en.wikipedia.org/wiki/IBM_System/360)计算机架构，该架构被用于一系列能够以不同速度和性能运行相同程序的计算机。[[29]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-29)这在当时意义重大，当时大多数电子计算机彼此不兼容，即使是由同一制造商制造的计算机。为了促进这种改进，IBM使用了[microprogram](https://en.wikipedia.org/wiki/Microprogram)（通常称为 "微代码"）的概念，它在现代CPU中仍然得到了广泛的使用。[[30\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-amdahl1964-30) System/360架构是如此受欢迎，以至于它在[大型计算机](https://en.wikipedia.org/wiki/Mainframe_computer)市场上统治了几十年，并留下了一份遗产，类似的现代计算机如IBM[z系列](https://en.wikipedia.org/wiki/IBM_System_z)仍在继续。[[31\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-31)[[32\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-32) 1965年，[数字设备公司](https://en.wikipedia.org/wiki/Digital_Equipment_Corporation)（DEC）针对科学和研究市场引入了另一种有影响力的计算机，[PDP-8](https://en.wikipedia.org/wiki/PDP-8) 。

Transistor-based computers had several distinct advantages over their predecessors. Aside from facilitating increased reliability and lower power consumption, transistors also allowed CPUs to operate at much higher speeds because of the short switching time of a transistor in comparison to a tube or relay.[[34\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-34) The increased reliability and dramatically increased speed of the switching elements (which were almost exclusively transistors by this time); CPU clock rates in the tens of megahertz were easily obtained during this period.[[35\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-pcgamer-35) Additionally, while discrete transistor and IC CPUs were in heavy usage, new high-performance designs like [single instruction, multiple data](https://en.wikipedia.org/wiki/Single_instruction,_multiple_data) (SIMD) [vector processors](https://en.wikipedia.org/wiki/Vector_processor) began to appear.[[36\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-patterson-36) These early experimental designs later gave rise to the era of specialized [supercomputers](https://en.wikipedia.org/wiki/Supercomputer) like those made by [Cray Inc](https://en.wikipedia.org/wiki/Cray) and [Fujitsu Ltd](https://en.wikipedia.org/wiki/Fujitsu).[[36\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-patterson-36)

> 基于晶体管的计算机与它们的前辈相比有几个明显的优势。除了有利于提高可靠性和降低功耗外，晶体管还允许CPU以更高的速度运行，因为与电子管或继电器相比，晶体管的开关时间很短。[[34]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-34)可靠性的提高和开关元件（此时几乎全是晶体管）速度的大幅提高；在此期间，CPU的时钟速率很容易达到几十兆赫兹。 [[35]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-pcgamer-35) 此外，在分立晶体管和集成电路CPU被大量使用的同时，新的高性能设计，如[单指令、多数据](https://en.wikipedia.org/wiki/Single_instruction,_multiple_data)（SIMD）[矢量处理器](https://en.wikipedia.org/wiki/Vector_processor)开始出现。[[36]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-patterson-36) 这些早期的实验性设计后来催生了专门的[超级计算机](https://en.wikipedia.org/wiki/Supercomputer)时代，如[Cray Inc](https://en.wikipedia.org/wiki/Cray)和[Fujitsu Ltd](https://en.wikipedia.org/wiki/Fujitsu)制造的超级计算机。[[36]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-patterson-36)
>



### Small-scale integration CPUs

During this period, a method of manufacturing many interconnected transistors in a compact space was developed. The [integrated circuit](https://en.wikipedia.org/wiki/Integrated_circuit) (IC) allowed a large number of transistors to be manufactured on a single [semiconductor](https://en.wikipedia.org/wiki/Semiconductor)-based [die](https://en.wikipedia.org/wiki/Die_(integrated_circuit)), or "chip". At first, only very basic non-specialized digital circuits such as [NOR gates](https://en.wikipedia.org/wiki/NOR_gate) were miniaturized into ICs.[[37\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-37) CPUs based on these "building block" ICs are generally referred to as "small-scale integration" (SSI) devices. SSI ICs, such as the ones used in the [Apollo Guidance Computer](https://en.wikipedia.org/wiki/Apollo_Guidance_Computer), usually contained up to a few dozen transistors. To build an entire CPU out of SSI ICs required thousands of individual chips, but still consumed much less space and power than earlier discrete transistor designs.[[38\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-38)

> 在这一时期，一种在紧凑空间内制造许多相互连接的晶体管的方法被开发出来。[集成电路](https://en.wikipedia.org/wiki/Integrated_circuit)(IC)允许在一个基于[半导体](https://en.wikipedia.org/wiki/Semiconductor)的[芯片](https://en.wikipedia.org/wiki/Die_(integrated_circuit))上制造大量的晶体管，或 "芯片"。起初，只有非常基本的非专业数字电路，如[NOR门](https://en.wikipedia.org/wiki/NOR_gate)被小型化为集成电路。[[37]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-37)基于这些 "积木式"集成电路的CPU通常被称为 "小规模集成"（SSI）器件。SSI集成电路，如[阿波罗制导计算机](https://en.wikipedia.org/wiki/Apollo_Guidance_Computer)中使用的那些，通常包含多达几十个晶体管。用SSI集成电路构建整个CPU需要数以千计的独立芯片，但与早期的分立晶体管设计相比，消耗的空间和功率仍然要小得多。[[38]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-38)

IBM's [System/370](https://en.wikipedia.org/wiki/System/370), follow-on to the System/360, used SSI ICs rather than [Solid Logic Technology](https://en.wikipedia.org/wiki/Solid_Logic_Technology) discrete-transistor modules.[[39\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-39)[[40\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-40) DEC's [PDP-8](https://en.wikipedia.org/wiki/PDP-8)/I and KI10 [PDP-10](https://en.wikipedia.org/wiki/PDP-10) also switched from the individual transistors used by the PDP-8 and PDP-10 to SSI ICs,[[41\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-41) and their extremely popular [PDP-11](https://en.wikipedia.org/wiki/PDP-11) line was originally built with SSI ICs but was eventually implemented with LSI components once these became practical.

> IBM的[System/370](https://en.wikipedia.org/wiki/System/370)，即System/360的后续产品，使用了SSI集成电路，而不是[Solid Logic Technology](https://en.wikipedia.org/wiki/Solid_Logic_Technology)分立晶体管模块。[[39\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-39)[[40\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-40) DEC的[PDP-8](https://en.wikipedia。 org/wiki/PDP-8)/I和KI10 [PDP-10](https://en.wikipedia.org/wiki/PDP-10)也从PDP-8和PDP-10使用的单个晶体管转向SSI集成电路，[[41\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-41)而他们极为流行的[PDP-11](https://en.wikipedia.org/wiki/PDP-11)系列最初是用SSI集成电路制造的，但最终在这些元件变得实用后用LSI元件实现。
>



### Large-scale integration CPUs

Lee Boysel published influential articles, including a 1967 "manifesto", which described how to build the equivalent of a 32-bit mainframe computer from a relatively small number of [large-scale integration](https://en.wikipedia.org/wiki/Large-scale_integration) circuits (LSI).[[42\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-42)[[43\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-shirriff-43) The only way to build LSI chips, which are chips with a hundred or more gates, was to build them using a [metal–oxide–semiconductor](https://en.wikipedia.org/wiki/Metal–oxide–semiconductor) (MOS) [semiconductor manufacturing process](https://en.wikipedia.org/wiki/Semiconductor_manufacturing_process) (either [PMOS logic](https://en.wikipedia.org/wiki/PMOS_logic), [NMOS logic](https://en.wikipedia.org/wiki/NMOS_logic), or [CMOS](https://en.wikipedia.org/wiki/CMOS) logic). However, some companies continued to build processors out of bipolar [transistor–transistor logic](https://en.wikipedia.org/wiki/Transistor–transistor_logic) (TTL) chips because bipolar junction transistors were faster than MOS chips up until the 1970s (a few companies such as [Datapoint](https://en.wikipedia.org/wiki/Datapoint) continued to build processors out of TTL chips until the early 1980s).[[43\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-shirriff-43) In the 1960s, MOS ICs were slower and initially considered useful only in applications that required low power.[[44\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-44)[[45\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-45) Following the development of [silicon-gate](https://en.wikipedia.org/wiki/Silicon-gate) MOS technology by [Federico Faggin](https://en.wikipedia.org/wiki/Federico_Faggin) at Fairchild Semiconductor in 1968, MOS ICs largely replaced bipolar TTL as the standard chip technology in the early 1970s.[[46\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-46)

> 李-博瑟尔发表了有影响力的文章，包括1967年的 "宣言"，其中描述了如何用相对较少的[大规模集成](https://en.wikipedia.org/wiki/Large-scale_integration)电路(LSI)构建相当于32位的大型计算机。[[42]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-42)[[43]](https://en.wikipedia. org/wiki/Central_processing_unit#cite_note-shirriff-43)制造LSI芯片的唯一方法是使用[金属氧化物半导体](https://en.wikipedia.org/wiki/Metal-oxide-semiconductor)（MOS）[半导体制造工艺](https://en.wikipedia.org/wiki/Semiconductor_manufacturing_process)（无论是[PMOS逻辑](https://en.wikipedia.org/wiki/PMOS_logic)、[NMOS逻辑](https://en.wikipedia.org/wiki/NMOS_logic)还是[CMOS](https://en.wikipedia.org/wiki/CMOS)逻辑）来制造它们。然而，一些公司继续用双极[晶体管-晶体管逻辑](https://en.wikipedia.org/wiki/Transistor-transistor_logic)(TTL)芯片制造处理器，因为直到1970年代，双极结晶体管的速度比MOS芯片快（少数公司如[Datapoint](https://en.wikipedia.org/wiki/Datapoint)继续用TTL芯片制造处理器，直到1980年代初）。[[43]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-shirriff-43) 1960年代，MOS集成电路较慢，最初认为只适用于需要低功率的应用。 [[44\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-44)[[45\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-45) 1968年，飞兆半导体公司的[Federico Faggin](https://en.wikipedia.org/wiki/Federico_Faggin)开发出[硅门](https://en.wikipedia.org/wiki/Silicon-gate)MOS技术后，MOS集成电路在1970年代初基本上取代了双极TTL，成为标准的芯片技术。[[46\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-46)

As the [microelectronic](https://en.wikipedia.org/wiki/Microelectronic) technology advanced, an increasing number of transistors were placed on ICs, decreasing the number of individual ICs needed for a complete CPU. MSI and LSI ICs increased transistor counts to hundreds, and then thousands. By 1968, the number of ICs required to build a complete CPU had been reduced to 24 ICs of eight different types, with each IC containing roughly 1000 MOSFETs.[[47\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-47) In stark contrast with its SSI and MSI predecessors, the first LSI implementation of the PDP-11 contained a CPU composed of only four LSI integrated circuits.[[48\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-48)

> 随着[微电子](https://en.wikipedia.org/wiki/Microelectronic)技术的发展，越来越多的晶体管被放置在集成电路上，减少了一个完整的CPU所需的单个集成电路的数量。MSI和LSI集成电路的晶体管数量增加到数百个，然后是数千个。到1968年，建立一个完整的CPU所需的IC数量已经减少到8种不同类型的24个IC，每个IC大约包含1000个MOSFET。[[47]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-47) 与其SSI和MSI的前身形成鲜明对比的是，PDP-11的第一个LSI实现包含一个仅由四个LSI集成电路组成的CPU。[[48]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-48)
>



### Microprocessors

Since microprocessors were first introduced they have almost completely overtaken all other central processing unit implementation methods. The first commerically available microprocessor, made in 1971, was the [Intel 4004](https://en.wikipedia.org/wiki/Intel_4004), and the first widely used microprocessor, made in 1974, was the [Intel 8080](https://en.wikipedia.org/wiki/Intel_8080). Mainframe and minicomputer manufacturers of the time launched proprietary IC development programs to upgrade their older [computer architectures](https://en.wikipedia.org/wiki/Computer_architecture), and eventually produced [instruction set](https://en.wikipedia.org/wiki/Instruction_set) compatible microprocessors that were backward-compatible with their older hardware and software. Combined with the advent and eventual success of the ubiquitous [personal computer](https://en.wikipedia.org/wiki/Personal_computer), the term *CPU* is now applied almost exclusively[[a\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-49) to microprocessors. Several CPUs (denoted *cores*) can be combined in a single processing chip.[[49\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-50)

> 自微处理器问世以来，它们几乎完全超越了所有其他中央处理单元的实现方法。1971年制造的第一个商业化的微处理器是[英特尔4004](https://en.wikipedia.org/wiki/Intel_4004)，1974年制造的第一个广泛使用的微处理器是[英特尔8080](https://en.wikipedia.org/wiki/Intel_8080)。当时的大型机和微型计算机制造商启动了专有的集成电路开发计划，以升级其旧的[计算机架构](https://en.wikipedia.org/wiki/Computer_architecture)，并最终生产出与旧硬件和软件向后兼容的[指令集](https://en.wikipedia.org/wiki/Instruction_set) 微处理器。再加上无处不在的[个人电脑](https://en.wikipedia.org/wiki/Personal_computer)的出现和最终的成功，*CPU*这个词现在几乎只适用于[[a]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-49)微处理器。几个CPU（表示为*cores*）可以组合在一个处理芯片中。[[49]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-50)
>

Previous generations of CPUs were implemented as [discrete components](https://en.wikipedia.org/wiki/Discrete_components) and numerous small [integrated circuits](https://en.wikipedia.org/wiki/Integrated_circuit) (ICs) on one or more circuit boards.[[50\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-51) Microprocessors, on the other hand, are CPUs manufactured on a very small number of ICs; usually just one.[[51\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-Osborne80-52) The overall smaller CPU size, as a result of being implemented on a single die, means faster switching time because of physical factors like decreased gate [parasitic capacitance](https://en.wikipedia.org/wiki/Parasitic_capacitance).[[52\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-53)[[53\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-54) This has allowed synchronous microprocessors to have clock rates ranging from tens of megahertz to several gigahertz. Additionally, the ability to construct exceedingly small transistors on an IC has increased the complexity and number of transistors in a single CPU many fold. This widely observed trend is described by [Moore's law](https://en.wikipedia.org/wiki/Moore's_law), which had proven to be a fairly accurate predictor of the growth of CPU (and other IC) complexity until 2016.[[54\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-55)[[55\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-MooresLaw-56)

> 前几代的CPU是以[分立元件](https://en.wikipedia.org/wiki/Discrete_components)和众多小型[集成电路](https://en.wikipedia.org/wiki/Integrated_circuit)(IC)的形式在一块或多块电路板上实现的。[[50]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-51)另一方面，微处理器是以极少的IC制造的CPU；通常只有一块。[[51]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-Osborne80-52) 由于在单个芯片上实现，CPU的整体尺寸较小，意味着开关时间更快，因为门[寄生电容](https://en.wikipedia.org/wiki/Parasitic_capacitance)减少等物理因素。[[52]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-53)[[53]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-54)这使得同步微处理器的时钟速率从几十兆赫兹到几千兆赫兹。此外，在集成电路上构建超小型晶体管的能力使单个CPU的复杂性和晶体管的数量增加了许多倍。这一被广泛观察到的趋势由[摩尔定律](https://en.wikipedia.org/wiki/Moore's_law)描述，在2016年之前，该定律被证明是对CPU（和其他IC）复杂性增长的一个相当准确的预测。[[54]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-55)[[55]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-MooresLaw-56)

While the complexity, size, construction and general form of CPUs have changed enormously since 1950,[[56\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-57) the basic design and function has not changed much at all. Almost all common CPUs today can be very accurately described as von Neumann stored-program machines.[[57\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-58)[[b\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-60) As Moore's law no longer holds, concerns have arisen about the limits of integrated circuit transistor technology. Extreme miniaturization of [electronic gates](https://en.wikipedia.org/wiki/Logic_gate) is causing the effects of phenomena like [electromigration](https://en.wikipedia.org/wiki/Electromigration) and [subthreshold leakage](https://en.wikipedia.org/wiki/Subthreshold_leakage) to become much more significant.[[59\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-61)[[60\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-62) These newer concerns are among the many factors causing researchers to investigate new methods of computing such as the [quantum computer](https://en.wikipedia.org/wiki/Quantum_computer), as well as to expand the usage of [parallelism](https://en.wikipedia.org/wiki/Parallel_computing) and other methods that extend the usefulness of the classical von Neumann model.

> 虽然自1950年以来，CPU的复杂性、尺寸、结构和一般形式都发生了巨大的变化，但[[56]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-57)基本设计和功能根本没有什么变化。今天，几乎所有常见的CPU都可以非常准确地描述为冯-诺依曼存储程序机。[[57]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-58)[[b]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-60)由于摩尔定律不再成立，人们对集成电路晶体管技术的极限产生了担忧。[电子门](https://en.wikipedia.org/wiki/Logic_gate)的极端微型化导致[电迁移](https://en.wikipedia.org/wiki/Electromigration)和[阈下漏电](https://en.wikipedia.org/wiki/Subthreshold_leakage)等现象的影响变得更加显著。[[59]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-61)[[60]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-62)这些新的关注是导致研究人员研究新的计算方法，如[量子计算机](https://en.wikipedia.org/wiki/Quantum_computer)，以及扩大[并行性](https://en.wikipedia.org/wiki/Parallel_computing)和其他扩展经典冯诺依曼模型效用的方法的许多因素之一。



## Operation

The fundamental operation of most CPUs, regardless of the physical form they take, is to execute a sequence of stored [instructions](https://en.wikipedia.org/wiki/Instruction_(computing)) that is called a program. The instructions to be executed are kept in some kind of [computer memory](https://en.wikipedia.org/wiki/Memory_(computers)). Nearly all CPUs follow the **fetch, decode and execute** steps in their operation, which are collectively known as the [instruction cycle](https://en.wikipedia.org/wiki/Instruction_cycle).

> 大多数CPU的基本操作，无论它们采取何种物理形式，都是执行一串存储的[指令](https://en.wikipedia.org/wiki/Instruction_(computing))，这被称为程序。要执行的指令被保存在某种[计算机存储器](https://en.wikipedia.org/wiki/Memory_(computer))中。几乎所有的CPU在运行过程中都遵循获取、解码和执行的步骤，这些步骤被统称为[指令周期](https://en.wikipedia.org/wiki/Instruction_cycle)。

After the execution of an instruction, the entire process repeats, with the next instruction cycle normally fetching the next-in-sequence instruction because of the incremented value in the [program counter](https://en.wikipedia.org/wiki/Program_counter). If a jump instruction was executed, the program counter will be modified to contain the address of the instruction that was jumped to and program execution continues normally. In more complex CPUs, multiple instructions can be fetched, decoded and executed simultaneously. This section describes what is generally referred to as the "[classic RISC pipeline](https://en.wikipedia.org/wiki/Classic_RISC_pipeline)", which is quite common among the simple CPUs used in many electronic devices (often called microcontrollers). It largely ignores the important role of CPU cache, and therefore the access stage of the pipeline.

> 在执行完一条指令后，整个过程重复进行，由于[程序计数器](https://en.wikipedia.org/wiki/Program_counter)中的数值增加，下一个指令周期通常会获取下一条连续的指令。如果执行了跳转指令，程序计数器将被修改为包含被跳转到的指令的地址，程序执行继续正常进行。在更复杂的CPU中，多条指令可以同时被取用、解码和执行。本节介绍的是通常所说的"[经典RISC流水线](https://en.wikipedia.org/wiki/Classic_RISC_pipeline)"，这在许多电子设备（通常称为微控制器）使用的简单CPU中相当普遍。它在很大程度上忽略了CPU缓存的重要作用，因此也忽略了流水线的访问阶段。

Some instructions manipulate the program counter rather than producing result data directly; such instructions are generally called "jumps" and facilitate program behavior like [loops](https://en.wikipedia.org/wiki/Control_flow#Loops), conditional program execution (through the use of a conditional jump), and existence of [functions](https://en.wikipedia.org/wiki/Subroutine).[[c\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-63) In some processors, some other instructions change the state of bits in a ["flags" register](https://en.wikipedia.org/wiki/Status_register). These flags can be used to influence how a program behaves, since they often indicate the outcome of various operations. For example, in such processors a "compare" instruction evaluates two values and sets or clears bits in the flags register to indicate which one is greater or whether they are equal; one of these flags could then be used by a later jump instruction to determine program flow.

> 有些指令操纵程序计数器，而不是直接产生结果数据；这类指令一般被称为 "跳转"，并促进程序行为，如[循环](https://en.wikipedia.org/wiki/Control_flow#Loops)、有条件的程序执行（通过使用条件跳转）和[函数](https://en.wikipedia.org/wiki/Subroutine)的存在。[[c\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-63) 在一些处理器中，其他一些指令改变["flag"寄存器](https://en.wikipedia.org/wiki/Status_register)中的位状态。这些标志可以用来影响程序的行为方式，因为它们经常表明各种操作的结果。例如，在这样的处理器中，"compare"指令评估两个值，并设置或清除标志寄存器中的位，以表明哪个值更大或它们是否相等；然后这些标志之一可以被后来的跳转指令用来确定程序流程。



### Fetch

Fetch involves retrieving an [instruction](https://en.wikipedia.org/wiki/Instruction_(computing)) (which is represented by a number or sequence of numbers) from program memory. The instruction's location (address) in program memory is determined by the [program counter](https://en.wikipedia.org/wiki/Program_counter) (PC; called the "instruction pointer" in [Intel x86 microprocessors](https://en.wikipedia.org/wiki/X86)), which stores a number that identifies the address of the next instruction to be fetched. After an instruction is fetched, the PC is incremented by the length of the instruction so that it will contain the address of the next instruction in the sequence.[[d\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-64) Often, the instruction to be fetched must be retrieved from relatively slow memory, causing the CPU to stall while waiting for the instruction to be returned. This issue is largely addressed in modern processors by caches and pipeline architectures (see below).

> 取数包括从程序存储器中取回一条[指令](https://en.wikipedia.org/wiki/Instruction_(computing))（用一个数字或数字序列表示）。指令在程序存储器中的位置（地址）由[程序计数器](https://en.wikipedia.org/wiki/Program_counter)（PC；在[英特尔x86微处理器](https://en.wikipedia.org/wiki/X86)中称为 "指令指针"）决定，它存储了一个数字，用来确定下一条要取回的指令的地址。在一条指令被取走后，PC被指令的长度增加，因此它将包含序列中下一条指令的地址。[[d]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-64)通常，要取走的指令必须从相对较慢的内存中检索出来，导致CPU在等待指令返回时停滞。这个问题在现代处理器中主要通过缓存和流水线架构来解决（见下文）。



### Decode

The instruction that the CPU fetches from memory determines what the CPU will do. In the decode step, performed by [binary decoder](https://en.wikipedia.org/wiki/Binary_decoder) circuitry known as the *instruction decoder*, the instruction is converted into signals that control other parts of the CPU.

The way in which the instruction is interpreted is defined by the CPU's instruction set architecture (ISA).[[e\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-65) Often, one group of bits (that is, a "field") within the instruction, called the opcode, indicates which operation is to be performed, while the remaining fields usually provide supplemental information required for the operation, such as the operands. Those operands may be specified as a constant value (called an immediate value), or as the location of a value that may be a [processor register](https://en.wikipedia.org/wiki/Processor_register) or a memory address, as determined by some [addressing mode](https://en.wikipedia.org/wiki/Addressing_mode).

In some CPU designs the instruction decoder is implemented as a hardwired, unchangeable binary decoder circuit. In others, a [microprogram](https://en.wikipedia.org/wiki/Microprogram) is used to translate instructions into sets of CPU configuration signals that are applied sequentially over multiple clock pulses. In some cases the memory that stores the microprogram is rewritable, making it possible to change the way in which the CPU decodes instructions.

> CPU从内存中获取的指令决定了CPU将做什么。在由被称为*指令解码器*的[二进制解码器](https://en.wikipedia.org/wiki/Binary_decoder)电路执行的解码步骤中，指令被转换为控制CPU其他部分的信号。
>
> 解读指令的方式由CPU的指令集架构（ISA）定义。[[e\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-65)通常，指令中的一组比特（即 "字段"），称为**操作码**，表示要执行的操作，而其余字段通常提供操作所需的补充信息，如操作数。这些操作数可以指定为一个常量值（称为即时值），或者指定为一个值的位置，该值可以是一个[处理器寄存器](https://en.wikipedia.org/wiki/Processor_register)或一个内存地址，由一些[寻址模式](https://en.wikipedia.org/wiki/Addressing_mode)决定。
>
> 在一些CPU设计中，指令解码器被实现为一个硬连接的、不可改变的二进制解码器电路。在其他设计中，[微程序](https://en.wikipedia.org/wiki/Microprogram)被用来将指令翻译成CPU配置信号集，这些信号在多个时钟脉冲中被顺序应用。在某些情况下，存储微程序的存储器是可重写的，这使得改变CPU解码指令的方式成为可能。



### Execute

After the fetch and decode steps, the execute step is performed. Depending on the CPU architecture, this may consist of a single action or a sequence of actions. During each action, control signals electrically enable or disable various parts of the CPU so they can perform all or part of the desired operation. The action is then completed, typically in response to a clock pulse. Very often the results are written to an internal CPU register for quick access by subsequent instructions. In other cases results may be written to slower, but less expensive and higher capacity [main memory](https://en.wikipedia.org/wiki/Random-access_memory).

For example, if an addition instruction is to be executed, registers containing operands (numbers to be summed) are activated, as are the parts of the [arithmetic logic unit](https://en.wikipedia.org/wiki/Arithmetic_logic_unit) (ALU) that perform addition. When the clock pulse occurs, the operands flow from the source registers into the ALU, and the sum appears at its output. On subsequent clock pulses, other components are enabled (and disabled) to move the output (the sum of the operation) to storage (e.g., a register or memory). If the resulting sum is too large (i.e., it is larger than the ALU's output word size), an arithmetic overflow flag will be set, influencing the next operation.

> 在获取和解码步骤之后，执行步骤被执行。根据CPU的结构，这可能包括一个单一的动作或一连串的动作。在每个动作中，控制信号使CPU的各个部分电气化或禁用，以便它们能够执行全部或部分所需的操作。然后动作完成，通常是对一个时钟脉冲的响应。很多时候，结果被写入CPU的内部寄存器，以便被后续指令快速访问。在其他情况下，结果可能被写入速度较慢、但成本较低、容量较大的[主存储器](https://en.wikipedia.org/wiki/Random-access_memory)。
>
> 例如，如果要执行加法指令，包含操作数（要加的数字）的寄存器被激活，执行加法的[算术逻辑单元](https://en.wikipedia.org/wiki/Arithmetic_logic_unit)（ALU）的部分也被激活。当时钟脉冲发生时，操作数从源寄存器流向ALU，和出现在其输出端。在随后的时钟脉冲中，其他组件被启用（和禁用），以将输出（操作数的总和）转移到存储（例如，寄存器或存储器）。如果产生的和过大（即大于ALU的输出字数），将设置一个算术溢出标志，影响下一个操作。



## Structure and implementation

Hardwired into a CPU's circuitry is a set of basic operations it can perform, called an [instruction set](https://en.wikipedia.org/wiki/Instruction_set). Such operations may involve, for example, adding or subtracting two numbers, comparing two numbers, or jumping to a different part of a program. Each instruction is represented by a unique combination of [bits](https://en.wikipedia.org/wiki/Bit), known as the machine language [opcode](https://en.wikipedia.org/wiki/Opcode). While processing an instruction, the CPU decodes the opcode (via a [binary decoder](https://en.wikipedia.org/wiki/Binary_decoder)) into control signals, which orchestrate the behavior of the CPU. A complete machine language instruction consists of an opcode and, in many cases, additional bits that specify arguments for the operation (for example, the numbers to be summed in the case of an addition operation). Going up the complexity scale, a machine language program is a collection of machine language instructions that the CPU executes.

The actual mathematical operation for each instruction is performed by a [combinational logic](https://en.wikipedia.org/wiki/Combinational_logic) circuit within the CPU's processor known as the [arithmetic–logic unit](https://en.wikipedia.org/wiki/Arithmetic–logic_unit) or ALU. In general, a CPU executes an instruction by fetching it from memory, using its ALU to perform an operation, and then storing the result to memory. Beside the instructions for integer mathematics and logic operations, various other machine instructions exist, such as those for loading data from memory and storing it back, branching operations, and mathematical operations on floating-point numbers performed by the CPU's [floating-point unit](https://en.wikipedia.org/wiki/Floating-point_unit) (FPU).[[61\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-66)

> 在CPU的电路中，有一套它可以执行的基本操作，称为[指令集](https://en.wikipedia.org/wiki/Instruction_set)。这些操作可能涉及，例如，两个数字的加减，两个数字的比较，或跳转到程序的不同部分。每条指令由一个独特的[位](https://en.wikipedia.org/wiki/Bit)组合表示，被称为机器语言[操作码](https://en.wikipedia.org/wiki/Opcode)。在处理一条指令时，CPU将操作码（通过[二进制解码器](https://en.wikipedia.org/wiki/Binary_decoder)）解码成控制信号，从而协调CPU的行为。一条完整的机器语言指令包括一个操作码，在许多情况下，还包括指定操作参数的附加位（例如，在加法操作中要加的数字）。再往上看，一个机器语言程序是CPU执行的机器语言指令的集合。
>
> 每条指令的实际数学运算由CPU处理器中的[组合逻辑](https://en.wikipedia.org/wiki/Combinational_logic)电路执行，该电路被称为[算术-逻辑单元](https://en.wikipedia.org/wiki/Arithmetic-logic_unit)或ALU。一般来说，CPU执行指令的方式是从存储器中获取指令，使用ALU进行运算，然后将结果存储到存储器中。除了整数数学和逻辑运算的指令外，还存在其他各种机器指令，如从内存加载数据并将其存储回来的指令、分支操作以及由CPU的[浮点单元](https://en.wikipedia.org/wiki/Floating-point_unit)(FPU)执行的浮点数的数学运算。[[61]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-66)

![image-20220720183426807](https://en.wikipedia.org/wiki/Central_processing_unit#/media/File:ABasicComputer.gif)

![image-20220720183527694](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20220720183527694.png)

### Control unit

The **control unit** (CU) is a component of the CPU that directs the operation of the processor. It tells the computer's memory, arithmetic and logic unit and input and output devices how to respond to the instructions that have been sent to the processor.

It directs the operation of the other units by providing timing and control signals. Most computer resources are managed by the CU. It directs the flow of data between the CPU and the other devices. [John von Neumann](https://en.wikipedia.org/wiki/John_von_Neumann) included the control unit as part of the [von Neumann architecture](https://en.wikipedia.org/wiki/Von_Neumann_architecture). In modern computer designs, the control unit is typically an internal part of the CPU with its overall role and operation unchanged since its introduction.[[62\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-67)

> **控制单元**（CU）是CPU的一个组成部分，负责指导处理器的运行。它告诉计算机的存储器、算术和逻辑单元以及输入和输出设备如何响应已经发送给处理器的指令。
>
> 它通过提供定时和控制信号指导其他单元的操作。大多数计算机资源是由CU管理的。它指导CPU和其他设备之间的数据流。[约翰-冯-诺依曼](https://en.wikipedia.org/wiki/John_von_Neumann)将控制单元作为[冯-诺依曼架构](https://en.wikipedia.org/wiki/Von_Neumann_architecture)的一部分。在现代计算机设计中，控制单元通常是CPU的一个内部部分，其总体作用和操作自引入以来没有改变。[[62]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-67)



### Arithmetic logic unit

The arithmetic logic unit (ALU) is a digital circuit within the processor that performs integer arithmetic and [bitwise logic](https://en.wikipedia.org/wiki/Bitwise_logic) operations. The inputs to the ALU are the data words to be operated on (called [operands](https://en.wikipedia.org/wiki/Operands)), status information from previous operations, and a code from the control unit indicating which operation to perform. Depending on the instruction being executed, the operands may come from [internal CPU registers](https://en.wikipedia.org/wiki/Processor_register), external memory, or constants generated by the ALU itself.

When all input signals have settled and propagated through the ALU circuitry, the result of the performed operation appears at the ALU's outputs. The result consists of both a data word, which may be stored in a register or memory, and status information that is typically stored in a special, internal CPU register reserved for this purpose.

> 算术逻辑单元（ALU）是处理器中的一个数字电路，它执行整数算术和[位逻辑](https://en.wikipedia.org/wiki/Bitwise_logic)操作。ALU的输入是要操作的数据字（称为[操作数](https://en.wikipedia.org/wiki/Operands)），来自以前操作的状态信息，以及来自控制单元的指示要执行的操作的代码。根据正在执行的指令，操作数可能来自[内部CPU寄存器](https://en.wikipedia.org/wiki/Processor_register)、外部存储器或ALU本身生成的常数。
>
> 当所有的输入信号都稳定下来并通过ALU电路传播后，执行操作的结果就会出现在ALU的输出端。这个结果由数据字和状态信息组成，数据字可以存储在寄存器或存储器中，而状态信息通常存储在一个特殊的、内部CPU寄存器中，用于此目的。



### Address generation unit

**Address generation unit** (**AGU**), sometimes also called **address computation unit** (**ACU**),[[63\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-68) is an [execution unit](https://en.wikipedia.org/wiki/Execution_unit) inside the CPU that calculates [addresses](https://en.wikipedia.org/wiki/Memory_address) used by the CPU to access [main memory](https://en.wikipedia.org/wiki/Main_memory). By having address calculations handled by separate circuitry that operates in parallel with the rest of the CPU, the number of [CPU cycles](https://en.wikipedia.org/wiki/CPU_cycle) required for executing various [machine instructions](https://en.wikipedia.org/wiki/Machine_instruction) can be reduced, bringing performance improvements.

While performing various operations, CPUs need to calculate memory addresses required for fetching data from the memory; for example, in-memory positions of [array elements](https://en.wikipedia.org/wiki/Array_element) must be calculated before the CPU can fetch the data from actual memory locations. Those address-generation calculations involve different [integer arithmetic operations](https://en.wikipedia.org/wiki/Integer_arithmetic_operation), such as addition, subtraction, [modulo operations](https://en.wikipedia.org/wiki/Modulo_operation), or [bit shifts](https://en.wikipedia.org/wiki/Bit_shift). Often, calculating a memory address involves more than one general-purpose machine instruction, which do not necessarily [decode and execute](https://en.wikipedia.org/wiki/Instruction_cycle) quickly. By incorporating an AGU into a CPU design, together with introducing specialized instructions that use the AGU, various address-generation calculations can be offloaded from the rest of the CPU, and can often be executed quickly in a single CPU cycle.

Capabilities of an AGU depend on a particular CPU and its [architecture](https://en.wikipedia.org/wiki/Computer_architecture). Thus, some AGUs implement and expose more address-calculation operations, while some also include more advanced specialized instructions that can operate on multiple [operands](https://en.wikipedia.org/wiki/Operand) at a time. Some CPU architectures include multiple AGUs so more than one address-calculation operation can be executed simultaneously, which brings further performance improvements due to the [superscalar](https://en.wikipedia.org/wiki/Superscalar) nature of advanced CPU designs. For example, [Intel](https://en.wikipedia.org/wiki/Intel) incorporates multiple AGUs into its [Sandy Bridge](https://en.wikipedia.org/wiki/Sandy_Bridge_(microarchitecture)) and [Haswell](https://en.wikipedia.org/wiki/Haswell_(microarchitecture)) [microarchitectures](https://en.wikipedia.org/wiki/Microarchitecture), which increase bandwidth of the CPU memory subsystem by allowing multiple memory-access instructions to be executed in parallel.

> **地址生成单元**（**AGU**），有时也称为**地址计算单元**（**ACU**），[[63]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-68)是CPU内部的一个[执行单元](https://en.wikipedia.org/wiki/Execution_unit)，计算CPU用来访问[主存储器](https://en.wikipedia.org/wiki/Main_memory)的[地址](https://en.wikipedia.org/wiki/Memory_address)。通过让地址计算由独立的电路处理，与CPU的其他部分并行运作，可以减少执行各种[机器指令](https://en.wikipedia.org/wiki/Machine_instruction)所需的[CPU周期](https://en.wikipedia.org/wiki/CPU_cycle)的数量，从而带来性能的提高。
>
> 在执行各种操作时，CPU需要计算从内存中获取数据所需的内存地址；例如，在CPU从实际内存位置获取数据之前，必须计算[阵列元素](https://en.wikipedia.org/wiki/Array_element)的内存位置。这些地址生成计算涉及不同的[整数算术运算](https://en.wikipedia.org/wiki/Integer_arithmetic_operation)，如加法、减法、[模数运算](https://en.wikipedia.org/wiki/Modulo_operation)，或[位移](https://en.wikipedia.org/wiki/Bit_shift)。通常情况下，计算一个内存地址涉及一个以上的通用机器指令，这些指令不一定能快速[解码和执行](https://en.wikipedia.org/wiki/Instruction_cycle)。通过在CPU设计中加入AGU，同时引入使用AGU的专门指令，各种地址生成计算可以从CPU的其他部分卸载，并且通常可以在一个CPU周期内快速执行。
>
> AGU的能力取决于特定的CPU和其[架构](https://en.wikipedia.org/wiki/Computer_architecture)。因此，一些AGU实现并暴露了更多的地址计算操作，而一些AGU还包括更高级的专门指令，可以一次对多个[操作数](https://en.wikipedia.org/wiki/Operand)进行操作。一些CPU架构包括多个AGU，因此可以同时执行一个以上的地址计算操作，由于先进CPU设计的[超标量](https://en.wikipedia.org/wiki/Superscalar)特性，这带来了进一步的性能改进。例如，[英特尔](https://en.wikipedia.org/wiki/Intel)在其[Sandy Bridge](https://en.wikipedia.org/wiki/Sandy_Bridge_(microarchitecture))和[Haswell](https://en.wikipedia.org/wiki/Haswell_(microarchitecture))[微架构](https://en.wikipedia.org/wiki/Microarchitecture)中纳入了多个AGU，通过允许并行执行多个内存访问指令来增加CPU存储子系统的带宽。



### Memory management unit (MMU)

Many microprocessors (in smartphones and desktop, laptop, server computers) have a memory management unit, translating logical addresses into physical RAM addresses, providing [memory protection](https://en.wikipedia.org/wiki/Memory_protection) and [paging](https://en.wikipedia.org/wiki/Paging) abilities, useful for [virtual memory](https://en.wikipedia.org/wiki/Virtual_memory). Simpler processors, especially [microcontrollers](https://en.wikipedia.org/wiki/Microcontroller), usually don't include an MMU.

> 许多微处理器（在智能手机和台式机、笔记本电脑、服务器计算机中）有一个内存管理单元，将逻辑地址转换为物理RAM地址，提供[内存保护](https://en.wikipedia.org/wiki/Memory_protection)和[分页](https://en.wikipedia.org/wiki/Paging)能力，对[虚拟内存](https://en.wikipedia.org/wiki/Virtual_memory)很有用。简单的处理器，特别是[微控制器](https://en.wikipedia.org/wiki/Microcontroller)，通常不包括MMU。
>



### Cache

A **CPU cache**[[64\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-69) is a [hardware cache](https://en.wikipedia.org/wiki/Hardware_cache) used by the central processing unit (CPU) of a [computer](https://en.wikipedia.org/wiki/Computer) to reduce the average cost (time or energy) to access [data](https://en.wikipedia.org/wiki/Data_(computing)) from the [main memory](https://en.wikipedia.org/wiki/Main_memory). A cache is a smaller, faster memory, closer to a [processor core](https://en.wikipedia.org/wiki/Processor_core), which stores copies of the data from frequently used main [memory locations](https://en.wikipedia.org/wiki/Memory_location). Most CPUs have different independent caches, including [instruction](https://en.wikipedia.org/wiki/Instruction_cache) and [data caches](https://en.wikipedia.org/wiki/Data_cache), where the data cache is usually organized as a hierarchy of more cache levels (L1, L2, L3, L4, etc.).

All modern (fast) CPUs (with few specialized exceptions[[65\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-70)) have multiple levels of CPU caches. The first CPUs that used a cache had only one level of cache; unlike later level 1 caches, it was not split into L1d (for data) and L1i (for instructions). Almost all current CPUs with caches have a split L1 cache. They also have L2 caches and, for larger processors, L3 caches as well. The L2 cache is usually not split and acts as a common repository for the already split L1 cache. Every core of a [multi-core processor](https://en.wikipedia.org/wiki/Multi-core_processor) has a dedicated L2 cache and is usually not shared between the cores. The L3 cache, and higher-level caches, are shared between the cores and are not split. An L4 cache is currently uncommon, and is generally on [dynamic random-access memory](https://en.wikipedia.org/wiki/Dynamic_random-access_memory) (DRAM), rather than on [static random-access memory](https://en.wikipedia.org/wiki/Static_random-access_memory) (SRAM), on a separate die or chip. That was also the case historically with L1, while bigger chips have allowed integration of it and generally all cache levels, with the possible exception of the last level. Each extra level of cache tends to be bigger and be optimized differently.

Other types of caches exist (that are not counted towards the "cache size" of the most important caches mentioned above), such as the [translation lookaside buffer](https://en.wikipedia.org/wiki/Translation_lookaside_buffer) (TLB) that is part of the [memory management unit](https://en.wikipedia.org/wiki/Memory_management_unit) (MMU) that most CPUs have.

Caches are generally sized in powers of two: 2, 8, 16 etc. [KiB](https://en.wikipedia.org/wiki/Kibibyte) or [MiB](https://en.wikipedia.org/wiki/Mebibyte) (for larger non-L1) sizes, although the [IBM z13](https://en.wikipedia.org/wiki/IBM_z13_(microprocessor)) has a 96 KiB L1 instruction cache.[[66\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-71)

> 一个**CPU缓存**[[64]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-69)是一个[硬件缓存](https://en.wikipedia.org/wiki/Hardware_cache)，由[计算机](https://en.wikipedia.org/wiki/Computer)的中央处理单元(CPU)使用，以减少从[主存储器](https://en.wikipedia.org/wiki/Data_(计算))访问[数据](https://en.wikipedia.org/wiki/Data_(computing))的平均成本（时间或精力）。缓存是一个较小、较快的存储器，离[处理器核心](https://en.wikipedia.org/wiki/Processor_core)较近，它储存了经常使用的主[存储器位置](https://en.wikipedia.org/wiki/Memory_location)的数据副本。大多数CPU有不同的独立缓存，包括[指令缓存](https://en.wikipedia.org/wiki/Instruction_cache)和[数据缓存](https://en.wikipedia.org/wiki/Data_cache)，其中数据缓存通常被组织成更多缓存级别的层次结构（L1、L2、L3、L4，等等）。
>
> 所有现代（快速）CPU（除了少数专门的例外[[65]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-70)）都有多级CPU缓存。第一批使用缓存的CPU只有一级缓存；与后来的一级缓存不同，它没有被分成L1d（用于数据）和L1i（用于指令）。目前几乎所有带缓存的CPU都有一个分离的L1缓存。它们也有L2缓存，对于较大的处理器，还有L3缓存。L2高速缓存通常不被拆分，而是作为已经拆分的L1高速缓存的一个公共存储库。[多核处理器](https://en.wikipedia.org/wiki/Multi-core_processor)的每个内核都有一个专用的L2缓存，通常不在各内核之间共享。L3高速缓存和更高级别的高速缓存是在各核之间共享的，并且不被分割。L4缓存目前并不常见，一般是在[动态随机存取存储器](https://en.wikipedia.org/wiki/Dynamic_random-access_memory)（DRAM）上，而不是在[静态随机存取存储器](https://en.wikipedia.org/wiki/Static_random-access_memory)（SRAM）上，在一个单独的芯片上。历史上L1也是如此，而更大的芯片则允许将它和所有的缓存级别整合在一起，最后一级可能是例外。每一个额外的缓存级别往往都比较大，而且优化的方式也不同。
>
> 其他类型的缓存也存在（不计入上述最重要的缓存的 "缓存大小"），比如大多数CPU都有的[内存管理单元](https://en.wikipedia.org/wiki/Translation_lookaside_buffer) (MMU)中的[翻译查找缓冲器](TLB)。
>
> 缓存的大小一般是2的幂数：2、8、16等等。[KiB](https://en.wikipedia.org/wiki/Kibibyte)或[MiB](https://en.wikipedia.org/wiki/Mebibyte)(用于较大的非L1)大小，尽管[IBM z13](https://en.wikipedia.org/wiki/IBM_z13_(微处理器))有一个96KiB的L1指令缓存。[[66]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-71)
>

### Clock rate

Most CPUs are [synchronous circuits](https://en.wikipedia.org/wiki/Synchronous_circuit), which means they employ a [clock signal](https://en.wikipedia.org/wiki/Clock_signal) to pace their sequential operations. The clock signal is produced by an external [oscillator circuit](https://en.wikipedia.org/wiki/Electronic_oscillator) that generates a consistent number of pulses each second in the form of a periodic [square wave](https://en.wikipedia.org/wiki/Square_wave). The frequency of the clock pulses determines the rate at which a CPU executes instructions and, consequently, the faster the clock, the more instructions the CPU will execute each second.

To ensure proper operation of the CPU, the clock period is longer than the maximum time needed for all signals to propagate (move) through the CPU. In setting the clock period to a value well above the worst-case [propagation delay](https://en.wikipedia.org/wiki/Propagation_delay), it is possible to design the entire CPU and the way it moves data around the "edges" of the rising and falling clock signal. This has the advantage of simplifying the CPU significantly, both from a design perspective and a component-count perspective. However, it also carries the disadvantage that the entire CPU must wait on its slowest elements, even though some portions of it are much faster. This limitation has largely been compensated for by various methods of increasing CPU parallelism (see below).

> 大多数CPU是[同步电路](https://en.wikipedia.org/wiki/Synchronous_circuit)，这意味着它们采用[时钟信号](https://en.wikipedia.org/wiki/Clock_signal)来控制其顺序操作。时钟信号由一个外部[振荡器电路](https://en.wikipedia.org/wiki/Electronic_oscillator)产生，它以周期性[方波](https://en.wikipedia.org/wiki/Square_wave)的形式每秒产生一致数量的脉冲。时钟脉冲的频率决定了CPU执行指令的速度，因此，时钟越快，CPU每秒钟执行的指令就越多。
>
> 为了确保CPU的正常运行，时钟周期要长于所有信号在CPU中传播（移动）所需的最大时间。在将时钟周期设置为远高于最坏情况下的[传播延迟](https://en.wikipedia.org/wiki/Propagation_delay)的数值时，就有可能设计整个CPU及其围绕上升和下降时钟信号的 "边缘 "移动数据的方式。这样做的好处是，无论从设计的角度还是从元件数量的角度，都可以大大简化CPU。然而，它也有一个缺点，即整个CPU必须等待其最慢的元素，即使它的某些部分要快得多。这一限制在很大程度上被各种增加CPU并行性的方法所弥补（见下文）。

However, architectural improvements alone do not solve all of the drawbacks of globally synchronous CPUs. For example, a clock signal is subject to the delays of any other electrical signal. Higher clock rates in increasingly complex CPUs make it more difficult to keep the clock signal in phase (synchronized) throughout the entire unit. This has led many modern CPUs to require multiple identical clock signals to be provided to avoid delaying a single signal significantly enough to cause the CPU to malfunction. Another major issue, as clock rates increase dramatically, is the amount of heat that is [dissipated by the CPU](https://en.wikipedia.org/wiki/CPU_power_dissipation). The constantly changing clock causes many components to switch regardless of whether they are being used at that time. In general, a component that is switching uses more energy than an element in a static state. Therefore, as clock rate increases, so does energy consumption, causing the CPU to require more [heat dissipation](https://en.wikipedia.org/wiki/Heat_dissipation) in the form of [CPU cooling](https://en.wikipedia.org/wiki/CPU_cooling) solutions.

One method of dealing with the switching of unneeded components is called [clock gating](https://en.wikipedia.org/wiki/Clock_gating), which involves turning off the clock signal to unneeded components (effectively disabling them). However, this is often regarded as difficult to implement and therefore does not see common usage outside of very low-power designs. One notable recent CPU design that uses extensive clock gating is the IBM [PowerPC](https://en.wikipedia.org/wiki/PowerPC)-based [Xenon](https://en.wikipedia.org/wiki/Xenon_(processor)) used in the [Xbox 360](https://en.wikipedia.org/wiki/Xbox_360); that way, power requirements of the Xbox 360 are greatly reduced.[[67\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-72)

> 然而，仅靠架构上的改进并不能解决全球同步CPU的所有缺点。例如，时钟信号会受到任何其他电信号的延迟影响。在越来越复杂的CPU中，更高的时钟速率使得在整个单元中保持时钟信号的相位（同步）更加困难。这导致许多现代CPU需要提供多个相同的时钟信号，以避免单一信号的延迟严重到导致CPU发生故障。随着时钟速率的急剧增加，另一个主要问题是[CPU的耗散量](https://en.wikipedia.org/wiki/CPU_power_dissipation)。不断变化的时钟导致许多组件切换，而不管它们当时是否被使用。一般来说，正在切换的元件比处于静态状态的元件消耗更多的能量。因此，随着时钟速率的增加，能源消耗也在增加，导致CPU需要更多的[散热](https://en.wikipedia.org/wiki/Heat_dissipation)形式的[CPU冷却](https://en.wikipedia.org/wiki/CPU_cooling)解决方案。
>
> 处理不需要的组件切换的一种方法被称为[时钟门控](https://en.wikipedia.org/wiki/Clock_gating)，它涉及关闭不需要的组件的时钟信号（有效地禁用它们）。然而，这通常被认为是难以实现的，因此在非常低的功率设计之外没有看到普遍的应用。最近有一个值得注意的CPU设计使用了广泛的时钟门控，这就是[Xbox 360](https://en.wikipedia.org/wiki/Xbox_360)中使用的基于IBM [PowerPC](https://en.wikipedia.org/wiki/PowerPC)的[Xenon](https://en.wikipedia.org/wiki/Xenon_(处理器))；这样，Xbox 360的功率要求就大大降低了。[[67\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-72)

### Clockless CPUs

Another method of addressing some of the problems with a global clock signal is the removal of the clock signal altogether. While removing the global clock signal makes the design process considerably more complex in many ways, asynchronous (or clockless) designs carry marked advantages in power consumption and [heat dissipation](https://en.wikipedia.org/wiki/Heat_dissipation) in comparison with similar synchronous designs. While somewhat uncommon, entire [asynchronous CPUs](https://en.wikipedia.org/wiki/Asynchronous_circuit#Asynchronous_CPU) have been built without using a global clock signal. Two notable examples of this are the [ARM](https://en.wikipedia.org/wiki/ARM_architecture) compliant [AMULET](https://en.wikipedia.org/wiki/AMULET_microprocessor) and the [MIPS](https://en.wikipedia.org/wiki/MIPS_architecture) R3000 compatible MiniMIPS.[[68\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-:2-73)

Rather than totally removing the clock signal, some CPU designs allow certain portions of the device to be asynchronous, such as using asynchronous [ALUs](https://en.wikipedia.org/wiki/Arithmetic_logic_unit) in conjunction with superscalar pipelining to achieve some arithmetic performance gains. While it is not altogether clear whether totally asynchronous designs can perform at a comparable or better level than their synchronous counterparts, it is evident that they do at least excel in simpler math operations. This, combined with their excellent power consumption and heat dissipation properties, makes them very suitable for [embedded computers](https://en.wikipedia.org/wiki/Embedded_computer).[[69\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-74)

> 解决全局时钟信号的一些问题的另一种方法是完全去除时钟信号。虽然去除全局时钟信号使设计过程在许多方面变得更加复杂，但与类似的同步设计相比，异步（或无时钟）设计在功耗和[散热](https://en.wikipedia.org/wiki/Heat_dissipation)方面有明显的优势。虽然有些不常见，但整个[异步CPU](https://en.wikipedia.org/wiki/Asynchronous_circuit#Asynchronous_CPU)都是在不使用全局时钟信号的情况下建立的。这方面的两个明显例子是符合[ARM](https://en.wikipedia.org/wiki/ARM_architecture)的[AMULET](https://en.wikipedia.org/wiki/AMULET_microprocessor)和[MIPS](https://en.wikipedia.org/wiki/MIPS_architecture)R3000兼容的MiniMIPS。[[68]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-:2-73)
>
> 一些CPU设计没有完全删除时钟信号，而是允许设备的某些部分是异步的，例如使用异步的[ALU](https://en.wikipedia.org/wiki/Arithmetic_logic_unit)与超标量流水线相结合，以实现一些算术性能的提高。虽然目前还不完全清楚完全异步设计是否能达到与同步设计相当或更好的水平，但很明显，它们至少在较简单的数学运算中表现出色。这一点，再加上它们出色的功耗和散热特性，使它们非常适用于[嵌入式计算机](https://en.wikipedia.org/wiki/Embedded_computer)。[[69/]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-74)
>

### Voltage regulator module

Many modern CPUs have a die-integrated power managing module which regulates on-demand voltage supply to the CPU circuitry allowing it to keep balance between performance and power consumption.

> 许多现代的CPU都有一个芯片集成的电源管理模块，它可以调节CPU电路的按需电压供应，使其在性能和功耗之间保持平衡。

### Integer range

Every CPU represents numerical values in a specific way. For example, some early digital computers represented numbers as familiar [decimal](https://en.wikipedia.org/wiki/Decimal) (base 10) [numeral system](https://en.wikipedia.org/wiki/Numeral_system) values, and others have employed more unusual representations such as [ternary](https://en.wikipedia.org/wiki/Balanced_ternary) (base three). Nearly all modern CPUs represent numbers in [binary](https://en.wikipedia.org/wiki/Binary_numeral_system) form, with each digit being represented by some two-valued physical quantity such as a "high" or "low" [voltage](https://en.wikipedia.org/wiki/Volt).[[f\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-75)

Related to numeric representation is the size and precision of integer numbers that a CPU can represent. In the case of a binary CPU, this is measured by the number of bits (significant digits of a binary encoded integer) that the CPU can process in one operation, which is commonly called [*word size*](https://en.wikipedia.org/wiki/Word_(data_type)), *bit width*, *data path width*, *integer precision*, or *integer size*. A CPU's integer size determines the range of integer values it can directly operate on.[[g\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-76) For example, an [8-bit](https://en.wikipedia.org/wiki/8-bit_computing) CPU can directly manipulate integers represented by eight bits, which have a range of 256 (2<sup>8</sup>) discrete integer values.

Integer range can also affect the number of memory locations the CPU can directly address (an address is an integer value representing a specific memory location). For example, if a binary CPU uses 32 bits to represent a memory address then it can directly address 232 memory locations. To circumvent this limitation and for various other reasons, some CPUs use mechanisms (such as [bank switching](https://en.wikipedia.org/wiki/Bank_switching)) that allow additional memory to be addressed.

> 

CPUs with larger word sizes require more circuitry and consequently are physically larger, cost more and consume more power (and therefore generate more heat). As a result, smaller 4- or 8-bit [microcontrollers](https://en.wikipedia.org/wiki/Microcontroller) are commonly used in modern applications even though CPUs with much larger word sizes (such as 16, 32, 64, even 128-bit) are available. When higher performance is required, however, the benefits of a larger word size (larger data ranges and address spaces) may outweigh the disadvantages. A CPU can have internal data paths shorter than the word size to reduce size and cost. For example, even though the [IBM System/360](https://en.wikipedia.org/wiki/IBM_System/360) [instruction set](https://en.wikipedia.org/wiki/Instruction_set) was a 32-bit instruction set, the System/360 [Model 30](https://en.wikipedia.org/wiki/IBM_System/360_Model_30) and [Model 40](https://en.wikipedia.org/wiki/IBM_System/360_Model_40) had 8-bit data paths in the arithmetic logical unit, so that a 32-bit add required four cycles, one for each 8 bits of the operands, and, even though the [Motorola 68000 series](https://en.wikipedia.org/wiki/Motorola_68000_series) instruction set was a 32-bit instruction set, the [Motorola 68000](https://en.wikipedia.org/wiki/Motorola_68000) and [Motorola 68010](https://en.wikipedia.org/wiki/Motorola_68010) had 16-bit data paths in the arithmetic logical unit, so that a 32-bit add required two cycles.

> 字数更大的CPU需要更多的电路，因此物理尺寸更大，成本更高，耗电量更大（因此产生的热量也更大）。因此，较小的4位或8位[微控制器](https://en.wikipedia.org/wiki/Microcontroller)通常用于现代应用，即使有字数大得多的CPU（如16、32、64，甚至128位）。然而，当需要更高的性能时，更大的字尺寸（更大的数据范围和地址空间）的好处可能超过了缺点。CPU的内部数据路径可以短于字大小，以减少尺寸和成本。例如，尽管[IBM System/360](https://en.wikipedia.org/wiki/IBM_System/360)[指令集](https://en.wikipedia.org/wiki/Instruction_set)是一个32位的指令集，但System/360[Model 30](https://en.wikipedia.org/wiki/IBM_System/360_Model_30)和[Model 40](https://en.wikipedia.org/wiki/IBM_System/360_Model_40)在算术逻辑单元中有8位数据路径，因此，32位加法需要四个周期，操作数的每8位一个，而且，尽管[摩托罗拉68000系列](https://en.wikipedia.org/wiki/Motorola_68000_series)指令集是32位指令集，但[Motorola 68000](https://en.wikipedia.org/wiki/Motorola_68000)和[Motorola 68010](https://en.wikipedia.org/wiki/Motorola_68010)在算术逻辑单元中有16位数据路径，所以32位加法需要两个周期。

To gain some of the advantages afforded by both lower and higher bit lengths, many [instruction sets](https://en.wikipedia.org/wiki/Instruction_set) have different bit widths for integer and floating-point data, allowing CPUs implementing that instruction set to have different bit widths for different portions of the device. For example, the IBM [System/360](https://en.wikipedia.org/wiki/System/360) instruction set was primarily 32 bit, but supported 64-bit [floating-point](https://en.wikipedia.org/wiki/Floating-point_arithmetic) values to facilitate greater accuracy and range in floating-point numbers.[[30\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-amdahl1964-30) The System/360 Model 65 had an 8-bit adder for decimal and fixed-point binary arithmetic and a 60-bit adder for floating-point arithmetic.[[70\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-77) Many later CPU designs use similar mixed bit width, especially when the processor is meant for general-purpose usage where a reasonable balance of integer and floating-point capability is required.

> 为了获得更低和更高的位长所带来的一些优势，许多[指令集](https://en.wikipedia.org/wiki/Instruction_set)对整数和浮点数据有不同的位宽，允许执行该指令集的CPU对设备的不同部分有不同的位宽。例如，IBM的[System/360](https://en.wikipedia.org/wiki/System/360)指令集主要是32位的，但是支持64位的[浮点](https://en.wikipedia.org/wiki/Floating-point_arithmetic)值，以便于提高浮点数字的准确性和范围。[[30]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-amdahl1964-30) System/360 65型有一个8位加法器用于十进制和定点二进制运算，一个60位加法器用于浮点运算。[[70]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-77)许多后来的CPU设计使用类似的混合位宽，特别是当处理器是用于通用用途，需要合理平衡整数和浮点能力时。

### Parallelism

The description of the basic operation of a CPU offered in the previous section describes the simplest form that a CPU can take. This type of CPU, usually referred to as *subscalar*, operates on and executes one instruction on one or two pieces of data at a time, that is less than one [instruction per clock cycle](https://en.wikipedia.org/wiki/Instructions_per_cycle) (IPC < 1).

This process gives rise to an inherent inefficiency in subscalar CPUs. Since only one instruction is executed at a time, the entire CPU must wait for that instruction to complete before proceeding to the next instruction. As a result, the subscalar CPU gets "hung up" on instructions which take more than one clock cycle to complete execution. Even adding a second [execution unit](https://en.wikipedia.org/wiki/Execution_unit) (see below) does not improve performance much; rather than one pathway being hung up, now two pathways are hung up and the number of unused transistors is increased. This design, wherein the CPU's execution resources can operate on only one instruction at a time, can only possibly reach *scalar* performance (one instruction per clock cycle, IPC = 1). However, the performance is nearly always subscalar (less than one instruction per clock cycle, IPC < 1).

Attempts to achieve scalar and better performance have resulted in a variety of design methodologies that cause the CPU to behave less linearly and more in parallel. When referring to parallelism in CPUs, two terms are generally used to classify these design techniques:

- *[instruction-level parallelism](https://en.wikipedia.org/wiki/Instruction-level_parallelism)* (ILP), which seeks to increase the rate at which instructions are executed within a CPU (that is, to increase the use of on-die execution resources);
- *[task-level parallelism](https://en.wikipedia.org/wiki/Task-level_parallelism)* (TLP), which purposes to increase the number of [threads](https://en.wikipedia.org/wiki/Thread_(computing)) or [processes](https://en.wikipedia.org/wiki/Process_(computing)) that a CPU can execute simultaneously.

Each methodology differs both in the ways in which they are implemented, as well as the relative effectiveness they afford in increasing the CPU's performance for an application.[[h\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-78)

> 上一节提供的关于CPU基本操作的描述，描述了CPU可以采取的最简单的形式。这种类型的CPU，通常被称为*次标量*，每次在一个或两个数据上操作和执行一条指令，即少于一个[每时钟周期指令](https://en.wikipedia.org/wiki/Instructions_per_cycle)（IPC<1）。
>
> 这个过程在亚标量CPU中产生了一个固有的低效率。由于每次只执行一条指令，整个CPU必须等待该指令完成后才能进行下一条指令。因此，子标度CPU会被那些需要一个以上时钟周期才能完成的指令 "挂起"。即使增加第二个[执行单元](https://en.wikipedia.org/wiki/Execution_unit)(见下文)也不能改善性能；不是一个通路被挂起，而是现在有两个通路被挂起，未使用的晶体管数量增加。这种设计，即CPU的执行资源一次只能操作一条指令，只可能达到*标量*的性能（每时钟周期一条指令，IPC=1）。然而，其性能几乎总是亚标度的（每时钟周期少于一条指令，IPC<1）。
>
> 试图实现标量和更好的性能，导致了各种设计方法，使CPU的行为不那么线性，而更多地是并行的。在提到CPU的并行性时，一般用两个术语来对这些设计技术进行分类。
>
> - *[指令级并行](https://en.wikipedia.org/wiki/Instruction-level_parallelism)* (ILP)，旨在提高指令在CPU内的执行速度（即提高片上执行资源的使用率）。
> - *[任务级并行](https://en.wikipedia.org/wiki/Task-level_parallelism)*(TLP)，其目的是增加CPU可以同时执行的[线程](https://en.wikipedia.org/wiki/Thread_(计算))或[进程](https://en.wikipedia.org/wiki/Process_(计算))的数量。
>
> 每种方法都有不同的实现方式，以及它们在提高CPU的应用性能方面的相对有效性。[[h]](

#### Instruction-level parallelism

One of the simplest methods for increased parallelism is to begin the first steps of instruction fetching and decoding before the prior instruction finishes executing. This is a technique known as [instruction pipelining](https://en.wikipedia.org/wiki/Instruction_pipelining), and is used in almost all modern general-purpose CPUs. Pipelining allows multiple instruction to be executed at a time by breaking the execution pathway into discrete stages. This separation can be compared to an assembly line, in which an instruction is made more complete at each stage until it exits the execution pipeline and is retired.

Pipelining does, however, introduce the possibility for a situation where the result of the previous operation is needed to complete the next operation; a condition often termed data dependency conflict. Therefore pipelined processors must check for these sorts of conditions and delay a portion of the pipeline if necessary. A pipelined processor can become very nearly scalar, inhibited only by pipeline stalls (an instruction spending more than one clock cycle in a stage).

Improvements in instruction pipelining led to further decreases in the idle time of CPU components. Designs that are said to be superscalar include a long instruction pipeline and multiple identical [execution units](https://en.wikipedia.org/wiki/Execution_unit), such as [load–store units](https://en.wikipedia.org/wiki/Load–store_unit), [arithmetic–logic units](https://en.wikipedia.org/wiki/Arithmetic–logic_unit), [floating-point units](https://en.wikipedia.org/wiki/Floating-point_unit) and [address generation units](https://en.wikipedia.org/wiki/Address_generation_unit).[[71\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-79) In a superscalar pipeline, instructions are read and passed to a dispatcher, which decides whether or not the instructions can be executed in parallel (simultaneously). If so, they are dispatched to execution units, resulting in their simultaneous execution. In general, the number of instructions that a superscalar CPU will complete in a cycle is dependent on the number of instructions it is able to dispatch simultaneously to execution units.

> 增加并行性的最简单的方法之一是在前一条指令执行完毕之前开始指令获取和解码的第一个步骤。这是一种被称为[指令流水线](https://en.wikipedia.org/wiki/Instruction_pipelining)的技术，几乎在所有的现代通用CPU中都有使用。管道化技术通过将执行路径分解为不连续的阶段，允许一次执行多条指令。这种分离可以比作一条装配线，在这条装配线上，一条指令在每个阶段都变得更加完整，直到它退出执行管道并被报废。
>
> 然而，流水线确实带来了一种可能性，即需要前一个操作的结果来完成下一个操作；这种情况通常被称为数据依赖性冲突。因此，流水线处理器必须检查这类情况，并在必要时延迟部分流水线。一个流水线处理器可以变得非常接近标量，只被流水线停滞（一条指令在一个阶段花费超过一个时钟周期）所抑制。
>
> 指令流水线的改进导致了CPU组件空闲时间的进一步减少。被称为超标量的设计包括一个长的指令流水线和多个相同的[执行单元](https://en.wikipedia.org/wiki/Execution_unit)，如[加载存储单元](https://en.wikipedia.org/wiki/Load-store_unit)、[算术逻辑单元](https://en.wikipedia.org/wiki/Arithmetic-logic_unit)、[浮点单元](https://en.wikipedia.org/wiki/Floating-point_unit)和[地址生成单元](https://en.wikipedia.org/wiki/Address_generation_unit)。[[71]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-79) 在一个超标量流水线中，指令被读取并传递给一个调度器，由调度器决定这些指令是否可以并行（同步）地执行。如果可以，它们就被分派到执行单元，导致它们同时执行。一般来说，超标量CPU在一个周期内完成的指令数量取决于它能够同时派发给执行单元的指令数量。

Most of the difficulty in the design of a superscalar CPU architecture lies in creating an effective dispatcher. The dispatcher needs to be able to quickly determine whether instructions can be executed in parallel, as well as dispatch them in such a way as to keep as many execution units busy as possible. This requires that the instruction pipeline is filled as often as possible and requires significant amounts of [CPU cache](https://en.wikipedia.org/wiki/CPU_cache). It also makes [hazard](https://en.wikipedia.org/wiki/Hazard_(computer_architecture))-avoiding techniques like [branch prediction](https://en.wikipedia.org/wiki/Branch_prediction), [speculative execution](https://en.wikipedia.org/wiki/Speculative_execution), [register renaming](https://en.wikipedia.org/wiki/Register_renaming), [out-of-order execution](https://en.wikipedia.org/wiki/Out-of-order_execution) and [transactional memory](https://en.wikipedia.org/wiki/Transactional_memory) crucial to maintaining high levels of performance. By attempting to predict which branch (or path) a conditional instruction will take, the CPU can minimize the number of times that the entire pipeline must wait until a conditional instruction is completed. Speculative execution often provides modest performance increases by executing portions of code that may not be needed after a conditional operation completes. Out-of-order execution somewhat rearranges the order in which instructions are executed to reduce delays due to data dependencies. Also in case of [single instruction stream, multiple data stream](https://en.wikipedia.org/wiki/Single_instruction,_multiple_data)—a case when a lot of data from the same type has to be processed—, modern processors can disable parts of the pipeline so that when a single instruction is executed many times, the CPU skips the fetch and decode phases and thus greatly increases performance on certain occasions, especially in highly monotonous program engines such as video creation software and photo processing.

> 设计超标量CPU架构的大部分困难在于创建一个有效的调度器。调度器需要能够快速确定指令是否可以并行执行，并以尽可能多的执行单元保持忙碌的方式来调度它们。这就要求尽可能频繁地填充指令流水线，并需要大量的[CPU缓存](https://en.wikipedia.org/wiki/CPU_cache)。这也使得[危险](https://en.wikipedia.org/wiki/Hazard_(computer_architecture))规避技术，如[分支预测](https://en.wikipedia.org/wiki/Branch_prediction)、[投机执行](https://en.wikipedia.org/wiki/Speculative_execution)、[寄存器重命名](https://en.wikipedia.org/wiki/Register_renaming)、[失序执行](https://en.wikipedia.org/wiki/Out-of-order_execution)和[事务内存](https://en.wikipedia.org/wiki/Transactional_memory)对保持高水平的性能至关重要。通过尝试预测一个条件指令将采取哪条分支（或路径），CPU可以最大限度地减少整个流水线必须等待条件指令完成的次数。推测性执行常常通过执行条件性操作完成后可能不需要的部分代码来提供适度的性能提升。失序执行在一定程度上重新安排了指令的执行顺序，以减少由于数据依赖性造成的延迟。另外，在[单指令流，多数据流](https://en.wikipedia.org/wiki/Single_instruction,_multiple_data)的情况下--即需要处理大量相同类型的数据--现代处理器可以禁用部分流水线，这样当一条指令被多次执行时，CPU会跳过获取和解码阶段，从而在某些场合大大增加性能，特别是在高度单调的程序引擎中，如视频创作软件和照片处理。

When just a fraction of the CPU is superscalar, the part that is not suffers a performance penalty due to scheduling stalls. The Intel [P5](https://en.wikipedia.org/wiki/P5_(microarchitecture)) [Pentium](https://en.wikipedia.org/wiki/Pentium) had two superscalar ALUs which could accept one instruction per clock cycle each, but its FPU could not. Thus the P5 was integer superscalar but not floating point superscalar. Intel's successor to the P5 architecture, [P6](https://en.wikipedia.org/wiki/P6_(microarchitecture)), added superscalar abilities to its floating-point features.

Simple pipelining and superscalar design increase a CPU's ILP by allowing it to execute instructions at rates surpassing one instruction per clock cycle. Most modern CPU designs are at least somewhat superscalar, and nearly all general purpose CPUs designed in the last decade are superscalar. In later years some of the emphasis in designing high-ILP computers has been moved out of the CPU's hardware and into its software interface, or [instruction set architecture](https://en.wikipedia.org/wiki/Instruction_set_architecture) (ISA). The strategy of the [very long instruction word](https://en.wikipedia.org/wiki/Very_long_instruction_word) (VLIW) causes some ILP to become implied directly by the software, reducing the CPU’s work in boosting ILP and thereby reducing design complexity.

> 当只有一部分CPU是超标量的时候，没有超标量的部分就会因为调度停滞而受到性能的影响。英特尔[P5](https://en.wikipedia.org/wiki/P5_(microarchitecture))[Pentium](https://en.wikipedia.org/wiki/Pentium)有两个超标量ALU，每个ALU可以在每个时钟周期接受一条指令，但其FPU不能。因此，P5是整数超标量，但不是浮点超标量。英特尔P5架构的后续产品[P6](https://en.wikipedia.org/wiki/P6_(microarchitecture))，在其浮点功能的基础上增加了超标量能力。
>
> 简单的流水线和超标量设计通过允许CPU以超过每时钟周期一条指令的速度执行指令来增加CPU的ILP。大多数现代的CPU设计至少在某种程度上是超标量的，几乎所有在过去十年设计的通用CPU都是超标量的。近年来，设计高ILP计算机的一些重点已经从CPU的硬件转移到其软件接口，或[指令集架构](https://en.wikipedia.org/wiki/Instruction_set_architecture)（ISA）。[超长指令字](https://en.wikipedia.org/wiki/Very_long_instruction_word)(VLIW)的策略导致一些ILP直接由软件暗示，减少了CPU在提高ILP方面的工作，从而降低了设计的复杂性。

#### Task-level parallelism

Another strategy of achieving performance is to execute multiple [threads](https://en.wikipedia.org/wiki/Thread_(computing)) or [processes](https://en.wikipedia.org/wiki/Process_(computing)) in parallel. This area of research is known as [parallel computing](https://en.wikipedia.org/wiki/Parallel_computing).[[72\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-80) In [Flynn's taxonomy](https://en.wikipedia.org/wiki/Flynn's_taxonomy), this strategy is known as [multiple instruction stream, multiple data stream](https://en.wikipedia.org/wiki/Multiple_instruction,_multiple_data) (MIMD).[[73\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-81)

One technology used for this purpose was [multiprocessing](https://en.wikipedia.org/wiki/Multiprocessing) (MP).[[74\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-82) The initial flavor of this technology is known as [symmetric multiprocessing](https://en.wikipedia.org/wiki/Symmetric_multiprocessing) (SMP), where a small number of CPUs share a coherent view of their memory system. In this scheme, each CPU has additional hardware to maintain a constantly up-to-date view of memory. By avoiding stale views of memory, the CPUs can cooperate on the same program and programs can migrate from one CPU to another. To increase the number of cooperating CPUs beyond a handful, schemes such as [non-uniform memory access](https://en.wikipedia.org/wiki/Non-uniform_memory_access) (NUMA) and [directory-based coherence protocols](https://en.wikipedia.org/wiki/Directory-based_coherence_protocols) were introduced in the 1990s. SMP systems are limited to a small number of CPUs while NUMA systems have been built with thousands of processors. Initially, multiprocessing was built using multiple discrete CPUs and boards to implement the interconnect between the processors. When the processors and their interconnect are all implemented on a single chip, the technology is known as chip-level multiprocessing (CMP) and the single chip as a [multi-core processor](https://en.wikipedia.org/wiki/Multi-core_processor).

> 另一种实现性能的策略是并行地执行多个[线程](https://en.wikipedia.org/wiki/Thread_(computing))或[进程](https://en.wikipedia.org/wiki/Process_(computing))。这一研究领域被称为[并行计算](https://en.wikipedia.org/wiki/Parallel_computing)。[[72]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-80) 在[Flynn的分类法](https://en.wikipedia.org/wiki/Flynn's_taxonomy)中，这种策略被称为[多指令流、多数据流](https://en.wikipedia.org/wiki/Multiple_instruction,_multiple_data)(MIMD)。[[73]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-81)
>
> 用于此目的的一种技术是[多处理](https://en.wikipedia.org/wiki/Multiprocessing)(MP)。[[74]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-82)这种技术的最初味道被称为[对称多处理](https://en.wikipedia.org/wiki/Symmetric_multiprocessing)(SMP)，其中少数CPU共享其内存系统的一致性视图。在这个方案中，每个CPU都有额外的硬件来维持一个不断更新的内存视图。通过避免陈旧的内存视图，CPU可以在同一个程序上合作，程序可以从一个CPU迁移到另一个CPU。为了将合作的CPU数量增加到少数以外，20世纪90年代引入了[非统一内存访问](https://en.wikipedia.org/wiki/Non-uniform_memory_access)（NUMA）和[基于目录的一致性协议](https://en.wikipedia.org/wiki/Directory-based_coherence_protocols)等方案。SMP系统仅限于少量的CPU，而NUMA系统已经建立了成千上万的处理器。最初，多处理是使用多个分立的CPU和板卡来实现处理器之间的互连。当处理器及其互连都在单个芯片上实现时，该技术被称为芯片级多处理（CMP），单芯片被称为[多核处理器]（https://en.wikipedia.org/wiki/Multi-core_processor）。

It was later recognized that finer-grain parallelism existed with a single program. A single program might have several threads (or functions) that could be executed separately or in parallel. Some of the earliest examples of this technology implemented [input/output](https://en.wikipedia.org/wiki/Input/output) processing such as [direct memory access](https://en.wikipedia.org/wiki/Direct_memory_access) as a separate thread from the computation thread. A more general approach to this technology was introduced in the 1970s when systems were designed to run multiple computation threads in parallel. This technology is known as [multi-threading](https://en.wikipedia.org/wiki/Multithreading_(computer_architecture)) (MT). This approach is considered more cost-effective than multiprocessing, as only a small number of components within a CPU is replicated to support MT as opposed to the entire CPU in the case of MP. In MT, the execution units and the memory system including the caches are shared among multiple threads. The downside of MT is that the hardware support for multithreading is more visible to software than that of MP and thus supervisor software like operating systems have to undergo larger changes to support MT. One type of MT that was implemented is known as [temporal multithreading](https://en.wikipedia.org/wiki/Temporal_multithreading), where one thread is executed until it is stalled waiting for data to return from external memory. In this scheme, the CPU would then quickly context switch to another thread which is ready to run, the switch often done in one CPU clock cycle, such as the [UltraSPARC T1](https://en.wikipedia.org/wiki/UltraSPARC_T1). Another type of MT is [simultaneous multithreading](https://en.wikipedia.org/wiki/Simultaneous_multithreading), where instructions from multiple threads are executed in parallel within one CPU clock cycle.

> 后来人们认识到，在单个程序中存在着更细粒度的并行性。一个程序可能有几个线程（或函数），可以单独或并行地执行。这种技术的一些最早的例子实现了[输入/输出](https://en.wikipedia.org/wiki/Input/output)处理，如[直接内存访问](https://en.wikipedia.org/wiki/Direct_memory_access)，作为计算线程的一个独立线程。这种技术的一个更普遍的方法是在20世纪70年代引入的，当时系统被设计为并行运行多个计算线程。这种技术被称为[多线程](https://en.wikipedia.org/wiki/Multithreading_(computer_architecture))（MT）。这种方法被认为比多处理更有成本效益，因为在CPU内只有少量的组件被复制以支持MT，而不是MP中的整个CPU。在MT中，执行单元和内存系统（包括缓存）由多个线程共享。MT的缺点是，与MP相比，多线程的硬件支持对软件来说更加明显，因此像操作系统这样的主管软件必须进行更大的改变以支持MT。实现的一种MT被称为[时态多线程](https://en.wikipedia.org/wiki/Temporal_multithreading)，其中一个线程被执行，直到它停滞不前，等待数据从外部存储器返回。在这种方案中，CPU会迅速切换到另一个准备好的线程，这种切换通常在一个CPU时钟周期内完成，例如[UltraSPARC T1](https://en.wikipedia.org/wiki/UltraSPARC_T1)。另一种MT是[同步多线程](https://en.wikipedia.org/wiki/Simultaneous_multithreading)，来自多个线程的指令在一个CPU时钟周期内被并行执行。

For several decades from the 1970s to early 2000s, the focus in designing high performance general purpose CPUs was largely on achieving high ILP through technologies such as pipelining, caches, superscalar execution, out-of-order execution, etc. This trend culminated in large, power-hungry CPUs such as the Intel [Pentium 4](https://en.wikipedia.org/wiki/Pentium_4). By the early 2000s, CPU designers were thwarted from achieving higher performance from ILP techniques due to the growing disparity between CPU operating frequencies and main memory operating frequencies as well as escalating CPU power dissipation owing to more esoteric ILP techniques.

CPU designers then borrowed ideas from commercial computing markets such as [transaction processing](https://en.wikipedia.org/wiki/Transaction_processing), where the aggregate performance of multiple programs, also known as [throughput](https://en.wikipedia.org/wiki/Throughput) computing, was more important than the performance of a single thread or process.

This reversal of emphasis is evidenced by the proliferation of dual and more core processor designs and notably, Intel's newer designs resembling its less superscalar [P6](https://en.wikipedia.org/wiki/P6_(microarchitecture)) architecture. Late designs in several processor families exhibit CMP, including the [x86-64](https://en.wikipedia.org/wiki/X86-64) [Opteron](https://en.wikipedia.org/wiki/Opteron) and [Athlon 64 X2](https://en.wikipedia.org/wiki/Athlon_64_X2), the [SPARC](https://en.wikipedia.org/wiki/SPARC) [UltraSPARC T1](https://en.wikipedia.org/wiki/UltraSPARC_T1), IBM [POWER4](https://en.wikipedia.org/wiki/POWER4) and [POWER5](https://en.wikipedia.org/wiki/POWER5), as well as several [video game console](https://en.wikipedia.org/wiki/Video_game_console) CPUs like the [Xbox 360](https://en.wikipedia.org/wiki/Xbox_360)'s triple-core PowerPC design, and the [PlayStation 3](https://en.wikipedia.org/wiki/PlayStation_3)'s 7-core [Cell microprocessor](https://en.wikipedia.org/wiki/Cell_(microprocessor)).

> 从20世纪70年代到21世纪初的几十年间，设计高性能通用CPU的重点主要是通过诸如流水线、缓存、超标量执行、失序执行等技术来实现高ILP。这一趋势最终导致了大型、高能耗的CPU，如英特尔[奔腾4](https://en.wikipedia.org/wiki/Pentium_4)。到了21世纪初，由于CPU工作频率和主内存工作频率之间的差距越来越大，以及由于更深奥的ILP技术导致的CPU功率耗散不断增加，CPU设计者从ILP技术中获得更高的性能受到了阻挠。
>
> 随后，CPU设计者从商业计算市场上借鉴了一些想法，如[交易处理](https://en.wikipedia.org/wiki/Transaction_processing)，其中多个程序的总体性能，也被称为[吞吐量](https://en.wikipedia.org/wiki/Throughput)计算，比单个线程或进程的性能更重要。
>
> 这种重点的逆转体现在双核和多核处理器设计的扩散上，特别是英特尔较新的设计，类似于其较少的超标量[P6](https://en.wikipedia.org/wiki/P6_(microarchitecture))架构。几个处理器系列的后期设计表现出CMP，包括[x86-64](https://en.wikipedia.org/wiki/X86-64)[Opteron](https://en.wikipedia.org/wiki/Opteron)和[Athlon 64 X2](https://en.wikipedia.org/wiki/Athlon_64_X2)，[SPARC](https://en.wikipedia.org/wiki/SPARC)[UltraSPARC T1](https://en.wikipedia.org/wiki/UltraSPARC_T1)，IBM[POWER4](https://en.wikipedia. org/wiki/POWER4）和[POWER5](https://en.wikipedia.org/wiki/POWER5)，以及一些[视频游戏机](https://en.wikipedia.org/wiki/Video_game_console)的CPU，如[Xbox 360](https://en.wikipedia.org/wiki/Xbox_360)的三核PowerPC设计，以及[PlayStation 3](https://en.wikipedia.org/wiki/PlayStation_3)的7核[Cell微处理器](https://en.wikipedia.org/wiki/Cell_)（微处理器）。
>

#### Data parallelism

A less common but increasingly important paradigm of processors (and indeed, computing in general) deals with data parallelism. The processors discussed earlier are all referred to as some type of scalar device.[[i\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-83) As the name implies, vector processors deal with multiple pieces of data in the context of one instruction. This contrasts with scalar processors, which deal with one piece of data for every instruction. Using [Flynn's taxonomy](https://en.wikipedia.org/wiki/Flynn's_taxonomy), these two schemes of dealing with data are generally referred to as *single instruction* stream, *multiple data* stream ([SIMD](https://en.wikipedia.org/wiki/Single_instruction,_multiple_data)) and *single instruction* stream, *single data* stream ([SISD](https://en.wikipedia.org/wiki/Single_instruction,_single_data)), respectively. The great utility in creating processors that deal with vectors of data lies in optimizing tasks that tend to require the same operation (for example, a sum or a [dot product](https://en.wikipedia.org/wiki/Dot_product)) to be performed on a large set of data. Some classic examples of these types of tasks include [multimedia](https://en.wikipedia.org/wiki/Multimedia) applications (images, video and sound), as well as many types of [scientific](https://en.wikipedia.org/wiki/Scientific_computing) and engineering tasks. Whereas a scalar processor must complete the entire process of fetching, decoding and executing each instruction and value in a set of data, a vector processor can perform a single operation on a comparatively large set of data with one instruction. This is only possible when the application tends to require many steps which apply one operation to a large set of data.

> 处理器（实际上是一般的计算）的一个不太常见但越来越重要的范式是处理数据并行性。前面讨论的处理器都被称为某种类型的标量设备。[[i]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-83)顾名思义，矢量处理器在一条指令的范围内处理多块数据。这与标量处理器形成对比，后者在每条指令中处理一个数据。使用[Flynn分类法](https://en.wikipedia.org/wiki/Flynn's_taxonomy)，这两种处理数据的方案一般被称为*单指令*流、*多数据*流（[SIMD](https://en.wikipedia.org/wiki/Single_instruction,_multiple_data)）和*单指令*流、*单数据*流（[SISD](https://en.wikipedia.org/wiki/Single_instruction,_single_data)），分别。创建处理数据向量的处理器的巨大效用在于优化那些倾向于要求在大量数据集上执行相同操作（例如，求和或[点乘](https://en.wikipedia.org/wiki/Dot_product)）的任务。这些类型任务的一些典型例子包括[多媒体](https://en.wikipedia.org/wiki/Multimedia)应用（图像、视频和声音），以及许多类型的[科学](https://en.wikipedia.org/wiki/Scientific_computing)和工程任务。标量处理器必须完成获取、解码和执行一组数据中的每条指令和数值的整个过程，而矢量处理器可以用一条指令对相对较大的数据集进行单一操作。这只有在应用倾向于需要许多步骤，将一个操作应用于一个大的数据集时才有可能。

Most early vector processors, such as the [Cray-1](https://en.wikipedia.org/wiki/Cray-1), were associated almost exclusively with scientific research and [cryptography](https://en.wikipedia.org/wiki/Cryptography) applications. However, as multimedia has largely shifted to digital media, the need for some form of SIMD in general-purpose processors has become significant. Shortly after inclusion of [floating-point units](https://en.wikipedia.org/wiki/Floating-point_unit) started to become commonplace in general-purpose processors, specifications for and implementations of SIMD execution units also began to appear for general-purpose processors.[*[when?](https://en.wikipedia.org/wiki/Wikipedia:Manual_of_Style/Dates_and_numbers#Chronological_items)*] Some of these early SIMD specifications – like HP's [Multimedia Acceleration eXtensions](https://en.wikipedia.org/wiki/Multimedia_Acceleration_eXtensions) (MAX) and Intel's [MMX](https://en.wikipedia.org/wiki/MMX_(instruction_set)) – were integer-only. This proved to be a significant impediment for some software developers, since many of the applications that benefit from SIMD primarily deal with [floating-point](https://en.wikipedia.org/wiki/Floating-point_arithmetic) numbers. Progressively, developers refined and remade these early designs into some of the common modern SIMD specifications, which are usually associated with one [instruction set architecture](https://en.wikipedia.org/wiki/Instruction_set_architecture) (ISA). Some notable modern examples include Intel's [Streaming SIMD Extensions](https://en.wikipedia.org/wiki/Streaming_SIMD_Extensions) (SSE) and the PowerPC-related [AltiVec](https://en.wikipedia.org/wiki/AltiVec) (also known as VMX).[[j\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-84)

> 大多数早期的矢量处理器，如[Cray-1](https://en.wikipedia.org/wiki/Cray-1)，几乎只与科学研究和[密码学](https://en.wikipedia.org/wiki/Cryptography)应用有关。然而，随着多媒体在很大程度上转向数字媒体，通用处理器对某种形式的SIMD的需求已经变得很重要。在[浮点单元](https://en.wikipedia.org/wiki/Floating-point_unit)开始在通用处理器中普及后不久，通用处理器中也开始出现SIMD执行单元的规范和实现。[*[何时？](https://en.wikipedia.org/wiki/Wikipedia:Manual_of_Style/Dates_and_numbers#Chronological_items)*] 其中一些早期的SIMD规范--如惠普的[多媒体加速扩展](https://en.wikipedia.org/wiki/Multimedia_Acceleration_eXtensions)(MAX)和英特尔的[MMX](https://en.wikipedia.org/wiki/MMX_(指令集))--是只用整数的。这对一些软件开发者来说是个很大的障碍，因为许多受益于SIMD的应用主要是处理[浮点](https://en.wikipedia.org/wiki/Floating-point_arithmetic)数字。渐渐地，开发者对这些早期的设计进行了完善和改造，形成了一些常见的现代SIMD规范，这些规范通常与一个[指令集架构](https://en.wikipedia.org/wiki/Instruction_set_architecture)（ISA）相关。一些值得注意的现代例子包括英特尔的[流式SIMD扩展](https://en.wikipedia.org/wiki/Streaming_SIMD_Extensions)(SSE)和与PowerPC相关的[AltiVec](https://en.wikipedia.org/wiki/AltiVec)（也称为VMX）。[[j]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-84)
>

### Hardware performance counter

Many modern architectures (including embedded ones) often include [hardware performance counters](https://en.wikipedia.org/wiki/Hardware_performance_counter) (HPC), which enables low-level (instruction-level) collection, [benchmarking](https://en.wikipedia.org/wiki/Benchmark_(computing)), debugging or analysis of running software metrics.[[75\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-85)[[76\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-86) HPC may also be used to discover and analyze unusual or suspicious activity of the software, such as [return-oriented programming](https://en.wikipedia.org/wiki/Return-oriented_programming) (ROP) or [sigreturn-oriented programming](https://en.wikipedia.org/wiki/Sigreturn-oriented_programming) (SROP) exploits etc.[[77\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-87) This is usually done by software-security teams to assess and find malicious binary programs.

Many major vendors (such as IBM, Intel, AMD, and ARM etc.) provide software interfaces (usually written in C/C++) that can be used to collected data from CPUs [registers](https://en.wikipedia.org/wiki/Hardware_register) in order to get metrics.[[78\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-88) Operating system vendors also provide software like `perf` (Linux) to record, [benchmark](https://en.wikipedia.org/wiki/Benchmark_(computing)), or [trace](https://en.wikipedia.org/wiki/Tracing_(software)) CPU events running kernels and applications.

> 许多现代架构（包括嵌入式架构）通常包括[硬件性能计数器](https://en.wikipedia.org/wiki/Hardware_performance_counter)（HPC），它可以实现低级（指令级）收集、[基准测试](https://en.wikipedia.org/wiki/Benchmark_(computing))、调试或分析运行中的软件指标。[[75]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-85)[[76]](https://en.wikipedia. org/wiki/Central_processing_unit#cite_note-86)HPC也可以用来发现和分析软件的异常或可疑活动，如[面向返回的编程](https://en.wikipedia.org/wiki/Return-oriented_programming)(ROP)或[面向符号返回的编程](https://en.wikipedia.org/wiki/Sigreturn-oriented_programming)(SROP)漏洞等。[[77]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-87)这通常由软件安全团队来评估和发现恶意的二进制程序。
>
> 许多主要供应商（如IBM、英特尔、AMD和ARM等）提供软件接口（通常用C/C++编写），可用于从CPU的[寄存器](https://en.wikipedia.org/wiki/Hardware_register)收集数据，以获得指标。[[78]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-88)操作系统供应商也提供像`perf`（Linux）这样的软件来记录、[基准测试](https://en.wikipedia.org/wiki/Benchmark_（计算）)或[跟踪](https://en.wikipedia.org/wiki/Tracing_)（软件）运行内核和应用程序的CPU事件。
>

## Virtual CPUs

[Cloud computing](https://en.wikipedia.org/wiki/Cloud_computing) can involve subdividing CPU operation into **virtual central processing units**[[79\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-89) (**vCPU**s[[80\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-90)).

A host is the virtual equivalent of a physical machine, on which a virtual system is operating.[[81\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-91) When there are several physical machines operating in tandem and managed as a whole, the grouped computing and memory resources form a [cluster](https://en.wikipedia.org/wiki/Computer_cluster). In some systems, it is possible to dynamically add and remove from a cluster. Resources available at a host and cluster level can be partitioned out into [resources pools](https://en.wikipedia.org/wiki/Pool_(computer_science)) with fine [granularity](https://en.wikipedia.org/wiki/Granularity_(parallel_computing)).

> [云计算](https://en.wikipedia.org/wiki/Cloud_computing)可涉及将CPU操作细分为**虚拟中央处理单元**[[79]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-89)（**vCPU**s[[80]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-90)）。
>
> 主机是物理机的虚拟等价物，虚拟系统在其上运行。[[81]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-91)当有几个物理机串联运行并作为一个整体管理时，分组的计算和内存资源形成了一个[集群](https://en.wikipedia.org/wiki/Computer_cluster)。在一些系统中，可以动态地添加和删除一个集群。在主机和集群层面上的可用资源可以被划分为[资源池](https://en.wikipedia.org/wiki/Pool_(computer_science))，具有精细的[颗粒度](https://en.wikipedia.org/wiki/Granularity_(parallel_computing))。

## Performance

The *performance* or *speed* of a processor depends on, among many other factors, the **clock rate** (generally given in multiples of [hertz](https://en.wikipedia.org/wiki/Hertz)) and the **instructions per clock** (IPC), which together are the factors for the [instructions per second](https://en.wikipedia.org/wiki/Instructions_per_second) (IPS) that the CPU can perform.[[82\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-Freq-92) Many reported IPS values have represented "peak" execution rates on artificial instruction sequences with few branches, whereas realistic workloads consist of a mix of instructions and applications, some of which take longer to execute than others. The performance of the [memory hierarchy](https://en.wikipedia.org/wiki/Memory_hierarchy) also greatly affects processor performance, an issue barely considered in MIPS calculations. Because of these problems, various standardized tests, often called ["benchmarks"](https://en.wikipedia.org/wiki/Benchmark_(computing)) for this purpose‍—‌such as [SPECint](https://en.wikipedia.org/wiki/SPECint)‍—‌have been developed to attempt to measure the real effective performance in commonly used applications.

> 处理器的*性能或*速度取决于许多其他因素，包括**时钟速率**（通常以[赫兹](https://en.wikipedia.org/wiki/Hertz)的倍数给出）和**每时钟指令**（IPC），它们共同构成了CPU能够执行的[每秒指令数](https://en.wikipedia.org/wiki/Instructions_per_second)（IPS）的因素。[[82]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-Freq-92)许多报告的IPS值代表了很少分支的人工指令序列的 "峰值 "执行率，而现实的工作负载由指令和应用程序的混合组成，其中一些指令的执行时间比其他指令更长。[存储器层次结构](https://en.wikipedia.org/wiki/Memory_hierarchy)的性能也大大影响了处理器的性能，这个问题在MIPS的计算中几乎没有考虑。由于这些问题，各种标准化的测试，通常被称为["基准"](https://en.wikipedia.org/wiki/Benchmark_(computing))的目的--例如[SPECint](https://en.wikipedia.org/wiki/SPECint)--已经被开发出来，试图衡量常用应用程序的真正有效性能。

Processing performance of computers is increased by using [multi-core processors](https://en.wikipedia.org/wiki/Multi-core_processor), which essentially is plugging two or more individual processors (called *cores* in this sense) into one integrated circuit.[[83\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-tt-93) Ideally, a dual core processor would be nearly twice as powerful as a single core processor. In practice, the performance gain is far smaller, only about 50%, due to imperfect software algorithms and implementation.[[84\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-94) Increasing the number of cores in a processor (i.e. dual-core, quad-core, etc.) increases the workload that can be handled. This means that the processor can now handle numerous asynchronous events, interrupts, etc. which can take a toll on the CPU when overwhelmed. These cores can be thought of as different floors in a processing plant, with each floor handling a different task. Sometimes, these cores will handle the same tasks as cores adjacent to them if a single core is not enough to handle the information.

> 计算机的处理性能是通过使用[多核处理器](https://en.wikipedia.org/wiki/Multi-core_processor)来提高的，这实质上是将两个或更多的独立处理器（在这个意义上称为*多核*）插入一个集成电路。[[83]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-tt-93)理想情况下，双核处理器的功能几乎是单核处理器的两倍。在实践中，由于软件算法和实施的不完善，性能增益要小得多，只有50%左右。[[84]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-94) 增加处理器中的内核数量（即双核、四核等），可以增加可以处理的工作负荷。这意味着处理器现在可以处理众多的异步事件、中断等，这些事件在不堪重负的情况下会给CPU带来损失。这些内核可以被认为是一个加工厂的不同楼层，每层处理不同的任务。有时，如果单个内核不足以处理信息，这些内核将处理与它们相邻的内核相同的任务。
>

Due to specific capabilities of modern CPUs, such as [simultaneous multithreading](https://en.wikipedia.org/wiki/Simultaneous_multithreading) and [uncore](https://en.wikipedia.org/wiki/Uncore), which involve sharing of actual CPU resources while aiming at increased utilization, monitoring performance levels and hardware use gradually became a more complex task.[[85\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-95) As a response, some CPUs implement additional hardware logic that monitors actual use of various parts of a CPU and provides various counters accessible to software; an example is Intel's *Performance Counter Monitor* technology.[[2\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-intel-pcm-2)

> 由于现代CPU的特定功能，如[同步多线程](https://en.wikipedia.org/wiki/Simultaneous_multithreading)和[非核心](https://en.wikipedia.org/wiki/Uncore)，涉及到分享实际的CPU资源，同时旨在提高利用率，监测性能水平和硬件使用逐渐成为一项更复杂的任务。[[85\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-95)作为一种回应，一些CPU实施额外的硬件逻辑，监测CPU各部分的实际使用，并提供软件可访问的各种计数器；一个例子是Intel的*Performance Counter Monitor*技术。[[2\]](https://en.wikipedia.org/wiki/Central_processing_unit#cite_note-intel-pcm-2)

## See also

- [Addressing mode](https://en.wikipedia.org/wiki/Addressing_mode)
- [AMD Accelerated Processing Unit](https://en.wikipedia.org/wiki/AMD_Accelerated_Processing_Unit)
- [CISC](https://en.wikipedia.org/wiki/Complex_instruction_set_computing)
- [Computer bus](https://en.wikipedia.org/wiki/Bus_(computing))
- [Computer engineering](https://en.wikipedia.org/wiki/Computer_engineering)
- [CPU core voltage](https://en.wikipedia.org/wiki/CPU_core_voltage)
- [CPU socket](https://en.wikipedia.org/wiki/CPU_socket)
- [Digital signal processor](https://en.wikipedia.org/wiki/Digital_signal_processor)
- [GPU](https://en.wikipedia.org/wiki/GPU)
- [List of instruction sets](https://en.wikipedia.org/wiki/List_of_instruction_sets)
- [Protection ring](https://en.wikipedia.org/wiki/Protection_ring)
- [RISC](https://en.wikipedia.org/wiki/Reduced_instruction_set_computing)
- [Stream processing](https://en.wikipedia.org/wiki/Stream_processing)
- [True Performance Index](https://en.wikipedia.org/wiki/True_Performance_Index)
- [TPU](https://en.wikipedia.org/wiki/Tensor_processing_unit)
- [Wait state](https://en.wikipedia.org/wiki/Wait_state)



# Instruction set architecture

In [computer science](https://en.wikipedia.org/wiki/Computer_science), an [**instruction set architecture**](https://en.wikipedia.org/wiki/Instruction_set_architecture) (**ISA**), also called **[computer architecture](https://en.wikipedia.org/wiki/Computer_architecture),** is an [abstract model](https://en.wikipedia.org/wiki/Abstract_model) of a [computer](https://en.wikipedia.org/wiki/Computer). A device that executes instructions described by that ISA, such as a [central processing unit](https://en.wikipedia.org/wiki/Central_processing_unit) (CPU), is called an *implementation*.

In general, an ISA defines the supported [instructions](https://en.wikipedia.org/wiki/Machine_code), [data types](https://en.wikipedia.org/wiki/Data_type), [registers](https://en.wikipedia.org/wiki/Register_(computer)), the hardware support for managing [main memory](https://en.wikipedia.org/wiki/Random-access_memory), fundamental features (such as the [memory consistency](https://en.wikipedia.org/wiki/Memory_consistency), [addressing modes](https://en.wikipedia.org/wiki/Addressing_mode), [virtual memory](https://en.wikipedia.org/wiki/Virtual_memory)), and the [input/output](https://en.wikipedia.org/wiki/Input/output) model of a family of implementations of the ISA.

An ISA specifies the behavior of [machine code](https://en.wikipedia.org/wiki/Machine_code) running on implementations of that ISA in a fashion that does not depend on the characteristics of that implementation, providing [binary compatibility](https://en.wikipedia.org/wiki/Binary_compatibility) between implementations. This enables multiple implementations of an ISA that differ in characteristics such as [performance](https://en.wikipedia.org/wiki/Computer_performance), physical size, and monetary cost (among other things), but that are capable of running the same machine code, so that a lower-performance, lower-cost machine can be replaced with a higher-cost, higher-performance machine without having to replace software. It also enables the evolution of the [microarchitectures](https://en.wikipedia.org/wiki/Microarchitecture) of the implementations of that ISA, so that a newer, higher-performance implementation of an ISA can run software that runs on previous generations of implementations.

> 在[计算机科学](https://en.wikipedia.org/wiki/Computer_science)中，[**指令集架构**](https://en.wikipedia.org/wiki/Instruction_set_architecture)(**ISA**)，也称为**[计算机架构](https://en.wikipedia.org/wiki/Computer_architecture)，**是[计算机](https://en.wikipedia.org/wiki/Computer)的[抽象模型](https://en.wikipedia.org/wiki/Abstract_model)。执行该ISA所描述的指令的设备，如[中央处理单元](https://en.wikipedia.org/wiki/Central_processing_unit)(CPU)，被称为*实现*。
>
> 一般来说，ISA定义了支持的[指令](https://en.wikipedia.org/wiki/Machine_code)、[数据类型](https://en.wikipedia.org/wiki/Data_type)、[寄存器](https://en.wikipedia.org/wiki/Register_(计算机))、管理[主存储器](https://en.wikipedia.org/wiki/Random-access_memory)的硬件支持、基本特征（如[存储器一致性](https://en.wikipedia.org/wiki/Memory_consistency)、[寻址模式](https://en.wikipedia.org/wiki/Addressing_mode)、[虚拟存储器](https://en.wikipedia.org/wiki/Virtual_memory)）以及ISA的一系列实现的[输入/输出](https://en.wikipedia.org/wiki/Input/output) 模型。
>
> ISA规定了在该ISA实现上运行的[机器码](https://en.wikipedia.org/wiki/Machine_code)的行为，其方式不取决于该实现的特性，在实现之间提供[二进制兼容性](https://en.wikipedia.org/wiki/Binary_compatibility)。这使得一个ISA的多种实现方式在诸如[性能](https://en.wikipedia.org/wiki/Computer_performance)、物理尺寸和开支成本（以及其他方面）方面有所不同，但它们能够运行相同的机器代码，因此，性能较低、成本较低的机器可以被成本较高、性能较高的机器取代，而不必更换软件。它还能使该ISA的实现的[微架构](https://en.wikipedia.org/wiki/Microarchitecture)进化，以便较新的、更高性能的ISA的实现可以运行在前几代实现上运行的软件。

If an [operating system](https://en.wikipedia.org/wiki/Operating_system) maintains a standard and compatible [application binary interface](https://en.wikipedia.org/wiki/Application_binary_interface) (ABI) for a particular ISA, machine code will run on future implementations of that ISA and operating system. However, if an ISA supports running multiple operating systems, it does not guarantee that machine code for one operating system will run on another operating system, unless the first operating system supports running machine code built for the other operating system.

An ISA can be extended by adding instructions or other capabilities, or adding support for larger addresses and data values; an implementation of the extended ISA will still be able to execute machine code for versions of the ISA without those extensions. Machine code using those extensions will only run on implementations that support those extensions.

The binary compatibility that they provide makes ISAs one of the most fundamental abstractions in [computing](https://en.wikipedia.org/wiki/Computing).

> 如果一个[操作系统](https://en.wikipedia.org/wiki/Operating_system)为一个特定的ISA维护一个标准和兼容的[应用二进制接口](https://en.wikipedia.org/wiki/Application_binary_interface)(ABI)，机器代码将在该ISA和操作系统的未来实现中运行。然而，如果一个ISA支持运行多个操作系统，它并不保证一个操作系统的机器代码可以在另一个操作系统上运行，除非第一个操作系统支持运行为其他操作系统编写的机器代码。
>
> ISA可以通过增加指令或其他功能，或增加对更大的地址和数据值的支持来扩展；扩展后的ISA的实现仍然能够执行没有这些扩展的ISA版本的机器代码。使用这些扩展的机器代码只能在支持这些扩展的实现上运行。
>
> 它们所提供的二进制兼容性使得ISA成为[计算](https://en.wikipedia.org/wiki/Computing)中最基本的抽象之一。

## Overview

An instruction set architecture is distinguished from a [microarchitecture](https://en.wikipedia.org/wiki/Microarchitecture), which is the set of [processor design](https://en.wikipedia.org/wiki/Processor_design) techniques used, in a particular processor, to implement the instruction set. Processors with different microarchitectures can share a common instruction set. For example, the [Intel](https://en.wikipedia.org/wiki/Intel) [Pentium](https://en.wikipedia.org/wiki/P5_(microarchitecture)) and the [AMD](https://en.wikipedia.org/wiki/Advanced_Micro_Devices) [Athlon](https://en.wikipedia.org/wiki/Athlon) implement nearly identical versions of the [x86 instruction set](https://en.wikipedia.org/wiki/X86_instruction_set), but they have radically different internal designs.

The concept of an *architecture*, distinct from the design of a specific machine, was developed by [Fred Brooks](https://en.wikipedia.org/wiki/Fred_Brooks) at IBM during the design phase of [System/360](https://en.wikipedia.org/wiki/System/360).

> Prior to NPL [System/360], the company's computer designers had been free to honor cost objectives not only by selecting technologies but also by fashioning functional and architectural refinements. The SPREAD compatibility objective, in contrast, postulated a single architecture for a series of five processors spanning a wide range of cost and performance. None of the five engineering design teams could count on being able to bring about adjustments in architectural specifications as a way of easing difficulties in achieving cost and performance objectives.[[1\]](https://en.wikipedia.org/wiki/Instruction_set_architecture#cite_note-Pugh-1): p.137 

Some [virtual machines](https://en.wikipedia.org/wiki/Virtual_machine) that support [bytecode](https://en.wikipedia.org/wiki/Bytecode) as their ISA such as [Smalltalk](https://en.wikipedia.org/wiki/Smalltalk), the [Java virtual machine](https://en.wikipedia.org/wiki/Java_virtual_machine), and [Microsoft](https://en.wikipedia.org/wiki/Microsoft)'s [Common Language Runtime](https://en.wikipedia.org/wiki/Common_Language_Runtime), implement this by translating the bytecode for commonly used code paths into native machine code. In addition, these virtual machines execute less frequently used code paths by interpretation (see: [Just-in-time compilation](https://en.wikipedia.org/wiki/Just-in-time_compilation)). [Transmeta](https://en.wikipedia.org/wiki/Transmeta) implemented the x86 instruction set atop [VLIW](https://en.wikipedia.org/wiki/VLIW) processors in this fashion.

> 指令集架构与[微架构](https://en.wikipedia.org/wiki/Microarchitecture)是有区别的，后者是在一个特定的处理器中用来实现指令集的[处理器设计](https://en.wikipedia.org/wiki/Processor_design)技术的集合。具有不同微架构的处理器可以共享一个共同的指令集。例如，[英特尔](https://en.wikipedia.org/wiki/Intel) [奔腾](https://en.wikipedia.org/wiki/P5_(微架构))和[AMD](https://en.wikipedia.org/wiki/Advanced_Micro_Devices) [Athlon](https://en.wikipedia.org/wiki/Athlon)实现了几乎相同的[x86指令集](https://en.wikipedia.org/wiki/X86_instruction_set)，但它们的内部设计完全不同。
>
> 架构*的概念，不同于具体机器的设计，是由IBM公司的[Fred Brooks](https://en.wikipedia.org/wiki/Fred_Brooks)在[System/360](https://en.wikipedia.org/wiki/System/360)的设计阶段提出的。
>
> > 在NPL[System/360]之前，公司的计算机设计师们不仅可以通过选择技术，还可以通过功能和架构的改进来自由地实现成本目标。与此相反，SPREAD的兼容性目标是为一系列的五个处理器设计一个单一的架构，涵盖了广泛的成本和性能范围。五个工程设计团队中没有一个能够指望通过调整架构规格来缓解实现成本和性能目标的困难。[[1]](https://en.wikipedia.org/wiki/Instruction_set_architecture#cite_note-Pugh-1): p.137 
>
> 一些支持[字节码](https://en.wikipedia.org/wiki/Virtual_machine)作为其ISA的[虚拟机](https://en.wikipedia.org/wiki/Bytecode)，如[Smalltalk](https://en.wikipedia.org/wiki/Smalltalk)、[Java虚拟机](https://en.wikipedia.org/wiki/Java_virtual_machine)和[Microsoft](https://en.wikipedia.org/wiki/Microsoft)的[通用语言运行时](https://en.wikipedia.org/wiki/Common_Language_Runtime)，通过将常用代码路径的字节码翻译为本地机器代码来实现。此外，这些虚拟机通过解释来执行不常用的代码路径（见：[即时编译](https://en.wikipedia.org/wiki/Just-in-time_compilation)）。[Transmeta](https://en.wikipedia.org/wiki/Transmeta)以这种方式在[VLIW](https://en.wikipedia.org/wiki/VLIW)处理器上实现了x86指令集。

## Classification of ISAs

An ISA may be classified in a number of different ways. A common classification is by architectural *complexity*. A [complex instruction set computer](https://en.wikipedia.org/wiki/Complex_instruction_set_computer) (CISC) has many specialized instructions, some of which may only be rarely used in practical programs. A [reduced instruction set computer](https://en.wikipedia.org/wiki/Reduced_instruction_set_computer) (RISC) simplifies the processor by efficiently implementing only the instructions that are frequently used in programs, while the less common operations are implemented as subroutines, having their resulting additional processor execution time offset by infrequent use.[[2\]](https://en.wikipedia.org/wiki/Instruction_set_architecture#cite_note-2)

Other types include [very long instruction word](https://en.wikipedia.org/wiki/Very_long_instruction_word) (VLIW) architectures, and the closely related *long instruction word* (LIW) and *[explicitly parallel instruction computing](https://en.wikipedia.org/wiki/Explicitly_parallel_instruction_computing)* (EPIC) architectures. These architectures seek to exploit [instruction-level parallelism](https://en.wikipedia.org/wiki/Instruction-level_parallelism) with less hardware than RISC and CISC by making the [compiler](https://en.wikipedia.org/wiki/Compiler) responsible for instruction issue and scheduling.

Architectures with even less complexity have been studied, such as the [minimal instruction set computer](https://en.wikipedia.org/wiki/Minimal_instruction_set_computer) (MISC) and [one-instruction set computer](https://en.wikipedia.org/wiki/One-instruction_set_computer) (OISC). These are theoretically important types, but have not been commercialized.

> ISA可以以多种不同的方式进行分类。一个常见的分类是按架构的*复杂程度*。一个[复杂指令集计算机](https://en.wikipedia.org/wiki/Complex_instruction_set_computer)(CISC)有许多专门的指令，其中一些可能在实际程序中很少使用。[精简指令集计算机](https://en.wikipedia.org/wiki/Reduced_instruction_set_computer)(RISC)通过只有效地实现程序中经常使用的指令来简化处理器，而不太常用的操作则作为子程序来实现，其产生的额外的处理器执行时间被不经常使用所抵消。[[2\]](https://en.wikipedia.org/wiki/Instruction_set_architecture#cite_note-2)
>
> 其他类型包括[超长指令字](https://en.wikipedia.org/wiki/Very_long_instruction_word)(VLIW)架构，以及密切相关的*长指令字*(LIW)和*[明确并行指令计算](https://en.wikipedia.org/wiki/Explicitly_parallel_instruction_computing)*(EPIC)架构。这些架构试图通过让[编译器](https://en.wikipedia.org/wiki/Compiler)负责指令发布和调度，用比RISC和CISC更少的硬件来利用[指令级并行性](https://en.wikipedia.org/wiki/Instruction-level_parallelism)。
>
> 已经研究了复杂度更低的架构，如[最小指令集计算机](https://en.wikipedia.org/wiki/Minimal_instruction_set_computer) (MISC)和[单指令集计算机](https://en.wikipedia.org/wiki/One-instruction_set_computer) (OISC)。这些都是理论上的重要类型，但还没有商业化。

## Instructions

[Machine language](https://en.wikipedia.org/wiki/Machine_code) is built up from discrete *statements* or *instructions*. On the processing architecture, a given instruction may specify:

- opcode (the instruction to be performed) e.g. add, copy, test

- any explicit operands:

  [registers](https://en.wikipedia.org/wiki/Processor_register)

  literal/constant values

  [addressing modes](https://en.wikipedia.org/wiki/Addressing_mode) used to access memory

More complex operations are built up by combining these simple instructions, which are executed sequentially, or as otherwise directed by [control flow](https://en.wikipedia.org/wiki/Control_flow) instructions.

> [机器语言](https://en.wikipedia.org/wiki/Machine_code)是由离散的*语句*或*指令*建立的。在处理架构上，一个给定的指令可以指定：
>
> - 操作码（要执行的指令），例如：添加、复制、测试
> - 任何明确的操作数：
>
>   [寄存器](https://en.wikipedia.org/wiki/Processor_register)
>
>   字面/常量值
>
>   [寻址模式](https://en.wikipedia.org/wiki/Addressing_mode)用于访问内存
>
> 更复杂的操作是由这些简单的指令组合而成的，这些指令按顺序执行，或按[控制流](https://en.wikipedia.org/wiki/Control_flow)指令的其他指示执行。

### Instruction types

Examples of operations common to many instruction sets include:

> 许多指令集共有的操作实例包括：

#### Data handling and memory operations

- *Set* a [register](https://en.wikipedia.org/wiki/Processor_register) to a fixed constant value.
- *Copy* data from a memory location or a register to a memory location or a register (a machine instruction is often called *move*; however, the term is misleading). They are used to store the contents of a register, the contents of another memory location or the result of a computation, or to retrieve stored data to perform a computation on it later. They are often called [load and store](https://en.wikipedia.org/wiki/Load_and_store) operations.
- *Read* and *write* data from hardware devices.

> - *设置*一个[寄存器](https://en.wikipedia.org/wiki/Processor_register)为一个固定的常量值。
> - 将数据从一个内存位置或一个寄存器复制到一个内存位置或一个寄存器（机器指令通常被称为*move*；但是，这个术语有误导性）。它们被用来存储一个寄存器的内容、另一个内存位置的内容或一个计算的结果，或检索存储的数据以便以后对其进行计算。它们通常被称为[加载和存储](https://en.wikipedia.org/wiki/Load_and_store)操作。
> - 从硬件设备中*读*和*写*数据。

#### Arithmetic and logic operations

- *Add, subtract, multiply*, or *divide* the values of two registers, placing the result in a register, possibly setting one or more condition codes in a status register.
  - *increment*, *decrement* in some ISAs, saving operand fetch in trivial cases.
- Perform [bitwise operations](https://en.wikipedia.org/wiki/Bitwise_operation), e.g., taking the *[conjunction](https://en.wikipedia.org/wiki/Logical_conjunction)* and *[disjunction](https://en.wikipedia.org/wiki/Logical_disjunction)* of corresponding bits in a pair of registers, taking the *[negation](https://en.wikipedia.org/wiki/Logical_negation)* of each bit in a register.
- *Compare* two values in registers (for example, to see if one is less, or if they are equal).
- *Floating-point instructions* for arithmetic on floating-point numbers.

> - 对两个寄存器的值进行*加、减、乘*或*除*，将结果放在一个寄存器中，可能在一个状态寄存器中设置一个或多个条件代码。
>   - 在一些ISA中进行*增*、*减*，在琐碎的情况下节省操作数的获取。
> - 执行[位操作](https://en.wikipedia.org/wiki/Bitwise_operation)，例如，对一对寄存器中的相应位进行*[连合](https://en.wikipedia.org/wiki/Logical_conjunction)*和*[分离](https://en.wikipedia.org/wiki/Logical_disjunction)*，对一个寄存器中的每个位进行*[否定](https://en.wikipedia.org/wiki/Logical_negation)*。
> - *比较*寄存器中的两个值（例如，看其中一个是否较小，或者它们是否相等）。
> - *浮点指令*用于浮点数字的运算。

#### Control flow operations

- *[Branch](https://en.wikipedia.org/wiki/Branch_(computer_science))* to another location in the program and execute instructions there.
- *[Conditionally branch](https://en.wikipedia.org/wiki/Branch_predication)* to another location if a certain condition holds.
- *[Indirectly branch](https://en.wikipedia.org/wiki/Indirect_branch)* to another location.
- *[Call](https://en.wikipedia.org/wiki/Subroutine)* another block of code, while saving the location of the next instruction as a point to return to.

> - *[分支](https://en.wikipedia.org/wiki/Branch_(computer_science))*到程序中的另一个位置并在那里执行指令。
> - *[条件性分支](https://en.wikipedia.org/wiki/Branch_predication)*到另一个位置，如果某个条件成立。
> - *[间接分支](https://en.wikipedia.org/wiki/Indirect_branch)*到另一个位置。
> - *[调用](https://en.wikipedia.org/wiki/Subroutine)*另一个代码块，同时保存下一条指令的位置作为返回点。

#### Coprocessor instruction

- Load/store data to and from a coprocessor or exchanging with CPU registers.
- Perform coprocessor operations.

> - 向协处理器加载/存储数据或与CPU寄存器进行交换。
> - 执行协处理器操作。

### Complex instructions

Processors may include "complex" instructions in their instruction set. A single "complex" instruction does something that may take many instructions on other computers. Such instructions are [typified](https://en.wikipedia.org/wiki/Typified) by instructions that take multiple steps, control multiple functional units, or otherwise appear on a larger scale than the bulk of simple instructions implemented by the given processor. Some examples of "complex" instructions include:

- transferring multiple registers to or from memory (especially the [stack](https://en.wikipedia.org/wiki/Call_stack)) at once
- moving large blocks of memory (e.g. [string copy](https://en.wikipedia.org/wiki/String_copy) or [DMA transfer](https://en.wikipedia.org/wiki/DMA_transfer))
- complicated integer and [floating-point arithmetic](https://en.wikipedia.org/wiki/Floating-point_arithmetic) (e.g. [square root](https://en.wikipedia.org/wiki/Square_root), or [transcendental functions](https://en.wikipedia.org/wiki/Transcendental_function) such as [logarithm](https://en.wikipedia.org/wiki/Logarithm), [sine](https://en.wikipedia.org/wiki/Sine), [cosine](https://en.wikipedia.org/wiki/Cosine), etc.)
- *[SIMD](https://en.wikipedia.org/wiki/Single_instruction,_multiple_data) instructions*, a single instruction performing an operation on many homogeneous values in parallel, possibly in dedicated [SIMD registers](https://en.wikipedia.org/wiki/SIMD_register)
- performing an atomic [test-and-set](https://en.wikipedia.org/wiki/Test-and-set) instruction or other [read-modify-write](https://en.wikipedia.org/wiki/Read-modify-write) [atomic instruction](https://en.wikipedia.org/wiki/Atomic_instruction)
- instructions that perform [ALU](https://en.wikipedia.org/wiki/Arithmetic_logic_unit) operations with an operand from memory rather than a register

Complex instructions are more common in CISC instruction sets than in RISC instruction sets, but RISC instruction sets may include them as well. RISC instruction sets generally do not include ALU operations with memory operands, or instructions to move large blocks of memory, but most RISC instruction sets include [SIMD](https://en.wikipedia.org/wiki/Single_instruction,_multiple_data) or [vector](https://en.wikipedia.org/wiki/Vector_processing) instructions that perform the same arithmetic operation on multiple pieces of data at the same time. SIMD instructions have the ability of manipulating large vectors and matrices in minimal time. SIMD instructions allow easy [parallelization](https://en.wikipedia.org/wiki/Parallelization) of algorithms commonly involved in sound, image, and video processing. Various SIMD implementations have been brought to market under trade names such as [MMX](https://en.wikipedia.org/wiki/MMX_(instruction_set)), [3DNow!](https://en.wikipedia.org/wiki/3DNow!), and [AltiVec](https://en.wikipedia.org/wiki/AltiVec).

> 处理器在其指令集中可能包括 "复杂 "指令。一条 "复杂 "指令所做的事情，在其他计算机上可能需要许多指令。这种指令是[典型的](https://en.wikipedia.org/wiki/Typified)采取多个步骤的指令，控制多个功能单元，或以其他方式出现在比给定处理器实现的大部分简单指令更大的范围内。一些 "复杂 "指令的例子包括。
>
> - 一次性将多个寄存器转移到内存（特别是[堆栈](https://en.wikipedia.org/wiki/Call_stack)）或从内存中转移出来
> - 移动大块的内存（例如，[字符串复制](https://en.wikipedia.org/wiki/String_copy)或[DMA传输](https://en.wikipedia.org/wiki/DMA_transfer))
> - 复杂的整数和[浮点运算](https://en.wikipedia.org/wiki/Floating-point_arithmetic)（例如[平方根](https://en.wikipedia.org/wiki/Square_root)，或[超越函数](https://en.wikipedia.org/wiki/Transcendental_function)，如[对数](https://en.wikipedia.org/wiki/Logarithm)、[正弦](https://en.wikipedia.org/wiki/Sine)、[余弦](https://en.wikipedia.org/wiki/Cosine)，等等）。
> - *[SIMD](https://en.wikipedia.org/wiki/Single_instruction,_multiple_data)指令*，一条指令以并行方式对许多同质值进行操作，可能在专用的[SIMD寄存器](https://en.wikipedia.org/wiki/SIMD_register)中进行。
> - 执行原子[测试和设置](https://en.wikipedia.org/wiki/Test-and-set)指令或其他[读-改-写](https://en.wikipedia.org/wiki/Read-modify-write) [原子指令](https://en.wikipedia.org/wiki/Atomic_instruction)
> - 执行[ALU](https://en.wikipedia.org/wiki/Arithmetic_logic_unit)操作的指令，其操作数来自内存而非寄存器
>
> 复杂指令在CISC指令集中比在RISC指令集中更常见，但RISC指令集也可能包括它们。RISC指令集一般不包括带有内存操作数的ALU操作，也不包括移动大块内存的指令，但是大多数RISC指令集包括[SIMD](https://en.wikipedia.org/wiki/Single_instruction,_multiple_data)或[矢量](https://en.wikipedia.org/wiki/Vector_processing)指令，这些指令同时对多块数据进行相同的算术操作。SIMD指令具有在最短的时间内操作大的向量和矩阵的能力。SIMD指令允许轻松[并行化](https://en.wikipedia.org/wiki/Parallelization)声音、图像和视频处理中通常涉及的算法。各种SIMD实现方式已经以商品名称推向市场，如[MMX](https://en.wikipedia.org/wiki/MMX_(指令集))、[3DNow！](https://en.wikipedia.org/wiki/3DNow！)和[AltiVec](https://en.wikipedia.org/wiki/AltiVec)。

### Instruction encoding

On traditional architectures, an instruction includes an [opcode](https://en.wikipedia.org/wiki/Opcode) that specifies the operation to perform, such as *add contents of memory to register*—and zero or more [operand](https://en.wikipedia.org/wiki/Operand) specifiers, which may specify [registers](https://en.wikipedia.org/wiki/Processor_register), memory locations, or literal data. The operand specifiers may have [addressing modes](https://en.wikipedia.org/wiki/Addressing_mode) determining their meaning or may be in fixed fields. In [very long instruction word](https://en.wikipedia.org/wiki/Very_long_instruction_word) (VLIW) architectures, which include many [microcode](https://en.wikipedia.org/wiki/Microcode) architectures, multiple simultaneous opcodes and operands are specified in a single instruction.

Some exotic instruction sets do not have an opcode field, such as [transport triggered architectures](https://en.wikipedia.org/wiki/Transport_triggered_architecture) (TTA), only operand(s).

Most [stack machines](https://en.wikipedia.org/wiki/Stack_machine) have "[0-operand](https://en.wikipedia.org/wiki/0-operand_instruction_set)" instruction sets in which arithmetic and logical operations lack any operand specifier fields; only instructions that push operands onto the evaluation stack that pop operands from the stack into variables have operand specifiers. The instruction set carries out most ALU actions with postfix ([reverse Polish notation](https://en.wikipedia.org/wiki/Reverse_Polish_notation)) operations that work only on the expression [stack](https://en.wikipedia.org/wiki/Stack_(abstract_data_type)), not on data registers or arbitrary main memory cells. This can be very convenient for compiling high-level languages, because most arithmetic expressions can be easily translated into postfix notation.[[3\]](https://en.wikipedia.org/wiki/Instruction_set_architecture#cite_note-3)

Conditional instructions often have a predicate field—a few bits that encode the specific condition to cause an operation to be performed rather than not performed. For example, a conditional branch instruction will transfer control if the condition is true, so that execution proceeds to a different part of the program, and not transfer control if the condition is false, so that execution continues sequentially. Some instruction sets also have conditional moves, so that the move will be executed, and the data stored in the target location, if the condition is true, and not executed, and the target location not modified, if the condition is false. Similarly, IBM [z/Architecture](https://en.wikipedia.org/wiki/Z/Architecture) has a conditional store instruction. A few instruction sets include a predicate field in every instruction; this is called [branch predication](https://en.wikipedia.org/wiki/Branch_predication).

> 在传统的体系结构中，一条指令包括一个指定操作的[操作码](https://en.wikipedia.org/wiki/Opcode)，如*将内存的内容添加到寄存器中*，以及零个或多个[操作数](https://en.wikipedia.org/wiki/Operand)指定器，它们可以指定[寄存器](https://en.wikipedia.org/wiki/Processor_register)、内存位置或字面数据。操作数指定符可以有[寻址模式](https://en.wikipedia.org/wiki/Addressing_mode)决定其含义，也可以在固定的字段中。在[超长指令字](https://en.wikipedia.org/wiki/Very_long_instruction_word)(VLIW)架构中，包括许多[微码](https://en.wikipedia.org/wiki/Microcode)架构，在一条指令中可以同时指定多个操作码和操作数。
>
> 一些特殊的指令集没有操作码字段，如[传输触发架构](https://en.wikipedia.org/wiki/Transport_triggered_architecture)(TTA)，只有操作数(s)。
>
> 大多数[堆栈机](https://en.wikipedia.org/wiki/Stack_machine)有"[0-操作数](https://en.wikipedia.org/wiki/0-operand_instruction_set) "指令集，其中算术和逻辑操作没有任何操作数指定字段；只有将操作数推入评估堆栈和将操作数从堆栈中弹出到变量的指令有操作数指定字段。该指令集用后缀([反向波兰语符号](https://en.wikipedia.org/wiki/Reverse_Polish_notation))操作执行大多数ALU操作，这些操作只对表达式[堆栈](https://en.wikipedia.org/wiki/Stack_(abstract_data_type))起作用，而不是对数据寄存器或任意的主内存单元起作用。这对于编译高级语言来说非常方便，因为大多数算术表达式可以很容易地翻译成后缀符号。[[3]](https://en.wikipedia.org/wiki/Instruction_set_architecture#cite_note-3)
>
> 条件性指令通常有一个谓词字段--几个比特，用来编码特定的条件，以导致一个操作被执行而不是不执行。例如，条件性分支指令在条件为真时将转移控制权，这样执行就会进入程序的不同部分，而在条件为假时不转移控制权，这样执行就会按顺序进行。一些指令集也有条件性移动，如果条件为真，移动将被执行，数据将被存储在目标位置，如果条件为假，则不执行，目标位置不被修改。同样，IBM [z/Architecture](https://en.wikipedia.org/wiki/Z/Architecture)也有一个条件存储指令。少数指令集在每条指令中都包括一个谓词字段；这被称为[分支谓词](https://en.wikipedia.org/wiki/Branch_predication)。

---

# Von Neumann architecture

The **von Neumann architecture** — also known as the **von Neumann model** or **Princeton architecture** — is a [computer architecture](https://en.wikipedia.org/wiki/Computer_architecture) based on a 1945 description by [John von Neumann](https://en.wikipedia.org/wiki/John_von_Neumann), and by others, in the *[First Draft of a Report on the EDVAC](https://en.wikipedia.org/wiki/First_Draft_of_a_Report_on_the_EDVAC)*.[[1\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-FirstDraftReport-1) The document describes a design architecture for an electronic [digital computer](https://en.wikipedia.org/wiki/Digital_computer) with these components:

- A [processing unit](https://en.wikipedia.org/wiki/Central_processing_unit) with both an [arithmetic logic unit](https://en.wikipedia.org/wiki/Arithmetic_logic_unit) and [processor registers](https://en.wikipedia.org/wiki/Processor_register)
- A [control unit](https://en.wikipedia.org/wiki/Control_unit) that includes an [instruction register](https://en.wikipedia.org/wiki/Instruction_register) and a [program counter](https://en.wikipedia.org/wiki/Program_counter)
- [Memory](https://en.wikipedia.org/wiki/Computer_memory) that stores [data](https://en.wikipedia.org/wiki/Data_(computing)) and [instructions](https://en.wikipedia.org/wiki/Instruction_set)
- External [mass storage](https://en.wikipedia.org/wiki/Mass_storage)
- [Input and output](https://en.wikipedia.org/wiki/Input_and_output) mechanisms[[1\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-FirstDraftReport-1)[[2\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-GanesanCh4-2)

> **冯-诺依曼体系结构**--也被称为**冯-诺依曼模型**或**普林斯顿体系结构**--是一种[计算机体系结构](https://en.wikipedia.org/wiki/Computer_architecture)，基于1945年[约翰-冯-诺依曼](https://en.wikipedia.org/wiki/John_von_Neumann)和其他人在*[关于EDVAC的报告初稿](https://en.wikipedia.org/wiki/First_Draft_of_a_Report_on_the_EDVAC)*的描述。[[1]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-FirstDraftReport-1) 该文件描述了一个具有这些组件的电子[数字计算机](https://en.wikipedia.org/wiki/Digital_computer) 的设计架构：
>
> - 一个[处理单元](https://en.wikipedia.org/wiki/Central_processing_unit)，包括一个[算术逻辑单元](https://en.wikipedia.org/wiki/Arithmetic_logic_unit)和[处理器寄存器](https://en.wikipedia.org/wiki/Processor_register)
> - 一个[控制单元](https://en.wikipedia.org/wiki/Control_unit)，包括一个[指令寄存器](https://en.wikipedia.org/wiki/Instruction_register)和一个[程序计数器](https://en.wikipedia.org/wiki/Program_counter)
> - [存储器](https://en.wikipedia.org/wiki/Computer_memory)，存储[数据](https://en.wikipedia.org/wiki/Data_(计算))和[指令](https://en.wikipedia.org/wiki/Instruction_set)
> - 外部[大容量存储器](https://en.wikipedia.org/wiki/Mass_storage)
> - [输入和输出](https://en.wikipedia.org/wiki/Input_and_output)机制[[1](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-FirstDraftReport-1)[[2](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-GanesanCh4-2)]
>

The term "von Neumann architecture" has evolved to refer to any [stored-program computer](https://en.wikipedia.org/wiki/Stored-program_computer) in which an [instruction fetch](https://en.wikipedia.org/wiki/Instruction_fetch) and a data operation cannot occur at the same time (since they share a common [bus](https://en.wikipedia.org/wiki/Bus_(computing))). This is referred to as the [von Neumann bottleneck](https://en.wikipedia.org/wiki/Von_Neumann_architecture#Von_Neumann_bottleneck), which often limits the performance of the corresponding system.[[3\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-3)

The design of a von Neumann architecture machine is simpler than in a [Harvard architecture](https://en.wikipedia.org/wiki/Harvard_architecture) machine—which is also a stored-program system, yet has one dedicated set of address and data buses for reading and writing to memory, and another set of address and [data buses](https://en.wikipedia.org/wiki/Memory_bus) to fetch [instructions](https://en.wikipedia.org/wiki/Instruction_fetch).

A stored-program digital computer keeps both [program instructions](https://en.wikipedia.org/wiki/Computer_program) and data in [read–write](https://en.wikipedia.org/wiki/Read–write_memory), [random-access memory](https://en.wikipedia.org/wiki/Random-access_memory) (RAM). Stored-program computers were an advancement over the program-controlled computers of the 1940s, such as the [Colossus](https://en.wikipedia.org/wiki/Colossus_computer) and the [ENIAC](https://en.wikipedia.org/wiki/ENIAC). Those were programmed by setting switches and inserting patch cables to route data and control signals between various functional units. The vast majority of modern computers use the same memory for both data and program instructions, but have [caches](https://en.wikipedia.org/wiki/CPU_cache) between the CPU and memory, and, for the caches closest to the CPU, have separate caches for instructions and data, so that most instruction and data fetches use separate buses ([split cache architecture](https://en.wikipedia.org/wiki/Modified_Harvard_architecture#Split-cache_(or_almost-von-Neumann)_architecture)).

> 术语 "冯-诺依曼体系结构 "已经演变为指任何[存储程序计算机](https://en.wikipedia.org/wiki/Stored-program_computer)，其中[指令获取](https://en.wikipedia.org/wiki/Instruction_fetch)和数据操作不能同时发生（因为它们共享一个共同的[总线](https://en.wikipedia.org/wiki/Bus_(计算))）。这被称为[冯-诺依曼瓶颈](https://en.wikipedia.org/wiki/Von_Neumann_architecture#Von_Neumann_bottleneck)，它常常限制了相应系统的性能。[[3]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-3)
>
> 冯-诺依曼架构机器的设计比[哈佛架构](https://en.wikipedia.org/wiki/Harvard_architecture)机器更简单，后者也是一个存储程序系统，但有一组专门的地址和数据总线用于读写内存，还有一组地址和[数据总线](https://en.wikipedia.org/wiki/Memory_bus)用于获取[指令](https://en.wikipedia.org/wiki/Instruction_fetch)。
>
> 存储程序数字计算机将[程序指令](https://en.wikipedia.org/wiki/Computer_program)和数据都保存在[读写](https://en.wikipedia.org/wiki/Read-write_memory)、[随机存取存储器](https://en.wikipedia.org/wiki/Random-access_memory)（RAM）中。存储程序计算机是20世纪40年代程序控制计算机的一个进步，如[Colossus](https://en.wikipedia.org/wiki/Colossus_computer)和[ENIAC](https://en.wikipedia.org/wiki/ENIAC)。这些计算机是通过设置开关和插入跳线在各个功能单元之间传递数据和控制信号来编程的。绝大多数现代计算机对数据和程序指令使用相同的存储器，但在CPU和存储器之间有[缓存](https://en.wikipedia.org/wiki/CPU_cache)，对于最接近CPU的缓存，有单独的指令和数据缓存，因此大多数指令和数据的获取使用单独的总线（[分割缓存架构](https://en.wikipedia.org/wiki/Modified_Harvard_architecture#Split-cache_)）。

![sg](https://en.wikipedia.org/wiki/Von_Neumann_architecture#/media/File:Von_Neumann_Architecture.svg)

## History

The earliest computing machines had fixed programs. Some very simple computers still use this design, either for simplicity or training purposes. For example, a desk [calculator](https://en.wikipedia.org/wiki/Calculator) (in principle) is a fixed program computer. It can do basic [mathematics](https://en.wikipedia.org/wiki/Mathematics), but it cannot run a [word processor](https://en.wikipedia.org/wiki/Word_processor) or games. Changing the program of a fixed-program machine requires rewiring, restructuring, or redesigning the machine. The earliest computers were not so much "programmed" as "designed" for a particular task. "Reprogramming" – when possible at all – was a laborious process that started with [flowcharts](https://en.wikipedia.org/wiki/Flowchart) and paper notes, followed by detailed engineering designs, and then the often-arduous process of physically rewiring and rebuilding the machine. It could take three weeks to set up and debug a program on [ENIAC](https://en.wikipedia.org/wiki/ENIAC).[[4\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-4)

With the proposal of the stored-program computer, this changed. A stored-program computer includes, by design, an [instruction set](https://en.wikipedia.org/wiki/Instruction_set), and can store in memory a set of instructions (a [program](https://en.wikipedia.org/wiki/Computer_program)) that details the [computation](https://en.wikipedia.org/wiki/Computation).

A stored-program design also allows for [self-modifying code](https://en.wikipedia.org/wiki/Self-modifying_code). One early motivation for such a facility was the need for a program to increment or otherwise modify the address portion of instructions, which operators had to do manually in early designs. This became less important when [index registers](https://en.wikipedia.org/wiki/Index_register) and [indirect addressing](https://en.wikipedia.org/wiki/Addressing_mode) became usual features of machine architecture. Another use was to embed frequently used data in the instruction stream using [immediate addressing](https://en.wikipedia.org/wiki/Addressing_mode). Self-modifying code has largely fallen out of favor, since it is usually hard to understand and [debug](https://en.wikipedia.org/wiki/Debugging), as well as being inefficient under modern processor [pipelining](https://en.wikipedia.org/wiki/Pipeline_(computing)) and caching schemes.

> 最早的计算机有固定的程序。一些非常简单的计算机仍然使用这种设计，无论是出于简单性还是培训的目的。例如，桌上的[计算器](https://en.wikipedia.org/wiki/Calculator)（原则上）是一台固定程序的计算机。它可以做基本的[数学](https://en.wikipedia.org/wiki/Mathematics)，但它不能运行[文字处理器](https://en.wikipedia.org/wiki/Word_processor)或游戏。改变一个固定程序的机器的程序需要重新接线、重组或重新设计机器。最早的计算机与其说是 "编程"，不如说是为某个特定任务 "设计 "的。"重新编程"--如果可能的话--是一个艰苦的过程，从[流程图](https://en.wikipedia.org/wiki/Flowchart)和纸质笔记开始，然后是详细的工程设计，然后是物理上的重新布线和重建机器，这个过程往往很艰巨。在[ENIAC](https://en.wikipedia.org/wiki/ENIAC)上设置和调试一个程序可能需要三个星期。[[4]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-4)
>
> 随着存储程序计算机的提出，这种情况发生了变化。根据设计，存储程序计算机包括一个[指令集](https://en.wikipedia.org/wiki/Instruction_set)，并且可以在内存中存储一组指令（一个[程序](https://en.wikipedia.org/wiki/Computer_program)），详细说明[计算](https://en.wikipedia.org/wiki/Computation)。
>
> 一个存储程序的设计也允许[自我修改代码](https://en.wikipedia.org/wiki/Self-modifying_code)。这种设施的一个早期动机是需要一个程序来增加或以其他方式修改指令的地址部分，在早期的设计中，操作者必须手动完成。当[索引寄存器](https://en.wikipedia.org/wiki/Index_register)和[间接寻址](https://en.wikipedia.org/wiki/Addressing_mode)成为机器结构的通常特征时，这就变得不那么重要了。另一个用途是使用[立即寻址](https://en.wikipedia.org/wiki/Addressing_mode)在指令流中嵌入经常使用的数据。自我修改的代码在很大程度上已经不受欢迎了，因为它通常很难理解和[调试](https://en.wikipedia.org/wiki/Debugging)，而且在现代处理器[流水线](https://en.wikipedia.org/wiki/Pipeline_(computing))和缓存方案下效率很低。

## Capability

On a large scale, the ability to treat instructions as data is what makes [assemblers](https://en.wikipedia.org/wiki/Assembly_language#Assembler), [compilers](https://en.wikipedia.org/wiki/Compiler), [linkers](https://en.wikipedia.org/wiki/Linker_(computing)), [loaders](https://en.wikipedia.org/wiki/Loader_(computing)), and other automated programming tools possible. It makes "programs that write programs" possible.[[5\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-5) This has made a sophisticated self-hosting computing ecosystem flourish around von Neumann architecture machines.

Some high level languages leverage the von Neumann architecture by providing an abstract, machine-independent way to manipulate executable code at runtime (e.g., [LISP](https://en.wikipedia.org/wiki/LISP)), or by using runtime information to tune [just-in-time compilation](https://en.wikipedia.org/wiki/Just-in-time_compilation) (e.g. languages hosted on the [Java virtual machine](https://en.wikipedia.org/wiki/Java_virtual_machine), or languages embedded in [web browsers](https://en.wikipedia.org/wiki/Web_browsers)).

On a smaller scale, some repetitive operations such as [BITBLT](https://en.wikipedia.org/wiki/Bit_blit) or [pixel and vertex shaders](https://en.wikipedia.org/wiki/High-Level_Shader_Language) can be accelerated on general purpose processors with just-in-time compilation techniques. This is one use of self-modifying code that has remained popular.

> 在大范围内，将指令视为数据的能力使[汇编器](https://en.wikipedia.org/wiki/Assembly_language#Assembler)、[编译器](https://en.wikipedia.org/wiki/Compiler)、[链接器](https://en.wikipedia.org/wiki/Linker_(计算))、[加载器](https://en.wikipedia.org/wiki/Loader_(计算))和其他自动编程工具成为可能。它使 "写程序的程序 "成为可能。[[5]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-5)这使得一个复杂的自我托管的计算生态系统围绕着冯-诺伊曼架构机器蓬勃发展。
>
> 一些高级语言通过提供一种抽象的、与机器无关的方式在运行时操纵可执行代码（例如，[LISP](https://en.wikipedia.org/wiki/LISP)），或通过使用运行时信息来调整[即时编译](https://en.wikipedia.org/wiki/Just-in-time_compilation)（例如，托管在[Java虚拟机](https://en.wikipedia.org/wiki/Java_virtual_machine)上的语言，或嵌入[网络浏览器](https://en.wikipedia.org/wiki/Web_browsers)的语言）来利用冯诺依曼架构。
>
> 在较小的范围内，一些重复性的操作，如[BITBLT](https://en.wikipedia.org/wiki/Bit_blit)或[像素和顶点着色器](https://en.wikipedia.org/wiki/High-Level_Shader_Language)，可以通过及时编译技术在通用处理器上进行加速。这是自我修改代码的一种用途，一直很受欢迎。

## Development of the stored-program concept

The mathematician [Alan Turing](https://en.wikipedia.org/wiki/Alan_Turing), who had been alerted to a problem of mathematical logic by the lectures of [Max Newman](https://en.wikipedia.org/wiki/Max_Newman) at the [University of Cambridge](https://en.wikipedia.org/wiki/University_of_Cambridge), wrote a paper in 1936 entitled *On Computable Numbers, with an Application to the [Entscheidungsproblem](https://en.wikipedia.org/wiki/Entscheidungsproblem)*, which was published in the *Proceedings of the London Mathematical Society*.[[6\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-Turing1936-6) In it he described a hypothetical machine he called a *universal computing machine*, now known as the "[Universal Turing machine](https://en.wikipedia.org/wiki/Universal_Turing_machine)". The hypothetical machine had an infinite store (memory in today's terminology) that contained both instructions and data. [John von Neumann](https://en.wikipedia.org/wiki/John_von_Neumann) became acquainted with Turing while he was a visiting professor at Cambridge in 1935, and also during Turing's PhD year at the [Institute for Advanced Study](https://en.wikipedia.org/wiki/Institute_for_Advanced_Study) in [Princeton, New Jersey](https://en.wikipedia.org/wiki/Princeton,_New_Jersey) during 1936–1937. Whether he knew of Turing's paper of 1936 at that time is not clear.

In 1936, [Konrad Zuse](https://en.wikipedia.org/wiki/Konrad_Zuse) also anticipated, in two patent applications, that machine instructions could be stored in the same storage used for data.[[7\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-7)

Independently, [J. Presper Eckert](https://en.wikipedia.org/wiki/J._Presper_Eckert) and [John Mauchly](https://en.wikipedia.org/wiki/John_Mauchly), who were developing the [ENIAC](https://en.wikipedia.org/wiki/ENIAC) at the [Moore School of Electrical Engineering](https://en.wikipedia.org/wiki/Moore_School_of_Electrical_Engineering) of the [University of Pennsylvania](https://en.wikipedia.org/wiki/University_of_Pennsylvania), wrote about the stored-program concept in December 1943. [[8\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-Lukoff_1979-8)[[9\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-9) In planning a new machine, [EDVAC](https://en.wikipedia.org/wiki/EDVAC), Eckert wrote in January 1944 that they would store data and programs in a new addressable memory device, a mercury metal [delay-line memory](https://en.wikipedia.org/wiki/Delay-line_memory). This was the first time the construction of a practical stored-program machine was proposed. At that time, he and Mauchly were not aware of Turing's work.

Von Neumann was involved in the [Manhattan Project](https://en.wikipedia.org/wiki/Manhattan_Project) at the [Los Alamos National Laboratory](https://en.wikipedia.org/wiki/Los_Alamos_National_Laboratory). It required huge amounts of calculation, and thus drew him to the ENIAC project, during the summer of 1944. There he joined the ongoing discussions on the design of this stored-program computer, the EDVAC. As part of that group, he wrote up a description titled *First Draft of a Report on the EDVAC*[[1\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-FirstDraftReport-1) based on the work of Eckert and Mauchly. It was unfinished when his colleague [Herman Goldstine](https://en.wikipedia.org/wiki/Herman_Goldstine) circulated it, and bore only von Neumann's name (to the consternation of Eckert and Mauchly).[[10\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-10) The paper was read by dozens of von Neumann's colleagues in America and Europe, and influenced[*[vague](https://en.wikipedia.org/wiki/Wikipedia:Vagueness)*] the next round of computer designs.

> 数学家[阿兰-图灵](https://en.wikipedia.org/wiki/Alan_Turing)在[剑桥大学](https://en.wikipedia.org/wiki/University_of_Cambridge)听了[马克斯-纽曼](https://en.wikipedia.org/wiki/Max_Newman)的讲座后，对数理逻辑的一个问题产生了警觉，他在1936年写了一篇题为*论可计算数，以及对[Entscheidungsproblem]的应用(https://en.wikipedia.org/wiki/Entscheidungsproblem)*，发表在《伦敦数学会会议记录》上。[[6/]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-Turing1936-6)在论文中，他描述了一种假设的机器，他称之为*通用计算机*，现在被称为"[通用图灵机](https://en.wikipedia.org/wiki/Universal_Turing_machine)"。这个假想的机器有一个无限的存储空间（用今天的术语来说就是内存），其中包含指令和数据。[约翰-冯-诺伊曼](https://en.wikipedia.org/wiki/John_von_Neumann)在1935年担任剑桥大学客座教授时认识了图灵，在1936-1937年图灵在[新泽西州普林斯顿](https://en.wikipedia.org/wiki/Institute_for_Advanced_Study)的[高等研究所](https://en.wikipedia.org/wiki/Princeton,_New_Jersey)攻读博士学位期间也认识了图灵。他当时是否知道图灵1936年的论文并不清楚。
>
> 1936年，[Konrad Zuse](https://en.wikipedia.org/wiki/Konrad_Zuse)也在两项专利申请中预计，机器指令可以存储在用于数据的相同存储器中。[[7]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-7)
>
> 1943年12月，正在[宾夕法尼亚大学](https://en.wikipedia.org/wiki/University_of_Pennsylvania)[摩尔电气工程学院](https://en.wikipedia.org/wiki/Moore_School_of_Electrical_Engineering)开发[ENIAC](https://en.wikipedia.org/wiki/ENIAC)的[J. Presper Eckert](https://en.wikipedia.org/wiki/J._Presper_Eckert)和[John Mauchly](https://en.wikipedia.org/wiki/John_Mauchly)独立地写到了存储程序的概念。[[8]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-Lukoff_1979-8)[[9]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-9)在规划新机器[EDVAC](https://en.wikipedia.org/wiki/EDVAC)时，埃克特在1944年1月写道，他们将把数据和程序存储在一个新的可寻址存储器设备中，即金属汞[延迟线存储器](https://en.wikipedia.org/wiki/Delay-line_memory)。这是第一次提出建造一台实用的存储程序机。当时，他和Mauchly还不知道图灵的工作。
>
> 冯-诺伊曼参与了[曼哈顿计划](https://en.wikipedia.org/wiki/Manhattan_Project)在[洛斯阿拉莫斯国家实验室](https://en.wikipedia.org/wiki/Los_Alamos_National_Laboratory)的项目。这需要大量的计算，因此在1944年夏天，他被吸引到ENIAC项目。在那里，他加入了正在进行的关于设计这种存储程序计算机的讨论，即EDVAC。作为该小组的一员，他根据埃克特和毛克利的工作，写了一份名为《关于EDVAC的报告初稿》的*描述*[[1]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-FirstDraftReport-1)。当他的同事[Herman Goldstine](https://en.wikipedia.org/wiki/Herman_Goldstine)传阅时，它还没有完成，只写了冯-诺伊曼的名字（让埃克特和毛克利感到惊愕）。[[10]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-10)这篇论文被冯-诺伊曼在美国和欧洲的几十位同事阅读，并影响了[*[模糊](https://en.wikipedia.org/wiki/Wikipedia:Vagueness)*]下一轮的计算机设计。

[Jack Copeland](https://en.wikipedia.org/wiki/Jack_Copeland) considers that it is "historically inappropriate to refer to electronic stored-program digital computers as 'von Neumann machines'".[[11\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-11) His Los Alamos colleague [Stan Frankel](https://en.wikipedia.org/wiki/Stan_Frankel) said of von Neumann's regard for Turing's ideas[[12\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-12)

> I know that in or about 1943 or '44 von Neumann was well aware of the fundamental importance of Turing's paper of 1936…. Von Neumann introduced me to that paper and at his urging I studied it with care. Many people have acclaimed von Neumann as the "father of the computer" (in a modern sense of the term) but I am sure that he would never have made that mistake himself. He might well be called the midwife, perhaps, but he firmly emphasized to me, and to others I am sure, that the fundamental conception is owing to Turing— in so far as not anticipated by Babbage…. Both Turing and von Neumann, of course, also made substantial contributions to the "[reduction to practice](https://en.wikipedia.org/wiki/Reduction_to_practice)" of these concepts but I would not regard these as comparable in importance with the introduction and explication of the concept of a computer able to store in its memory its program of activities and of modifying that program in the course of these activities.

> [Jack Copeland](https://en.wikipedia.org/wiki/Jack_Copeland)认为 "将电子存储程序数字计算机称为'冯-诺伊曼机'在历史上是不恰当的。"[[11\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-11)他在洛斯阿拉莫斯的同事[Stan Frankel](https://en.wikipedia.org/wiki/Stan_Frankel)谈到冯-诺伊曼对图灵思想的重视[[12\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-12)
>
> > 我知道，在1943年或1944年左右，冯-诺伊曼很清楚图灵1936年的论文的根本重要性....。冯-诺伊曼向我介绍了那篇论文，在他的敦促下，我认真地研究了它。许多人将冯-诺伊曼誉为 "计算机之父"（在现代意义上），但我确信他自己绝不会犯这种错误。他很可能被称为助产士，但他向我和其他人坚定地强调，基本概念是归功于图灵的，只要不是由Babbage....。当然，图灵和冯-诺依曼也对这些概念的"[还原为实践](https://en.wikipedia.org/wiki/Reduction_to_practice) "做出了实质性的贡献，但我认为这些贡献的重要性无法与计算机能够在其内存中存储其活动程序并在这些活动过程中修改该程序的概念的引入和阐述相比较。

At the time that the "First Draft" report was circulated, Turing was producing a report entitled *Proposed Electronic Calculator*. It described in engineering and programming detail, his idea of a machine he called the *[Automatic Computing Engine (ACE)](https://en.wikipedia.org/wiki/Automatic_Computing_Engine)*.[[13\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-13) He presented this to the executive committee of the British [National Physical Laboratory](https://en.wikipedia.org/wiki/National_Physical_Laboratory,_UK) on February 19, 1946. Although Turing knew from his wartime experience at Bletchley Park that what he proposed was feasible, the secrecy surrounding [Colossus](https://en.wikipedia.org/wiki/Colossus_computer), that was subsequently maintained for several decades, prevented him from saying so. Various successful implementations of the ACE design were produced.

Both von Neumann's and Turing's papers described stored-program computers, but von Neumann's earlier paper achieved greater circulation and the computer architecture it outlined became known as the "von Neumann architecture". In the 1953 publication *Faster than Thought: A Symposium on Digital Computing Machines* (edited by B. V. Bowden), a section in the chapter on *Computers in America* reads as follows:[[14\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-14)

> 在 "初稿 "报告被分发的时候，图灵正在编写一份题为*拟议的电子计算器*的报告。报告详细描述了他对一台机器的想法，他称之为*[自动计算引擎（ACE）](https://en.wikipedia.org/wiki/Automatic_Computing_Engine)*。[[13]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-13)他于1946年2月19日向英国[国家物理实验室](https://en.wikipedia.org/wiki/National_Physical_Laboratory,_UK)的执行委员会提交了这份报告。尽管图灵从他在布莱切利公园的战时经验中知道他的建议是可行的，但围绕[Colossus](https://en.wikipedia.org/wiki/Colossus_computer)的保密工作，后来维持了几十年，使他无法说出来。ACE设计的各种成功实施方案被制作出来。
>
> 冯-诺依曼和图灵的论文都描述了存储程序的计算机，但冯-诺依曼更早的论文获得了更大的传播，它所描述的计算机结构被称为 "冯-诺依曼结构"。在1953年出版的《Faster than Thought: *A Symposium on Digital Computing Machines*》（由B.V. Bowden编辑），在关于*Computers in America*的章节中，有一节内容如下：[[14\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-14)

> **The Machine of the Institute For Advanced Studies, Princeton**
>
> In 1945, Professor J. von Neumann, who was then working at the Moore School of Engineering in Philadelphia, where the E.N.I.A.C. had been built, issued on behalf of a group of his co-workers, a report on the logical design of digital computers. The report contained a detailed proposal for the design of the machine that has since become known as the E.D.V.A.C. (electronic discrete variable automatic computer). This machine has only recently been completed in America, but the von Neumann report inspired the construction of the E.D.S.A.C. (electronic delay-storage automatic calculator) in Cambridge (see page 130).
>
> In 1947, Burks, Goldstine and von Neumann published another report that outlined the design of another type of machine (a parallel machine this time) that would be exceedingly fast, capable perhaps of 20,000 operations per second. They pointed out that the outstanding problem in constructing such a machine was the development of suitable memory with instantaneously accessible contents. At first they suggested using a special [vacuum tube](https://en.wikipedia.org/wiki/Vacuum_tube)—called the "[Selectron](https://en.wikipedia.org/wiki/Selectron_tube)"—which the Princeton Laboratories of RCA had invented. These tubes were expensive and difficult to make, so von Neumann subsequently decided to build a machine based on the [Williams memory](https://en.wikipedia.org/wiki/Williams_tube). This machine—completed in June, 1952 in Princeton—has become popularly known as the Maniac. The design of this machine inspired at least half a dozen machines now being built in America, all known affectionately as "Johniacs".
>
> **普林斯顿高等研究所的机器**
>
> 1945年，当时在费城摩尔工程学院（E.N.I.A.C.的建造地）工作的J.冯-诺伊曼教授代表他的一群同事发表了一份关于数字计算机逻辑设计的报告。该报告包含一个详细的机器设计建议，该机器后来被称为E.D.V.A.C.（电子离散可变自动计算机）。这台机器最近才在美国完成，但冯-诺依曼的报告启发了在剑桥建造E.D.S.A.C.（电子延迟存储自动计算器）（见第130页）。
>
> 1947年，伯克斯、戈德斯坦和冯-诺依曼发表了另一份报告，概述了另一种类型的机器（这次是并行机器）的设计，这种机器的速度极快，也许能达到每秒20,000次运算。他们指出，建造这样一台机器的突出问题是开发具有即时访问内容的合适的存储器。起初，他们建议使用一种特殊的[真空管](https://en.wikipedia.org/wiki/Vacuum_tube)--称为"[Selectron](https://en.wikipedia.org/wiki/Selectron_tube)"--这是RCA的普林斯顿实验室所发明的。这些管子很贵而且很难制造，所以冯-诺伊曼后来决定在[威廉姆斯存储器](https://en.wikipedia.org/wiki/Williams_tube)的基础上制造一台机器。这台机器--于1952年6月在普林斯顿完成--被人们称为 "狂人"。这台机器的设计启发了现在在美国制造的至少半打机器，它们都被亲切地称为 "Johniacs"。

In the same book, the first two paragraphs of a chapter on ACE read as follows:[[15\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-15)

> 在同一本书中，关于ACE的一章的前两段内容如下：[[15]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-15)

> **Automatic Computation at the National Physical Laboratory**
>
> One of the most modern digital computers which embodies developments and improvements in the technique of automatic electronic computing was recently demonstrated at the National Physical Laboratory, Teddington, where it has been designed and built by a small team of mathematicians and electronics research engineers on the staff of the Laboratory, assisted by a number of production engineers from the English Electric Company, Limited. The equipment so far erected at the Laboratory is only the pilot model of a much larger installation which will be known as the Automatic Computing Engine, but although comparatively small in bulk and containing only about 800 thermionic valves, as can be judged from Plates XII, XIII and XIV, it is an extremely rapid and versatile calculating machine.
>
> The basic concepts and abstract principles of computation by a machine were formulated by Dr. A. M. Turing, F.R.S., in a paper1. read before the London Mathematical Society in 1936, but work on such machines in Britain was delayed by the war. In 1945, however, an examination of the problems was made at the National Physical Laboratory by Mr. J. R. Womersley, then superintendent of the Mathematics Division of the Laboratory. He was joined by Dr. Turing and a small staff of specialists, and, by 1947, the preliminary planning was sufficiently advanced to warrant the establishment of the special group already mentioned. In April, 1948, the latter became the Electronics Section of the Laboratory, under the charge of Mr. F. M. Colebrook.
>
> **国家物理实验室的自动计算**
>
> 体现自动电子计算技术发展和改进的最现代的数字计算机之一最近在泰丁顿的国家物理实验室展示，它是由实验室工作人员中的一小组数学家和电子研究工程师设计和建造的，由英国电气有限公司的一些生产工程师协助。到目前为止，在实验室安装的设备只是一个更大的装置的试验模型，这个装置将被称为自动计算引擎，但尽管体积相对较小，而且只包含大约800个热电势阀，从图十二、十三和十四中可以判断，它是一个非常快速和多功能的计算机。
>
> 机器计算的基本概念和抽象原理是由图灵博士（A. M. Turing, F.R.S.）在1936年在伦敦数学协会宣读的一篇论文1中提出的，但英国关于这种机器的工作因战争而被推迟。然而，在1945年，国家物理实验室的J.R.Womersley先生对这些问题进行了研究，当时他是该实验室数学部的主管。图灵博士和一小部分专家加入了他的工作，到1947年，初步规划已经足够先进，足以保证成立前面提到的特别小组。1948年4月，后者成为实验室的电子科，由F. M. Colebrook先生负责。

## Early von Neumann-architecture computers

The *First Draft* described a design that was used by many universities and corporations to construct their computers.[[16\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-16) Among these various computers, only ILLIAC and ORDVAC had compatible instruction sets.

> *第一稿*描述了一种设计，被许多大学和公司用来建造他们的计算机。[[16]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-16)在这些不同的计算机中，只有ILLIAC和ORDVAC有兼容的指令集。

- [ARC2](https://en.wikipedia.org/wiki/APEXC) ([Birkbeck, University of London](https://en.wikipedia.org/wiki/Birkbeck,_University_of_London)) officially came online on May 12, 1948.[[17\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-birkbeck-17)
- [Manchester Baby](https://en.wikipedia.org/wiki/Manchester_Baby) (Victoria University of Manchester, England) made its first successful run of a stored program on June 21, 1948.
- [EDSAC](https://en.wikipedia.org/wiki/EDSAC) (University of Cambridge, England) was the first practical stored-program electronic computer (May 1949)
- [Manchester Mark 1](https://en.wikipedia.org/wiki/Manchester_Mark_1) (University of Manchester, England) Developed from the Baby (June 1949)
- [CSIRAC](https://en.wikipedia.org/wiki/CSIRAC) ([Council for Scientific and Industrial Research](https://en.wikipedia.org/wiki/Commonwealth_Scientific_and_Industrial_Research_Organisation)) Australia (November 1949)
- [MESM](https://en.wikipedia.org/wiki/MESM) in Kyiv, Ukraine (November 1950)
- [EDVAC](https://en.wikipedia.org/wiki/EDVAC) ([Ballistic Research Laboratory](https://en.wikipedia.org/wiki/Ballistic_Research_Laboratory), Computing Laboratory at [Aberdeen Proving Ground](https://en.wikipedia.org/wiki/Aberdeen_Proving_Ground) 1951)
- [ORDVAC](https://en.wikipedia.org/wiki/ORDVAC) (U-Illinois) at Aberdeen Proving Ground, Maryland (completed November 1951)[[18\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-18)
- [IAS machine](https://en.wikipedia.org/wiki/IAS_machine) at Princeton University (January 1952)
- [MANIAC I](https://en.wikipedia.org/wiki/MANIAC_I) at [Los Alamos Scientific Laboratory](https://en.wikipedia.org/wiki/Los_Alamos_Scientific_Laboratory) (March 1952)
- [ILLIAC](https://en.wikipedia.org/wiki/ILLIAC) at the University of Illinois, (September 1952)
- [BESM-1](https://en.wikipedia.org/wiki/BESM) in Moscow (1952)
- [AVIDAC](https://en.wikipedia.org/wiki/AVIDAC) at [Argonne National Laboratory](https://en.wikipedia.org/wiki/Argonne_National_Laboratory) (1953)
- [ORACLE](https://en.wikipedia.org/wiki/ORACLE_(computer)) at [Oak Ridge National Laboratory](https://en.wikipedia.org/wiki/Oak_Ridge_National_Laboratory) (June 1953)
- [BESK](https://en.wikipedia.org/wiki/BESK) in Stockholm (1953)
- [JOHNNIAC](https://en.wikipedia.org/wiki/JOHNNIAC) at RAND Corporation (January 1954)
- [DASK](https://en.wikipedia.org/wiki/DASK) in Denmark (1955)
- [WEIZAC](https://en.wikipedia.org/wiki/WEIZAC) at the [Weizmann Institute of Science](https://en.wikipedia.org/wiki/Weizmann_Institute_of_Science) in [Rehovot](https://en.wikipedia.org/wiki/Rehovot), Israel (1955)
- [PERM](https://en.wikipedia.org/wiki/PERM_(computer)) in Munich (1956)
- [SILLIAC](https://en.wikipedia.org/wiki/SILLIAC) in Sydney (1956)

## Early stored-program computers

The date information in the following chronology is difficult to put into proper order. Some dates are for first running a test program, some dates are the first time the computer was demonstrated or completed, and some dates are for the first delivery or installation.

> 以下年表中的日期信息很难按正确顺序排列。有些日期是第一次运行测试程序，有些日期是第一次演示或完成计算机，有些日期是第一次交付或安装。

- The [IBM SSEC](https://en.wikipedia.org/wiki/IBM_SSEC) had the ability to treat instructions as data, and was publicly demonstrated on January 27, 1948. This ability was claimed in a US patent.[[19\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-19)[[20\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-20) However it was partially electromechanical, not fully electronic. In practice, instructions were read from paper tape due to its limited memory.[[21\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-herb-21)
- The [ARC2](https://en.wikipedia.org/wiki/APEXC) developed by [Andrew Booth](https://en.wikipedia.org/wiki/Andrew_Donald_Booth) and [Kathleen Booth](https://en.wikipedia.org/wiki/Kathleen_Booth) at [Birkbeck, University of London](https://en.wikipedia.org/wiki/Birkbeck,_University_of_London) officially came online on May 12, 1948.[[17\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-birkbeck-17) It featured the first [rotating drum storage device](https://en.wikipedia.org/wiki/Drum_memory).[[22\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-22)[[23\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-23)
- The [Manchester Baby](https://en.wikipedia.org/wiki/Manchester_Baby) was the first fully electronic computer to run a stored program. It ran a factoring program for 52 minutes on June 21, 1948, after running a simple division program and a program to show that two numbers were [relatively prime](https://en.wikipedia.org/wiki/Coprime_integers).
- The [ENIAC](https://en.wikipedia.org/wiki/ENIAC) was modified to run as a primitive read-only stored-program computer (using the Function Tables for program [ROM](https://en.wikipedia.org/wiki/Read-only_memory)) and was demonstrated as such on September 16, 1948, running a program by [Adele Goldstine](https://en.wikipedia.org/wiki/Adele_Goldstine) for von Neumann.
- The [BINAC](https://en.wikipedia.org/wiki/BINAC) ran some test programs in February, March, and April 1949, although was not completed until September 1949.
- The [Manchester Mark 1](https://en.wikipedia.org/wiki/Manchester_Mark_1) developed from the Baby project. An intermediate version of the Mark 1 was available to run programs in April 1949, but was not completed until October 1949.
- The [EDSAC](https://en.wikipedia.org/wiki/Electronic_Delay_Storage_Automatic_Calculator) ran its first program on May 6, 1949.
- The [EDVAC](https://en.wikipedia.org/wiki/EDVAC) was delivered in August 1949, but it had problems that kept it from being put into regular operation until 1951.
- The [CSIR Mk I](https://en.wikipedia.org/wiki/CSIRAC) ran its first program in November 1949.
- The [SEAC](https://en.wikipedia.org/wiki/SEAC_(computer)) was demonstrated in April 1950.
- The [Pilot ACE](https://en.wikipedia.org/wiki/Pilot_ACE) ran its first program on May 10, 1950, and was demonstrated in December 1950.
- The [SWAC](https://en.wikipedia.org/wiki/SWAC_(computer)) was completed in July 1950.
- The [Whirlwind](https://en.wikipedia.org/wiki/Whirlwind_(computer)) was completed in December 1950 and was in actual use in April 1951.
- The first [ERA Atlas](https://en.wikipedia.org/wiki/UNIVAC_1101) (later the commercial ERA 1101/UNIVAC 1101) was installed in December 1950.

## Evolution

Through the decades of the 1960s and 1970s computers generally became both smaller and faster, which led to evolutions in their architecture. For example, [memory-mapped I/O](https://en.wikipedia.org/wiki/Memory-mapped_I/O) lets input and output devices be treated the same as memory.[[24\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-24) A single [system bus](https://en.wikipedia.org/wiki/System_bus) could be used to provide a modular system with lower cost[*[clarification needed](https://en.wikipedia.org/wiki/Wikipedia:Please_clarify)*]. This is sometimes called a "streamlining" of the architecture.[[25\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-25) In subsequent decades, simple [microcontrollers](https://en.wikipedia.org/wiki/Microcontrollers) would sometimes omit features of the model to lower cost and size. Larger computers added features for higher performance.

> 在20世纪60年代和70年代的几十年里，计算机普遍变得既小又快，这导致了其架构的演变。例如，[内存映射的I/O](https://en.wikipedia.org/wiki/Memory-mapped_I/O)让输入和输出设备被视为与内存相同。[[24\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-24)单一的[系统总线](https://en.wikipedia.org/wiki/System_bus)可以用来提供一个成本较低的模块化系统[*[需要澄清](https://en.wikipedia.org/wiki/Wikipedia:Please_clarify)*]。这有时被称为架构的 "精简"。[[25]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-25)在随后的几十年里，简单的[微控制器](https://en.wikipedia.org/wiki/Microcontrollers)有时会省略模型的功能以降低成本和尺寸。较大的计算机为了提高性能而增加了一些功能。

## Design limitations

### Von Neumann bottleneck

The shared bus between the program memory and data memory leads to the *von Neumann bottleneck*, the limited [throughput](https://en.wikipedia.org/wiki/Throughput) (data transfer rate) between the [central processing unit](https://en.wikipedia.org/wiki/Central_processing_unit) (CPU) and memory compared to the amount of memory. Because the single bus can only access one of the two classes of memory at a time, throughput is lower than the rate at which the CPU can work. This seriously limits the effective processing speed when the CPU is required to perform minimal processing on large amounts of data. The CPU is continually [forced to wait](https://en.wikipedia.org/wiki/Wait_state) for needed data to move to or from memory. Since CPU speed and memory size have increased much faster than the throughput between them, the bottleneck has become more of a problem, a problem whose severity increases with every new generation of CPU.

> 程序存储器和数据存储器之间的共享总线导致了*冯-诺伊曼瓶颈*，即[中央处理单元](https://en.wikipedia.org/wiki/Throughput)(CPU)和存储器之间的[吞吐量](数据传输率)与存储器的数量相比是有限的。因为单总线每次只能访问两类内存中的一类，所以吞吐量低于CPU的工作速度。当CPU需要对大量数据进行最小化处理时，这严重限制了有效处理速度。CPU不断地[被迫等待](https://en.wikipedia.org/wiki/Wait_state)需要的数据移入或移出内存。由于CPU速度和内存大小的增长速度远远超过它们之间的吞吐量，瓶颈已经成为一个更严重的问题，这个问题的严重性随着每一代新的CPU的出现而增加。

The von Neumann bottleneck was described by [John Backus](https://en.wikipedia.org/wiki/John_Backus) in his 1977 ACM [Turing Award](https://en.wikipedia.org/wiki/Turing_Award) lecture. According to Backus:

> Surely there must be a less primitive way of making big changes in the store than by pushing vast numbers of [words](https://en.wikipedia.org/wiki/Word_(computer_architecture)) back and forth through the von Neumann bottleneck. Not only is this tube a literal bottleneck for the data traffic of a problem, but, more importantly, it is an intellectual bottleneck that has kept us tied to word-at-a-time thinking instead of encouraging us to think in terms of the larger conceptual units of the task at hand. Thus programming is basically planning and detailing the enormous traffic of words through the von Neumann bottleneck, and much of that traffic concerns not significant data itself, but where to find it.[[26\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-backus-26)[[27\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-27)[[28\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-28)

> 冯-诺伊曼瓶颈是由[约翰-巴克斯](https://en.wikipedia.org/wiki/John_Backus)在1977年的ACM[图灵奖](https://en.wikipedia.org/wiki/Turing_Award)演讲中描述的。根据Backus的说法：
>
> >肯定有一种不那么原始的方式来对存储进行大的改变，而不是通过冯-诺依曼瓶颈来回推送大量的[字](https://en.wikipedia.org/wiki/Word_(computer_architecture))。这个管子不仅是一个问题的数据流量的字面瓶颈，而且更重要的是，它是一个智力瓶颈，使我们被束缚在每次一个字的思维中，而不是鼓励我们从手头任务的更大的概念单元来思考。因此，编程基本上是通过冯-诺依曼瓶颈来规划和详细说明巨大的文字流量，而这种流量大部分不是关于重要的数据本身，而是关于在哪里找到它。[[26\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-backus-26)[[27\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-27)

### Mitigations

There are several known methods for mitigating the Von Neumann performance bottleneck. For example, the following all can improve performance[*[why?](https://en.wikipedia.org/wiki/Wikipedia:Please_clarify)*]:

- Providing a [cache](https://en.wikipedia.org/wiki/CPU_cache) between the CPU and the [main memory](https://en.wikipedia.org/wiki/Main_memory)
- providing separate caches or separate access paths for data and instructions (the so-called [Modified Harvard architecture](https://en.wikipedia.org/wiki/Modified_Harvard_architecture))
- using [branch predictor](https://en.wikipedia.org/wiki/Branch_predictor) algorithms and logic
- providing a limited CPU stack or other on-chip [scratchpad memory](https://en.wikipedia.org/wiki/Scratchpad_memory) to reduce memory access
- Implementing the CPU and the [memory hierarchy](https://en.wikipedia.org/wiki/Memory_hierarchy) as a [system on chip](https://en.wikipedia.org/wiki/System_on_a_chip), providing greater [locality of reference](https://en.wikipedia.org/wiki/Locality_of_reference) and thus reducing latency and increasing throughput between [processor registers](https://en.wikipedia.org/wiki/Processor_register) and [main memory](https://en.wikipedia.org/wiki/Main_memory)

> 有几种已知的方法可以缓解冯-诺伊曼的性能瓶颈。例如，以下这些都可以提高性能[*[为什么？](https://en.wikipedia.org/wiki/Wikipedia:Please_clarify)*]。
>
> - 在CPU和[主存储器](https://en.wikipedia.org/wiki/Main_memory)之间提供一个[高速缓存](https://en.wikipedia.org/wiki/CPU_cache)
> - 为数据和指令提供单独的缓存或单独的访问路径（所谓的[修正的哈佛架构](https://en.wikipedia.org/wiki/Modified_Harvard_architecture))
> - 使用[分支预测器](https://en.wikipedia.org/wiki/Branch_predictor)算法和逻辑
> - 提供有限的CPU堆栈或其他片上[scratchpad存储器](https://en.wikipedia.org/wiki/Scratchpad_memory)，以减少存储器的访问。
> - 将CPU和[存储器层次结构](https://en.wikipedia.org/wiki/Memory_hierarchy)作为一个[片上系统](https://en.wikipedia.org/wiki/System_on_a_chip)来实现，提供更大的[参考位置](https://en.wikipedia.org/wiki/Locality_of_reference)，从而减少延迟并提高[处理器寄存器](https://en.wikipedia.org/wiki/Processor_register)和[主存储器](https://en.wikipedia.org/wiki/Main_memory)之间的吞吐量
>

The problem can also be sidestepped somewhat by using [parallel computing](https://en.wikipedia.org/wiki/Parallel_computing), using for example the [non-uniform memory access](https://en.wikipedia.org/wiki/Non-uniform_memory_access) (NUMA) architecture—this approach is commonly employed by supercomputers. It is less clear whether the *intellectual bottleneck* that Backus criticized has changed much since 1977. Backus's proposed solution has not had a major influence.[*[citation needed](https://en.wikipedia.org/wiki/Wikipedia:Citation_needed)*] Modern [functional programming](https://en.wikipedia.org/wiki/Functional_programming) and [object-oriented programming](https://en.wikipedia.org/wiki/Object-oriented_programming) are much less geared towards "pushing vast numbers of words back and forth" than earlier languages like [FORTRAN](https://en.wikipedia.org/wiki/FORTRAN) were, but internally, that is still what computers spend much of their time doing, even highly parallel supercomputers.

As of 1996, a database benchmark study found that three out of four CPU cycles were spent waiting for memory. Researchers expect that increasing the number of simultaneous instruction streams with [multithreading](https://en.wikipedia.org/wiki/Multithreading_(computer_architecture)) or single-chip [multiprocessing](https://en.wikipedia.org/wiki/Multiprocessing) will make this bottleneck even worse.[[29\]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-29) In the context of [multi-core processors](https://en.wikipedia.org/wiki/Multi-core_processor), additional [overhead](https://en.wikipedia.org/wiki/Overhead_(computing)) is required to maintain [cache coherence](https://en.wikipedia.org/wiki/Cache_coherence) between processors and threads.

> 通过使用[并行计算](https://en.wikipedia.org/wiki/Parallel_computing)，例如使用[非统一内存访问](https://en.wikipedia.org/wiki/Non-uniform_memory_access)(NUMA)架构，也可以在一定程度上回避这个问题--这种方法通常被超级计算机采用。自1977年以来，Backus批评的*智力瓶颈*是否发生了很大变化，这一点不太清楚。Backus提出的解决方案并没有产生重大影响。[*[需要引用](https://en.wikipedia.org/wiki/Wikipedia:Citation_needed)*] 现代[函数式编程](https://en.wikipedia.org/wiki/Functional_programming)和[面向对象编程](https://en.wikipedia.org/wiki/Object-oriented_programming)与早期的[FORTRAN](https://en.wikipedia.org/wiki/FORTRAN)等语言相比，更不倾向于 "来回推送大量的文字"，但在内部，这仍然是计算机花费大量时间的工作，甚至是高度并行的超级计算机。
>
> 截至1996年，一项数据库基准研究发现，每四个CPU周期中就有三个是用来等待内存的。研究人员预计，用[多线程](https://en.wikipedia.org/wiki/Multithreading_(computer_architecture))或单芯片[多进程](https://en.wikipedia.org/wiki/Multiprocessing)增加同步指令流的数量将使这一瓶颈更加严重。[[29]](https://en.wikipedia.org/wiki/Von_Neumann_architecture#cite_note-29)在[多核处理器](https://en.wikipedia.org/wiki/Multi-core_processor)方面，需要额外的[开销](https://en.wikipedia.org/wiki/Overhead_(computing))来维持处理器和线程之间[缓存一致性](https://en.wikipedia.org/wiki/Cache_coherence)。

### Self-modifying code

Aside from the von Neumann bottleneck, program modifications can be quite harmful, either by accident or design. In some simple stored-program computer designs, a malfunctioning program can damage itself, other programs, or the [operating system](https://en.wikipedia.org/wiki/Operating_system), possibly leading to a computer [crash](https://en.wikipedia.org/wiki/Crash_(computing)). [Memory protection](https://en.wikipedia.org/wiki/Memory_protection) and other forms of [access control](https://en.wikipedia.org/wiki/Access_control) can usually protect against both accidental and malicious program changes.

> 除了冯-诺依曼瓶颈之外，程序的修改可能相当有害，无论是意外还是设计。在一些简单的存储程序计算机设计中，一个发生故障的程序可能会损坏自己、其他程序或[操作系统](https://en.wikipedia.org/wiki/Operating_system)，可能导致计算机[崩溃](https://en.wikipedia.org/wiki/Crash_(computing))。[内存保护](https://en.wikipedia.org/wiki/Memory_protection)和其他形式的[访问控制](https://en.wikipedia.org/wiki/Access_control)通常可以防止意外的和恶意的程序改变。

## See also

- [CARDboard Illustrative Aid to Computation](https://en.wikipedia.org/wiki/CARDboard_Illustrative_Aid_to_Computation)
- [Interconnect bottleneck](https://en.wikipedia.org/wiki/Interconnect_bottleneck)
- [Little man computer](https://en.wikipedia.org/wiki/Little_man_computer)
- [Random-access machine](https://en.wikipedia.org/wiki/Random-access_machine)
- [Harvard architecture](https://en.wikipedia.org/wiki/Harvard_architecture)
- [Turing machine](https://en.wikipedia.org/wiki/Turing_machine)
- [Eckert architecture](https://en.wikipedia.org/wiki/Eckert_architecture)





---

# Bayes' theorem

In [probability theory](https://en.wikipedia.org/wiki/Probability_theory) and [statistics](https://en.wikipedia.org/wiki/Statistics), **Bayes' theorem** (alternatively **Bayes' law** or **Bayes' rule**; recently **Bayes–Price theorem**[[1\]](https://en.wikipedia.org/wiki/Bayes'_theorem#cite_note-Liberty's_Apostle-1): 44–46, 67 ), named after [Thomas Bayes](https://en.wikipedia.org/wiki/Thomas_Bayes), describes the [probability](https://en.wikipedia.org/wiki/Probability) of an [event](https://en.wikipedia.org/wiki/Event_(probability_theory)), based on prior knowledge of conditions that might be related to the event.[[2\]](https://en.wikipedia.org/wiki/Bayes'_theorem#cite_note-2) For example, if the risk of developing health problems is known to increase with age, Bayes' theorem allows the risk to an individual of a known age to be assessed more accurately (by conditioning it on their age) than simply assuming that the individual is typical of the population as a whole.

> 在[概率论](https://en.wikipedia.org/wiki/Probability_theory)和[统计学](https://en.wikipedia.org/wiki/Statistics)中，**贝叶斯定理**(又称**贝叶斯定律**或**贝叶斯规则**；最近的**贝叶斯-价格定理**[[1]](https://en.wikipedia.org/wiki/Bayes'_theorem#cite_note-Liberty_Apostle-1)。 44-46, 67 )，以[托马斯-贝叶斯](https://en.wikipedia.org/wiki/Thomas_Bayes)命名，根据可能与事件有关的条件的先验知识，描述了[事件](https://en.wikipedia.org/wiki/Probability)的[概率](https://en.wikipedia.org/wiki/Probability)。<sup>[[2]](https://en.wikipedia.org/wiki/Bayes'_theorem#cite_note-2)</sup>例如，如果已知出现健康问题的风险随着年龄的增长而增加，Bayes定理允许对已知年龄的个人的风险进行评估（通过对其年龄进行调节），而不是简单地假设该个人是整个人群的典型。

One of the1 many applications of Bayes' theorem is [Bayesian inference](https://en.wikipedia.org/wiki/Bayesian_inference), a particular approach to [statistical inference](https://en.wikipedia.org/wiki/Statistical_inference). When applied, the probabilities involved in the theorem may have different [probability interpretations](https://en.wikipedia.org/wiki/Probability_interpretation). With [Bayesian probability](https://en.wikipedia.org/wiki/Bayesian_probability) interpretation, the theorem expresses how a degree of belief, expressed as a probability, should rationally change to account for the availability of related evidence. Bayesian inference is fundamental to [Bayesian statistics](https://en.wikipedia.org/wiki/Bayesian_statistics), being considered "to the theory of probability what Pythagoras's theorem is to geometry."[[3]](https://en.wikipedia.org/wiki/Bayes'_theorem#cite_note-3)

> 贝叶斯定理的众多应用之一是[贝叶斯推理](https://en.wikipedia.org/wiki/Bayesian_inference)，这是一种特殊的[统计推理](https://en.wikipedia.org/wiki/Statistical_inference)方法。在应用时，该定理中涉及的概率可能有不同的[概率解释](https://en.wikipedia.org/wiki/Probability_interpretation)。通过[贝叶斯概率](https://en.wikipedia.org/wiki/Bayesian_probability)的解释，该定理表达了以概率表示的信念程度应如何合理地改变，以考虑到相关证据的可用性。贝叶斯推断是[贝叶斯统计学](https://en.wikipedia.org/wiki/Bayesian_statistics)的基础，被认为是 "对概率理论的作用就像毕达哥拉斯定理对几何学的作用一样。"[[3]](https://en.wikipedia.org/wiki/Bayes'_Theorem#cite_note-3)
>

## Statement of theorem

Bayes' theorem is stated mathematically as the following equation:[[4\]](https://en.wikipedia.org/wiki/Bayes'_theorem#cite_note-4)

> 贝叶斯定理在数学上被表述为以下公式：[[4]](https://en.wikipedia.org/wiki/Bayes'_theorem#cite_note-4)
>

![{\displaystyle P(A\mid B)={\frac {P(B\mid A)P(A)}{P(B)}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/87c061fe1c7430a5201eef3fa50f9d00eac78810)



在这里A和B是事件，且 ![{\displaystyle P(B)\neq 0}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4696c4543d63622a09c29cbb00c0fea4e0b8d7b7).

- ![P(A\mid B)](https://wikimedia.org/api/rest_v1/media/math/render/svg/8f8f30f4da85b53901e0871eb41ed8827f511bb7) 是一个条件概率：当给定的事件B是真的时候，事件A出现的概率。它也称为在给定B的情况下，A的后验概率。
- ![{\displaystyle P(B\mid A)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e2fe9ad0fdfd8920e56ca948400e111852af0665) 也是一个条件概率：当给定的事件A是真的时候，事件B出现的概率。它也可以被解释为在固定的B条件下A的可能性，因为![{\displaystyle P(B\mid A)=L(A\mid B)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/28cfc18ecc74984b90db23005914dcb649b7e30e).
- ![P(A)](https://wikimedia.org/api/rest_v1/media/math/render/svg/4f264d19e21604793c6dc54f8044df454db82744) 和 ![P(B)](https://wikimedia.org/api/rest_v1/media/math/render/svg/e593d180a26fd68657ea50368dbfe1a661e652aa)是没有任何给定条件下，分别代表A和B的可观测概率；它们被称为边际概率或先验概率。

### Proof

#### For event

Bayes' theorem may be derived from the definition of [conditional probability](https://en.wikipedia.org/wiki/Conditional_probability):

> 贝叶斯定理可以从[条件概率](https://en.wikipedia.org/wiki/Conditional_probability)的定义中得出：

![{\displaystyle P(A\mid B)={\frac {P(A\cap B)}{P(B)}},{\text{ if }}P(B)\neq 0,}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7b424233f9f41ed1e6e96deecab00e0e158029ec)





---

# Artificial intelligence

**Artificial intelligence** (**AI**) is [intelligence](https://en.wikipedia.org/wiki/Intelligence) demonstrated by [machines](https://en.wikipedia.org/wiki/Machine), as opposed to the **natural intelligence** displayed by [animals](https://en.wikipedia.org/wiki/Animal_cognition) including [humans](https://en.wikipedia.org/wiki/Human_intelligence). AI research has been defined as the field of study of [intelligent agents](https://en.wikipedia.org/wiki/Intelligent_agent), which refers to any system that perceives its environment and takes actions that maximize its chance of achieving its goals.[[a\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Definition_of_AI-1)

> **人工智能**（**AI**）是由[机器](https://en.wikipedia.org/wiki/Machine)展示的[智能](https://en.wikipedia.org/wiki/Intelligence)，与包括[人类](https://en.wikipedia.org/wiki/Human_intelligence)在内的[动物](https://en.wikipedia.org/wiki/Animal_cognition)展示的**自然智能**相对应。人工智能研究被定义为[智能工具](https://en.wikipedia.org/wiki/Intelligent_agent)的研究领域，它指的是任何能够感知其环境并采取最大限度地实现其目标的行动的系统。[[a]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Definition_of_AI-1)

The term "artificial intelligence" had previously been used to describe machines that mimic and display "human" cognitive skills that are associated with the [human mind](https://en.wikipedia.org/wiki/Human_mind), such as "learning" and "problem-solving". This definition has since been rejected by major AI researchers who now describe AI in terms of [rationality](https://en.wikipedia.org/wiki/Rationality) and acting rationally, which does not limit how intelligence can be articulated.[[b\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-3)

> "人工智能 "一词以前被用来描述模仿和显示与[人类思维](https://en.wikipedia.org/wiki/Human_mind)有关的 "人类 "认知技能的机器，如 "学习 "和 "解决问题"。这个定义后来被主要的人工智能研究者所拒绝，他们现在用[理性](https://en.wikipedia.org/wiki/Rationality)和理性行事来描述人工智能，这并不限制智能的表达方式。[[b]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-3)

[AI applications](https://en.wikipedia.org/wiki/AI_applications) include advanced [web search](https://en.wikipedia.org/wiki/Web_search) engines (e.g., [Google](https://en.wikipedia.org/wiki/Google_Search)), [recommendation systems](https://en.wikipedia.org/wiki/Recommender_system) (used by [YouTube](https://en.wikipedia.org/wiki/YouTube), [Amazon](https://en.wikipedia.org/wiki/Amazon_(company)) and [Netflix](https://en.wikipedia.org/wiki/Netflix)), [understanding human speech](https://en.wikipedia.org/wiki/Natural-language_understanding) (such as [Siri](https://en.wikipedia.org/wiki/Siri) and [Alexa](https://en.wikipedia.org/wiki/Amazon_Alexa)), [self-driving cars](https://en.wikipedia.org/wiki/Self-driving_car) (e.g., [Tesla](https://en.wikipedia.org/wiki/Tesla,_Inc.)), [automated decision-making](https://en.wikipedia.org/wiki/Automated_decision-making) and competing at the highest level in [strategic game](https://en.wikipedia.org/wiki/Strategic_game) systems (such as [chess](https://en.wikipedia.org/wiki/Chess) and [Go](https://en.wikipedia.org/wiki/Go_(game))).[[2\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEGoogle2016-4) As machines become increasingly capable, tasks considered to require "intelligence" are often removed from the definition of AI, a phenomenon known as the [AI effect](https://en.wikipedia.org/wiki/AI_effect).[[3\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEMcCorduck2004204-5) For instance, [optical character recognition](https://en.wikipedia.org/wiki/Optical_character_recognition) is frequently excluded from things considered to be AI,[[4\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEAshok832019-6) having become a routine technology.[[5\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTESchank199138-7)

> [人工智能应用](https://en.wikipedia.org/wiki/AI_applications)包括先进的[网络搜索](https://en.wikipedia.org/wiki/Web_search)引擎（如[谷歌](https://en.wikipedia.org/wiki/Google_Search)）、[推荐系统](https://en.wikipedia.org/wiki/Recommender_system)（由[YouTube](https://en.wikipedia.org/wiki/YouTube)、[亚马逊](https://en.wikipedia.org/wiki/Amazon_(公司))和[Netflix](https://en.wikipedia.org/wiki/Netflix)使用）、[理解人类语音](https://en.wikipedia.org/wiki/Natural-language_understanding)（如[Siri](https://en.wikipedia.org/wiki/Siri) 和[Alexa](https://en.wikipedia.org/wiki/Amazon_Alexa) ）、[自动驾驶汽车](https://en.wikipedia.org/wiki/Self-driving_car) （例如。[Tesla](https://en.wikipedia.org/wiki/Tesla,_Inc.))、[自动决策](https://en.wikipedia.org/wiki/Automated_decision-making)以及在[战略游戏](https://en.wikipedia.org/wiki/Strategic_game)系统中进行最高水平的竞争(如[国际象棋](https://en.wikipedia.org/wiki/Chess)和[围棋](https://en.wikipedia.org/wiki/Go_(游戏))。[[2\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEGoogle2016-4) 随着机器变得越来越有能力，被认为需要 "智能 "的任务往往从人工智能的定义中删除，这一现象被称为[人工智能效应](https://en.wikipedia.org/wiki/AI_effect)。[[3\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEMcCorduck2004204-5) 例如，[光学字符识别](https://en.wikipedia.org/wiki/Optical_character_recognition)经常被排除在被认为是人工智能的事物之外，[[4\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEAshok832019-6)已经成为一种常规技术。[[5\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTESchank199138-7)

Artificial intelligence was founded as an academic discipline in 1956, and in the years since has experienced several waves of optimism,[[6\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTECrevier1993109-8)[[7\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-AI_in_the_80s-9) followed by disappointment and the loss of funding (known as an "[AI winter](https://en.wikipedia.org/wiki/AI_winter)"),[[8\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-First_AI_winter-10)[[9\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Second_AI_winter-11) followed by new approaches, success and renewed funding.[[7\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-AI_in_the_80s-9)[[10\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEClark2015b-12) AI research has tried and discarded many different approaches since its founding, including simulating the brain, [modeling human problem solving](https://en.wikipedia.org/wiki/Symbolic_AI#Cognitive_simulation), [formal logic](https://en.wikipedia.org/wiki/Symbolic_AI#Logic-based), [large databases of knowledge](https://en.wikipedia.org/wiki/Symbolic_AI#Knowledge-based) and imitating animal behavior. In the first decades of the 21st century, highly mathematical-statistical [machine learning](https://en.wikipedia.org/wiki/Machine_learning) has dominated the field, and this technique has proved highly successful, helping to solve many challenging problems throughout industry and academia.[[10\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEClark2015b-12)[[11\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-AI_widely_used_1990s-13)

> 人工智能作为一门学术学科成立于1956年，在此后的几年里，经历了几波乐观的浪潮，随后是失望和失去资金（被称为"[人工智能的冬天](https://en.wikipedia.org/wiki/AI_winter)"），随后是新方法、成功和重新得到资金。人工智能研究自成立以来已经尝试并抛弃了许多不同的方法，包括模拟大脑、[模拟人类解决问题](https://en.wikipedia.org/wiki/Symbolic_AI#Cognitive_simulation)、[形式逻辑](https://en.wikipedia.org/wiki/Symbolic_AI#Logic-based)、[大型知识数据库](https://en.wikipedia.org/wiki/Symbolic_AI#Knowledge-based)和模仿动物行为。在21世纪的前几十年，高度数学-统计学的[机器学习](https://en.wikipedia.org/wiki/Machine_learning)在该领域占主导地位，这种技术已被证明非常成功，有助于解决整个工业和学术界的许多挑战性问题。[[10]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEClark2015b-12)[[11]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-AI_widely_used_1990s-13)
>

The various sub-fields of AI research are centered around particular goals and the use of particular tools. The traditional goals of AI research include [reasoning](https://en.wikipedia.org/wiki/Automated_reasoning), [knowledge representation](https://en.wikipedia.org/wiki/Knowledge_representation), [planning](https://en.wikipedia.org/wiki/Automated_planning_and_scheduling), [learning](https://en.wikipedia.org/wiki/Machine_learning), [natural language processing](https://en.wikipedia.org/wiki/Natural_language_processing), [perception](https://en.wikipedia.org/wiki/Machine_perception), and the ability to move and manipulate objects.[[c\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Problems_of_AI-14) [General intelligence](https://en.wikipedia.org/wiki/Artificial_general_intelligence) (the ability to solve an arbitrary problem) is among the field's long-term goals.[[12\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Artificial_General_Intelligence-15) To solve these problems, AI researchers have adapted and integrated a wide range of problem-solving techniques—including search and mathematical optimization, formal logic, [artificial neural networks](https://en.wikipedia.org/wiki/Artificial_neural_network), and methods based on [statistics](https://en.wikipedia.org/wiki/Statistics), [probability](https://en.wikipedia.org/wiki/Probability) and [economics](https://en.wikipedia.org/wiki/Economics). AI also draws upon [computer science](https://en.wikipedia.org/wiki/Computer_science), [psychology](https://en.wikipedia.org/wiki/Psychology), [linguistics](https://en.wikipedia.org/wiki/Linguistics), [philosophy](https://en.wikipedia.org/wiki/Philosophy), and many other fields.

> 人工智能研究的各个子领域都围绕着特定的目标和特定工具的使用。人工智能研究的传统目标包括[推理](https://en.wikipedia.org/wiki/Automated_reasoning)、[知识表示](https://en.wikipedia.org/wiki/Knowledge_representation)、[计划](https://en.wikipedia.org/wiki/Automated_planning_and_scheduling)、[学习](https://en.wikipedia.org/wiki/Machine_learning)、[自然语言处理](https://en.wikipedia.org/wiki/Natural_language_processing)、[感知](https://en.wikipedia.org/wiki/Machine_perception)以及移动和操纵物体的能力。 [通用智能](https://en.wikipedia.org/wiki/Artificial_general_intelligence)（解决任意问题的能力）是该领域的长期目标之一。[[12]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Artificial_General_Intelligence-15) 为了解决这些问题，人工智能研究人员已经适应并整合了广泛的问题解决技术--包括搜索和数学优化、形式逻辑、[人工神经网络](https://en.wikipedia.org/wiki/Artificial_neural_network)，以及基于[统计学](https://en.wikipedia.org/wiki/Statistics)、[概率](https://en.wikipedia.org/wiki/Probability)和[经济学](https://en.wikipedia.org/wiki/Economics)的方法。人工智能还借鉴了[计算机科学](https://en.wikipedia.org/wiki/Computer_science)、[心理学](https://en.wikipedia.org/wiki/Psychology)、[语言学](https://en.wikipedia.org/wiki/Linguistics)、[哲学](https://en.wikipedia.org/wiki/Philosophy)以及许多其他领域的方法。

The field was founded on the assumption that human intelligence "can be so precisely described that a machine can be made to simulate it".[[d\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-17) This raised philosophical arguments about the mind and the ethical consequences of creating artificial beings endowed with human-like intelligence; these issues have previously been explored by [myth](https://en.wikipedia.org/wiki/History_of_artificial_intelligence#Precursors), [fiction](https://en.wikipedia.org/wiki/Artificial_intelligence_in_fiction) and [philosophy](https://en.wikipedia.org/wiki/Philosophy_of_artificial_intelligence) since antiquity.[[14\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTENewquist199445–53-18) [Computer scientists](https://en.wikipedia.org/wiki/Computer_scientist) and [philosophers](https://en.wikipedia.org/wiki/Philosopher) have since suggested that AI may become an [existential risk](https://en.wikipedia.org/wiki/Existential_risk) to humanity if its rational capacities are not steered towards beneficial goals.[[e\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Future_risks_of_AI-19)

> 这个领域建立在这样的假设上：人类的智力 "可以被精确地描述，以至于可以制造出一台机器来模拟它。"这引起了关于心灵和创造具有类似人类智力的人造人的伦理后果的哲学争论；这些问题之前已经由[神话](https://en.wikipedia.org/wiki/History_of_artificial_intelligence#Precursors)、[小说](https://en.wikipedia.org/wiki/Artificial_intelligence_in_fiction)和[哲学](https://en)探讨过了。 自古以来就在探讨这些问题。[[14]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTENewquist199445-53-18) [计算机科学家](https://en.wikipedia.org/wiki/Computer_scientist)和[哲学家](https://en.wikipedia.org/wiki/Philosopher)后来提出，如果不将人工智能的理性能力引向有益的目标，它可能成为人类的[生存危险](https://en.wikipedia.org/wiki/Existential_risk)。
>

## History

### Fictions and early concepts

[Artificial beings](https://en.wikipedia.org/wiki/Artificial_being) with intelligence appeared as [storytelling devices](https://en.wikipedia.org/wiki/Storytelling_device) in antiquity,[[15\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-AI_in_myth-20) and have been common in fiction, as in [Mary Shelley](https://en.wikipedia.org/wiki/Mary_Shelley)'s *[Frankenstein](https://en.wikipedia.org/wiki/Frankenstein)* or [Karel Čapek](https://en.wikipedia.org/wiki/Karel_Čapek)'s *[R.U.R.](https://en.wikipedia.org/wiki/R.U.R.)*[[16\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEMcCorduck200417–25-21) These characters and their fates raised many of the same issues now discussed in the [ethics of artificial intelligence](https://en.wikipedia.org/wiki/Ethics_of_artificial_intelligence).[[17\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEMcCorduck2004340–400-22)

The study of mechanical or ["formal" reasoning](https://en.wikipedia.org/wiki/Formal_reasoning) began with [philosophers](https://en.wikipedia.org/wiki/Philosopher) and mathematicians in antiquity. The study of mathematical logic led directly to [Alan Turing](https://en.wikipedia.org/wiki/Alan_Turing)'s [theory of computation](https://en.wikipedia.org/wiki/Theory_of_computation), which suggested that a machine, by shuffling symbols as simple as "0" and "1", could simulate any conceivable act of mathematical deduction. This insight that digital computers can simulate any process of formal reasoning is known as the [Church–Turing thesis](https://en.wikipedia.org/wiki/Church–Turing_thesis).[[18\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEBerlinski2000-23)

The Church-Turing thesis, along with concurrent discoveries in [neurobiology](https://en.wikipedia.org/wiki/Neuroscience), [information theory](https://en.wikipedia.org/wiki/Information_theory) and [cybernetics](https://en.wikipedia.org/wiki/Cybernetics), led researchers to consider the possibility of building an electronic brain.[[19\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-24) The first work that is now generally recognized as AI was [McCullouch](https://en.wikipedia.org/wiki/Warren_McCullouch) and [Pitts](https://en.wikipedia.org/wiki/Walter_Pitts)' 1943 formal design for [Turing-complete](https://en.wikipedia.org/wiki/Turing-complete) "artificial neurons".[[20\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTERussellNorvig200916-25)

> 具有智能的[人造人](https://en.wikipedia.org/wiki/Artificial_being)在古代作为[讲故事的工具](https://en.wikipedia.org/wiki/Storytelling_device)出现，[[15]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-AI_in_myth-20)在小说中也很常见，如[玛丽-雪莱](https://en.wikipedia.org/wiki/Mary_Shelley)的*[弗兰肯斯坦](https://en.wikipedia.org/wiki/Frankenstein)*或[卡雷尔-恰佩克](https://en.wikipedia.org/wiki/Karel_Čapek)的*[R.U.R](https://en.wikipedia.org/wiki/R.U.R)*[[16]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEMcCorduck200417-25-21) 这些人物和他们的命运提出了许多现在在[人工智能的伦理学](https://en.wikipedia.org/wiki/Ethics_of_artificial_intelligence)中讨论的相同问题。[[17\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEMcCorduck2004340-400-22)
>
> 对机械或["形式 "推理](https://en.wikipedia.org/wiki/Formal_reasoning)的研究始于古代的[哲学家](https://en.wikipedia.org/wiki/Philosopher)和数学家。对数理逻辑的研究直接导致了[阿兰-图灵](https://en.wikipedia.org/wiki/Alan_Turing)的[计算理论](https://en.wikipedia.org/wiki/Theory_of_computation)，它提出，一台机器通过洗刷简单如 "0 "和 "1 "的符号，可以模拟任何可以想象的数学推理行为。这个关于数字计算机可以模拟任何形式推理过程的见解被称为[Church-Turing thesis](https://en.wikipedia.org/wiki/Church-Turing_thesis)。[[18]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEBerlinski2000-23)
>
> 丘奇-图灵论文，以及同时在[神经生物学](https://en.wikipedia.org/wiki/Neuroscience)、[信息论](https://en.wikipedia.org/wiki/Information_theory)和[控制论](https://en.wikipedia.org/wiki/Cybernetics)中的发现，导致研究人员考虑建立一个电子大脑的可能性。[[19\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-24)现在被普遍认为是人工智能的第一项工作是[McCullouch](https://en.wikipedia.org/wiki/Warren_McCullouch)和[Pitts](https://en.wikipedia.org/wiki/Walter_Pitts) 1943年对[图灵完全](https://en.wikipedia.org/wiki/Turing-complete) "人工神经元 "的形式设计。

### Early researches

By the 1950s, two visions for how to achieve machine intelligence emerged. One vision, known as [Symbolic AI](https://en.wikipedia.org/wiki/Symbolic_AI) or [GOFAI](https://en.wikipedia.org/wiki/GOFAI), was to use computers to create a symbolic representation of the world and systems that could reason about the world. Proponents included [Allen Newell](https://en.wikipedia.org/wiki/Allen_Newell), [Herbert A. Simon](https://en.wikipedia.org/wiki/Herbert_A._Simon), and [Marvin Minsky](https://en.wikipedia.org/wiki/Marvin_Minsky). Closely associated with this approach was the ["heuristic search"](https://en.wikipedia.org/wiki/Heuristic_(computer_science)) approach, which likened intelligence to a problem of exploring a space of possibilities for answers. The second vision, known as the [connectionist approach](https://en.wikipedia.org/wiki/Connectionism), sought to achieve intelligence through learning. Proponents of this approach, most prominently [Frank Rosenblatt](https://en.wikipedia.org/wiki/Frank_Rosenblatt), sought to connect [Perceptron](https://en.wikipedia.org/wiki/Perceptrons) in ways inspired by connections of neurons.[[21\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEManyika20229-26) [James Manyika](https://en.wikipedia.org/wiki/James_Manyika) and others have compared the two approaches to the mind (Symbolic AI) and the brain (connectionist). Manyika argues that symbolic approaches dominated the push for artificial intelligence in this period, due in part to its connection to intellectual traditions of [Descarte](https://en.wikipedia.org/wiki/Descarte), [Boole](https://en.wikipedia.org/wiki/Boole), [Gottlob Frege](https://en.wikipedia.org/wiki/Gottlob_Frege), [Bertrand Russell](https://en.wikipedia.org/wiki/Bertrand_Russell), and others. Connectionist approaches based on [cybernetics](https://en.wikipedia.org/wiki/Cybernetics) or [artificial neural networks](https://en.wikipedia.org/wiki/Artificial_neural_network) were pushed to the background but have gained new prominence in recent decades.[[22\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEManyika202210-27)

The field of AI research was born at [a workshop](https://en.wikipedia.org/wiki/Dartmouth_workshop) at [Dartmouth College](https://en.wikipedia.org/wiki/Dartmouth_College) in 1956.[[f\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-30)[[25\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-31) The attendees became the founders and leaders of AI research.[[g\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-32) They and their students produced programs that the press described as "astonishing":[[h\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-34) computers were learning [checkers](https://en.wikipedia.org/wiki/Draughts) strategies, solving word problems in algebra, proving [logical theorems](https://en.wikipedia.org/wiki/Theorem) and speaking English.[[i\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-35)[[27\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-36) By the middle of the 1960s, research in the U.S. was heavily funded by the [Department of Defense](https://en.wikipedia.org/wiki/DARPA)[[28\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-37) and laboratories had been established around the world.[[29\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEHowe1994-38)

Researchers in the 1960s and the 1970s were convinced that symbolic approaches would eventually succeed in creating a machine with [artificial general intelligence](https://en.wikipedia.org/wiki/Artificial_general_intelligence) and considered this the goal of their field.[[30\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTENewquist199486–86-39) [Herbert Simon](https://en.wikipedia.org/wiki/Herbert_A._Simon) predicted, "machines will be capable, within twenty years, of doing any work a man can do".[[31\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-40) [Marvin Minsky](https://en.wikipedia.org/wiki/Marvin_Minsky) agreed, writing, "within a generation ... the problem of creating 'artificial intelligence' will substantially be solved".[[32\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-41)

They failed to recognize the difficulty of some of the remaining tasks. Progress slowed and in 1974, in response to the [criticism](https://en.wikipedia.org/wiki/Lighthill_report) of [Sir James Lighthill](https://en.wikipedia.org/wiki/Sir_James_Lighthill)[[33\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTELighthill1973-42) and ongoing pressure from the US Congress to [fund more productive projects](https://en.wikipedia.org/wiki/Mansfield_Amendment), both the U.S. and British governments cut off exploratory research in AI. The next few years would later be called an "[AI winter](https://en.wikipedia.org/wiki/AI_winter)", a period when obtaining funding for AI projects was difficult.[[8\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-First_AI_winter-10)

> 到20世纪50年代，出现了两种关于如何实现机器智能的愿景。一种设想被称为[符号人工智能](https://en.wikipedia.org/wiki/Symbolic_AI)或[GOFAI](https://en.wikipedia.org/wiki/GOFAI)，即使用计算机来创建世界的符号表示，以及可以推理世界的系统。支持者包括[Allen Newell](https://en.wikipedia.org/wiki/Allen_Newell)、[Herbert A. Simon](https://en.wikipedia.org/wiki/Herbert_A._Simon)和[Marvin Minsky](https://en.wikipedia.org/wiki/Marvin_Minsky) 。与这种方法密切相关的是["启发式搜索"](https://en.wikipedia.org/wiki/Heuristic_(computer_science))方法，它将智能比作一个探索答案的可能性空间的问题。第二种观点被称为[连接主义方法](https://en.wikipedia.org/wiki/Connectionism)，试图通过学习来实现智能。这种方法的支持者，最突出的是[Frank Rosenblatt](https://en.wikipedia.org/wiki/Frank_Rosenblatt)，试图以受到神经元连接启发的方式连接[Perceptron](https://en.wikipedia.org/wiki/Perceptrons)。[[21]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEManyika20229-26)[James Manyika](https://en.wikipedia.org/wiki/James_Manyika)和其他人将这两种方法与思维（符号型人工智能）和大脑（连接型）相比较。Manyika认为，符号方法在这一时期主导了对人工智能的推动，部分原因是它与[Descarte](https://en.wikipedia.org/wiki/Descarte)、[Boole](https://en.wikipedia.org/wiki/Boole)、[Gottlob Frege](https://en.wikipedia.org/wiki/Gottlob_Frege)、[Bertrand Russell](https://en.wikipedia.org/wiki/Bertrand_Russell)等人的知识传统有关。基于[控制论](https://en.wikipedia.org/wiki/Cybernetics)或[人工神经网络](https://en.wikipedia.org/wiki/Artificial_neural_network)的连接主义方法被推到后台，但在最近几十年里获得了新的突出地位。[[22]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEManyika202210-27)
>
> 人工智能研究领域诞生于1956年[达特茅斯学院](https://en.wikipedia.org/wiki/Dartmouth_College)的[研讨会](https://en.wikipedia.org/wiki/Dartmouth_workshop)。[[f\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-30)[[25\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-31)与会者成为人工智能研究的创始人和领导者。[[g\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-32)他们和他们的学生制作的程序被媒体称为 "令人震惊"：[[h\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-34) 计算机正在学习[跳棋](https://en.wikipedia.org/wiki/Draughts)策略，解决代数中的文字问题，证明[逻辑定理](https://en.wikipedia.org/wiki/Theorem)和说英语。[[i\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-35)[[27\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-36)到60年代中期，美国的研究得到了[国防部](https://en.wikipedia.org/wiki/DARPA)的大量资助[[28\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-37)，世界各地纷纷建立实验室。
>
> 20世纪60年代和70年代的研究人员相信，符号方法最终会成功地创造出具有[人工通用智能](https://en.wikipedia.org/wiki/Artificial_general_intelligence)的机器，并认为这是他们领域的目标。[[30\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTENewquist199486-86-39) 赫伯特-西蒙[[31\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-40) [Marvin Minsky](https://en.wikipedia.org/wiki/Marvin_Minsky)同意，写道："在一代人之内......创造'人工智能'的问题将大大解决。"[[32\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-41)
>
> 他们没有认识到一些剩余任务的难度。进展放缓，1974年，为了回应[詹姆斯-莱特希尔爵士](https://en.wikipedia.org/wiki/Sir_James_Lighthill)[[33]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTELighthill1973-42)的[批评](https://en.wikipedia.org/wiki/Lighthill_report)和美国国会要求[资助更有成效的项目](https://en.wikipedia.org/wiki/Mansfield_Amendment)的持续压力，美国和英国政府都切断了人工智能的探索性研究。接下来的几年后来被称为"人工智能的冬天“，一个为人工智能项目获得资金的困难时期。[[8]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-First_AI_winter-10)

### From expert systems to machine learning

In the early 1980s, AI research was revived by the commercial success of [expert systems](https://en.wikipedia.org/wiki/Expert_system),[[34\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-43) a form of AI program that simulated the knowledge and analytical skills of human experts. By 1985, the market for AI had reached over a billion dollars. At the same time, Japan's [fifth generation computer](https://en.wikipedia.org/wiki/Fifth_generation_computer) project inspired the U.S and British governments to restore funding for [academic research](https://en.wikipedia.org/wiki/Academic_research).[[7\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-AI_in_the_80s-9) However, beginning with the collapse of the [Lisp Machine](https://en.wikipedia.org/wiki/Lisp_Machine) market in 1987, AI once again fell into disrepute, and a second, longer-lasting winter began.[[9\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Second_AI_winter-11)

Many researchers began to doubt that the [symbolic approach](https://en.wikipedia.org/wiki/Symbolic_AI) would be able to imitate all the processes of human cognition, especially [perception](https://en.wikipedia.org/wiki/Machine_perception), robotics, [learning](https://en.wikipedia.org/wiki/Machine_learning) and [pattern recognition](https://en.wikipedia.org/wiki/Pattern_recognition). A number of researchers began to look into "sub-symbolic" approaches to specific AI problems.[[35\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTENilsson19987-44) [Robotics](https://en.wikipedia.org/wiki/Robotics) researchers, such as [Rodney Brooks](https://en.wikipedia.org/wiki/Rodney_Brooks), rejected symbolic AI and focused on the basic engineering problems that would allow robots to move, survive, and learn their environment.[[j\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-49) Interest in [neural networks](https://en.wikipedia.org/wiki/Artificial_neural_network) and "[connectionism](https://en.wikipedia.org/wiki/Connectionism)" was revived by [Geoffrey Hinton](https://en.wikipedia.org/wiki/Geoffrey_Hinton), [David Rumelhart](https://en.wikipedia.org/wiki/David_Rumelhart) and others in the middle of the 1980s.[[40\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-50) [Soft computing](https://en.wikipedia.org/wiki/Soft_computing) tools were developed in the 80s, such as [neural networks](https://en.wikipedia.org/wiki/Artificial_neural_network), [fuzzy systems](https://en.wikipedia.org/wiki/Fuzzy_system), [Grey system theory](https://en.wikipedia.org/wiki/Grey_system_theory), [evolutionary computation](https://en.wikipedia.org/wiki/Evolutionary_computation) and many tools drawn from [statistics](https://en.wikipedia.org/wiki/Statistics) or [mathematical optimization](https://en.wikipedia.org/wiki/Mathematical_optimization).

AI gradually restored its reputation in the late 1990s and early 21st century by finding specific solutions to specific problems. The narrow focus allowed researchers to produce verifiable results, exploit more mathematical methods, and collaborate with other fields (such as [statistics](https://en.wikipedia.org/wiki/Statistics), [economics](https://en.wikipedia.org/wiki/Economics) and [mathematics](https://en.wikipedia.org/wiki/Mathematical_optimization)).[[41\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-AI_1990s-51) By 2000, solutions developed by AI researchers were being widely used, although in the 1990s they were rarely described as "artificial intelligence".[[11\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-AI_widely_used_1990s-13)

[Faster computers](https://en.wikipedia.org/wiki/Moore's_law), algorithmic improvements, and access to [large amounts of data](https://en.wikipedia.org/wiki/Big_data) enabled advances in [machine learning](https://en.wikipedia.org/wiki/Machine_learning) and perception; data-hungry [deep learning](https://en.wikipedia.org/wiki/Deep_learning) methods started to dominate accuracy benchmarks [around 2012](https://en.wikipedia.org/wiki/Deep_learning#Deep_learning_revolution).[[42\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEMcKinsey2018-52) According to [Bloomberg's](https://en.wikipedia.org/wiki/Bloomberg_News) Jack Clark, 2015 was a landmark year for artificial intelligence, with the number of software projects that use AI within [Google](https://en.wikipedia.org/wiki/Google) increased from a "sporadic usage" in 2012 to more than 2,700 projects.[[k\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-53) He attributes this to an increase in affordable [neural networks](https://en.wikipedia.org/wiki/Artificial_neural_network), due to a rise in cloud computing infrastructure and to an increase in research tools and datasets.[[10\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEClark2015b-12) In a 2017 survey, one in five companies reported they had "incorporated AI in some offerings or processes".[[43\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-54) The amount of research into AI (measured by total publications) increased by 50% in the years 2015–2019.[[44\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEUNESCO2021-55)

Numerous academic researchers became concerned that AI was no longer pursuing the original goal of creating versatile, fully intelligent machines. Much of current research involves statistical AI, which is overwhelmingly used to solve specific problems, even highly successful techniques such as [deep learning](https://en.wikipedia.org/wiki/Deep_learning). This concern has led to the subfield of [artificial general intelligence](https://en.wikipedia.org/wiki/Artificial_general_intelligence) (or "AGI"), which had several well-funded institutions by the 2010s.[[12\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Artificial_General_Intelligence-15)

> 20世纪80年代初，人工智能研究因[专家系统](https://en.wikipedia.org/wiki/Expert_system)的商业成功而复苏，[[34]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-43)是一种模拟人类专家的知识和分析技能的人工智能程序形式。到1985年，人工智能的市场已经达到10亿美元以上。与此同时，日本的[第五代计算机](https://en.wikipedia.org/wiki/Fifth_generation_computer)项目激发了美国和英国政府恢复对[学术研究](https://en.wikipedia.org/wiki/Academic_research)的资助。[[7\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-AI_in_the_80s-9)然而，从1987年[Lisp Machine](https://en.wikipedia.org/wiki/Lisp_Machine)市场的崩溃开始，人工智能再次陷入耻辱，第二个更持久的冬天开始。[[9\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Second_AI_winter-11)
>
> 许多研究人员开始怀疑[符号方法](https://en.wikipedia.org/wiki/Symbolic_AI)是否能够模仿人类认知的所有过程，特别是[感知](https://en.wikipedia.org/wiki/Machine_perception)、机器人、[学习](https://en.wikipedia.org/wiki/Machine_learning)和[模式识别](https://en.wikipedia.org/wiki/Pattern_recognition)。一些研究人员开始研究 "亚符号 "方法来解决具体的人工智能问题。[[35]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTENilsson19987-44)[机器人学](https://en.wikipedia.org/wiki/Robotics)研究人员，如[Rodney Brooks](https://en.wikipedia.org/wiki/Rodney_Brooks)，拒绝了符号人工智能，而专注于使机器人能够移动、生存和学习环境的基本工程问题。[[j]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-49)对[神经网络](https://en.wikipedia.org/wiki/Artificial_neural_network)和[连接主义](https://en.wikipedia.org/wiki/Connectionism) 的兴趣被Geoffrey Hinton、[David Rumelhart](https://en.wikipedia.org/wiki/David_Rumelhart)和其他人在80年代中期恢复了对[[40]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-50)[软计算](https://en.wikipedia.org/wiki/Soft_computing)工具的研究，例如[神经网络](https://en.wikipedia.org/wiki/Artificial_neural_network)、[模糊系统](https://en.wikipedia.org/wiki/Fuzzy_system)、[灰色系统理论](https://en.wikipedia.org/wiki/Grey_system_theory)、[进化计算](https://en.wikipedia.org/wiki/Evolutionary_computation)以及许多从[统计学](https://en.wikipedia.org/wiki/Statistics)或[数学优化](https://en.wikipedia.org/wiki/Mathematical_optimization)中汲取的工具。
>
> 在20世纪90年代末和21世纪初，人工智能通过寻找特定问题的具体解决方案逐渐恢复了其声誉。狭窄的重点使研究人员能够产生可验证的结果，利用更多的数学方法，并与其他领域（如[统计学](https://en.wikipedia.org/wiki/Statistics)、[经济学](https://en.wikipedia.org/wiki/Economics)和[数学](https://en.wikipedia.org/wiki/Mathematical_optimization)）合作。到2000年，人工智能研究人员开发的解决方案被广泛使用，尽管在1990年代，他们很少被描述为 "人工智能"。
>
> [更快的计算机](https://en.wikipedia.org/wiki/Moore's_law)、算法的改进以及对[大量数据](https://en.wikipedia.org/wiki/Big_data)的获取使得[机器学习](https://en.wikipedia.org/wiki/Machine_learning)和感知方面取得了进展；对数据要求很高的[深度学习](https://en.wikipedia.org/wiki/Deep_learning)方法开始在准确性基准方面占据优势[大约在2012年](https://en.wikipedia.org/wiki/Deep_learning#Deep_learning_revolution)。[[42]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEMcKinsey2018-52) 根据彭博的Jack Clark：2015年是人工智能的一个里程碑，在[谷歌](https://en.wikipedia.org/wiki/Google)内部使用人工智能的软件项目数量从2012年的 "零星使用 "增加到2700多个项目。他将此归因于由于云计算基础设施的上升，以及研究工具和数据集的增加，价格低廉的[神经网络](https://en.wikipedia.org/wiki/Artificial_neural_network)增加了。在2017年的一项调查中，五分之一的公司表示他们已经 "在一些产品或流程中纳入了人工智能"。[[43]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-54) 2015-2019年，对人工智能的研究量（以总出版物衡量）增加了50%。[[44]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEUNESCO2021-55)
>
> 众多学术研究人员开始担心，人工智能不再追求创造多功能、全智能机器的最初目标。目前的许多研究涉及到统计人工智能，它绝大多数被用来解决具体问题，甚至是非常成功的技术，如[深度学习](https://en.wikipedia.org/wiki/Deep_learning)。这种担忧导致了[人工通用智能](https://en.wikipedia.org/wiki/Artificial_general_intelligence)（或 "AGI"）这一子领域的出现，到2010年代，该领域有几个资金充足的机构。

## Goals

The general problem of simulating (or creating) intelligence has been broken down into sub-problems. These consist of particular traits or capabilities that researchers expect an intelligent system to display. The traits described below have received the most attention.[[c\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Problems_of_AI-14)

> 模拟（或创造）智能的一般问题已经被分解为子问题。这些问题由研究人员期望智能系统显示的特定特征或能力组成。下面描述的特征受到了最多的关注。[[c]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Problems_of_AI-14)

### Reasoning, problem-solving

Early researchers developed algorithms that imitated step-by-step reasoning that humans use when they solve puzzles or make logical deductions.[[45\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-56) By the late 1980s and 1990s, AI research had developed methods for dealing with [uncertain](https://en.wikipedia.org/wiki/Uncertainty) or incomplete information, employing concepts from [probability](https://en.wikipedia.org/wiki/Probability) and [economics](https://en.wikipedia.org/wiki/Economics).[[46\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-57)

Many of these algorithms proved to be insufficient for solving large reasoning problems because they experienced a "combinatorial explosion": they became exponentially slower as the problems grew larger.[[47\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Intractability-58) Even humans rarely use the step-by-step deduction that early AI research could model. They solve most of their problems using fast, intuitive judgments.[[48\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Psychological_evidence_of_sub-symbolic_reasoning-59)

> 早期的研究人员开发了模仿人类在解决难题或进行逻辑推理时使用的逐步推理的算法。[[45\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-56) 到20世纪80年代末和90年代，人工智能研究已经开发了处理[不确定](https://en.wikipedia.org/wiki/Uncertainty)或不完整信息的方法，采用了[概率](https://en.wikipedia.org/wiki/Probability)和[经济学](https://en.wikipedia.org/wiki/Economics)的概念。
>
> 许多这些算法被证明不足以解决大型推理问题，因为它们经历了 "组合爆炸"：随着问题的增大，它们的速度也会呈指数增长。[[47]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Intractability-58) 即使是人类也很少使用早期人工智能研究所能模拟的分步推理。他们使用快速、直观的判断来解决大部分的问题。[[48]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Psychological_evidence_of_sub-symbolic_reasoning-59)
>

### Knowledge representation

Knowledge representation and [knowledge engineering](https://en.wikipedia.org/wiki/Knowledge_engineering)[[49\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-60) allow AI programs to answer questions intelligently and make deductions about real-world facts.

A representation of "what exists" is an [ontology](https://en.wikipedia.org/wiki/Ontology_(information_science)): the set of objects, relations, concepts, and properties formally described so that software agents can interpret them.[[50\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTERussellNorvig2003320–328-61) The most general ontologies are called [upper ontologies](https://en.wikipedia.org/wiki/Upper_ontology), which attempt to provide a foundation for all other knowledge and act as mediators between [domain ontologies](https://en.wikipedia.org/wiki/Domain_ontology) that cover specific knowledge about a particular knowledge [domain](https://en.wikipedia.org/wiki/Domain_ontology) (field of interest or area of concern). A truly intelligent program would also need access to commonsense knowledge; the set of facts that an average person knows. The [semantics](https://en.wikipedia.org/wiki/Semantics) of an ontology is typically represented in description logic, such as the [Web Ontology Language](https://en.wikipedia.org/wiki/Web_Ontology_Language).[[51\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Representing_categories_and_relations-62)

AI research has developed tools to represent specific domains, such as objects, properties, categories and relations between objects;[[51\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Representing_categories_and_relations-62) situations, events, states and time;[[52\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Representing_time-63) causes and effects;[[53\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Representing_causation-64) knowledge about knowledge (what we know about what other people know);.[[54\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Representing_knowledge_about_knowledge-65) [default reasoning](https://en.wikipedia.org/wiki/Default_reasoning) (things that humans assume are true until they are told differently and will remain true even when other facts are changing); [[55\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Default_reasoning_and_non-monotonic_logic-66) as well as other domains. Among the most difficult problems in AI are: the breadth of commonsense knowledge (the number of atomic facts that the average person knows is enormous);[[56\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Breadth_of_commonsense_knowledge-67) and the sub-symbolic form of most commonsense knowledge (much of what people know is not represented as "facts" or "statements" that they could express verbally).[[48\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Psychological_evidence_of_sub-symbolic_reasoning-59)

Formal knowledge representations are used in content-based indexing and retrieval,[[57\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTESmoliarZhang1994-68) scene interpretation,[[58\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTENeumannMöller2008-69) clinical decision support,[[59\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEKupermanReichleyBailey2006-70) knowledge discovery (mining "interesting" and actionable inferences from large databases),[[60\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEMcGarry2005-71) and other areas.[[61\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEBertiniDel_BimboTorniai2006-72)

> 知识表示和[知识工程](https://en.wikipedia.org/wiki/Knowledge_engineering)[[49]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-60)使人工智能程序能够智能地回答问题，并对现实世界的事实作出推论。
>
> 对 "存在的东西 "的表述是一个[本体](https://en.wikipedia.org/wiki/Ontology_(information_science))：正式描述的对象、关系、概念和属性的集合，以便软件代理能够解释它们。[[50]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTERussellNorvig2003320-328-61)最一般的本体被称为[上层本体](https://en.wikipedia.org/wiki/Upper_ontology)，它试图为所有其他知识提供一个基础，并作为涵盖特定知识的[领域本体](https://en.wikipedia.org/wiki/Domain_ontology)（兴趣领域或关注领域）的调解人。一个真正的智能程序还需要访问常识性知识；一个普通人所知道的一组事实。本体的[语义](https://en.wikipedia.org/wiki/Semantics)通常用描述逻辑表示，如[网络本体语言](https://en.wikipedia.org/wiki/Web_Ontology_Language)。[[51]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Representing_categories_and_relations-62)
>
> 人工智能研究已经开发出代表特定领域的工具，如对象、属性、类别和对象之间的关系；情况、事件、状态和时间；原因和效果；关于知识的知识（我们对其他人所知道的知识）；默认推理]（人类认为是真实的事情，直到他们被告知不同的情况，即使其他事实在变化，也会保持真实）；以及其他领域。人工智能中最困难的问题是：常识性知识的广度（一般人知道的原子事实的数量是巨大的）；[[56]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Breadth_of_commonsense_knowledge-67)和大多数常识性知识的亚符号形式（人们知道的许多东西并不表示为他们可以口头表达的 "事实 "或 "陈述"）。[[48]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Psychological_evidence_of_sub-symbolic_reasoning-59)
>
> 正式的知识表示被用于基于内容的索引和检索、[[57\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTESmoliarZhang1994-68)场景解释、[[58\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTENeumannMöller2008-69)临床决策支持、[[59\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEKupermanReichleyBailey2006-70)知识发现（从大型数据库中挖掘 "有趣 "和可操作的推论）、[[60\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEMcGarry2005-71) 和其他领域。

### Planning

*Main article:* [Automated planning and scheduling](https://en.wikipedia.org/wiki/Automated_planning_and_scheduling)

An intelligent agent that can [plan](https://en.wikipedia.org/wiki/Automated_planning_and_scheduling) makes a representation of the state of the world, makes predictions about how their actions will change it and make choices that maximize the [utility](https://en.wikipedia.org/wiki/Utility) (or "value") of the available choices.[[62\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-73) In classical planning problems, the agent can assume that it is the only system acting in the world, allowing the agent to be certain of the consequences of its actions.[[63\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-74) However, if the agent is not the only actor, then it requires that the agent reason under uncertainty, and continuously re-assess its environment and adapt.[[64\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-75) [Multi-agent planning](https://en.wikipedia.org/wiki/Multi-agent_planning) uses the [cooperation](https://en.wikipedia.org/wiki/Cooperation) and competition of many agents to achieve a given goal. [Emergent behavior](https://en.wikipedia.org/wiki/Emergent_behavior) such as this is used by [evolutionary algorithms](https://en.wikipedia.org/wiki/Evolutionary_algorithms) and [swarm intelligence](https://en.wikipedia.org/wiki/Swarm_intelligence).[[65\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-76)

> 一个能够[计划](https://en.wikipedia.org/wiki/Automated_planning_and_scheduling)的智能工具对世界的状态进行表述，对他们的行动将如何改变世界进行预测，并做出选择，使现有选择的[效用](https://en.wikipedia.org/wiki/Utility)最大化。[[62\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-73)在经典的计划问题中，代理可以假设它是世界上唯一的行动系统，使代理能够确定其行动的后果。 [[63\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-74)然而，如果代理人不是唯一的行动者，那么就要求工具在不确定的情况下进行推理，并不断重新评估其环境和适应。[[64\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-75)[多层工具规划](https://en.wikipedia.org/wiki/Multi-agent_planning)利用许多工具的[合作](https://en.wikipedia.org/wiki/Cooperation)和竞争来实现一个特定目标。像这样的[突发行为](https://en.wikipedia.org/wiki/Emergent_behavior)被[进化算法](https://en.wikipedia.org/wiki/Evolutionary_algorithms)和[蜂群智能](https://en.wikipedia.org/wiki/Swarm_intelligence)所使用。[[65\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-76)

### Learning

*Main article:* [Machine learning](https://en.wikipedia.org/wiki/Machine_learning)

Machine learning (ML), a fundamental concept of AI research since the field's inception,[[l\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-79) is the study of computer algorithms that improve automatically through experience.[[m\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-81)

[Unsupervised learning](https://en.wikipedia.org/wiki/Unsupervised_learning) finds patterns in a stream of input. [Supervised learning](https://en.wikipedia.org/wiki/Supervised_learning) requires a human to label the input data first, and comes in two main varieties: [classification](https://en.wikipedia.org/wiki/Statistical_classification) and numerical [regression](https://en.wikipedia.org/wiki/Regression_analysis). Classification is used to determine what category something belongs in—the program sees a number of examples of things from several categories and will learn to classify new inputs. Regression is the attempt to produce a function that describes the relationship between inputs and outputs and predicts how the outputs should change as the inputs change. Both classifiers and regression learners can be viewed as "function approximators" trying to learn an unknown (possibly implicit) function; for example, a spam classifier can be viewed as learning a function that maps from the text of an email to one of two categories, "spam" or "not spam".[[69\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-82) In [reinforcement learning](https://en.wikipedia.org/wiki/Reinforcement_learning) the agent is rewarded for good responses and punished for bad ones. The agent classifies its responses to form a strategy for operating in its problem space.[[70\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-83) [Transfer learning](https://en.wikipedia.org/wiki/Transfer_learning) is when the knowledge gained from one problem is applied to a new problem.[[71\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEThe_Economist2016-84)

[Computational learning theory](https://en.wikipedia.org/wiki/Computational_learning_theory) can assess learners by [computational complexity](https://en.wikipedia.org/wiki/Computational_complexity), by [sample complexity](https://en.wikipedia.org/wiki/Sample_complexity) (how much data is required), or by other notions of [optimization](https://en.wikipedia.org/wiki/Optimization_theory).[[72\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEJordanMitchell2015-85)

> 机器学习（ML）是人工智能研究领域成立以来的一个基本概念，[[l]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-79)是对通过经验自动改进的计算机算法的研究。[[m]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-81)
>
> [Unsupervised learning](https://en.wikipedia.org/wiki/Unsupervised_learning)在输入流中寻找模式。[监督学习](https://en.wikipedia.org/wiki/Supervised_learning)需要人类首先对输入的数据进行标记，主要有两种类型。[分类](https://en.wikipedia.org/wiki/Statistical_classification)和数字[回归](https://en.wikipedia.org/wiki/Regression_analysis)。分类是用来确定某样东西属于哪一类--程序从几个类别中看到一些例子，并将学习对新的输入进行分类。回归是试图产生一个描述输入和输出之间关系的函数，并预测随着输入的变化输出应该如何变化。分类器和回归学习器都可以被看作是 "函数近似器"，试图学习一个未知的（可能是隐含的）函数；例如，垃圾邮件分类器可以被看作是学习一个函数，将电子邮件的文本映射到两个类别之一，"垃圾邮件 "或 "非垃圾邮件"。[[69]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-82) 在[强化学习](https://en.wikipedia.org/wiki/Reinforcement_learning)中，工具对好的反应给予奖励，对坏的反应给予惩罚。工具对其反应进行分类，以形成在其问题空间中的操作策略。[[70]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-83) [转移学习](https://en.wikipedia.org/wiki/Transfer_learning)是指从一个问题中获得的知识被应用于一个新的问题。[[71]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEThe_Economist2016-84)
>
> [计算学习理论](https://en.wikipedia.org/wiki/Computational_learning_theory)可以通过[计算复杂性](https://en.wikipedia.org/wiki/Computational_complexity)、[样本复杂性](https://en.wikipedia.org/wiki/Sample_complexity)（需要多少数据）或其他[优化](https://en.wikipedia.org/wiki/Optimization_theory)的概念来评估学习者。

### Natural language processing

*Main article:* [Natural language processing](https://en.wikipedia.org/wiki/Natural_language_processing)

Natural language processing (NLP)[[73\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-86) allows machines to read and [understand](https://en.wikipedia.org/wiki/Natural-language_understanding) human language. A sufficiently powerful natural language processing system would enable [natural-language user interfaces](https://en.wikipedia.org/wiki/Natural-language_user_interface) and the acquisition of knowledge directly from human-written sources, such as newswire texts. Some straightforward applications of NLP include [information retrieval](https://en.wikipedia.org/wiki/Information_retrieval), [question answering](https://en.wikipedia.org/wiki/Question_answering) and [machine translation](https://en.wikipedia.org/wiki/Machine_translation).[[74\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-87)

[Symbolic AI](https://en.wikipedia.org/wiki/Symbolic_AI) used formal [syntax](https://en.wikipedia.org/wiki/Syntax) to translate the [deep structure](https://en.wikipedia.org/wiki/Deep_structure) of sentences into [logic](https://en.wikipedia.org/wiki/Logic). This failed to produce useful applications, due to the [intractability](https://en.wikipedia.org/wiki/Intractability_(complexity)) of logic[[47\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Intractability-58) and the breadth of commonsense knowledge.[[56\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Breadth_of_commonsense_knowledge-67) Modern statistical techniques include co-occurrence frequencies (how often one word appears near another), "Keyword spotting" (searching for a particular word to retrieve information), [transformer](https://en.wikipedia.org/wiki/Transformer_(machine_learning_model))-based [deep learning](https://en.wikipedia.org/wiki/Deep_learning) (which finds patterns in text), and others.[[75\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-88) They have achieved acceptable accuracy at the page or paragraph level, and, by 2019, could generate coherent text.[[76\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEVincent2019-89)

> 自然语言处理（NLP）[[73]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-86)使机器能够阅读和[理解](https://en.wikipedia.org/wiki/Natural-language_understanding)人类语言。一个足够强大的自然语言处理系统可以实现[自然语言用户界面](https://en.wikipedia.org/wiki/Natural-language_user_interface)和直接从人类书写的来源（如新闻网文本）获取知识。NLP的一些直接应用包括[信息检索](https://en.wikipedia.org/wiki/Information_retrieval)、[问题回答](https://en.wikipedia.org/wiki/Question_answering)和[机器翻译](https://en.wikipedia.org/wiki/Machine_translation)。[[74]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-87)
>
> [符号人工智能](https://en.wikipedia.org/wiki/Symbolic_AI)使用正式的[语法](https://en.wikipedia.org/wiki/Syntax)将句子的[深层结构](https://en.wikipedia.org/wiki/Deep_structure)翻译成[逻辑](https://en.wikipedia.org/wiki/Logic)。由于逻辑[[47]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Intractability-58)的[不可控性](https://en.wikipedia.org/wiki/Intractability_(复杂性))和常识性知识的广泛性，这未能产生有用的应用。[[56]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Breadth_of_commonsense_knowledge-67) 现代统计技术包括共现频率（一个词在另一个词附近出现的频率）、"关键词发现"（搜索一个特定的词来检索信息）、基于[转化器](https://en.wikipedia.org/wiki/Transformer_(machine_learning_model))的[深度学习](https://en.wikipedia.org/wiki/Deep_learning)（在文本中寻找模式），以及其他。[[75\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-88) 它们在页面或段落层面已经达到了可接受的准确性，到2019年，可以生成连贯的文本。

### Perception

*Main articles:* [Machine perception](https://en.wikipedia.org/wiki/Machine_perception)*,* [Computer vision](https://en.wikipedia.org/wiki/Computer_vision)*, and* [Speech recognition](https://en.wikipedia.org/wiki/Speech_recognition)

Machine perception[[77\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-90) is the ability to use input from sensors (such as cameras, microphones, wireless signals, and active [lidar](https://en.wikipedia.org/wiki/Lidar), sonar, radar, and [tactile sensors](https://en.wikipedia.org/wiki/Tactile_sensor)) to deduce aspects of the world. Applications include [speech recognition](https://en.wikipedia.org/wiki/Speech_recognition),[[78\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-91) [facial recognition](https://en.wikipedia.org/wiki/Facial_recognition_system), and [object recognition](https://en.wikipedia.org/wiki/Object_recognition).[[79\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-92) Computer vision is the ability to analyze visual input.[[80\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-93)

> 机器感知[[77\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-90)是利用来自传感器（如照相机、麦克风、无线信号以及主动式[激光雷达](https://en.wikipedia.org/wiki/Lidar)、声纳、雷达和[触觉传感器](https://en.wikipedia.org/wiki/Tactile_sensor)）的输入来推断世界各个方面的能力。应用包括[语音识别](https://en.wikipedia.org/wiki/Speech_recognition)、[[78\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-91)[面部识别](https://en.wikipedia.org/wiki/Facial_recognition_system)和[物体识别](https://en.wikipedia.org/wiki/Object_recognition)。[[79\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-92) 计算机视觉是分析视觉输入的能力。

### Motion and manipulation

Main article: [Robotics](https://en.wikipedia.org/wiki/Robotics)

AI is heavily used in robotics.[[81\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-94) [Localization](https://en.wikipedia.org/wiki/Robot_localization) is how a robot knows its location and [maps](https://en.wikipedia.org/wiki/Robotic_mapping) its environment. When given a small, static, and visible environment, this is easy; however, dynamic environments, such as (in [endoscopy](https://en.wikipedia.org/wiki/Endoscopy)) the interior of a patient's breathing body, pose a greater challenge.[[82\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-95)

[Motion planning](https://en.wikipedia.org/wiki/Motion_planning) is the process of breaking down a movement task into "primitives" such as individual joint movements. Such movement often involves compliant motion, a process where movement requires maintaining physical contact with an object. Robots can learn from experience how to move efficiently despite the presence of friction and gear slippage.[[83\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-96)

> 人工智能在机器人技术中得到了大量的应用。[[81]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-94)[定位](https://en.wikipedia.org/wiki/Robot_localization)是机器人如何知道自己的位置并[绘制](https://en.wikipedia.org/wiki/Robotic_mapping)其环境。当给定一个小的、静态的、可见的环境时，这很容易；然而，动态的环境，如（在[内窥镜](https://en.wikipedia.org/wiki/Endoscopy)中）病人呼吸的身体内部，会带来更大的挑战。[[82]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-95)
>
> [运动规划](https://en.wikipedia.org/wiki/Motion_planning)是将运动任务分解成 "基元 "的过程，如单个关节运动。这种运动往往涉及顺应性运动，在这个过程中，运动需要与物体保持物理接触。机器人可以从经验中学习如何在存在摩擦和齿轮打滑的情况下有效地运动。

### Social intelligence

Main article: [Affective computing](https://en.wikipedia.org/wiki/Affective_computing)

[![img](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Kismet_robot_at_MIT_Museum.jpg/220px-Kismet_robot_at_MIT_Museum.jpg)](https://en.wikipedia.org/wiki/File:Kismet_robot_at_MIT_Museum.jpg)

[Kismet](https://en.wikipedia.org/wiki/Kismet_(robot)), a robot with rudimentary social skills[[84\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEMIT_AIL2014-97)

Affective computing is an interdisciplinary umbrella that comprises systems that recognize, interpret, process or simulate human [feeling, emotion and mood](https://en.wikipedia.org/wiki/Affect_(psychology)).[[85\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-98) For example, some [virtual assistants](https://en.wikipedia.org/wiki/Virtual_assistant) are programmed to speak conversationally or even to banter humorously; it makes them appear more sensitive to the emotional dynamics of human interaction, or to otherwise facilitate [human–computer interaction](https://en.wikipedia.org/wiki/Human–computer_interaction). However, this tends to give naïve users an unrealistic conception of how intelligent existing computer agents actually are.[[86\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEWaddell2018-99) Moderate successes related to affective computing include textual [sentiment analysis](https://en.wikipedia.org/wiki/Sentiment_analysis) and, more recently, [multimodal sentiment analysis](https://en.wikipedia.org/wiki/Multimodal_sentiment_analysis)), wherein AI classifies the affects displayed by a videotaped subject.[[87\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEPoriaCambriaBajpaiHussain2017-100)

> 情感计算是一个跨学科的总括，包括识别、解释、处理或模拟人类[感觉、情感和情绪](https://en.wikipedia.org/wiki/Affect_(心理学))的系统。例如，一些[虚拟助手](https://en.wikipedia.org/wiki/Virtual_assistant)被编程为谈话式，甚至是幽默地戏谑；这使它们看起来对人类互动的情感动态更加敏感，或者以其他方式促进[人机互动](https://en.wikipedia.org/wiki/Human-computer_interaction)。然而，这往往会让天真的用户对现有计算机代理的实际智能程度产生不切实际的概念。[[86]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEWaddell2018-99) 与情感计算相关的适度成功包括文本[情感分析](https://en.wikipedia.org/wiki/Sentiment_analysis)和最近的[多模态情感分析](https://en.wikipedia.org/wiki/Multimodal_sentiment_analysis))，其中人工智能对录像对象所显示的情感进行分类。[[87]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEPoriaCambriaBajpaiHussain2017-100)

### General intelligenc

Main article: [Artificial general intelligence](https://en.wikipedia.org/wiki/Artificial_general_intelligence)

A machine with general intelligence can solve a wide variety of problems with breadth and versatility similar to human intelligence. There are several competing ideas about how to develop artificial general intelligence. [Hans Moravec](https://en.wikipedia.org/wiki/Hans_Moravec) and [Marvin Minsky](https://en.wikipedia.org/wiki/Marvin_Minsky) argue that work in different individual domains can be incorporated into an advanced [multi-agent system](https://en.wikipedia.org/wiki/Multi-agent_system) or [cognitive architecture](https://en.wikipedia.org/wiki/Cognitive_architecture) with general intelligence.[[88\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-101) [Pedro Domingos](https://en.wikipedia.org/wiki/Pedro_Domingos) hopes that there is a conceptually straightforward, but mathematically difficult, "[master algorithm](https://en.wikipedia.org/wiki/The_Master_Algorithm)" that could lead to AGI.[[89\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTEDomingos2015Chpt._9-102) Others believe that [anthropomorphic](https://en.wikipedia.org/wiki/Anthropomorphism) features like an [artificial brain](https://en.wikipedia.org/wiki/Artificial_brain)[[90\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-103) or simulated [child development](https://en.wikipedia.org/wiki/Developmental_robotics)[[n\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-104) will someday reach a critical point where general intelligence [emerges](https://en.wikipedia.org/wiki/Emergence).

> 具有通用智能的机器可以解决各种各样的问题，其广度和通用性与人类智能相似。关于如何发展人工通用智能，有几个相互竞争的观点。[Hans Moravec](https://en.wikipedia.org/wiki/Hans_Moravec)和[Marvin Minsky](https://en.wikipedia.org/wiki/Marvin_Minsky)认为，不同个体领域的工作可以被纳入具有通用智能的高级[多工具系统](https://en.wikipedia.org/wiki/Multi-agent_system)或[认知架构](https://en.wikipedia.org/wiki/Cognitive_architecture)。[[88\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-101) [Pedro Domingos](https://en.wikipedia.org/wiki/Pedro_Domingos)希望有一种概念上简单但数学上困难的"[主算法](https://en.wikipedia.org/wiki/The_Master_Algorithm) "，可以导致AGI。其他人认为，像[人工大脑](https://en.wikipedia.org/wiki/Artificial_brain)[[90\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-103)或模拟[儿童发展](https://en.wikipedia.org/wiki/Developmental_robotics)[[n\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-104)这样的[拟人化](https://en.wikipedia.org/wiki/Anthropomorphism)特征有朝一日会达到一个临界点，通用智能[出现](https://en.wikipedia.org/wiki/Emergence)。

## Tools

### Search and optimization

Main articles: [Search algorithm](https://en.wikipedia.org/wiki/Search_algorithm), [Mathematical optimization](https://en.wikipedia.org/wiki/Mathematical_optimization), and [Evolutionary computation](https://en.wikipedia.org/wiki/Evolutionary_computation)

Many problems in AI can be solved theoretically by intelligently searching through many possible solutions:[[91\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-105) [Reasoning](https://en.wikipedia.org/wiki/Applications_of_artificial_intelligence#Deduction,_reasoning,_problem_solving) can be reduced to performing a search. For example, logical proof can be viewed as searching for a path that leads from [premises](https://en.wikipedia.org/wiki/Premise) to [conclusions](https://en.wikipedia.org/wiki/Logical_consequence), where each step is the application of an [inference rule](https://en.wikipedia.org/wiki/Inference_rule).[[92\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Logic_as_search-106) [Planning](https://en.wikipedia.org/wiki/Automated_planning_and_scheduling) algorithms search through trees of goals and subgoals, attempting to find a path to a target goal, a process called [means-ends analysis](https://en.wikipedia.org/wiki/Means-ends_analysis).[[93\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Planning_as_search-107) [Robotics](https://en.wikipedia.org/wiki/Robotics) algorithms for moving limbs and grasping objects use [local searches](https://en.wikipedia.org/wiki/Local_search_(optimization)) in [configuration space](https://en.wikipedia.org/wiki/Configuration_space_(physics)).[[94\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Configuration_space-108)

Simple exhaustive searches[[95\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Uninformed_search-109) are rarely sufficient for most real-world problems: the [search space](https://en.wikipedia.org/wiki/Search_algorithm) (the number of places to search) quickly grows to [astronomical numbers](https://en.wikipedia.org/wiki/Astronomically_large). The result is a search that is [too slow](https://en.wikipedia.org/wiki/Computation_time) or never completes. The solution, for many problems, is to use "[heuristics](https://en.wikipedia.org/wiki/Heuristics)" or "rules of thumb" that prioritize choices in favor of those more likely to reach a goal and to do so in a shorter number of steps. In some search methodologies, heuristics can also serve to eliminate some choices unlikely to lead to a goal (called "[pruning](https://en.wikipedia.org/wiki/Pruning_(algorithm)) the [search tree](https://en.wikipedia.org/wiki/Search_tree)"). [Heuristics](https://en.wikipedia.org/wiki/Heuristics) supply the program with a "best guess" for the path on which the solution lies.[[96\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Informed_search-110) Heuristics limit the search for solutions into a smaller sample size.[[97\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTETecuci2012-111)

> 人工智能中的许多问题在理论上可以通过智能地搜索许多可能的解决方案来解决：[[91]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-105) [推理](https://en.wikipedia.org/wiki/Applications_of_artificial_intelligence#Deduction,_reasoning,_problem_solving)可以简化为执行搜索。例如，逻辑证明可以被看作是寻找一条从[前提](https://en.wikipedia.org/wiki/Premise)到[结论](https://en.wikipedia.org/wiki/Logical_consequence)的路径，其中每一步都是[推理规则](https://en.wikipedia.org/wiki/Inference_rule)的应用。[[92]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Logic_as_search-106)[规划](https://en.wikipedia.org/wiki/Automated_planning_and_scheduling)算法通过目标和子目标的树进行搜索，试图找到一条通往目标的路径，这个过程称为[手段-结果分析](https://en。 wikipedia.org/wiki/Means-ends_analysis）。[[93\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Planning_as_search-107) [机器人](https://en.wikipedia.org/wiki/Robotics) 移动肢体和抓取物体的算法在[配置空间](https://en.wikipedia.org/wiki/Configuration_space_(物理学))中使用[局部搜索](https://en.wikipedia.org/wiki/Local_search_(优化))。
>
> 简单的穷举搜索[[95]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Uninformed_search-109)很少能满足大多数现实世界的问题：[搜索空间](https://en.wikipedia.org/wiki/Search_algorithm)（要搜索的地方的数量）迅速增长到[天文数字](https://en.wikipedia.org/wiki/Astronomically_large)。其结果是搜索[太慢](https://en.wikipedia.org/wiki/Computation_time)或永远无法完成。对于许多问题，解决方案是使用"[启发式方法](https://en.wikipedia.org/wiki/Heuristics) "或 "经验法则"，优先考虑那些更有可能达到目标的选择，并以更短的步骤完成。在一些搜索方法中，启发式方法也可以用来消除一些不太可能达到目标的选择（称为"[剪枝](https://en.wikipedia.org/wiki/Pruning_(algorithm))[搜索树](https://en.wikipedia.org/wiki/Search_tree)"）。Heuristics为程序提供解决方案所在路径的 "最佳猜测"。[[96/]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Informed_search-110)启发式方法将解决方案的搜索限制在较小的样本量中。[[97/]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-FOOTNOTETecuci2012-111)

### Logic

[Logic](https://en.wikipedia.org/wiki/Logic)[[101\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Logic-115) is used for knowledge representation and problem-solving, but it can be applied to other problems as well. For example, the [satplan](https://en.wikipedia.org/wiki/Satplan) algorithm uses logic for [planning](https://en.wikipedia.org/wiki/Automated_planning_and_scheduling)[[102\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Satplan-116) and [inductive logic programming](https://en.wikipedia.org/wiki/Inductive_logic_programming) is a method for [learning](https://en.wikipedia.org/wiki/Machine_learning).[[103\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Symbolic_learning_techniques-117)

Several different forms of logic are used in AI research. [Propositional logic](https://en.wikipedia.org/wiki/Propositional_logic)[[104\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Propositional_logic-118) involves [truth functions](https://en.wikipedia.org/wiki/Truth_function) such as "or" and "not". [First-order logic](https://en.wikipedia.org/wiki/First-order_logic)[[105\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-First-order_logic-119) adds [quantifiers](https://en.wikipedia.org/wiki/Quantifier_(logic)) and [predicates](https://en.wikipedia.org/wiki/Predicate_(mathematical_logic)) and can express facts about objects, their properties, and their relations with each other. [Fuzzy logic](https://en.wikipedia.org/wiki/Fuzzy_logic) assigns a "degree of truth" (between 0 and 1) to vague statements such as "Alice is old" (or rich, or tall, or hungry), that are too linguistically imprecise to be completely true or false.[[106\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Fuzzy_logic-120) [Default logics](https://en.wikipedia.org/wiki/Default_logic), [non-monotonic logics](https://en.wikipedia.org/wiki/Non-monotonic_logic) and [circumscription](https://en.wikipedia.org/wiki/Circumscription_(logic)) are forms of logic designed to help with default reasoning and the [qualification problem](https://en.wikipedia.org/wiki/Qualification_problem).[[55\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Default_reasoning_and_non-monotonic_logic-66) Several extensions of logic have been designed to handle specific domains of [knowledge](https://en.wikipedia.org/wiki/Knowledge_representation), such as [description logics](https://en.wikipedia.org/wiki/Description_logic);[[51\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Representing_categories_and_relations-62) [situation calculus](https://en.wikipedia.org/wiki/Situation_calculus), [event calculus](https://en.wikipedia.org/wiki/Event_calculus) and [fluent calculus](https://en.wikipedia.org/wiki/Fluent_calculus) (for representing events and time);[[52\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Representing_time-63) [causal calculus](https://en.wikipedia.org/wiki/Causality#Causal_calculus);[[53\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Representing_causation-64) [belief calculus (belief revision)](https://en.wikipedia.org/wiki/Belief_revision); and [modal logics](https://en.wikipedia.org/wiki/Modal_logic).[[54\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-Representing_knowledge_about_knowledge-65) Logics to model contradictory or inconsistent statements arising in multi-agent systems have also been designed, such as [paraconsistent logics](https://en.wikipedia.org/wiki/Paraconsistent_logic).[[107\]](https://en.wikipedia.org/wiki/Artificial_intelligence#cite_note-AbeNakamatsu-121)





---

# Machine learning

**Machine learning** (**ML**) is a field of inquiry devoted to understanding and building methods that 'learn', that is, methods that leverage data to improve performance on some set of tasks.[[1\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-1) It is seen as a part of [artificial intelligence](https://en.wikipedia.org/wiki/Artificial_intelligence). Machine learning algorithms build a model based on sample data, known as [training data](https://en.wikipedia.org/wiki/Training_data), in order to make predictions or decisions without being explicitly programmed to do so.[[2\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-2) Machine learning algorithms are used in a wide variety of applications, such as in medicine, [email filtering](https://en.wikipedia.org/wiki/Email_filtering), [speech recognition](https://en.wikipedia.org/wiki/Speech_recognition), and [computer vision](https://en.wikipedia.org/wiki/Computer_vision), where it is difficult or unfeasible to develop conventional algorithms to perform the needed tasks.[[3\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-tvt-3)

A subset of machine learning is closely related to [computational statistics](https://en.wikipedia.org/wiki/Computational_statistics), which focuses on making predictions using computers, but not all machine learning is statistical learning. The study of [mathematical optimization](https://en.wikipedia.org/wiki/Mathematical_optimization) delivers methods, theory and application domains to the field of machine learning. [Data mining](https://en.wikipedia.org/wiki/Data_mining) is a related field of study, focusing on [exploratory data analysis](https://en.wikipedia.org/wiki/Exploratory_data_analysis) through [unsupervised learning](https://en.wikipedia.org/wiki/Unsupervised_learning).[[5\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-5)[[6\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-6) Some implementations of machine learning use data and [neural networks](https://en.wikipedia.org/wiki/Neural_networks) in a way that mimics the working of a biological brain.[[7\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-7)[[8\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-8) In its application across business problems, machine learning is also referred to as [predictive analytics](https://en.wikipedia.org/wiki/Predictive_analytics).

> **机器学习**（**ML**）是一个致力于理解和建立 "学习"方法的研究领域，也就是说，利用数据来提高某些任务的性能。[[1]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-1)它被视为[人工智能](https://en.wikipedia.org/wiki/Artificial_intelligence)的一部分。机器学习算法基于样本数据（称为[训练数据](https://en.wikipedia.org/wiki/Training_data)）建立模型，以便在没有明确编程的情况下做出预测或决定。[[2\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-2)机器学习算法被广泛用于各种应用，如医学、[电子邮件过滤](https://en.wikipedia.org/wiki/Email_filtering)、[语音识别](https://en.wikipedia.org/wiki/Speech_recognition)和[计算机视觉](https://en.wikipedia.org/wiki/Computer_vision)，在这些应用中，开发传统算法来执行所需的任务是困难或不可行的。[[3\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-tvt-3)
>
> 机器学习的一个子集与[计算统计学](https://en.wikipedia.org/wiki/Computational_statistics)密切相关，它侧重于使用计算机进行预测，但并非所有的机器学习都是统计学习。[数学优化](https://en.wikipedia.org/wiki/Mathematical_optimization)的研究为机器学习领域提供了方法、理论和应用的领域。[数据挖掘](https://en.wikipedia.org/wiki/Data_mining)是一个相关的研究领域，侧重于通过[无监督学习](https://en.wikipedia.org/wiki/Unsupervised_learning)进行[探索性数据分析](https://en.wikipedia.org/wiki/Exploratory_data_analysis)。[[5\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-5)[[6\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-6)机器学习的一些实现使用数据和[神经网络](https://en.wikipedia.org/wiki/Neural_networks)的方式来模仿生物大脑的工作。[[7\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-7)[[8\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-8) 在商业问题的应用中，机器学习也被称为[预测分析](https://en.wikipedia.org/wiki/Predictive_analytics)。

## Overview

Learning algorithms work on the basis that strategies, algorithms, and inferences that worked well in the past are likely to continue working well in the future. These inferences can be obvious, such as "since the sun rose every morning for the last 10,000 days, it will probably rise tomorrow morning as well". They can be nuanced, such as "X% of [families](https://en.wikipedia.org/wiki/Family_(biology)) have geographically separate species with color variants, so there is a Y% chance that undiscovered [black swans](https://en.wikipedia.org/wiki/Black_swan_theory) exist".[[9\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-FOOTNOTEDomingos2015Chapter_6,_Chapter_7-9)

Machine learning programs can perform tasks without being explicitly programmed to do so. It involves computers learning from data provided so that they carry out certain tasks. For simple tasks assigned to computers, it is possible to program algorithms telling the machine how to execute all steps required to solve the problem at hand; on the computer's part, no learning is needed. For more advanced tasks, it can be challenging for a human to manually create the needed algorithms. In practice, it can turn out to be more effective to help the machine develop its own algorithm, rather than having human programmers specify every needed step.[[10\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-Alpaydin2020-10)

The discipline of machine learning employs various approaches to teach computers to accomplish tasks where no fully satisfactory algorithm is available. In cases where vast numbers of potential answers exist, one approach is to label some of the correct answers as valid. This can then be used as training data for the computer to improve the algorithm(s) it uses to determine correct answers. For example, to train a system for the task of digital character recognition, the [MNIST](https://en.wikipedia.org/wiki/MNIST_database) dataset of handwritten digits has often been used.[[10\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-Alpaydin2020-10)

> 学习算法的工作基础是，过去行之有效的策略、算法和推论有可能在未来继续行之有效。这些推论可以是显而易见的，比如 "既然过去一万天里太阳每天早上都会升起，那么它明天早上也可能会升起"。它们可以是细微的，例如 "X%的[科](https://en.wikipedia.org/wiki/Family_(biology))有地理上独立的物种，有颜色变异，所以有Y%的机会存在未发现的[黑天鹅](https://en.wikipedia.org/wiki/Black_swan_theory)"。[[9\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-FOOTNOTEDomingos2015Chapter_6,_Chapter_7-9)
>
> 机器学习程序可以在不被明确编程的情况下执行任务。它涉及到计算机从提供的数据中学习，从而执行某些任务。对于分配给计算机的简单任务，有可能通过编程告诉机器如何执行解决手头问题所需的所有步骤；在计算机方面，不需要学习。对于更高级的任务，由人类手动创建所需的算法可能是一个挑战。在实践中，帮助机器开发自己的算法，而不是让人类程序员指定每一个需要的步骤，可能会变得更加有效。[[10]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-Alpaydin2020-10)
>
> 机器学习这门学科采用了各种方法来教计算机完成没有完全令人满意的算法的任务。在存在大量潜在答案的情况下，一种方法是将一些正确的答案标记为有效。然后，这可以作为计算机的训练数据，以改进它用来确定正确答案的算法。例如，为了训练数字字符识别任务的系统，经常使用[MNIST](https://en.wikipedia.org/wiki/MNIST_database)的手写数字数据集。[10\]

## History and relationship to other fields

The term *machine learning* was coined in 1959 by [Arthur Samuel](https://en.wikipedia.org/wiki/Arthur_Samuel), an [IBM](https://en.wikipedia.org/wiki/IBM) employee and pioneer in the field of [computer gaming](https://en.wikipedia.org/wiki/Computer_gaming) and [artificial intelligence](https://en.wikipedia.org/wiki/Artificial_intelligence).[[11\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-Samuel-11)[[12\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-12) Also the synonym *self-teaching computers* were used in this time period.[[13\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-cyberthreat-13)[[14\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-14)

By the early 1960s an experimental "learning machine" with [punched tape](https://en.wikipedia.org/wiki/Punched_tape) memory, called Cybertron, had been developed by [Raytheon Company](https://en.wikipedia.org/wiki/Raytheon_Company) to analyze sonar signals, electrocardiograms and speech patterns using rudimentary [reinforcement learning](https://en.wikipedia.org/wiki/Reinforcement_learning). It was repetitively "trained" by a human operator/teacher to recognize patterns and equipped with a "[goof](https://en.wikipedia.org/wiki/Goof)" button to cause it to re-evaluate incorrect decisions.[[15\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-15) A representative book on research into machine learning during the 1960s was Nilsson's book on Learning Machines, dealing mostly with machine learning for pattern classification.[[16\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-16) Interest related to pattern recognition continued into the 1970s, as described by Duda and Hart in 1973.[[17\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-17) In 1981 a report was given on using teaching strategies so that a [neural network](https://en.wikipedia.org/wiki/Neural_network) learns to recognize 40 characters (26 letters, 10 digits, and 4 special symbols) from a computer terminal.[[18\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-18)

[Tom M. Mitchell](https://en.wikipedia.org/wiki/Tom_M._Mitchell) provided a widely quoted, more formal definition of the algorithms studied in the machine learning field: "A computer program is said to learn from experience *E* with respect to some class of tasks *T* and performance measure *P* if its performance at tasks in *T*, as measured by *P*, improves with experience *E*."[[19\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-Mitchell-1997-19) This definition of the tasks in which machine learning is concerned offers a fundamentally [operational definition](https://en.wikipedia.org/wiki/Operational_definition) rather than defining the field in cognitive terms. This follows [Alan Turing](https://en.wikipedia.org/wiki/Alan_Turing)'s proposal in his paper "[Computing Machinery and Intelligence](https://en.wikipedia.org/wiki/Computing_Machinery_and_Intelligence)", in which the question "Can machines think?" is replaced with the question "Can machines do what we (as thinking entities) can do?".[[20\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-20)

Modern day machine learning has two objectives, one is to classify data based on models which have been developed, the other purpose is to make predictions for future outcomes based on these models. A hypothetical algorithm specific to classifying data may use computer vision of moles coupled with supervised learning in order to train it to classify the cancerous moles. A machine learning algorithm for stock trading may inform the trader of future potential predictions.[[21\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-21)

> 术语*机器学习*是由[IBM](https://en.wikipedia.org/wiki/Arthur_Samuel)员工、[计算机游戏](https://en.wikipedia.org/wiki/Computer_gaming)和[人工智能](https://en.wikipedia.org/wiki/Artificial_intelligence)领域的先驱阿瑟-塞缪尔在1959年提出的。[[11\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-Samuel-11)[[12\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-12)在这个时期还使用了*自学计算机*的同义词。
>
> 到20世纪60年代初，[雷神公司](https://en.wikipedia.org/wiki/Raytheon_Company)开发了一种带有[打孔磁带](https://en.wikipedia.org/wiki/Punched_tape)存储器的实验性 "学习机"，名为赛博坦，可以使用初级的[强化学习](https://en.wikipedia.org/wiki/Reinforcement_learning)来分析声纳信号、心电图和语音模式。它被人类操作员/教师反复 "训练 "以识别模式，并配备了一个"[goof](https://en.wikipedia.org/wiki/Goof) "按钮，使其重新评估不正确的决定。[[15]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-15) 20世纪60年代机器学习研究的代表性书籍是尼尔森的《学习机器》，主要涉及模式分类的机器学习。[[16]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-16)与模式识别相关的兴趣一直持续到20世纪70年代，正如Duda和Hart在1973年所描述的那样。[[17\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-17) 1981年，一份关于使用教学策略使[神经网络](https://en.wikipedia.org/wiki/Neural_network)学会识别计算机终端的40个字符（26个字母、10个数字和4个特殊符号）的报告。[[18\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-18)
>
> [Tom M. Mitchell](https://en.wikipedia.org/wiki/Tom_M._Mitchell)为机器学习领域研究的算法提供了一个被广泛引用的、更正式的定义。"如果一个计算机程序在*T*中的任务中的表现，正如*P*所衡量的那样，随着经验的增加，*E*得到了改善，那么我们就说它从经验中学习了*E*。"[[19]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-Mitchell-1997-19)这个关于机器学习所涉及的任务的定义从根本上提供了一个[操作定义](https://en.wikipedia.org/wiki/Operational_definition)，而不是从认知的角度定义该领域。这遵循了[Alan Turing](https://en.wikipedia.org/wiki/Alan_Turing)在其论文"[计算机械与智能](https://en.wikipedia.org/wiki/Computing_Machinery_and_Intelligence) "中的提议，其中 "机器能思考吗？"的问题被替换为 "机器能做我们（作为思考实体）能做的事吗？"。[[20\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-20)
>
> 现代的机器学习有两个目标，一个是根据已经建立的模型对数据进行**分类**，另一个目的是根据这些模型对未来的结果进行**预测**。一个专门用于数据分类的假设算法可以使用计算机视觉的痣加上监督学习，以训练它对癌痣进行分类。一个用于股票交易的机器学习算法可以告知交易者未来的潜在预测。[[21/]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-21)
>

### Artificial intelligence

As a scientific endeavor, machine learning grew out of the quest for artificial intelligence. In the early days of AI as an [academic discipline](https://en.wikipedia.org/wiki/Discipline_(academia)), some researchers were interested in having machines learn from data. They attempted to approach the problem with various symbolic methods, as well as what was then termed "[neural networks](https://en.wikipedia.org/wiki/Neural_network)"; these were mostly [perceptrons](https://en.wikipedia.org/wiki/Perceptron) and [other models](https://en.wikipedia.org/wiki/ADALINE) that were later found to be reinventions of the [generalized linear models](https://en.wikipedia.org/wiki/Generalized_linear_model) of statistics.[[24\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-24) [Probabilistic reasoning](https://en.wikipedia.org/wiki/Probabilistic_reasoning) was also employed, especially in [automated medical diagnosis](https://en.wikipedia.org/wiki/Automated_medical_diagnosis).[[25\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-aima-25): 488 

However, an increasing emphasis on the [logical, knowledge-based approach](https://en.wikipedia.org/wiki/GOFAI) caused a rift between AI and machine learning. Probabilistic systems were plagued by theoretical and practical problems of data acquisition and representation.[[25\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-aima-25): 488  By 1980, [expert systems](https://en.wikipedia.org/wiki/Expert_system) had come to dominate AI, and statistics was out of favor.[[26\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-changing-26) Work on symbolic/knowledge-based learning did continue within AI, leading to [inductive logic programming](https://en.wikipedia.org/wiki/Inductive_logic_programming), but the more statistical line of research was now outside the field of AI proper, in [pattern recognition](https://en.wikipedia.org/wiki/Pattern_recognition) and [information retrieval](https://en.wikipedia.org/wiki/Information_retrieval).[[25\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-aima-25): 708–710, 755  Neural networks research had been abandoned by AI and [computer science](https://en.wikipedia.org/wiki/Computer_science) around the same time. This line, too, was continued outside the AI/CS field, as "[connectionism](https://en.wikipedia.org/wiki/Connectionism)", by researchers from other disciplines including [Hopfield](https://en.wikipedia.org/wiki/John_Hopfield), [Rumelhart](https://en.wikipedia.org/wiki/David_Rumelhart) and [Hinton](https://en.wikipedia.org/wiki/Geoff_Hinton). Their main success came in the mid-1980s with the reinvention of [backpropagation](https://en.wikipedia.org/wiki/Backpropagation).[[25\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-aima-25): 25 

Machine learning (ML), reorganized as a separate field, started to flourish in the 1990s. The field changed its goal from achieving artificial intelligence to tackling solvable problems of a practical nature. It shifted focus away from the [symbolic approaches](https://en.wikipedia.org/wiki/Symbolic_artificial_intelligence) it had inherited from AI, and toward methods and models borrowed from statistics, [fuzzy logic](https://en.wikipedia.org/wiki/Fuzzy_logic), and [probability theory](https://en.wikipedia.org/wiki/Probability_theory).[[26\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-changing-26)

The difference between ML and AI is frequently misunderstood. ML learns and predicts based on passive observations, whereas AI implies an agent interacting with the environment to learn and take actions that maximize its chance of successfully achieving its goals.[[27\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-:3-27)

As of 2020, many sources continue to assert that ML remains a subfield of AI.[[28\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-:4-28)[[29\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-islr-29)[[26\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-changing-26) Others have the view that not all ML is part of AI, but only an 'intelligent subset' of ML should be considered AI.[[4\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-bishop2006-4)[[30\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-:5-30)[[31\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-alpaydin-31)

> 作为一项科学工作，机器学习是从对人工智能的追求中发展起来的。在人工智能作为一个[学术学科](https://en.wikipedia.org/wiki/Discipline_(academia))的早期，一些研究人员对让机器从数据中学习感兴趣。他们试图用各种符号方法以及当时被称为"[神经网络](https://en.wikipedia.org/wiki/Neural_network) "的方法来解决这个问题；这些方法主要是[感知器](https://en.wikipedia.org/wiki/Perceptron)和[其他模型](https://en.wikipedia.org/wiki/ADALINE)，后来发现它们是统计学中[广义线性模型](https://en.wikipedia.org/wiki/Generalized_linear_model)的再创造。[[24](https://en.wikipedia.org/wiki/Machine_learning#cite_note-24)[概率推理](https://en.wikipedia.org/wiki/Probabilistic_reasoning)也被采用，尤其在[自动医疗诊断](https://en.wikipedia.org/wiki/Automated_medical_diagnosis)中。 488 
>
> 然而，对[逻辑的、基于知识的方法](https://en.wikipedia.org/wiki/GOFAI)的日益强调造成了人工智能和机器学习之间的裂痕。概率系统被数据获取和表示的理论和实践问题所困扰。[[25]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-aima-25)。 488到了1980年，[专家系统](https://en.wikipedia.org/wiki/Expert_system)已经主导了人工智能，而统计学则不再受欢迎。在人工智能内部，关于符号/知识学习的工作确实在继续，导致了[归纳逻辑编程](https://en.wikipedia.org/wiki/Inductive_logic_programming)，但更多的统计学研究路线现在在人工智能领域之外，在[模式识别](https://en.wikipedia.org/wiki/Pattern_recognition)和[信息检索](https://en.wikipedia.org/wiki/Information_retrieval)。 708-710, 755 神经网络研究在同一时间被人工智能和[计算机科学](https://en.wikipedia.org/wiki/Computer_science)放弃了。这条路线也在人工智能/计算机科学领域之外被其他学科的研究人员，包括[Hopfield](https://en.wikipedia.org/wiki/John_Hopfield)、[Rumelhart](https://en.wikipedia.org/wiki/David_Rumelhart)和[Hinton](https://en.wikipedia.org/wiki/Geoff_Hinton)，作为"[连接主义](https://en.wikipedia.org/wiki/Connectionism) "继续下去。他们的主要成功出现在20世纪80年代中期，重新发明了[反向传播](https://en.wikipedia.org/wiki/Backpropagation)。[[25]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-aima-25)。 25 
>
> 机器学习（ML），作为一个独立的领域被重新组织，在20世纪90年代开始蓬勃发展。该领域改变了其目标，从实现人工智能到解决实际性质的可解决的问题。它将重点从它从人工智能继承的[符号方法](https://en.wikipedia.org/wiki/Symbolic_artificial_intelligence)转移到从统计学、[模糊逻辑](https://en.wikipedia.org/wiki/Fuzzy_logic)和[概率论](https://en.wikipedia.org/wiki/Probability_theory)借用的方法和模型。[[26]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-changing-26)
>
> ML和AI之间的区别经常被误解。ML基于被动的观察进行学习和预测，而人工智能则意味着代理人与环境互动，以学习和采取行动，使其成功实现其目标的机会最大化。[[27\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-:3-27)
>
> 截至2020年，许多消息来源继续断言，ML仍然是人工智能的一个子领域。[[28\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-:4-28)[[29\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-islr-29)[[26\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-changing-26)其他人认为，并非所有ML都是人工智能的一部分，但只有ML的 "智能子集 "应被视为人工智能。
>

### Date mining

Machine learning and [data mining](https://en.wikipedia.org/wiki/Data_mining) often employ the same methods and overlap significantly, but while machine learning focuses on prediction, based on *known* properties learned from the training data, [data mining](https://en.wikipedia.org/wiki/Data_mining) focuses on the [discovery](https://en.wikipedia.org/wiki/Discovery_(observation)) of (previously) *unknown* properties in the data (this is the analysis step of [knowledge discovery](https://en.wikipedia.org/wiki/Knowledge_discovery) in databases). Data mining uses many machine learning methods, but with different goals; on the other hand, machine learning also employs data mining methods as "unsupervised learning" or as a preprocessing step to improve learner accuracy. Much of the confusion between these two research communities (which do often have separate conferences and separate journals, [ECML PKDD](https://en.wikipedia.org/wiki/ECML_PKDD) being a major exception) comes from the basic assumptions they work with: in machine learning, performance is usually evaluated with respect to the ability to *reproduce known* knowledge, while in knowledge discovery and data mining (KDD) the key task is the discovery of previously *unknown* knowledge. Evaluated with respect to known knowledge, an uninformed (unsupervised) method will easily be outperformed by other supervised methods, while in a typical KDD task, supervised methods cannot be used due to the unavailability of training data.

> 机器学习和[数据挖掘](https://en.wikipedia.org/wiki/Data_mining)经常采用相同的方法，并且有很大的重叠，但机器学习侧重于预测，基于从训练数据中学习到的*已知属性，而[数据挖掘](https://en.wikipedia.org/wiki/Data_mining)则侧重于[发现](https://en.wikipedia.org/wiki/Discovery_(observation))数据中（以前）*未知的属性（这就是数据库中[知识发现](https://en.wikipedia.org/wiki/Knowledge_discovery)的分析步骤）。数据挖掘使用了许多机器学习方法，但目标不同；另一方面，机器学习也采用数据挖掘方法作为 "无监督学习 "或作为提高学习者准确性的预处理步骤。这两个研究团体（它们经常有独立的会议和独立的期刊，[ECML PKDD](https://en.wikipedia.org/wiki/ECML_PKDD)是一个主要的例外）之间的大部分混淆来自于它们工作的基本假设：在机器学习中，性能通常是以*产生已知*知识的能力来评估的，而在知识发现和数据挖掘（KDD）中，关键任务是发现以前*未知*的知识。就已知知识而言，一个无信息（无监督）的方法很容易被其他有监督的方法所超越，而在一个典型的KDD任务中，由于无法获得训练数据，有监督的方法无法使用。

### Optimization

Machine learning also has intimate ties to [optimization](https://en.wikipedia.org/wiki/Mathematical_optimization): many learning problems are formulated as minimization of some [loss function](https://en.wikipedia.org/wiki/Loss_function) on a training set of examples. Loss functions express the discrepancy between the predictions of the model being trained and the actual problem instances (for example, in classification, one wants to assign a label to instances, and models are trained to correctly predict the pre-assigned labels of a set of examples).[[32\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-32)

> 机器学习也与[优化](https://en.wikipedia.org/wiki/Mathematical_optimization)有着密切的联系：许多学习问题被表述为在训练的实例集上最小化一些[损失函数](https://en.wikipedia.org/wiki/Loss_function)。损失函数表示被训练的模型的预测和实际问题实例之间的差异（例如，在分类中，人们希望给实例分配一个标签，模型被训练成正确预测一组实例的预分配标签）。[[32]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-32)

### Generalization

The difference between optimization and machine learning arises from the goal of generalization: while optimization algorithms can minimize the loss on a training set, machine learning is concerned with minimizing the loss on unseen samples. Characterizing the generalization of various learning algorithms is an active topic of current research, especially for [deep learning](https://en.wikipedia.org/wiki/Deep_learning) algorithms.

> 优化和机器学习的区别来自于泛化的目标：优化算法可以最小化训练集上的损失，而机器学习关注的是最小化未见过的样本上的损失。表征各种学习算法的泛化是当前研究的一个活跃话题，特别是对于[深度学习](https://en.wikipedia.org/wiki/Deep_learning)算法。
>

### Statistics

Machine learning and [statistics](https://en.wikipedia.org/wiki/Statistics) are closely related fields in terms of methods, but distinct in their principal goal: statistics draws population [inferences](https://en.wikipedia.org/wiki/Statistical_inference) from a [sample](https://en.wikipedia.org/wiki/Sample_(statistics)), while machine learning finds generalizable predictive patterns.[[33\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-33) According to [Michael I. Jordan](https://en.wikipedia.org/wiki/Michael_I._Jordan), the ideas of machine learning, from methodological principles to theoretical tools, have had a long pre-history in statistics.[[34\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-mi_jordan_ama-34) He also suggested the term [data science](https://en.wikipedia.org/wiki/Data_science) as a placeholder to call the overall field.[[34\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-mi_jordan_ama-34)

[Leo Breiman](https://en.wikipedia.org/wiki/Leo_Breiman) distinguished two statistical modeling paradigms: data model and algorithmic model,[[28\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-:4-28) wherein "algorithmic model" means more or less the machine learning algorithms like [Random forest](https://en.wikipedia.org/wiki/Random_forest).

Some statisticians have adopted methods from machine learning, leading to a combined field that they call *statistical learning*.[[29\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-islr-29)

> 机器学习和[统计学](https://en.wikipedia.org/wiki/Statistics)在方法上是密切相关的领域，但在主要目标上是不同的：统计学从[样本](https://en.wikipedia.org/wiki/Sample_(statistics))中得出群体[推论](https://en.wikipedia.org/wiki/Statistical_inference)，而机器学习则找到可概括的预测模式。[[33\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-33) 根据[Michael I。Jordan](https://en.wikipedia.org/wiki/Michael_I._Jordan)认为，机器学习的思想，从方法论原则到理论工具，在统计学中都有很长的前史。[[34\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-mi_jordan_ama-34)他还建议用[数据科学](https://en.wikipedia.org/wiki/Data_science)这个词来称呼整个领域。[[34\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-mi_jordan_ama-34)
>
> [Leo Breiman](https://en.wikipedia.org/wiki/Leo_Breiman)区分了两种统计建模范式：数据模型和算法模型，[[28]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-:4-28)其中 "算法模型 "或多或少意味着像[随机森林](https://en.wikipedia.org/wiki/Random_forest)这样的机器学习算法。
>
> 一些统计学家采用了机器学习的方法，形成了一个综合的领域，他们称之为*统计学习*。[[29]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-islr-29)
>

## Theory

A core objective of a learner is to generalize from its experience.[[4\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-bishop2006-4)[[30\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-:5-30) Generalization in this context is the ability of a learning machine to perform accurately on new, unseen examples/tasks after having experienced a learning data set. The training examples come from some generally unknown probability distribution (considered representative of the space of occurrences) and the learner has to build a general model about this space that enables it to produce sufficiently accurate predictions in new cases.

The computational analysis of machine learning algorithms and their performance is a branch of [theoretical computer science](https://en.wikipedia.org/wiki/Theoretical_computer_science) known as [computational learning theory](https://en.wikipedia.org/wiki/Computational_learning_theory) via the [Probably Approximately Correct Learning](https://en.wikipedia.org/wiki/Probably_approximately_correct_learning) (PAC) model. Because training sets are finite and the future is uncertain, learning theory usually does not yield guarantees of the performance of algorithms. Instead, probabilistic bounds on the performance are quite common. The [bias–variance decomposition](https://en.wikipedia.org/wiki/Bias–variance_decomposition) is one way to quantify generalization [error](https://en.wikipedia.org/wiki/Errors_and_residuals).

For the best performance in the context of generalization, the complexity of the hypothesis should match the complexity of the function underlying the data. If the hypothesis is less complex than the function, then the model has under fitted the data. If the complexity of the model is increased in response, then the training error decreases. But if the hypothesis is too complex, then the model is subject to [overfitting](https://en.wikipedia.org/wiki/Overfitting) and generalization will be poorer.[[31\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-alpaydin-31)

In addition to performance bounds, learning theorists study the time complexity and feasibility of learning. In computational learning theory, a computation is considered feasible if it can be done in [polynomial time](https://en.wikipedia.org/wiki/Time_complexity#Polynomial_time). There are two kinds of [time complexity](https://en.wikipedia.org/wiki/Time_complexity) results: Positive results show that a certain class of functions can be learned in polynomial time. Negative results show that certain classes cannot be learned in polynomial time.

> 学习者的一个核心目标是从它的经验中进行概括。[[4\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-bishop2006-4)[[30\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-:5-30)这里的概括是指学习机在经历了一个学习数据集之后，对新的、未曾见过的例子/任务准确执行的能力。训练实例来自一些普遍未知的概率分布（被认为是发生空间的代表），学习者必须建立一个关于这个空间的一般模型，使其能够在新的情况下产生足够准确的预测。
>
> 对机器学习算法及其性能的计算分析是[理论计算机科学](https://en.wikipedia.org/wiki/Theoretical_computer_science)的一个分支，通过[大概正确的学习](https://en.wikipedia.org/wiki/Probably_approximately_correct_learning)(PAC)模型被称为[计算学习理论](https://en.wikipedia.org/wiki/Computational_learning_theory)。由于训练集是有限的，而且未来是不确定的，学习理论通常不能产生对算法性能的保证。相反，关于性能的概率界线是很常见的。[偏置-变异分解](https://en.wikipedia.org/wiki/Bias-variance_decomposition)是量化概括[误差](https://en.wikipedia.org/wiki/Errors_and_residuals)的一种方法。
>
> 对于泛化的最佳性能，假设的复杂性应该与数据基础函数的复杂性相匹配。如果假设的复杂程度低于函数的复杂程度，那么模型对数据的拟合不足。如果模型的复杂性相应地增加，那么训练误差就会减少。但如果假设太复杂，那么模型就会出现[过拟合](https://en.wikipedia.org/wiki/Overfitting)，泛化效果会更差。[[31]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-alpaydin-31)
>
> 除了性能界限之外，学习理论家们还研究学习的时间复杂性和可行性。在计算学习理论中，如果一个计算可以在[多项式时间](https://en.wikipedia.org/wiki/Time_complexity#Polynomial_time)内完成，就被认为是可行的。有两种[时间复杂性](https://en.wikipedia.org/wiki/Time_complexity)的结果。正面结果表明，某类函数可以在多项式时间内学会。消极的结果表明，某些类别的函数不能在多项式时间内学会。

### Approaches

Machine learning approaches are traditionally divided into three broad categories, which correspond to learning paradigms, depending on the nature of the "signal" or "feedback" available to the learning system:

- [Supervised learning](https://en.wikipedia.org/wiki/Supervised_learning): The computer is presented with example inputs and their desired outputs, given by a "teacher", and the goal is to learn a general rule that [maps](https://en.wikipedia.org/wiki/Map_(mathematics)) inputs to outputs.
- [Unsupervised learning](https://en.wikipedia.org/wiki/Unsupervised_learning): No labels are given to the learning algorithm, leaving it on its own to find structure in its input. Unsupervised learning can be a goal in itself (discovering hidden patterns in data) or a means towards an end ([feature learning](https://en.wikipedia.org/wiki/Feature_learning)).
- [Reinforcement learning](https://en.wikipedia.org/wiki/Reinforcement_learning): A computer program interacts with a dynamic environment in which it must perform a certain goal (such as [driving a vehicle](https://en.wikipedia.org/wiki/Autonomous_car) or playing a game against an opponent). As it navigates its problem space, the program is provided feedback that's analogous to rewards, which it tries to maximize.[[4\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-bishop2006-4)

> 机器学习方法在传统上被分为三大类，它们与学习范式相对应，取决于学习系统可用的 "信号 "或 "反馈 "的性质。
>
> - [监督学习](https://en.wikipedia.org/wiki/Supervised_learning)。计算机收到由 "老师 "提供的输入和期望输出的例子，目标是学习一个[映射](https://en.wikipedia.org/wiki/Map_(mathematics))输入到输出的一般规则。
> - [无监督学习](https://en.wikipedia.org/wiki/Unsupervised_learning)。没有给学习算法任何标签，让它自己在输入中寻找结构。无监督学习本身可以是一个目标（发现数据中的隐藏模式），也可以是达到目的的一种手段（[特征学习](https://en.wikipedia.org/wiki/Feature_learning)）。
> - [强化学习](https://en.wikipedia.org/wiki/Reinforcement_learning)。一个计算机程序与一个动态环境互动，在这个环境中它必须完成某个目标（例如[驾驶车辆](https://en.wikipedia.org/wiki/Autonomous_car)或与对手进行游戏）。当它在问题空间中导航时，程序会得到类似于奖励的反馈，它试图使奖励最大化。[[4]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-bishop2006-4)
>

### Supervised learning

Supervised learning algorithms build a mathematical model of a set of data that contains both the inputs and the desired outputs.[[35\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-35) The data is known as [training data](https://en.wikipedia.org/wiki/Training_data), and consists of a set of training examples. Each training example has one or more inputs and the desired output, also known as a supervisory signal. In the mathematical model, each training example is represented by an [array](https://en.wikipedia.org/wiki/Array_data_structure) or vector, sometimes called a feature vector, and the training data is represented by a [matrix](https://en.wikipedia.org/wiki/Matrix_(mathematics)). Through [iterative optimization](https://en.wikipedia.org/wiki/Mathematical_optimization#Computational_optimization_techniques) of an [objective function](https://en.wikipedia.org/wiki/Loss_function), supervised learning algorithms learn a function that can be used to predict the output associated with new inputs.[[36\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-36) An optimal function will allow the algorithm to correctly determine the output for inputs that were not a part of the training data. An algorithm that improves the accuracy of its outputs or predictions over time is said to have learned to perform that task.[[19\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-Mitchell-1997-19)

Types of supervised-learning algorithms include [active learning](https://en.wikipedia.org/wiki/Active_learning_(machine_learning)), [classification](https://en.wikipedia.org/wiki/Statistical_classification) and [regression](https://en.wikipedia.org/wiki/Regression_analysis).[[27\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-:3-27) Classification algorithms are used when the outputs are restricted to a limited set of values, and regression algorithms are used when the outputs may have any numerical value within a range. As an example, for a classification algorithm that filters emails, the input would be an incoming email, and the output would be the name of the folder in which to file the email.

[Similarity learning](https://en.wikipedia.org/wiki/Similarity_learning) is an area of supervised machine learning closely related to regression and classification, but the goal is to learn from examples using a similarity function that measures how similar or related two objects are. It has applications in [ranking](https://en.wikipedia.org/wiki/Ranking), [recommendation systems](https://en.wikipedia.org/wiki/Recommender_system), visual identity tracking, face verification, and speaker verification.

> 监督学习算法为一组数据建立数学模型，这组数据包含输入和期望输出。[[35]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-35)这些数据被称为[训练数据](https://en.wikipedia.org/wiki/Training_data)，由一组训练实例组成。每个训练实例都有一个或多个输入和期望输出，也被称为监督信号。在数学模型中，每个训练实例用一个[数组](https://en.wikipedia.org/wiki/Array_data_structure)或向量表示，有时也称为特征向量，而训练数据则用一个[矩阵](https://en.wikipedia.org/wiki/Matrix_(数学))表示。通过对[目标函数](https://en.wikipedia.org/wiki/Loss_function)的[迭代优化](https://en.wikipedia.org/wiki/Mathematical_optimization#Computational_optimization_techniques)，监督学习算法学会了一个可以用来预测与新输入相关的输出的函数。[[36]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-36)一个最佳函数将允许算法正确确定那些不属于训练数据的输入的输出。随着时间的推移，一个能提高其输出或预测准确性的算法被称为已经学会了执行该任务。[[19]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-Mitchell-1997-19)
>
> 监督学习算法的类型包括[主动学习](https://en.wikipedia.org/wiki/Active_learning_(machine_learning))、[分类](https://en.wikipedia.org/wiki/Statistical_classification)和[回归](https://en.wikipedia.org/wiki/Regression_analysis)。[[27]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-:3-27)分类算法用于输出被限制在一组有限的值中，而回归算法用于输出可以在一定范围内有任何数值。举例来说，对于一个过滤电子邮件的分类算法来说，输入是一封收到的电子邮件，而输出则是将该电子邮件归档的文件夹名称。
>
> [相似性学习](https://en.wikipedia.org/wiki/Similarity_learning)是监督式机器学习的一个领域，与回归和分类密切相关，但其目标是使用衡量两个对象的相似性或相关程度的相似性函数从实例中学习。它在[排名](https://en.wikipedia.org/wiki/Ranking)、[推荐系统](https://en.wikipedia.org/wiki/Recommender_system)、视觉身份追踪、人脸验证和说话人验证中都有应用。

## Unsupervised learning

Unsupervised learning algorithms take a set of data that contains only inputs, and find structure in the data, like grouping or clustering of data points. The algorithms, therefore, learn from test data that has not been labeled, classified or categorized. Instead of responding to feedback, unsupervised learning algorithms identify commonalities in the data and react based on the presence or absence of such commonalities in each new piece of data. A central application of unsupervised learning is in the field of [density estimation](https://en.wikipedia.org/wiki/Density_estimation) in [statistics](https://en.wikipedia.org/wiki/Statistics), such as finding the [probability density function](https://en.wikipedia.org/wiki/Probability_density_function).[[37\]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-JordanBishop2004-37) Though unsupervised learning encompasses other domains involving summarizing and explaining data features.

Cluster analysis is the assignment of a set of observations into subsets (called *clusters*) so that observations within the same cluster are similar according to one or more predesignated criteria, while observations drawn from different clusters are dissimilar. Different clustering techniques make different assumptions on the structure of the data, often defined by some *similarity metric* and evaluated, for example, by *internal compactness*, or the similarity between members of the same cluster, and *separation*, the difference between clusters. Other methods are based on *estimated density* and *graph connectivity*.

> 无监督学习算法采取一组只包含输入的数据，并在数据中寻找结构，如数据点的分组或聚类。因此，这些算法从未被标记、分类或归类的测试数据中学习。无监督学习算法不是对反馈作出反应，而是识别数据中的共性，并根据每个新数据中是否存在这种共性作出反应。无监督学习的一个核心应用是在[统计学](https://en.wikipedia.org/wiki/Statistics)中的[密度估计](https://en.wikipedia.org/wiki/Density_estimation)领域，如寻找[概率密度函数](https://en.wikipedia.org/wiki/Probability_density_function)。[[37]](https://en.wikipedia.org/wiki/Machine_learning#cite_note-JordanBishop2004-37)尽管无监督学习包含了涉及总结和解释数据特征的其他领域。
>
> 聚类分析是将一组观察值分配到子集（称为*聚类*）中，以便根据一个或多个预先指定的标准，同一聚类中的观察值是相似的，而来自不同聚类的观察值是不相似的。不同的聚类技术对数据的结构做了不同的假设，通常由一些*相似性指标*来定义，例如，通过*内部紧凑性*，或同一聚类成员之间的相似性，以及*分离*，聚类之间的差异来评估。其他方法是基于*估计的密度*和*图形连接*。
>



---

# Metasyntax

In [logic](https://en.wikipedia.org/wiki/Logic) and [computer science](https://en.wikipedia.org/wiki/Computer_science), a **metasyntax** describes the allowable structure and composition of phrases and sentences of a [metalanguage](https://en.wikipedia.org/wiki/Metalanguage), which is used to describe either a [natural language](https://en.wikipedia.org/wiki/Natural_language) or a computer [programming language](https://en.wikipedia.org/wiki/Programming_language).[[1\]](https://en.wikipedia.org/wiki/Metasyntax#cite_note-1) Some of the widely used formal metalanguages for computer languages are [Backus–Naur form](https://en.wikipedia.org/wiki/Backus–Naur_form) (BNF), [extended Backus–Naur form](https://en.wikipedia.org/wiki/Extended_Backus–Naur_form) (EBNF), [Wirth syntax notation](https://en.wikipedia.org/wiki/Wirth_syntax_notation) (WSN), and [augmented Backus–Naur form](https://en.wikipedia.org/wiki/Augmented_Backus–Naur_form) (ABNF).

> 在[逻辑学](https://en.wikipedia.org/wiki/Logic)和[计算机科学](https://en.wikipedia.org/wiki/Computer_science)中，**元语法**描述了被用来描述[自然语言](https://en.wikipedia.org/wiki/Natural_language)或计算机[编程语言](https://en.wikipedia.org/wiki/Programming_language)的[元语言](https://en.wikipedia.org/wiki/Metalanguage)的可允许的结构和短语和句子的组成。一些广泛使用的计算机语言的形式元语言是[Backus-Naur形式](https://en.wikipedia.org/wiki/Backus-Naur_form)（BNF），[扩展的Backus-Naur形式](https://en.wikipedia.org/wiki/Extended_Backus-Naur_form)（EBNF），[Wirth syntax notation](https://en.wikipedia.org/wiki/Wirth_syntax_notation)（WSN），以及[增强的Backus-Naur形式](https://en.wikipedia.org/wiki/Augmented_Backus-Naur_form) （ABNF）。

These metalanguages have their own metasyntax each composed of [terminal symbols](https://en.wikipedia.org/wiki/Terminal_symbol), [nonterminal symbols](https://en.wikipedia.org/wiki/Nonterminal_symbol), and *metasymbols*. A terminal symbol, such as a word or a token, is a stand-alone structure in a language being defined. A nonterminal symbol represents a [syntactic](https://en.wikipedia.org/wiki/Syntactic) category, which defines one or more valid phrasal or sentence structure consisted of an n-element subset. Metasymbols provide syntactic information for denotational purposes in a given metasyntax. Terminals, nonterminals, and metasymbols do not apply across all metalanguages.

> 这些元语言有自己的元语法，每一种都由[终端符号](https://en.wikipedia.org/wiki/Terminal_symbol)、[非终端符号](https://en.wikipedia.org/wiki/Nonterminal_symbol)和*元符号*组成。一个终端符号，如一个词或一个标记，是被定义的语言中一个独立的结构。一个非终端符号代表一个[句法](https://en.wikipedia.org/wiki/Syntactic)类别，它定义了一个或多个由n个元素子集组成的有效短语或句子结构。元符号在特定的元语法中为指称目的提供句法信息。终端、非终端和元符号并不适用于所有元语言。

Typically, the metalanguage for token-level languages (formally called "[regular languages](https://en.wikipedia.org/wiki/Regular_language)") does not have nonterminals because nesting is not an issue in these regular languages. English, as a metalanguage for describing certain languages, does not contain metasymbols since all explanation could be done using English expression. There are only certain formal metalanguages used for describing recursive languages (formally called [context-free languages](https://en.wikipedia.org/wiki/Context-free_language)) that have terminals, nonterminals, and metasymbols in their metasyntax.

> 通常，标记级语言（正式名称为"[常规语言](https://en.wikipedia.org/wiki/Regular_language)"）的元语言没有非终端符，因为嵌套在这些常规语言中不是一个问题。英语，作为描述某些语言的元语言，不包含元符号，因为所有的解释都可以用英语表达。只有某些用于描述递归语言的正式元语言（正式称为[无语境语言](https://en.wikipedia.org/wiki/Context-free_language)）在其元语法中具有终端、非终端和元符号。

## Element of metesyntax

- Terminals: a stand-alone syntactic structure. Terminals could be denoted by double quoting the name of the terminals.

  e.g. `"else"`, `"if"`, `"then"`, `while`

- Nonterminals: a symbolic representation defining a set of allowable syntactic structures that is composed of a subset of elements. Nonterminals could be denoted by angle bracketing the name of the nonterminals.

  e.g. `<int>`, `<char>`, `<boolean>`

- Metasymbol: a symbolic representation denoting syntactic information.

  e.g. `:=`, `|`, `{}`, `()`, `[]`, `*`

> - 终端符：一个独立的句法结构。终端符可以通过双引号来表示终端符的名称。
>
>   例如：`"else"`, `"if"`, `"then"`, `"while"`。
>
> - 非终端符：一个符号表示法，定义了一组可允许的句法结构，由一个元素子集组成。非终结符可以用角括号表示非终结符的名称。
>
>   例如：`<int>`, `<char>`, `<boolean>`。
>
> - 元符号：表示句法信息的符号代表。
>
>   例如：`:=`, `|`, `{}`, `()`, `[]`, `*`。

## Method of phrase termination

- Juxtaposition: e.g. `A B`
- Alternation: e.g. `A|B`
- Repetition: e.g. `{A B}`
- Optional phrase: e.g. `[A B]`
- Grouping: e.g. `(A|B)`

> - 并列：如：`A B`
> - 备选：如：`A|B`
> - 重复：例如：`{A B}`
> - 可选短语：如：`[A B]`
> - 分组：如：`(A|B)`

## Specific metasyntax conventions

### The standard convention

- '[Backus–Naur form](https://en.wikipedia.org/wiki/Backus–Naur_form)' denotes [nonterminal symbols](https://en.wikipedia.org/wiki/Nonterminal_symbol) by angle bracketing the name of the [syntactic category](https://en.wikipedia.org/wiki/Syntactic_category), while it denotes [terminal symbols](https://en.wikipedia.org/wiki/Terminal_symbol) by double quoting the terminal words. Terminals can never appear on the left-hand side of the metasymbol `::=` in a [derivation](https://en.wikipedia.org/wiki/Parse_tree) rule. The body of the definition on the right-hand side may be composed with several alternative forms with each alternative syntactic construct being separated by the metasymbol `|`. Each of these alternative construct may be either terminal or nonterminal.

> '[Backus-Naur形式](https://en.wikipedia.org/wiki/Backus-Naur_form)'通过角括号表示[非终端符号](https://en.wikipedia.org/wiki/Nonterminal_symbol)，而它通过双引号扩住终端词表示[终端符号](https://en.wikipedia.org/wiki/Terminal_symbol)。在[派生](https://en.wikipedia.org/wiki/Parse_tree)（语法分析树）规则中，终端词永远不能出现在元符号`::=`的左侧。右侧的定义主体可以由几个备选形式组成，每个备选的句法结构都由元符号`|`分隔。每个备选结构都可以是终端符或非终端符。

- '[Extended Backus–Naur form](https://en.wikipedia.org/wiki/Extended_Backus–Naur_form)' uses all facilities in BNF and introduces two more metasymbols for additional features. One of these two new features is applied to denote an optional phrase in a statement by square bracketing the optional phrase. The second feature is applied to denote a phrase that is to be repeated zero or more times by curly bracketing the phrase.

> '[Extended Backus-Naur form](https://en.wikipedia.org/wiki/Extended_Backus-Naur_form)'使用了BNF中的所有功能，并为额外的特征引入了两个元符号。这两个新特征中的一个被用来表示语句中的可选短语，即用方括号表示可选短语。第二个特征用于表示一个重复了0次或更多次的短语，用大括号括住该短语。

- '[Wirth syntax notation](https://en.wikipedia.org/wiki/Wirth_syntax_notation)' uses all facilities in EBNF except that the nonterminals are not necessarily angle bracketed but is always defined on the right-hand side of `=` in its production rule. It also does not require every nonterminal to be explicitly defined. Nonterminals such as `<text>` and `<opt-whitespace>` are implicitly defined as ASCII-character and optional white space respectively.

> '[Wirth syntax notation](https://en.wikipedia.org/wiki/Wirth_syntax_notation)'使用EBNF中的所有功能，除了非终端不一定要用角括号，但在其产生规则中总是定义在`=`的右侧。它也不要求每个非终端符都被明确定义。诸如`<text>`和`<opt-whitespace>`这样的非终端符分别被隐含地定义为ASCII字符和可选的空格。

- '[Augmented Backus–Naur form](https://en.wikipedia.org/wiki/Augmented_Backus–Naur_form)' denotes nonterminal symbols by starting a one-word-name with an alphabet as the name of the syntactic category. Angle brackets are not required. Terminal symbols are either denoted by double quoted words or denoted by the following numeric structure: a `%`, followed by `b` or `x` or `d`, followed by a numeric value or a *concatenation of numeric values* separated by `.`. Metasymbol `-` is placed between two numeric values to denote *value range*. As that of BNF, the terminals of ABNF never occurs on the left-hand-side of the metasymbol `=` in the derivation rule. Metasymbol `/` denotes *alternations*. White space is used to separate elements in the body of the definition. The metasyntax for *repetition* in ABNF has several forms. A `*` preceding an element denotes the element to be repeated zero or more times. Numeric value n1 followed by `*` followed by numeric value n2 followed by an element denotes the element to be repeated at least n1 times and at most n2 times. A single numeric value n preceding an element denotes the element to be repeated n times. *Comments* may be express after metasymbol `;`. As in EBNF, square bracketing a phrase denotes the phrase to be *optional*.

> '[Augmented Backus-Naur form](https://en.wikipedia.org/wiki/Augmented_Backus-Naur_form)'通过以一个字母作为句法类别的名称开始一个单字名来表示非终端符号。角括号是不需要的。终端符号要么用双引号表示，要么用以下数字结构表示：一个`%`，后面是`b`或`x`或`d`，后面是一个数字值或一个由`.`分隔的*数字值的连词*。元符号`-`放在两个数值之间，表示*数值范围*。和BNF一样，ABNF的终端永远不会出现在派生规则中的元符号`=`的左侧。元符号`/`表示*备选项*。空格用于分隔定义主体中的元素。ABNF中的*重复*的元语法有几种形式。一个元素前面的`*`表示该元素将被重复零次或多次。数字值n1后面是`*`，后面是数字值n2，后面是一个元素，表示这个元素至少要重复n1次，最多重复n2次。一个元素前的单一数值n表示该元素将被重复n次。*注释*可以在元符号`;`之后表达。在EBNF中，一个短语的方括号表示该短语是*可选择的*。

### Variations

The metasyntax convention of these formal metalanguages are not yet formalized. Many metasyntactic variations or extensions exist in the reference manual of various computer programming languages. One variation to the standard convention for denoting nonterminals and terminals is to remove metasymbols such as angle brackets and quotations and apply *font types* to the intended words. In [Ada](https://en.wikipedia.org/wiki/Ada_(programming_language)), for example, syntactic categories are denoted by applying lower case [sans-serif font](https://en.wikipedia.org/wiki/Sans-serif_font) on the intended words or symbols. All terminal words or symbols, in Ada, consist of characters of code position between 16#20# and 16#7E# (inclusive). The definition for each character set is referred to the International Standard described by [ISO/IEC](https://en.wikipedia.org/wiki/ISO/IEC) 10646:2003. In [C](https://en.wikipedia.org/wiki/C_(programming_language)) and [Java](https://en.wikipedia.org/wiki/Java_(programming_language)), syntactic categories are denoted using [italic font](https://en.wikipedia.org/wiki/Italic_font) while terminal symbols are denoted by [gothic](https://en.wikipedia.org/wiki/Sans-serif) font. In [J](https://en.wikipedia.org/wiki/J_(programming_language)), its metasyntax does not apply metasymbols to describe J's syntax at all. Rather, all syntactic explanations are done in a metalanguage very similar to English called Dictionary, which is uniquely documented for J.

> 这些形式化的元语言的元语法惯例还没有正式确定。在各种计算机编程语言的参考手册中存在许多元语法的变化或扩展。表示非终端和终端的标准惯例的一个变体是删除元符号，如角括号和引号，并将*字体类型*应用于预定的词语。例如，在[Ada](https://en.wikipedia.org/wiki/Ada_(programming_language))中，句法类别的表示方法是将小写的[sans-serif font](https://en.wikipedia.org/wiki/Sans-serif_font)应用于预期的单词或符号。在Ada中，所有的终端词或符号都由代码位置在16#20#和16#7E#（包括）之间的字符组成。每个字符集的定义都参考了[ISO/IEC](https://en.wikipedia.org/wiki/ISO/IEC) 10646:2003所描述的国际标准。在[C](https://en.wikipedia.org/wiki/C_(programming_language))和[Java](https://en.wikipedia.org/wiki/Java_(programming_language))中，句法类别用[斜体](https://en.wikipedia.org/wiki/Italic_font)表示，而终端符号则用[哥特式](https://en.wikipedia.org/wiki/Sans-serif)字体表示。在[J](https://en.wikipedia.org/wiki/J_(programming_language))中，其元语法完全没有应用元符号来描述J的句法。相反，所有的句法解释都是在一种与英语非常相似的元语言中完成的，这种语言被称为Dictionary，是J独有的文档。

### Advantage of extension

The purpose of the new extensions is to provide a simpler and unambiguous metasyntax. In terms of simplicity, BNF's metanotation definitely does not help to make the metasyntax easier-to-read as the open-end and close-end metasymbols appear too abundantly. In terms of ambiguity, BNF's metanotation generates unnecessary complexity when quotation marks, apostrophes, less-than signs or greater-than signs come to serve as terminal symbols, which they often do. The extended metasyntax utilizes properties such as case, font, and code position of characters to reduce unnecessary aforementioned complexity. Moreover, some metalanguages use fonted separator categories to incorporate metasyntactic features for layout conventions, which are not formally supported by BNF.

> 新扩展的目的是为了提供一个更简单和明确的元语法。就简单性而言，BNF的元注释绝对无助于使元语法更容易阅读，因为开口和闭口的元符号出现得太多了。在模糊性方面，当引号、撇号、小于号或大于号被用作终端符号时，BNF的元符号产生了不必要的复杂性，而它们经常这样做。扩展的元语法利用字符的大小写、字体和代码位置等属性来减少上述不必要的复杂性。此外，一些元语言使用字体化的分隔符类别来纳入布局惯例的元语法特征，而这并没有得到BNF的正式支持。

## See also

- [Adaptive grammar](https://en.wikipedia.org/wiki/Adaptive_grammar)
- [Comparison of parser generators](https://en.wikipedia.org/wiki/Comparison_of_parser_generators)
- [Metapragmatics](https://en.wikipedia.org/wiki/Metapragmatics)
- [Metasemantics](https://en.wikipedia.org/wiki/Metasemantics)
- [Metavariable (logic)](https://en.wikipedia.org/wiki/Metavariable_(logic))



---

# Backus-Naur form

In [computer science](https://en.wikipedia.org/wiki/Computer_science), **Backus–Naur form** ([/ˌbækəs ˈnaʊər/](https://en.wikipedia.org/wiki/Help:IPA/English)) or **Backus normal form** (**BNF**) is a [metasyntax](https://en.wikipedia.org/wiki/Metasyntax) notation for [context-free grammars](https://en.wikipedia.org/wiki/Context-free_grammar), often used to describe the [syntax](https://en.wikipedia.org/wiki/Syntax_(programming_languages)) of [languages](https://en.wikipedia.org/wiki/Formal_language#Programming_languages) used in computing, such as computer [programming languages](https://en.wikipedia.org/wiki/Programming_language), [document formats](https://en.wikipedia.org/wiki/Document_format), [instruction sets](https://en.wikipedia.org/wiki/Instruction_set) and [communication protocols](https://en.wikipedia.org/wiki/Communication_protocol). They are applied wherever exact descriptions of languages are needed: for instance, in official language specifications, in manuals, and in textbooks on programming language theory.

> 在[计算机科学](https://en.wikipedia.org/wiki/Computer_science)中，**Backus-Naur形式**（[/ˌbækəs ˈnaʊər/](https://en.wikipedia.org/wiki/Help:IPA/English)）或**Backus normal form**（**BNF**）是[无语境语法](https://en.wikipedia.org/wiki/Metasyntax)的一种[元语法](https://en.wikipedia.org/wiki/Context-free_grammar)符号，通常用于描述计算机中使用的语言的语法，用于计算机[编程语言](https://en.wikipedia.org/wiki/Programming_language)、[文档格式](https://en.wikipedia.org/wiki/Document_format)、[指令集](https://en.wikipedia.org/wiki/Instruction_set)和[通信协议](https://en.wikipedia.org/wiki/Communication_protocol)。它们被应用于需要对语言进行精确描述的地方：例如，在官方语言规范、手册和编程语言理论的教科书中。

Many extensions and variants of the original Backus–Naur notation are used; some are exactly defined, including [extended Backus–Naur form](https://en.wikipedia.org/wiki/Extended_Backus–Naur_form) (EBNF) and [augmented Backus–Naur form](https://en.wikipedia.org/wiki/Augmented_Backus–Naur_form) (ABNF).

> 使用了许多原始Backus-Naur符号的扩展和变体；有些是确切定义的，包括[扩展Backus-Naur形式](https://en.wikipedia.org/wiki/Extended_Backus-Naur_form) (EBNF)和[增强Backus-Naur形式](https://en.wikipedia.org/wiki/Augmented_Backus-Naur_form) (ABNF)。
>

## Overview

A BNF specification is a set of derivation rules, written as

> BNF规范是一组推导规则，写为

```bash
<symbol> ::= __expresssion__
```

where:

- \<[symbol](https://en.wikipedia.org/wiki/Symbol)> [[1\]](https://en.wikipedia.org/wiki/Backus–Naur_form#cite_note-class-1) is a *[nonterminal](https://en.wikipedia.org/wiki/Nonterminal)* (variable) and the [__expression__](https://en.wikipedia.org/wiki/Expression_(mathematics)) consists of one or more sequences of either terminal or nonterminal symbols;
- `::=` means that the symbol on the left must be replaced with the expression on the right.
- more sequences [of symbols] are separated by the [vertical bar](https://en.wikipedia.org/wiki/Vertical_bar) "|", indicating a [choice](https://en.wikipedia.org/wiki/Alternation_(formal_language_theory)), the whole being a possible substitution for the symbol on the left.

Symbols that never appear on a left side are *[terminals](https://en.wikipedia.org/wiki/Terminal_symbol)*. On the other hand, symbols that appear on a left side are *[non-terminals](https://en.wikipedia.org/wiki/Nonterminal_symbol)* and are always enclosed between the pair <>.[[1\]](https://en.wikipedia.org/wiki/Backus–Naur_form#cite_note-class-1)

> 其中：
>
> - \<[symbol](https://en.wikipedia.org/wiki/Symbol)> [[1]](https://en.wikipedia.org/wiki/Backus-Naur_form#cite_note-class-1)是一个*[非终端符](https://en.wikipedia.org/wiki/Nonterminal)*(变量)，[\__expression__](https://en.wikipedia.org/wiki/Expression_(数学))由一个或多个终端或非终端符号的序列组成。
> - `::=`意味着左边的符号必须被右边的表达式所替换。
> - 更多的[符号]序列被[竖条](https://en.wikipedia.org/wiki/Vertical_bar)"|"隔开，表示一个[选择](https://en.wikipedia.org/wiki/Alternation_(formal_language_theory))，整体是左边的符号的可能替代物。
>
> 从未出现在左边的符号是*[终端符](https://en.wikipedia.org/wiki/Terminal_symbol)*。另一方面，出现在左边的符号是*[非终端符](https://en.wikipedia.org/wiki/Nonterminal_symbol)*，并且总是被包围在一对<>之间。

## Example

As an example, consider this possible BNF for a U.S. [postal address](https://en.wikipedia.org/wiki/Address_(geography)):

> 作为一个例子，思考一下美国[邮政地址](https://en.wikipedia.org/wiki/Address_(geography))的这个可能的BNF：

```bash
<postal-address> ::= <name-part> <street-address> <zip-part>
<name-part> ::= <personal-part> <last-name> <opt-suffix-part> <EOL> | <personal-part> <name-part>
<personal-part> ::= <initial> "." | <first-name>
<street-address> ::= <house-num> <street-num> <opt-apt-num> <EOL>
<zip-part> ::= <town-name> "," <state-code> <ZIP-code> <EOL>
<opt-suffix-part> ::= "Sr." | "Jr." | <roman-numeral> | ""
<opt-apt-num> ::= <apt-num> | ""
```

This translates into English as:

- A postal address consists of a name-part, followed by a [street-address](https://en.wikipedia.org/wiki/Street_name) part, followed by a [zip-code](https://en.wikipedia.org/wiki/ZIP_Code) part.
- A name-part consists of either: a personal-part followed by a [last name](https://en.wikipedia.org/wiki/Last_name) followed by an optional [suffix](https://en.wikipedia.org/wiki/Suffix_(name)) (Jr., Sr., or dynastic number) and [end-of-line](https://en.wikipedia.org/wiki/End-of-line), or a personal part followed by a name part (this rule illustrates the use of [recursion](https://en.wikipedia.org/wiki/Recursion_(computer_science)) in BNFs, covering the case of people who use multiple first and middle names and initials).
- A personal-part consists of either a [first name](https://en.wikipedia.org/wiki/First_name) or an [initial](https://en.wikipedia.org/wiki/Initial) followed by a dot.
- A street address consists of a house number, followed by a street name, followed by an optional [apartment](https://en.wikipedia.org/wiki/Apartment) specifier, followed by an end-of-line.
- A zip-part consists of a [town](https://en.wikipedia.org/wiki/Town)-name, followed by a comma, followed by a [state code](https://en.wikipedia.org/wiki/U.S._postal_abbreviations), followed by a ZIP-code followed by an end-of-line.
- An opt-suffix-part consists of a suffix, such as "Sr.", "Jr." or a [roman-numeral](https://en.wikipedia.org/wiki/Roman_numerals), or an empty string (i.e. nothing).
- An opt-apt-num consists of an apartment number or an empty string (i.e. nothing).

Note that many things (such as the format of a first-name, apartment number, ZIP-code, and Roman numeral) are left unspecified here. If necessary, they may be described using additional BNF rules.

> 这句话翻译成英文就是：
>
> - 邮政地址由姓名部分组成，然后是[街道地址](https://en.wikipedia.org/wiki/Street_name)部分，然后是[邮政编码](https://en.wikipedia.org/wiki/ZIP_Code)部分。
> - 姓名部分包括：个人部分，后面是[姓氏](https://en.wikipedia.org/wiki/Last_name)，后面是可选的[后缀](https://en.wikipedia.org/wiki/Suffix_(name))(Jr., Sr., or dynastic number)和[行末](https://en.wikipedia.org/wiki/End-of-line)，或者个人部分后面是姓名部分（此规则说明了BNF中[递归](https://en.wikipedia.org/wiki/Recursion_(computer_science))的使用，包括使用多个姓和中名及首字母的人的情况）。
> - 个人部分由[名](https://en.wikipedia.org/wiki/First_name)或[首字母](https://en.wikipedia.org/wiki/Initial)组成，后面有一个点。
> - 一个街道地址由一个门牌号和一个街道名称组成，然后是一个可选的[公寓](https://en.wikipedia.org/wiki/Apartment)指定符，最后是一个行末。
> - 一个邮编部分由一个[镇](https://en.wikipedia.org/wiki/Town)名称组成，后面是一个逗号，接着是一个[州代码](https://en.wikipedia.org/wiki/U.S._postal_abbreviations)，然后是一个邮政编码，最后是行末。
> - opt-suffix-part由一个后缀组成，如 "Sr."、"Jr. "或[罗马数字](https://en.wikipedia.org/wiki/Roman_numerals)，或一个空字符串（即没有）。
> - opt-apt-num由一个公寓号码或一个空字符串（即什么都没有）组成。
>
> 请注意，许多东西（例如名字、公寓号码、邮政编码和罗马数字的格式）在这里没有被指定。如果有必要，可以使用额外的BNF规则来描述它们。

## History

The idea of describing the structure of language using [rewriting rules](https://en.wikipedia.org/wiki/Rewrite_rule) can be traced back to at least the work of [Pāṇini](https://en.wikipedia.org/wiki/Pāṇini), an ancient Indian Sanskrit grammarian and a revered scholar in Hinduism who lived sometime between the 6th and 4th century [BC](https://en.wikipedia.org/wiki/Before_Christ).[[2\]](https://en.wikipedia.org/wiki/Backus–Naur_form#cite_note-2)[[3\]](https://en.wikipedia.org/wiki/Backus–Naur_form#cite_note-3) His notation to describe [Sanskrit](https://en.wikipedia.org/wiki/Sanskrit) word structure is equivalent in power to that of Backus and has many similar properties.

In Western society, grammar was long regarded as a subject for teaching, rather than scientific study; descriptions were informal and targeted at practical usage. In the first half of the 20th century, [linguists](https://en.wikipedia.org/wiki/Linguistics) such as [Leonard Bloomfield](https://en.wikipedia.org/wiki/Leonard_Bloomfield) and [Zellig Harris](https://en.wikipedia.org/wiki/Zellig_Harris) started attempts to formalize the description of language, including phrase structure.

Meanwhile, [string rewriting rules](https://en.wikipedia.org/wiki/Semi-Thue_system) as [formal logical systems](https://en.wikipedia.org/wiki/Formal_logical_systems) were introduced and studied by mathematicians such as [Axel Thue](https://en.wikipedia.org/wiki/Axel_Thue) (in 1914), [Emil Post](https://en.wikipedia.org/wiki/Emil_Post) (1920s–40s) and [Alan Turing](https://en.wikipedia.org/wiki/Alan_Turing) (1936). [Noam Chomsky](https://en.wikipedia.org/wiki/Noam_Chomsky), teaching linguistics to students of [information theory](https://en.wikipedia.org/wiki/Information_theory) at [MIT](https://en.wikipedia.org/wiki/MIT), combined linguistics and mathematics by taking what is essentially Thue's formalism as the basis for the description of the syntax of [natural language](https://en.wikipedia.org/wiki/Natural_language). He also introduced a clear distinction between generative rules (those of [context-free grammars](https://en.wikipedia.org/wiki/Context-free_grammar)) and transformation rules (1956).[[4\]](https://en.wikipedia.org/wiki/Backus–Naur_form#cite_note-4)[[5\]](https://en.wikipedia.org/wiki/Backus–Naur_form#cite_note-Chomsky1957-5)

> 用[改写规则](https://en.wikipedia.org/wiki/Rewrite_rule)来描述语言结构的想法至少可以追溯到[Pāṇini](https://en.wikipedia.org/wiki/Pāṇini)的工作，他是古代印度的梵文语法学家，也是印度教中受人尊敬的学者，生活在[公元前](https://en.wikipedia.org/wiki/Before_Christ)6世纪的某个时期。[[2\]](https://en.wikipedia.org/wiki/Backus-Naur_form#cite_note-2)[[3\]](https://en.wikipedia.org/wiki/Backus-Naur_form#cite_note-3) 他用来描述[梵文](https://en.wikipedia.org/wiki/Sanskrit)单词结构的符号与Backus的功能相当，有很多类似的特性。
>
> 在西方社会，语法长期以来被视为教学科目，而不是科学研究；描述是非正式的，以实际使用为目标。在20世纪上半叶，[语言学家](https://en.wikipedia.org/wiki/Linguistics)如[Leonard Bloomfield](https://en.wikipedia.org/wiki/Leonard_Bloomfield)和[Zellig Harris](https://en.wikipedia.org/wiki/Zellig_Harris)开始尝试将语言的描述正规化，包括短语结构。
>
> 同时，[字符串重写规则](https://en.wikipedia.org/wiki/Semi-Thue_system)作为[形式逻辑系统](https://en.wikipedia.org/wiki/Formal_logical_systems)被数学家引入并研究，如[Axel Thue](https://en.wikipedia.org/wiki/Axel_Thue)（1914年）、[Emil Post](https://en.wikipedia.org/wiki/Emil_Post)（1920-40年代）和[Alan Turing](https://en.wikipedia.org/wiki/Alan_Turing)（1936）。[Noam Chomsky](https://en.wikipedia.org/wiki/Noam_Chomsky)在[麻省理工学院](https://en.wikipedia.org/wiki/MIT)向[信息论](https://en.wikipedia.org/wiki/Information_theory)的学生讲授语言学，他把语言学和数学结合起来，把本质上是Thue的形式主义作为描述[自然语言](https://en.wikipedia.org/wiki/Natural_language)语法的基础。他还介绍了生成规则（那些[无语境语法](https://en.wikipedia.org/wiki/Context-free_grammar)）和转换规则（1956）之间的明确区别。[[4\]](https://en.wikipedia.org/wiki/Backus-Naur_form#cite_note-4)

[John Backus](https://en.wikipedia.org/wiki/John_Backus), a programming language designer at [IBM](https://en.wikipedia.org/wiki/IBM), proposed a [metalanguage](https://en.wikipedia.org/wiki/Metalanguage) of "metalinguistic formulas"[[1\]](https://en.wikipedia.org/wiki/Backus–Naur_form#cite_note-class-1)[[7\]](https://en.wikipedia.org/wiki/Backus–Naur_form#cite_note-Backus.1969-7)[[8\]](https://en.wikipedia.org/wiki/Backus–Naur_form#cite_note-8) to describe the syntax of the new programming language IAL, known today as [ALGOL 58](https://en.wikipedia.org/wiki/ALGOL_58) (1959). His notation was first used in the ALGOL 60 report.

BNF is a notation for Chomsky's context-free grammars. Backus was familiar with Chomsky's work.[[9\]](https://en.wikipedia.org/wiki/Backus–Naur_form#cite_note-9)

As proposed by Backus, the formula defined "classes" whose names are enclosed in angle brackets. For example, `<ab>`. Each of these names denotes a class of basic symbols.[[1\]](https://en.wikipedia.org/wiki/Backus–Naur_form#cite_note-class-1)

Further development of [ALGOL](https://en.wikipedia.org/wiki/ALGOL) led to [ALGOL 60](https://en.wikipedia.org/wiki/ALGOL_60). In the committee's 1963 report, [Peter Naur](https://en.wikipedia.org/wiki/Peter_Naur) called Backus's notation *Backus normal form*. [Donald Knuth](https://en.wikipedia.org/wiki/Donald_Knuth) argued that BNF should rather be read as *Backus–Naur form*, as it is "not a [normal form](https://en.wikipedia.org/wiki/Normal_form_(term_rewriting)) in the conventional sense",[[10\]](https://en.wikipedia.org/wiki/Backus–Naur_form#cite_note-10) unlike, for instance, [Chomsky normal form](https://en.wikipedia.org/wiki/Chomsky_normal_form). The name *Pāṇini Backus form* was also once suggested in view of the fact that the expansion *Backus normal form* may not be accurate, and that [Pāṇini](https://en.wikipedia.org/wiki/Pāṇini) had independently developed a similar notation earlier.[[11\]](https://en.wikipedia.org/wiki/Backus–Naur_form#cite_note-11)

> [John Backus](https://en.wikipedia.org/wiki/John_Backus)，[IBM](https://en.wikipedia.org/wiki/IBM)的一名编程语言设计师，提出了一种 "金属语言"(https://en.wikipedia.org/wiki/Metalanguage)[[1\]](https://en.wikipedia.org/wiki/Backus-Naur_form#cite_note-class-1)[[7\]](https://en.wikipedia.org/wiki/Backus-Naur_form#cite_note-Backus.1969-7)[[8\]](https://en.wikipedia.org/wiki/Backus-Naur_form#cite_note-8)来描述新编程语言IAL的语法，今天被称为[ALGOL 58](https://en.wikipedia.org/wiki/ALGOL_58) （1959）。他的符号在ALGOL 60报告中首次使用。
>
> BNF是乔姆斯基的无上下文语法的一种符号。Backus熟悉Chomsky的工作。[[9\]](https://en.wikipedia.org/wiki/Backus-Naur_form#cite_note-9)
>
> 按照Backus的提议，该公式定义了 "类"，其名称用角括号括起来。例如，`<ab>`。这些名称中的每一个都表示一类基本符号。[[1]](https://en.wikipedia.org/wiki/Backus-Naur_form#cite_note-class-1)
>
> [ALGOL](https://en.wikipedia.org/wiki/ALGOL)的进一步发展导致了[ALGOL 60](https://en.wikipedia.org/wiki/ALGOL_60)。在委员会1963年的报告中，[Peter Naur](https://en.wikipedia.org/wiki/Peter_Naur)称Backus的符号为*Backus正常形式*。[Donald Knuth](https://en.wikipedia.org/wiki/Donald_Knuth)认为BNF应该被理解为*Backus-Naur形式*，因为它 "不是传统意义上的[正常形式](https://en.wikipedia.org/wiki/Normal_form_(term_rewriting))"，[[10]](https://en.wikipedia.org/wiki/Backus-Naur_form#cite_note-10)与例如[Chomsky正常形式](https://en.wikipedia.org/wiki/Chomsky_normal_form)不同。鉴于*Pāṇini Backus form*的扩展可能并不准确，而且[Pāṇini](https://en.wikipedia.org/wiki/Pāṇini)在更早的时候就独立开发了一个类似的符号，因此也曾经提出过*Pāṇini Backus form*这个名字。[[11\]](https://en.wikipedia.org/wiki/Backus-Naur_form#cite_note-11)

BNF is described by Peter Naur in the ALGOL 60 report as *metalinguistic formula*:[[12\]](https://en.wikipedia.org/wiki/Backus–Naur_form#cite_note-ALGOL60RPT-12)

> Sequences of characters enclosed in the brackets <> represent metalinguistic variables whose values are sequences of symbols. The marks "::=" and "|" (the latter with the meaning of "or") are metalinguistic connectives. Any mark in a formula, which is not a variable or a connective, denotes itself. Juxtaposition of marks or variables in a formula signifies juxtaposition of the sequence denoted.

> BNF由Peter Naur在ALGOL 60报告中描述为*metalinguistic formula*：[[12\]](https://en.wikipedia.org/wiki/Backus-Naur_form#cite_note-ALGOL60RPT-12)
>
> >括号内的字符序列<>代表元语言学变量，其值是符号序列。标记"::="和"|"（后者有 "或 "的含义）是元语言学的连接词。公式中的任何标记，如果不是变量或连接词，则表示其本身。公式中的标记或变量的并列表示所表示的序列的并列。

Another example from the ALGOL 60 report illustrates a major difference between the BNF metalanguage and a Chomsky context-free grammar. Metalinguistic variables do not require a rule defining their formation. Their formation may simply be described in natural language within the <> brackets. The following ALGOL 60 report section 2.3 comments specification, exemplifies how this works:

> For the purpose of including text among the symbols of a program the following "comment" conventions hold:
>
> | The sequence of basic symbols:                               | is equivalent to |
> | ------------------------------------------------------------ | ---------------- |
> | **;** **comment** <any sequence not containing ';'>;         | **;**            |
> | **begin** **comment** <any sequence not containing ';'>;     | **begin**        |
> | **end** <any sequence not containing 'end' or ';' or 'else'> | **end**          |
>
> Equivalence here means that any of the three structures shown in the left column may be replaced, in any occurrence outside of strings, by the symbol shown in the same line in the right column without any effect on the action of the program.

> ALGOL 60报告中的另一个例子说明了BNF金属语言和乔姆斯基无语境语法之间的一个主要区别。金属语言的变量不需要定义其形成的规则。它们的形成可以简单地在<>括号内用自然语言描述。下面的ALGOL 60报告第2.3节注释规范，举例说明了这是如何进行的。
>
> > 为了在程序的符号中包括文本，以下 "注释 "惯例是有效的。
> >
> > | 基本符号的序列。                             | 相当于   |
> > | -------------------------------------------- | -------- |
> > | **;** **comment** <任何不包含';'的序列；     | **;** ** |
> > | **开始** **评论** <任何不含';'>的序列；      | **开始** |
> > | **结束** <任何不含'结束'或';'或'其他'的序列> | **结束** |
> >
> > 这里的等价性是指左栏所示的三种结构中的任何一种，在字符串之外的任何场合，都可以被右栏同一行所示的符号所替代，而不会对程序的运行产生任何影响。https://en.wikipedia.org/wiki/Backus–Naur_form#cite_note-class-1)

...

## Further examples

BNF's syntax itself may be represented with a BNF like the following:

> BNF的语法本身可以用下面这样的BNF来表示：

```bash
<syntax> ::= <rule> | <rule> <syntax>
<rule> ::= <opt-whitespace> "<" <rule-name> ">" <opt-whitespace> "::=" <opt-whitespace> <expression> <line-end>
<opt-whitespace> ::= " " <opt-whitespace> | ""
<expression> ::= <list> | <list> <opt-whitespace> "|" <opt-whitespace> <expression>
<line-end>       ::= <opt-whitespace> <EOL> | <line-end> <line-end>
 <list>           ::= <term> | <term> <opt-whitespace> <list>
 <term>           ::= <literal> | "<" <rule-name> ">"
 <literal>        ::= '"' <text1> '"' | "'" <text2> "'"
 <text1>          ::= "" | <character1> <text1>
 <text2>          ::= '' | <character2> <text2>
 <character>      ::= <letter> | <digit> | <symbol>
 <letter>         ::= "A" | "B" | "C" | "D" | "E" | "F" | "G" | "H" | "I" | "J" | "K" | "L" | "M" | "N" | "O" | "P" | "Q" | "R" | "S" | "T" | "U" | "V" | "W" | "X" | "Y" | "Z" | "a" | "b" | "c" | "d" | "e" | "f" | "g" | "h" | "i" | "j" | "k" | "l" | "m" | "n" | "o" | "p" | "q" | "r" | "s" | "t" | "u" | "v" | "w" | "x" | "y" | "z"
 <digit>          ::= "0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9"
 <symbol>         ::=  "|" | " " | "!" | "#" | "$" | "%" | "&" | "(" | ")" | "*" | "+" | "," | "-" | "." | "/" | ":" | ";" | ">" | "=" | "<" | "?" | "@" | "[" | "\" | "]" | "^" | "_" | "`" | "{" | "}" | "~"
 <character1>     ::= <character> | "'"
 <character2>     ::= <character> | '"'
 <rule-name>      ::= <letter> | <rule-name> <rule-char>
 <rule-char>      ::= <letter> | <digit> | "-"
```

Note that "" is the [empty string](https://en.wikipedia.org/wiki/Empty_string).

The original BNF did not use quotes as shown in `<literal>` rule. This assumes that no [whitespace](https://en.wikipedia.org/wiki/Whitespace_(computer_science)) is necessary for proper interpretation of the rule.

`<EOL>` represents the appropriate [line-end](https://en.wikipedia.org/wiki/Newline) specifier (in [ASCII](https://en.wikipedia.org/wiki/ASCII), carriage-return, line-feed or both depending on the [operating system](https://en.wikipedia.org/wiki/Operating_system)). `<rule-name>` and `<text>` are to be substituted with a declared rule's name/label or literal text, respectively.

In the U.S. postal address example above, the entire block-quote is a syntax. Each line or unbroken grouping of lines is a rule; for example one rule begins with `<name-part> ::=`. The other part of that rule (aside from a line-end) is an expression, which consists of two lists separated by a pipe `|`. These two lists consists of some terms (three terms and two terms, respectively). Each term in this particular rule is a rule-name.

> 注意，""是[空字符串](https://en.wikipedia.org/wiki/Empty_string)。
>
> 最初的BNF没有使用引号，如`<literal>`规则中所示。这假定没有[空白](https://en.wikipedia.org/wiki/Whitespace_(computer_science))对于规则的正确解释是必要的。
>
> `<EOL>`代表适当的[行结束](https://en.wikipedia.org/wiki/Newline)指定符（在[ASCII](https://en.wikipedia.org/wiki/ASCII)中，回车符、换行符或两者都有，取决于[操作系统](https://en.wikipedia.org/wiki/Operating_system)）。`<rule-name>`和`<text>`将分别被替换为声明的规则名称/标签或字面文本。
>
> 在上面的美国邮政地址例子中，整个块状引号是一个语法。每一行或不间断的一组行是一条规则；例如，一条规则以`<name-part> ::=`开始。该规则的另一部分（除了行尾）是一个表达式，它由两个列表组成，用管子`|`分开。这两个列表由一些术语组成（分别是三个术语和两个术语）。这个特定规则中的每个术语都是一个规则名称。

...

## See also

- [Compiler Description Language](https://en.wikipedia.org/wiki/Compiler_Description_Language) (CDL)
- [Syntax diagram](https://en.wikipedia.org/wiki/Syntax_diagram) – railroad diagram
- [Translational Backus–Naur form](https://en.wikipedia.org/wiki/Translational_Backus–Naur_form) (TBNF)
- [Wirth syntax notation](https://en.wikipedia.org/wiki/Wirth_syntax_notation) – an alternative to BNF from 1977
- [Definite clause grammar](https://en.wikipedia.org/wiki/Definite_clause_grammar) – a more expressive alternative to BNF used in Prolog
- [Van Wijngaarden grammar](https://en.wikipedia.org/wiki/Van_Wijngaarden_grammar) – used in preference to BNF to define [Algol68](https://en.wikipedia.org/wiki/Algol68)
- [Meta-II](https://en.wikipedia.org/wiki/Meta-II) – an early compiler writing tool and notation

reference:

The meaning of syntactic formula may be further explained by saying that words enclosed in the brackets `< >`, like `<ab>`, denote classes whose members are sequences of basic symbols. Class designations of this kind are found in any description of a language. For describing ordinary natural languages designation like word, verb, noun, are used.

> 句法公式的含义可以进一步解释为：括号内的词`< >`，如`<ab>`，表示其成员为基本符号序列的类。在任何语言的描述中都可以找到这种类的称呼。在描述普通自然语言时，会使用像单词、动词、名词这样的指定。

