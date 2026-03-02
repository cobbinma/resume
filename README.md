# Matthew Cobbing - Resume

My resume built with Markdown, automatically converted to HTML and PDF using Pandoc and WeasyPrint.

## 🌐 Live Resume

**View online**: [https://cobbinma.github.io/resume/](https://cobbinma.github.io/resume/)

## 📥 Download

Download the latest PDF and HTML versions from the [GitHub Actions artifacts](https://github.com/cobbinma/resume/actions).

## 🚀 Quick Start

### Prerequisites

- [Pandoc](https://pandoc.org/) - Document converter
- [WeasyPrint](https://weasyprint.org/) - HTML to PDF converter
- Python 3.8+

### Installation

```bash
# Clone the repository
git clone https://github.com/cobbinma/resume.git
cd resume

# Install dependencies
make install
```

### Build Resume

```bash
# Generate HTML only
make html

# Generate both HTML and PDF
make pdf

# Clean generated files
make clean
```

## 📝 Editing

1. Edit `resume.md` with your content
2. Run `make pdf` to generate outputs locally
3. Commit and push changes
4. GitHub Actions automatically builds and deploys

## 🤖 GitHub Actions

The workflow automatically:
- ✅ Builds HTML and PDF on every push to `main`
- ✅ Uploads artifacts (downloadable from Actions tab)
- ✅ Deploys HTML to GitHub Pages

### Setting Up GitHub Pages

After your first push:
1. Go to **Settings → Pages**
2. Select **Source: Deploy from a branch**
3. Select **Branch: gh-pages** and **/ (root)**
4. Save

Your resume will be live at: `https://cobbinma.github.io/resume/`

## 🎨 Customization

### Styling

Edit `resume-stylesheet.css` to customize:
- Colors and fonts
- Spacing and layout
- Print/PDF formatting

### Content Structure

The `resume.md` file uses:
- **YAML frontmatter** for metadata (margins, title, keywords)
- **Markdown headers** for sections (H2 = Skills, Experience, etc.)
- **Bold text** for job titles, company names, dates
- **Bullet points** for responsibilities and achievements

### Adding Sections

```markdown
## New Section

### Subsection Title
Content here...
```

## 📂 Project Structure

```
resume/
├── .github/
│   └── workflows/
│       └── build-resume.yml    # CI/CD pipeline
├── .gitignore                   # Ignore generated files
├── Makefile                     # Build commands
├── README.md                    # This file
├── requirements.txt             # Python dependencies
├── resume.md                    # Resume content (source)
└── resume-stylesheet.css        # Styling
```

## 🛠 Technologies

- **[Pandoc](https://pandoc.org/)** - Markdown → HTML conversion
- **[WeasyPrint](https://weasyprint.org/)** - HTML → PDF conversion
- **[GitHub Actions](https://github.com/features/actions)** - CI/CD automation
- **[GitHub Pages](https://pages.github.com/)** - HTML hosting

## 📄 Local Commands Reference

| Command | Description |
|---------|-------------|
| `make help` | Show all available commands |
| `make install` | Install Pandoc and WeasyPrint |
| `make html` | Generate resume.html |
| `make pdf` | Generate resume.html and resume.pdf |
| `make all` | Same as `make pdf` |
| `make clean` | Remove generated files |

## 🔧 Troubleshooting

### WeasyPrint installation issues on macOS

If you encounter errors installing WeasyPrint:

```bash
# Install system dependencies
brew install cairo pango gdk-pixbuf libffi

# Install WeasyPrint
pip3 install weasyprint
```

### Pandoc not found

```bash
# Install via Homebrew
brew install pandoc

# Or download from https://pandoc.org/installing.html
```

### GitHub Pages not updating

1. Check that the workflow completed successfully in the Actions tab
2. Ensure GitHub Pages is configured to use the `gh-pages` branch
3. Wait a few minutes - Pages deployment can take 2-5 minutes

## 📜 License

This resume template is free to use and modify for your own resume.

## 🙏 Credits

Resume template inspired by [vidluther/markdown-resume](https://github.com/vidluther/markdown-resume).
