unbind-key -n C-a
set -g prefix ^A
set -g prefix2 ^A
bind a send-prefix

bind "\"" split-window -c '#{pane_current_path}'
bind "\%" split-window -h -c '#{pane_current_path}'

set -g mode-mouse on
set -g mouse-resize-pane on
set -g mouse-select-pane on
set -g mouse-select-window on
