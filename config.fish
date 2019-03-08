function add_to_path_unique
  if not contains $argv[1] $PATH
    set -gx PATH $argv[1] $PATH
  end
end

add_to_path_unique $HOME/.cargo/bin
add_to_path_unique /usr/local/go/bin
add_to_path_unique $HOME/.vim/scripts

set TERM xterm-256color
set fish_term24bit 0

xmodmap -e 'keycode 66 = F10'
