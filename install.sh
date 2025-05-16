if [ ! -d "~/.config/nvim/lua/config" ]; then
  echo "copying config to ~/.config/nvim/lua/config"
  cp -r ./config/ ~/.config/nvim/lua/config
fi

if [ ! -d "~/.config/nvim/lua/plugins" ]; then
  echo "copying plugins to ~/.config/nvim/lua/"
  cp -r ./plugins/ ~/.config/nvim/lua/plugins
fi

if [ ! -f "~/.config/nvim/lua/plugins" ]; then
  echo "copying tmux.conf to ~/"
  cp .tmux.conf ~/
fi
