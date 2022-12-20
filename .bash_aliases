alias sourcews='source install/setup.bash'

export HOSTNAME
function cdws { cd $1 && sourcews; }
export -f cdws

alias tmux-fzf='~/.tmux/plugins/tmux-fuzzback/scripts/fuzzback.sh'
alias cb='colcon build --cmake-args -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -G Ninja'
alias cb_log='colcon build --cmake-args -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -G Ninjai --event-handlers console_cohesion+'
