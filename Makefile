BUILD = build
MAKEFILE = Makefile
OUTPUT_FILENAME = book
OUTPUT_HTML_FILENAME = index
METADATA = metadata.yml
CHAPTERS += $(addprefix ./chapters/,\
 introduction.md\
 start.md\
 editing.md\
 git.md\
 pandoc.md\
 julia.md\
 data.md\
 statistics.md\
 ci.md\
 appendix.md\
 references.md\
)
TOC = --toc --toc-depth 2
METADATA_ARGS = --metadata-file $(METADATA)
INCLUDE_FILES_ARG = --lua-filter pandoc/include-files.lua
IMAGES = $(shell find images -type f)
TEMPLATES = $(shell find templates/ -type f)
COVER_IMAGE = images/cover.png
MATH_FORMULAS = --webtex

# Chapters content.
CONTENT = awk 'FNR==1 && NR!=1 {print "\n\n"}{print}' $(CHAPTERS)

# Use this to add sed filters or other piped commands.
CONTENT_FILTERS = tee 

# Uncomment to get more debug information.
# DEBUG_ARGS = --verbose

FILTER_ARGS = --filter pandoc-crossref --filter pandoc-citeproc

# Combined arguments

ARGS = $(TOC) $(MATH_FORMULAS) $(METADATA_ARGS) $(INCLUDE_FILES_ARG) $(FILTER_ARGS) $(DEBUG_ARGS)
	
PANDOC_COMMAND = pandoc --number-sections --top-level-division=chapter 

EPUB_ARGS = --template templates/epub.html --epub-cover-image $(COVER_IMAGE)
HTML_ARGS = --template templates/html.html --standalone --css style.css --to html5
PDF_ARGS = --template templates/eisvogel.tex --pdf-engine xelatex

BASE_DEPENDENCIES = $(MAKEFILE) $(CHAPTERS) $(METADATA) $(IMAGES) $(TEMPLATES)
DOCX_DEPENDENCIES = $(BASE_DEPENDENCIES)
EPUB_DEPENDENCIES = $(BASE_DEPENDENCIES)
HTML_DEPENDENCIES = $(BASE_DEPENDENCIES)
PDF_DEPENDENCIES = $(BASE_DEPENDENCIES)

all: book

book:	epub html pdf

clean: 
	rm -r $(BUILD)

epub: $(BUILD)/epub/$(OUTPUT_FILENAME).epub

html: $(BUILD)/html/$(OUTPUT_HTML_FILENAME).html

pdf: $(BUILD)/pdf/$(OUTPUT_FILENAME).pdf

$(BUILD)/epub/$(OUTPUT_FILENAME).epub: $(EPUB_DEPENDENCIES)
	mkdir -p $(BUILD)/epub
	$(CONTENT) | $(CONTENT_FILTERS) | $(PANDOC_COMMAND) $(ARGS) $(EPUB_ARGS) -o $@
	@echo "$@ was built"

$(BUILD)/html/$(OUTPUT_HTML_FILENAME).html:	$(HTML_DEPENDENCIES)
	mkdir -p $(BUILD)/html
	cp templates/style.css build/html/
	$(CONTENT) | $(CONTENT_FILTERS) | $(PANDOC_COMMAND) $(ARGS) $(HTML_ARGS) -o $@
	cp --parent $(IMAGES) $(BUILD)/html/
	@echo "$@ was built"

$(BUILD)/pdf/$(OUTPUT_FILENAME).pdf: $(PDF_DEPENDENCIES)
	mkdir -p $(BUILD)/pdf
	$(CONTENT) | $(CONTENT_FILTERS) | $(PANDOC_COMMAND) $(ARGS) $(PDF_ARGS) -o $@
	@echo "$@ was built"
