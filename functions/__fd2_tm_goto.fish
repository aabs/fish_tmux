function __fd2_tm_goto -a name -d "switch tmuxers"
  info "Switching to $name"
  __fd2_tm_set $name
  __fd2_tm_home
end

