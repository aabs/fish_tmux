function tm -d 'dispatcher for tm functions'
  set l (count $argv)
  if test $l -eq 0
    tm_help
    return 
  end

  set myargv ''
  for x in $argv[2..10]
    switch $x
    case "* *"
      set myargv "$myargv \"$x\""
    case '*'
      set myargv "$myargv $x"
    end
  end
  echo "$myargv"

  switch $argv[1]

    case set
      eval "__fd2_tm_set $myargv"
    case new
      eval "__fd2_tm_new $myargv"
    case detach
      eval "__fd2_tm_detach $myargv"
    case goto
      eval "__fd2_tm_goto $myargv"
    case home
      eval "__fd2_tm_home $myargv"
    case ls
      eval "__fd2_tm_list $myargv"
    case open
      eval "__fd2_tm_open $myargv"
    case session
      eval "__fd2_tm_session $myargv"

    case '*'
      tm_help
  end

end

function tm_help
  echo "usage: tm <cmd> [-n <session name>]"
  echo
  echo "tm has various commands for creating and working with tmux sessions:"
  echo

  echo "    detach    disconnect from the current session"
  echo "    goto      <name> change tmux sessions"
  echo "    home      got to the current home tmux session"
  echo "    ls        list all available tmuxers"
  echo "    new       <session_name> create a new TMUX session"
  echo "    open      open from list dialog"
  echo "    session   display the current session name"
  echo "    set       set current TMUX session"

end