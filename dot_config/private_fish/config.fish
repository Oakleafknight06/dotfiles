if status is-interactive
  # Commands to run in interactive sessions can go here
  #
  # Initializing better cd and better shell history
  zoxide init fish | source
  atuin init fish | source
  # better ls and better ls with options
  abbr -a -- ls 'eza -a'
  abbr -a -- ll 'eza -lah --group-directories-first'
  # Regular utility switiching
  abbr -a -- cd z
  abbr -a -- vim nvim
  abbr -a -- cat bat
  # Makes dotfile setup easier
  abbr -a -- unpackbrew 'brew bundle --file ~/.config/linuxbrew/Brewfile'
  # 'td' for TailDrop and 'tg' for TailGet
  abbr -a -- td 'tailscale file cp'
  abbr -a -- tg 'tailscale file get ~/Downloads'
end
