Get-Item [0-9]*.md | ForEach-Object { $_.Name } | pandoc -o resultado.pdf --file-scope -M include-after="\clearpage"
