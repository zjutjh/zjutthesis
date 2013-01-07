#
# build zjutmain.pdf
#

# XXX: bibtex 会报错 如 http://bbs.sjtu.edu.cn/bbstcon,board,TeX_LaTeX,reid,1299228706.html 原因不明但不影响结果输出，这里ignore掉
.IGNORE : proposal translation literaturereview all 
proposal:
	xelatex proposal
	bibtex proposal
	xelatex proposal
	xelatex proposal

translation:
	xelatex translation
	bibtex translation
	xelatex translation
	xelatex translation

literaturereview:
	xelatex literaturereview
	bibtex literaturereview
	xelatex literaturereview
	xelatex literaturereview

all: proposal translation literaturereview

clean:
	git clean -fx
