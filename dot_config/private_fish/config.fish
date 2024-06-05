if status is-interactive
  # Commands to run in interactive sessions can go here
  zoxide init fish | source
  atuin init fish | source
  abbr -a -- cd z
  abbr -a -- ls eza
  abbr -a -- vim nvim
  abbr -a -- cat bat
end
