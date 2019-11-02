# terminal-profiles
![demo.gif](./demo.gif)
My personal profiles for Windows Terminal. Color scheme is cyberpunk/cyberwave, inspired in part by [Cyberpunk-Neon](https://github.com/Roboron3042/Cyberpunk-Neon).  
`profiles-old.json` is for older versions of windows terminal before [cascading settings were introduced](https://devblogs.microsoft.com/commandline/windows-terminal-preview-1910-release/).  
`profiles.json` was created for Windows Terminal >= 1910.  

## Installation (Automatic)
1. Run `Install-Profiles.ps1`
2. Press "Y" to confirm overwriting your settings 
3. You're done.
 
## Installation (Manual) 
1. Move `synthwave.gif` to a new folder, `%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\backgrounds`
2. Install [Noto Mono for Powerline](https://github.com/powerline/fonts/blob/master/NotoMono/Noto%20Mono%20for%20Powerline.ttf) (OR change the font used in the configs)
3. Open Windows Terminal
4. Press `Ctrl` + `,` to open settings, and paste the contents of `profiles.json` into the opened file for newer versions, or `profiles-old.json` for older versions.
5. Save the file.

## Credits
The font used is [Noto Mono for Powerline](https://github.com/powerline/fonts/blob/master/NotoMono/Noto%20Mono%20for%20Powerline.ttf)  
I was unable to find the source for the background image unfortunately. It seems to be used pretty widely.  