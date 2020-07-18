function __fd2_tm_new -a session_name -d "create a new session if it does not already exist"
  # create the session detached, then switch to it
  tmux -2 new -d -s $session_name
  __fd2_tm_goto $session_name
end

