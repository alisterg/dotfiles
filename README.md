It's fresh computer time!

# First things

- Sign in
- Check for system updates
- Install and run XCode from App Store
- Install Magnet from App Store
- Remove all icons from Dock, and any unused bloatware
- XCode CLI tools: `xcode-select --install`
- Homebrew: https://brew.sh

# Iterm2 and Shell stuff

- Install: `brew install --cask iterm2`
- Install the themes from `./iterm_themes`
- z: https://github.com/rupa/z
- Oh My Zsh: https://ohmyz.sh/
- PowerLevel10k: https://github.com/romkatv/powerlevel10k#oh-my-zsh

# VSCode

- Install: `brew install --cask visual-studio-code`
- Install themes from `./vscode_themes` (.vsix file)
- Install Iosevkata from `./fonts`
- Sign in with GitHub

Extensions:

- Prettier
- Quill Icons
- Any language / framework related plugins

<details>
<summary>NOTE: if settings don't sync:</summary>

```json
{
  "telemetry.telemetryLevel": "off",
  "window.commandCenter": false,
  "editor.fontFamily": "Iosevkata, Consolas, Menlo, monospace",
  "editor.fontLigatures": true,
  "editor.bracketPairColorization.enabled": false,
  "editor.wordWrap": "on",
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "workbench.tree.indent": 18,
  "workbench.iconTheme": "quill-icons-minimal",
  "debug.onTaskErrors": "debugAnyway",
  "git.autofetch": true,
  "workbench.activityBar.visible": false,
  "editor.minimap.showSlider": "always",
  "breadcrumbs.enabled": false,
  "editor.rulers": [120],
  "editor.lineNumbers": "off",
  "editor.folding": false,
  "workbench.colorTheme": "Ala Gruuv"
}
```

</details>

# Misc

- Node: `brew install node`
- Firefox: `brew install --cask firefox`
- Chrome: `brew install --cask google-chrome`
- ImageOptim: `brew install --cask imageoptim`
- SF Symbols: `brew install --cask sf-symbols`
- Set wallpaper from `./wallpapers`

# Notes

- If you feel like using neovim: https://github.com/alisterg/dotfiles
- If you need Slack: `brew install --cask slack`
  - Slack Nord theme: https://www.nordtheme.com/docs/ports/slack/installation
