# 温度转换程序
print "Enter a temperature (e.g., 32F, 100C):\n";
$input = <STDIN>; # 接收用户输入的一行文本
chomp($input);    # 去掉文本末尾的换行符

if ($input =~ m/^([-+]?[0-9]+(?:\.[0-9]*)?)\s*([CF])$/i) {
    # 如果程序运行到此，则已经匹配。$1保存数字（组），$2保存“C”或者“F”
    $InputNum = $1; # 把数据保存到已命名变量中
    $type     = $2; # 保证程序的可读性

    if ($type =~ m/c/i) {
        # 输入为摄氏度，则计算华氏度
        $celsius = $InputNum;
        $fahrenheit = ($celsius * 9 / 5) + 32;
    } else {
        # 如果不是“C”，则必然是“F”，计算摄氏温度
        $fahrenheit = $InputNum;
        $celsius = ($fahrenheit - 32) * 5 / 9;
    }
    # 现在得到了两个温度值，显示结果
    printf "%.2f C is %.2f F\n", $celsius, $fahrenheit;
} else {
    # 如果最开始的正则表达式无法匹配，报警
    print "Expecting a number followed by \"C\" or \"F\",\n";
    print "so I don't understand \"$input\".\n";
}


# 处理邮件header
# while ($line =<>) {
#     if ($line =~ m/^\s*$/) {
#         last; # 停止while循环内的处理，跳出循环
#     }
#     ...
# }
# ...


# Text-to-HTML转换
$HostnameRegex = qr/[-a-z0-9]+(\.[-a-z0-9]+)*\.(com|edu|info)/i; # 保存hostname

# 将E-mail地址转换为链接形式……
$text =~ s{
    \b
    # 将地址保存至$1
    (
        \w[-.\w]+        # username
        \@
        $HostnameRegex   # hostname
    )
    \b
} {<a href="mailto:$1">$1</a>}gix;

# 将 HTTP URL 转换为链接形式……
$text =~ s{
    \b
    # Capture the URL to $1
    (
        http:// $HostnameRegex \b
        (
            / [-a-z0-9_:\@&?=+,.!/~*'%\$]*    # path不一定会出现
            (?<![.,?!])                       # 不容许以[.,?!]结尾
        )？
    )
} {}gix;


# 处理单词重复问题
# $/ = ".\n";   # Sets a special ``chunk-mode''; chunks end with a period-newline combination

# while (<>)    # 
# {
#     next unless s{# (regex starts here)

#           ### Need to match one word:
#           \b           # Start of word . . . .
#           ( [a-z]+ )  # Grab word, filling $1 (and \1).

#           ### Now need to allow any number of spaces and/or <TAGS>
#           (         # Save what intervenes to $2.
#               (?:   # (Non-capturing parens for grouping the alternation)
#                  \s       # Whitespace (includes newline, which is good).
#                 |         # -or-
#                  <[^>]+>  # Item like <TAG>.
#               )+       # Need at least one of the above, but allow more.
#           )

#           ### Now match the first word again:
#           (\1\b)     # \b ensures not embedded. This copy saved to $3.

#       #(regex ends here)
#     }
#     # Above is the regex. The replacement string is below, followed by the modifiers, /i, /g, and /x
#     {\e[7m$1\e[m$2\e[7m$3\e[m}igx;  

#     s/^(?:[^\e]*\n)+//mg;     # Remove any unmarked lines.
#     s/^/$ARGV: /mg;         # Ensure lines begin with filename.
#     print;
# }