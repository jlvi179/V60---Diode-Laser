all: build/v60.pdf

build/v60.pdf: v60.tex aufbau.tex auswertung.tex diskussion.tex durchfuehrung.tex fehlerrechnung.tex lit.bib theorie.tex ziel.tex | build
	lualatex  --output-directory=build v60.tex
	lualatex  --output-directory=build v60.tex
	biber build/v60.bcf
	lualatex  --output-directory=build v60.tex


build: 
	mkdir -p build

clean:
	rm -rf build

.PHONY: clean all
