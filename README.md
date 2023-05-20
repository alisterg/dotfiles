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

- Vim
- Prettier
- Bearded icons
- Quill icons
- Separators
- AWS Toolkit
- Insert GUID
- Any language / framework related plugins

# Misc

- Node: `brew install nvm`
  - Then follow the instructions to add to PATH etc
- Firefox: `brew install --cask firefox`
- Chrome: `brew install --cask google-chrome`
- ImageOptim: `brew install --cask imageoptim`
- SF Symbols: `brew install --cask sf-symbols`
- Get wallpapers from `./wallpapers`
- Install font from `./font`
- `brew tap homebrew/cask-fonts`
- `brew install --cask font-source-code-pro`

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
  "editor.wordWrap": "on",
  "debug.onTaskErrors": "debugAnyway",
  "git.autofetch": true,
  "editor.minimap.showSlider": "always",
  "editor.bracketPairColorization.enabled": true,
  "editor.rulers": [100],
  "terminal.integrated.defaultProfile.osx": "zsh",
  "css.lint.unknownAtRules": "ignore",
  "editor.cursorSmoothCaretAnimation": "on",
  "editor.cursorBlinking": "smooth",
  "editor.cursorSurroundingLines": 3,
  "workbench.iconTheme": "bearded-icons",
  "editor.guides.indentation": false,
  "files.exclude": {
    "node_modules": true,
    "package-lock.json": true,
    "**/.git": true,
    "**/.svn": true,
    "**/.hg": true,
    "**/CVS": true,
    "**/.DS_Store": true,
    "**/Thumbs.db": true
  },
  "prettier.printWidth": 120,
  "aws.telemetry": false,
  "aws.codeWhisperer.shareCodeWhispererContentWithAWS": false,
  "diffEditor.codeLens": true,
  "csharp.referencesCodeLens.enabled": false,
  "editor.folding": false,
  "separators.functions.ignoreCallbackInline": true,
  "[csharp]": {
    "editor.defaultFormatter": "ms-dotnettools.csharp"
  },
  "[html]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[json]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[jsonc]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[typescriptreact]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[go]": {
    "editor.defaultFormatter": "golang.go"
  },
  "editor.codeActionsOnSave": {
    "source.organizeImports": false
  },
  "[yaml]": {
    "editor.defaultFormatter": "redhat.vscode-yaml"
  },
  "vue.inlayHints.optionsWrapper": false,
  "[vue]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "git.confirmSync": false,
  "workbench.activityBar.visible": false,

  // MONDAY
  // "editor.lineHeight": 22,
  // "workbench.colorTheme": "A-1 Monday",
  // "editor.fontFamily": "jetbrains mono",

  // TUESDAY
  // "editor.lineHeight": 0,
  // "editor.fontSize": 13.5,
  // "workbench.colorTheme": "A-2 Tuesday",
  // "editor.fontFamily": "ubuntu mono ligaturized",

  // WEDNESDAY
  // "editor.lineHeight": 22,
  // "workbench.colorTheme": "A-3 Wednesday",
  // "editor.fontFamily": "jetbrains mono",

  // THURSDAY
  // "editor.lineHeight": 0,
  // "workbench.colorTheme": "A-4 Thursday",
  // "editor.fontFamily": "input",

  // WEEKEND
  "editor.lineHeight": 0,
  "workbench.colorTheme": "A-5 Weekend",
  "editor.fontFamily": "io lib"
}
```

</details>
