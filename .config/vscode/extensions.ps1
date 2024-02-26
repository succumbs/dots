$file = ".config/vscode/extensions.txt"

foreach ($line in Get-Content $file) {
    if ([string]::IsNullOrWhiteSpace($line)) {
        continue
    }

    code --install-extension $line
}