function __fd2_tm_open -d "select from existing tmuxers"
  __fd2_tm_goto -n (__fd2_tm_list | fzf )
end
