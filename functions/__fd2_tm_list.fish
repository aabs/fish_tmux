function __fd2_tm_list -d "list tmuxers with descriptions"
  tmux ls | cut -d':' -f1 |sort
end
