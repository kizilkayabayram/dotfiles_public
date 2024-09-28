alias sws1='source devel_isolated/setup.bash'
alias sws2='source install/setup.bash'

function cdws1 { cd $1 && sws1; }
export -f cdws1

function cdws2 { cd $1 && sws2; }
export -f cdws2

alias tmux-fzf='~/.tmux/plugins/tmux-fuzzback/scripts/fuzzback.sh'
alias cb='colcon build --cmake-args -DCMAKE_EXPORT_COMPILE_COMMANDS=ON'
alias cb_log='colcon build --cmake-args -DCMAKE_EXPORT_COMPILE_COMMANDS=ON --event-handlers console_cohesion+'
alias compcommands="jq -s 'map(.[])' build*/**/compile_commands.json > compile_commands.json"
alias buildws1='catkin_make_isolated -DCMAKE_EXPORT_COMPILE_COMMANDS=1'
alias buildws2='colcon build --cmake-args=-DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=ON'
alias rosdepi='rosdep install --from-paths src --ignore-src -r -y'
