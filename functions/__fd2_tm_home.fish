function __fd2_tm_home -d "goto home dir of current tmuxer"
  set -l NUM_TMUX_ENV_VARS (env | grep -e TMUX | wc -l)
  echo "vars: $NUM_TMUX_ENV_VARS"
  if test $NUM_TMUX_ENV_VARS -eq 0
    info "attaching"
    tmux -2 attach -t $fd2_current_tmux_session
  else
    info "switching"
    tmux switch -t $fd2_current_tmux_session
  end
end

