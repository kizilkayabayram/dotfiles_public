# Path to your oh-my-bash installation.
export OSH=/home/sam/.oh-my-bash

source /opt/ros/humble/setup.bash

source ~/.bash_aliases
source ~/.ros_ws_sources

source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash

# Avoid duplicates
HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"


alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"

export PATH=~/.npm-global/bin:$PATH

# # Set the plugin path so Gazebo finds our model and sim
# export GAZEBO_PLUGIN_PATH=${GAZEBO_PLUGIN_PATH}:$HOME/ews/src/sitl_gazebo/build
# # Set the model path so Gazebo finds the airframes
# export GAZEBO_MODEL_PATH=${GAZEBO_MODEL_PATH}:$HOME/ews/src/sitl_gazebo/models
# export GAZEBO_PLUGIN_PATH=${GAZEBO_PLUGIN_PATH}:/home/sam/nav_ws/src/mm_simulation_stack/mm_gazebo_plugins/gazebo_flap_plugin/build
# Disable online model lookup since this is quite experimental and unstable
export GAZEBO_MODEL_DATABASE_URI=""


#source <(kitty + complete setup bash)

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="agnoster"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  general
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
# bashmarks
)

source $OSH/oh-my-bash.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-bash libs,
# plugins, and themes. Aliases can be placed here, though oh-my-bash
# users are encouraged to define aliases within the OSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/sam/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/home/sam/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/home/sam/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/home/sam/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

#source /home/sam/Downloads/alacritty-0.7.2/extra/completions/alacritty.bash
#set -o vi



[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:/home/sam/nav_ws/src/mm_calibration_sim
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:$HOME/.gazebo/models
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:/usr/share/gazebo-9/models

if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
 export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi
