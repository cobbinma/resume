.PHONY: html pdf clean install all help

help:
	@echo "Available commands:"
	@echo "  make install  - Install required dependencies (pandoc, Chrome)"
	@echo "  make html     - Generate resume.html from resume.md"
	@echo "  make pdf      - Generate both resume.html and resume.pdf"
	@echo "  make all      - Same as 'make pdf'"
	@echo "  make clean    - Remove generated files (html, pdf)"

install:
	@echo "Installing dependencies..."
	@command -v pandoc >/dev/null 2>&1 || { echo "Installing pandoc..."; brew install pandoc; }
	@test -f "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" && echo "✓ Chrome installed" || echo "⚠ Chrome not found - install from https://www.google.com/chrome/"
	@echo "✓ All dependencies checked"

html:
	@echo "Generating resume.html..."
	@pandoc resume.md -f markdown -t html -c resume-stylesheet.css -s -o resume.html
	@echo "✓ resume.html created"

pdf: html
	@echo "Generating resume.pdf with Chrome..."
	@"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless --disable-gpu --print-to-pdf=resume.pdf --no-pdf-header-footer resume.html 2>/dev/null
	@echo "✓ resume.pdf created"

all: pdf

clean:
	@echo "Cleaning generated files..."
	@rm -f resume.html resume.pdf
	@echo "✓ Cleaned"
