Get-Item [0-9].[0-9]_*.md | ForEach-Object { $_.Name } | pandoc -o resultado.pdf --file-scope -M include-after="\clearpage"
