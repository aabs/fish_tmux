function __fd2_tm_set -d "set current TMUX session"
    argparse 'n/=+' -- $argv

    set -l name ''
    if test -z $_flag_n
        error "__fd2_tm_set: name must be set (use the -n option)" >&2
        return 1
    else
        set name $_flag_n
    end

    set -U fd2_current_tmux_session $name
end
