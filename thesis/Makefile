#
# build zjutmain.pdf
#

# XXX: bibtex 会报错 如 http://bbs.sjtu.edu.cn/bbstcon,board,TeX_LaTeX,reid,1299228706.html 原因不明但不影响结果输出，这里ignore掉
.IGNORE : all 

all:
	xelatex zjutmain
	bibtex zjutmain
	xelatex zjutmain
	xelatex zjutmain

clean:
	git clean -fx

png:
	mkdir -p preview; cp zjutmain.pdf preview/; cd preview; rm *.png; pdftoppm -png zjutmain.pdf zjutmain_preview; rm -rf zjutmain.pdf; cd ..
