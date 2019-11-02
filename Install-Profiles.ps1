$path = "$env:appdata\.terminal"
echo "Moving synthwave.gif to $path..."
New-Item -Force -ItemType Directory -Path $path
Copy-Item synthwave.gif -Destination $path
echo "Move completed."

$fontPath = Resolve-Path "fonts/Noto Mono for Powerline.ttf"
echo "Installing font from '$fontPath...'"
if (!$fonts) {
    $shellApp = New-Object -ComObject shell.application
    $fonts = $shellApp.NameSpace(0x14)
}
$fonts.CopyHere($fontPath)
echo "Font installation completed."
$nameMatch = Get-AppxPackage -Name "Microsoft.WindowsTerminal" |out-string -stream |Select-String -Pattern "PackageFamilyName\s+:\s(.*)"
$appName = $nameMatch.Matches.groups[1].Value
$dataPath = "$env:LOCALAPPDATA\Packages\$appName\LocalState"
echo "Found Windows Terminal installation at $dataPath".
echo "Copying background..."
New-Item -Force -ItemType Directory -Path "$dataPath\backgrounds"
Copy-Item synthwave.gif -Destination "$dataPath\backgrounds\synthwave.gif"

echo "Copying settings over profile.json."
echo "Warning: Modifying this file will overwrite any other changes to settings. If you choose not to overwrite this file, you will need to manually modify it."
$deleteOkay = Read-Host -Prompt 'Can we overwrite it? (y/N)'
if ($deleteOkay -ieq "y") {
    Move-Item "$dataPath\profiles.json" -Destination "$dataPath\profiles.json.bak"
    echo "Moved $dataPath\profiles.json to $dataPath\profiles.json.bak."
    Copy-Item profiles.json -Destination "$dataPath\profiles.json"
} else {
    echo "Will not overwrite profiles.json. Changes will not be applied until this step has been completed."
}