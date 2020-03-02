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