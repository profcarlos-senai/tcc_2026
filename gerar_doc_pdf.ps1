$arquivos = Get-ChildItem [0-9].[0-9]_*.md
pandoc $arquivos -o tcc.pdf --file-scope -V documentclass=report --top-level-division=chapter
pandoc $arquivos -o tcc.docx --file-scope -V documentclass=report --top-level-division=chapter