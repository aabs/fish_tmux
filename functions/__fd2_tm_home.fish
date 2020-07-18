function __fd2_tm_home -d "goto home dir of current tmuxer"
  set -l NUM_TMUX_ENV_VARS (env | grep -e TMUX | wc -l)
  echo "vars: $NUM_TMUX_ENV_VARS"
  if test $NUM_TMUX_ENV_VARS -eq 0
    info "attaching"
    tmux -2 attach -t $CURRENT_TMUX_SESSION
  else
    info "switching"
    tmux switch -t $CURRENT_TMUX_SESSION
  end
end

