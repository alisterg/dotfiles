It's fresh computer time!

# First things

- Sign in
- Check for system updates
- Install and run XCode from App Store
- Remove all icons from Dock, and any unused bloatware
- XCode CLI tools: `xcode-select --install`
- Homebrew: https://brew.sh

# Iterm2 and Shell stuff

- iterm2: `brew install --cask iterm2`
- Install the profiles from `./iterm_profiles`
- Ubuntu mono:
  - `brew tap homebrew/cask-fonts`
  - `brew install --cask font-ubuntu-mono`
- z: `brew install z`
- Oh My Zsh: https://ohmyz.sh/
- PowerLevel10k: https://github.com/romkatv/powerlevel10k#oh-my-zsh
- tmux:
  - `brew install tmux`
  - Copy .tmux.conf to home directory
- neovim:
  - `brew install neovim`
  - Copy dotfiles from `dotconfig` to `~/.config/nvim`
  - Vim-plug: https://github.com/junegunn/vim-plug#neovim
  - CoC plugins, eg. `:CocInstall coc-tsserver coc-json coc-html coc-css coc-prettier`

# Misc

- Node:
  - `brew install nvm`
  - Then follow the instructions to add to PATH etc
- Firefox: `brew install --cask firefox`
- Chrome: `brew install --cask google-chrome`
- ImageOptim: `brew install --cask imageoptim`
- Get wallpapers from `./wallpapers`
- Slack: `brew install --cask slack`
