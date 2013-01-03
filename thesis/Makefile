all:
	xelatex zjutmain
	bibtex zjutmain
	xelatex zjutmain
	xelatex zjutmain
clean:
	git clean -fx

png:
	mkdir -p preview; cp zjutmain.pdf preview/; cd preview; rm *.png; pdftoppm -png zjutmain.pdf zjutmain_preview; rm -rf zjutmain.pdf; cd ..
