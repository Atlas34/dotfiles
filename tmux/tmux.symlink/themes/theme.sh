# vim:ft=sh ts=2 sw=2 sts=2

tm_color_active=colour213
tm_color_inactive=colour241
tm_color_feature=colour4

# Icons
TM_BLACKPHOENIX_ICON="❐"

# Status Colors
TM_BLACKPHOENIX_CLOCK_BG=colour255 # White
TM_BLACKPHOENIX_CLOCK_FG=black
TM_BLACKPHOENIX_HOST_BG=colour69 # Dark Blue
TM_BLACKPHOENIX_HOST_FG=white
TM_BLACKPHOENIX_SESSION_NAME_BG=colour148 # Flashy Green
TM_BLACKPHOENIX_SESSION_NAME_FG=colour234 # Black
TM_BLACKPHOENIX_STATUS_FG=colour253 # White
TM_BLACKPHOENIX_STATUS_BG=colour232 # Dark Gray

# Panel Colors
TM_BLACKPHOENIX_PANEL_BORDER_FG=colour238 # Dark Gray
TM_BLACKPHOENIX_PANEL_BORDER_ACTIVE_FG=colour39 # Light Blue

# Message Colors
TM_BLACKPHOENIX_MESSAGE_BG=colour226 # Yellow
TM_BLACKPHOENIX_MESSAGE_FG=colour16 # Black

# Command Colors
TM_BLACKPHOENIX_COMMAND_BG=colour160 # Light Yellow
TM_BLACKPHOENIX_COMMAND_FG=colour16 # Black

# Window Status Colors
TM_BLACKPHOENIX_WINDOW_STATUS_BG=colour232 # dark gray
TM_BLACKPHOENIX_WINDOW_STATUS_FG=colour245 # light gray

TM_BLACKPHOENIX_ACTIVE_WINDOW_STATUS_BG=colour39 # light blue
TM_BLACKPHOENIX_ACTIVE_WINDOW_STATUS_FG=colour16 # black

# separators
TM_BLACKPHOENIX_SEPARATOR_LEFT_BOLD=""
TM_BLACKPHOENIX_SEPARATOR_LEFT_THIN=""
TM_BLACKPHOENIX_SEPARATOR_RIGHT_BOLD=""
TM_BLACKPHOENIX_SEPARATOR_RIGHT_THIN=""


# status general params
set -g status-left-length 32
set -g status-right-length 150
set -g status-interval 5

# pane border
set-option -g pane-border-fg $TM_BLACKPHOENIX_PANEL_BORDER_FG
set-option -g pane-active-border-fg $TM_BLACKPHOENIX_PANEL_BORDER_ACTIVE_FG

# message text
set-option -g message-bg $TM_BLACKPHOENIX_MESSAGE_BG
set-option -g message-fg $TM_BLACKPHOENIX_MESSAGE_FG

# command text
set-option -g message-command-bg $TM_BLACKPHOENIX_COMMAND_BG
set-option -g message-command-fg $TM_BLACKPHOENIX_COMMAND_FG

# pane number display
set-option -g display-panes-active-colour $tm_color_active
set-option -g display-panes-colour $tm_color_inactive

# clock
setw -g clock-mode-style 24 # 24 hour clock
set-window-option -g clock-mode-colour $tm_color_active

# Status bar definition
TM_BLACKPHOENIX_CLOCK="#[fg=$TM_BLACKPHOENIX_CLOCK_BG]${TM_BLACKPHOENIX_SEPARATOR_LEFT_BOLD}#[bg=$TM_BLACKPHOENIX_CLOCK_BG]#[fg=$TM_BLACKPHOENIX_CLOCK_FG] %R $TM_BLACKPHOENIX_SEPARATOR_LEFT_THIN %d %b"

TM_BLACKPHOENIX_HOST="#[fg=$TM_BLACKPHOENIX_HOST_BG]${TM_BLACKPHOENIX_SEPARATOR_LEFT_BOLD}#[bg=$TM_BLACKPHOENIX_HOST_BG]#[fg=$TM_BLACKPHOENIX_HOST_FG,bold] #h "

set -g status-left $TM_BLACKPHOENIX_SESSION_NAME' '
set -g status-right $TM_BLACKPHOENIX_CLOCK

# default statusbar colors
# set-option -g status-bg colour0
set-option -g status-fg $TM_BLACKPHOENIX_STATUS_FG
set-option -g status-bg $TM_BLACKPHOENIX_STATUS_BG
set-option -g status-attr default

# default window title colors
set-window-option -g window-status-fg $TM_BLACKPHOENIX_WINDOW_STATUS_FG
set-window-option -g window-status-bg $TM_BLACKPHOENIX_WINDOW_STATUS_BG
set -g window-status-format "#I $TM_BLACKPHOENIX_SEPARATOR_RIGHT_THIN #W"

# active window title colors
set-window-option -g window-status-current-fg $TM_BLACKPHOENIX_ACTIVE_WINDOW_STATUS_FG
set-window-option -g window-status-current-bg $TM_BLACKPHOENIX_ACTIVE_WINDOW_STATUS_BG
set-window-option -g window-status-current-format "#[fg=$TM_BLACKPHOENIX_WINDOW_STATUS_BG]$TM_BLACKPHOENIX_SEPARATOR_RIGHT_BOLD#[fg=$TM_BLACKPHOENIX_ACTIVE_WINDOW_STATUS_FG,bold] #I $TM_BLACKPHOENIX_SEPARATOR_RIGHT_THIN #W #[fg=$TM_BLACKPHOENIX_ACTIVE_WINDOW_STATUS_BG,bg=$TM_BLACKPHOENIX_STATUS_BG,nobold]$TM_BLACKPHOENIX_SEPARATOR_RIGHT_BOLD"

