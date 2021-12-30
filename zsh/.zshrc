export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/otto/Documents/Imperial_CS/Year_2/50007.1_Laboratory_2/pintos/pintos_task0_ow20/src/utils:/home/otto/Applications"

ZSH_THEME="fwalch"
plugins=( git vi-mode zsh-autosuggestions zsh-syntax-highlighting )
export ZSH="$ZDOTDIR/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

export y1="/home/otto/Documents/Imperial_CS/Year 1"
export y1j="/home/otto/Documents/Imperial_CS/Year 1/40009 Computing practical/Java"
export y1c="/home/otto/Documents/Imperial_CS/Year 1/40009 Computing practical/C"
export y1ip="/home/otto/Documents/Imperial_CS/Year 1 Internships/Programming"
export y2="/home/otto/Documents/Imperial_CS/Year_2"
export y2p="/home/otto/Documents/Imperial_CS/Year_2/50007.1_Laboratory_2/pintos/pintos_36/src"
export y2h="/home/otto/Documents/Imperial_CS/Year_2/50001 Algorithm Design and Analysis/haskell"
export y2c="/home/otto/Documents/Imperial_CS/Year_2/c"
export y2r="/home/otto/Documents/Imperial_CS/Year_2/rust"
export y2h="/home/otto/Documents/Imperial_CS/Year_2/haskell"
export y2j="/home/otto/Documents/Imperial_CS/Year_2/java"

# VIM mode
export VI_MODE_SET_CURSOR=true
bindkey -v
bindkey -M viins 'ii' vi-cmd-mode
export KEYTIMEOUT=20

export EDITOR="nvim"
export MANPATH="/usr/share/man"

alias cfi="$EDITOR ~/.config/i3/config"
alias cfa="$EDITOR ~/.config/alacritty/alacritty.yml"
alias cfib="$EDITOR ~/.config/i3/i3blocks.conf"
alias cfz="$EDITOR ~/.config/zsh/.zshrc && source ~/.config/zsh/.zshrc"
alias cfn="$EDITOR ~/.config/nvim/init.vim"
alias cfx="$EDITOR ~/.config/X/.xinitrc"
alias cfgdb="$EDITOR ~/.config/gdb/.gdbinit"
alias cfp="$EDITOR ~/.config/polybar/config"

alias ctl="ssh ow20@shell1.doc.ic.ac.uk"
alias clipboard="xclip -selection c"
alias sx="startx"
alias dp="cd '$y2p' && $EDITOR"
alias sn="iwctl station wlan0 scan"
alias gn="iwctl station wlan0 get-networks"
alias cn="iwctl station wlan0 connect "

alias gittags="echo \
\"build:    Build related changes (eg: npm related/ adding external dependencies)
chore:    A code change that external user won't see (eg: change to .gitignore file or .prettierrc file)
feat:     A new feature
fix:      A bug fix
docs:     Documentation related changes
refactor: A code that neither fix bug nor adds a feature. (eg: You can use this when there is semantic changes like renaming a variable/ function name)
perf:     A code that improves performance
style:    A code that is related to styling
test:     Adding new test or making changes to existing test\""

alias pdoc="zathura '/home/otto/Documents/Imperial_CS/Year_2/50007.1_Laboratory_2/pintos/pintos-manual.pdf' & disown"


chpwd() ls 

# For fzf multi-select
export FZF_DEFAULT_OPTS='--multi --no-height --extended'

# [ "$ARCH" = '' ] && export ARCH=`arch`
# export TOOLDIR=$HOME/c-tools
# export PATH="$TOOLDIR/bin:$TOOLDIR/bin/$ARCH:$PATH"
# [ "$MANPATH" = '' ] && export MANPATH=$TOOLDIR/man || export MANPATH=${MANPATH}:$TOOLDIR/man
