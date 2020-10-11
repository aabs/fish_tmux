function __fd2_tm_goto -d "switch tmuxers"
    argparse 'n/=+' -- $argv

    set -l name ''
    if test -z $_flag_n
        error "__fd2_tm_set: name must be set (use the -n option)" >&2
        return 1
    else
        set name $_flag_n
    end
    __fd2_tm_set -n $name
    __fd2_tm_home
end

