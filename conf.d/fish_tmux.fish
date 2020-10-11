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
