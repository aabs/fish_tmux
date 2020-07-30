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

fd2_define_command -p tm -d "fishdots plugin for using tmux"

fd2_define_subcommand -p tm -c set -f __fd2_tm_set -d "set current TMUX session"
fd2_define_subcommand -p tm -c new -f __fd2_tm_new -d "<session_name> create a new TMUX session"
fd2_define_subcommand -p tm -c detach -f __fd2_tm_detach -d "disconnect from the current session"
fd2_define_subcommand -p tm -c goto -f __fd2_tm_goto -d "<name> change tmux sessions"
fd2_define_subcommand -p tm -c home -f __fd2_tm_home -d "got to the current home tmux session"
fd2_define_subcommand -p tm -c ls -f __fd2_tm_list -d "list all available tmuxers"
fd2_define_subcommand -p tm -c open -f __fd2_tm_open -d "open from list dialog"
fd2_define_subcommand -p tm -c session -f __fd2_tm_session -d "display the current session name"
