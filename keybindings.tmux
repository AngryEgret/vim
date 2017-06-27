unbind-key -n C-a
set -g prefix ^A
set -g prefix2 ^A
bind a send-prefix

bind "\"" split-window -c '#{pane_current_path}'
bind "\%" split-window -h -c '#{pane_current_path}'

set-option -g mouse on
run-shell ~/code/tmux-better-mouse-mode/scroll_copy_mode.tmux
