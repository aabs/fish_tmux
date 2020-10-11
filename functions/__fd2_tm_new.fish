function __fd2_tm_new -d "create a new session if it does not already exist"
    argparse 'n/=+' -- $argv

    set -l name ''
    if test -z $_flag_n
        error "__fd2_tm_new: name must be set (use the -n option)" >&2
        return 1
    else
        set name $_flag_n
    end

  tmux -2 new -d -s $name
  __fd2_tm_goto -n $name
end

