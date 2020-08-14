all : slides

.PHONY: slides
slides:
	Rscript -e "rmarkdown::render('slides.Rmd',  encoding = 'UTF-8', knit_root_dir = '~');"
	Rscript -e "pagedown::chrome_print('slides.html')"

.PHONY : clean
clean :
	rm -rf slides.html slides.pdf
