ZJUT计算机本科毕业设计模板
==========================
Author：[MCKelvin](http://mckelv.in) and [Unlucky](http://blog.thebeyond.name) and [liuzheng](http://ilz.me)

Trello:  https://trello.com/board/zjut-thesis-latex-templete-dev/50e7c24b5d92b5325c00144e

1、简介
-------
本模板是以浙江工业大学计算机学院本科生毕业设计论文要求设计的XeLaTeX模板。

2、文件结构
-----------
 - docs/ 学校提供的要求和范本
 - examples/ 各种文档示例
    - thesis/ 本科毕业论文示例
    - proposal/ 开题报告示例
    - literaturereview/  文献综述示例
    - transilation/ 外文翻译示例
 - fonts/ 存放所需的字体信息
 - styles/ 分类各种功能的样式文件
    - base.sty  基础设定
    - code.sty  代码样式设定
    - color.sty 颜色样式设定
    - font.sty  字体设定
    - graph.sty 图样式设定
    - math.sty  公式样式设定
    - table.sty 表格样式设定
 


3、示例
 - report 包含[开题报告](/zjutjh/zjutthesis/blob/master/examples/proposal/proposal.pdf?raw=true "pdf")、
[文献综述](/unlucky/zjutthesis/blob/master/literaturereview/literaturereview.pdf?raw=true "pdf")、
[外文翻译](/zjutjh/zjutthesis/blob/master/examples/translation/translation.pdf?raw=true "pdf")模板
 - thesis 包含[毕业设计论文](/zjutjh/zjutthesis/blob/master/examples/thesis/zjutmain.pdf?raw=true "pdf")模板

4、编译方法
-----------
配置环境变量
```
TEXINPUTS=.:/path/to/this/folder/:
TTFONTS=$TEXINPUTS
OPENTYPEFONTS=$TEXINPUTS
BSTINPUTS=$TEXINPUTS
```
然后使用
```
xelatex <主文件>
bibtex  <主文件>
xelatex <主文件>
xelatex <主文件>
```

5、注意事项
-----------
由于时间和能力有限，故该模板可能与学院要求的格式不尽相同。<br/>
作者不对使用该模板所造成的任何后果负责，但欢迎提供修改意见，以帮助我们完善该模板。<br/>

6、开发测试
