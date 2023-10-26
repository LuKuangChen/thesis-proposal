# Makefile for LaTeX document using latexmk

# Set the main filename (without extension)
MAIN = proposal

# PDF viewer (change to your preferred viewer)
PDFVIEWER = open

# LaTeXmk command
LATEXMK = latexmk

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex bibfile.bib
	$(LATEXMK) -pdf $(MAIN)
	@echo "Compilation complete. Open the PDF with '$(PDFVIEWER) $@'."

clean:
	$(LATEXMK) -C  # Clean all LaTeX intermediate files
	rm -f $(MAIN).pdf

.PHONY: all clean
