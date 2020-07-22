# bind \cg "vi ~/.config/fish/config.fish"

# set -l name (basename (status -f) .fish){_uninstall}

# function $name --on-event $name
    # bind --erase \cg
# end

# tl: list sessions
abbr --add tl   'tm ls'

# tn <name>: create a session named <name>
abbr --add tn   'tm new'

# ta <name>: attach to a session named <name>
abbr --add ta   'tmux -2 attach -t'
abbr --add to 'tm open'


if not set -q $fd2_current_tmux_session
  set -U fd2_current_tmux_session "$fish_projects_current_sn"
end

fd2_define_command tm "fishdots plugin for using tmux"

fd2_define_subcommand tm set __fd2_tm_set "set current TMUX session"
fd2_define_subcommand tm new __fd2_tm_new "<session_name> create a new TMUX session"
fd2_define_subcommand tm detach __fd2_tm_detach "disconnect from the current session"
fd2_define_subcommand tm goto __fd2_tm_goto "<name> change tmux sessions"
fd2_define_subcommand tm home __fd2_tm_home "got to the current home tmux session"
fd2_define_subcommand tm ls __fd2_tm_list "list all available tmuxers"
fd2_define_subcommand tm open __fd2_tm_open "open from list dialog"
fd2_define_subcommand tm session __fd2_tm_session "display the current session name"
