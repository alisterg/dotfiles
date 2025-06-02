It's fresh computer time!

Why not automate this with a script?
1. I may want to skip certain steps
2. The commands to install may change by the time I get a new computer
3. I should only run this once every few years at most - not worth the time

# First things
- Sign in
- Check for system updates
- Install and run XCode from App Store
- Remove all icons from Dock, and any unused bloatware
- XCode CLI tools: `xcode-select --install`
- Homebrew: https://brew.sh

# Iterm2
- iterm2: `brew install --cask iterm2`
- Install the profiles from `iterm_profiles.json`
- Oh My Zsh: https://ohmyz.sh/
- PowerLevel10k: https://github.com/romkatv/powerlevel10k#oh-my-zsh
- Add `zshrc` contents to `~/.zshrc`

# Vim
- Copy dotfiles from `vim/` to `~/.vim/`
- Ripgrep: `brew install ripgrep`
- Bat: `brew install bat`
- Vim-plug: https://github.com/junegunn/vim-plug
- Run `:PlugInstall`

# Misc
- Node:
  - `brew install nvm`
  - Then follow the instructions to add to PATH etc
- z: `brew install z`
- tree: `brew install tree`
- VS Code: `brew install --cask visual-studio-code`
  - Install vsix theme from `vscode_themes`
  - Sign in with GitHub
- Firefox: `brew install --cask firefox`
- Chrome: `brew install --cask google-chrome`
- Diff-so-fancy: `brew install diff-so-fancy`
