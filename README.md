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
- Sign in with GitHub

Extensions:

- Prettier
- Quill Icons
- Catppuccin Icons
- Any language / framework related plugins

# Misc

- Node: `brew install nvm`
  - Then follow the instructions to add to PATH etc
- Firefox: `brew install --cask firefox`
- Chrome: `brew install --cask google-chrome`
- ImageOptim: `brew install --cask imageoptim`
- SF Symbols: `brew install --cask sf-symbols`
- Get wallpapers from `./wallpapers`
- Install fonts from font repo
- `brew tap homebrew/cask-fonts`
- `brew install --cask font-victor-mono`
- `brew install --cask font-source-code-pro`
- `brew install --cask font-hack`
- `brew install --cask font-sf-mono`

# Others

- Neovim: https://github.com/alisterg/dotfiles
- Slack: `brew install --cask slack`

---

<details>
<summary>VSCode settings</summary>

```json
{
  "telemetry.telemetryLevel": "off",
  "window.commandCenter": false,
  "editor.fontLigatures": true,
  "editor.bracketPairColorization.enabled": false,
  "editor.wordWrap": "on",
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "workbench.tree.indent": 22,
  "debug.onTaskErrors": "debugAnyway",
  "git.autofetch": true,
  "workbench.activityBar.visible": false,
  "editor.minimap.showSlider": "always",
  "breadcrumbs.enabled": false,
  "editor.rulers": [120],
  "editor.folding": false,
  "terminal.integrated.defaultProfile.osx": "zsh",
  "css.lint.unknownAtRules": "ignore",
  "editor.cursorSmoothCaretAnimation": "on",
  "editor.cursorBlinking": "smooth",
  "editor.cursorSurroundingLines": 3,

  // THEMES

  // -------- NEO THEME
  // "workbench.colorTheme": "Ala Neo",
  // "editor.fontFamily": "victor mono"
  // "workbench.iconTheme": "catppuccin-mocha",

  // -------- MONOKAIPRO THEME
  "workbench.colorTheme": "Ala MonokaiPro",
  "editor.fontFamily": "victor mono",
  "workbench.iconTheme": "catppuccin-mocha",

  // -------- VITE THEME
  // "workbench.colorTheme": "Ala Vite",
  // "editor.fontFamily": "input, hack",
  // "workbench.iconTheme": "catppuccin-mocha",

  // -------- XC THEME
  // "workbench.colorTheme": "Ala XC",
  // "editor.fontFamily": "sf mono",
  // "workbench.iconTheme": "catppuccin-mocha",

  // -------- LIGHT THEME
  // "workbench.colorTheme": "Ala Vendi Light",
  // "editor.fontFamily": "cartograph cf",
  // "workbench.iconTheme": "catppuccin-latte",
}
```

</details>
