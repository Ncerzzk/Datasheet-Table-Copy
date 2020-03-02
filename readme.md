### Datasheet Table Copy

在建立芯片的原理图库时，常常需要根据手册中的表格。

然而直接从PDF中复制表格时，会由于格式问题，出现以下问题：

- 没有分隔符
- 没有换行符

本工具可以方便地处理pdf中的表格，前提是pdf中的表格可以直接复制

使用方式：
```ruby
a=PDF_Table.new test_str
a.set_header "NAME DESC. PIN_NO"
## 注意 NAME DESC. PIN_NO 都是定义好的标志，其他可用的标志还有 ATTR1 ATTR2 ...
a.scan
```

已知的BUG:
- 两个引脚共用一行时，例如两个引脚都悬空时：NC No connect. 15, 16，请手动复制一下
- DESC 如果放在最后，且没有结束符的话（有的手册就是这样），DESC会只取到一个字符，这个还行，毕竟DESC不是很重要 