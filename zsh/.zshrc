export PATH="/home/otto/.pub-cache/bin:/home/otto/Applications/flutter/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/otto/Documents/Imperial_CS/Year_2/50007.1_Laboratory_2/pintos/pintos_task0_ow20/src/utils:/home/otto/Applications:/usr/local/sicstus4.7.0/bin:/home/otto/Documents/Imperial_CS/Year_2/50007.1_Laboratory_2/WACC/WACC Language Specification/wacc_examples/apps:/home/otto/Documents/Imperial_CS/Year_2/50007.1_Laboratory_2/WACC/WACC_32/target/release:/home/otto/.local/share/solana/install/active_release/bin:/home/otto/.cargo/bin"

ZSH_THEME="fwalch"
plugins=( git vi-mode zsh-autosuggestions zsh-syntax-highlighting fzf thefuck )
export ZSH="$ZDOTDIR/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

export y1="/home/otto/Documents/Imperial_CS/Year 1"
export y1j="/home/otto/Documents/Imperial_CS/Year 1/40009 Computing practical/Java"
export y1c="/home/otto/Documents/Imperial_CS/Year 1/40009 Computing practical/C"
export y1ip="/home/otto/Documents/Imperial_CS/Year 1 Internships/Programming"
export y2="/home/otto/Documents/Imperial_CS/Year_2"
export y3="/home/otto/Documents/Imperial_CS/Year_3"
export y3s="/home/otto/Documents/Imperial_CS/Year_3/SEG"
export y2p="/home/otto/Documents/Imperial_CS/Year_2/50007.1_Laboratory_2/pintos/pintos_36/src"
export y2h="/home/otto/Documents/Imperial_CS/Year_2/50001 Algorithm Design and Analysis/haskell"
export y2c="/home/otto/Documents/Imperial_CS/Year_2/c"
export y2r="/home/otto/Documents/Imperial_CS/Year_2/rust"
export y2h="/home/otto/Documents/Imperial_CS/Year_2/haskell"
export y2j="/home/otto/Documents/Imperial_CS/Year_2/java"
export y2w="/home/otto/Documents/Imperial_CS/Year_2/50007.1_Laboratory_2/WACC/WACC_32"
export y2s="/home/otto/Documents/Imperial_CS/Year_2/50007.2 Introduction to Prolog"
export cu="/home/otto/Documents/Cub3"
export btf="/home/otto/Documents/Cub3/BTF/BTF-digital-dance-platform"
export drp="/home/otto/Documents/Imperial_CS/Year_2/DRP/DRP"

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
alias cfiwd="sudo $EDITOR /etc/iwd/main.conf"
alias cfx="sudo $EDITOR /etc/X11/xorg.conf"
alias cfxinit="$EDITOR ~/.config/X/.xinitrc"
alias cfgdb="$EDITOR ~/.config/gdb/.gdbinit"
alias cfp="$EDITOR ~/.config/polybar/config"

alias ctl="ssh ow20@shell4.doc.ic.ac.uk"
alias ctc="ssh ow20@146.169.42.34"
alias clipboard="xclip -selection c"
alias sx="startx"
alias dp="cd '$y2p' && $EDITOR"
alias sn="iwctl station wlan0 scan"
alias gn="iwctl station wlan0 get-networks"
alias cn="iwctl station wlan0 connect "
alias loc="readlink -f"
alias ka="killall"
alias ri="sudo systemctl restart iwd"
alias xl='f() { echo "GDK_SCALE=2 xournalpp \"`readlink -f $1`\" &" | clipboard };f'
alias bl='f() { echo "brave \"$1\" &" | clipboard };f'
alias fsw='f() { fswatch -0 -o \"$1\" | xargs -0 -n1 -I{} $2};f'
alias svm='sudo systemctl start libvirtd && sudo virsh net-start default'
# See the binaries provided by a package
alias bins='f() { pacman -Ql $1 | grep bin };f'
# See "which package" provides the binary you are looking for
alias wp='f() { sudo pacman -Fy && pacman -F $1 };f'
alias dr='f() { DOCKER_BUILDKIT=1 docker run -t $1 };f'
alias drpf='f() { DOCKER_BUILDKIT=1 docker run -p $2:$2 -t $1 };f'
alias dri='f() { DOCKER_BUILDKIT=1 docker run -it --entrypoint=/bin/sh $1 };f'
alias db='f() { DOCKER_BUILDKIT=1 docker build -t $1 --target=$2 . };f'
alias se='f() { /home/otto/Android/Sdk/emulator/emulator @Pixel_2_API_31 };f'

alias backup='f() { sudo rsync -aAXvv --info=progress2 --delete --exclude /dev/ --exclude /proc/ --exclude /sys/ --exclude /tmp/ --exclude /mnt/ --exclude /usr/tmp/ --exclude /run/ --exclude /media/ --exclude /var/cache/ --exclude /lost+found/ --exclude /home/otto/Downloads/ --exclude /home/otto/.cache/ / $1 };f'

# Useful git aliases
alias gc='  f() { git commit -m $1   };f'
alias gs='  f() { git status         };f'
alias ga='  f() { git add $1         };f'
alias gp='  f() { git push           };f'
alias gpl=' f() { git pull           };f'
alias gd='  f() { git diff $1 $2     };f'
alias gl='  f() { git log            };f'
alias gch=' f() { git checkout $1    };f'
alias gchb='f() { git checkout -b $1 };f'
alias gpre='f() { git hook run pre-commit && git hook run pre-push };f'

alias sharescreen='echo "Starting avahi-daemon" && sudo systemctl start avahi-daemon && uxplay && echo "Stopping avahi-daemon" && sudo systemctl stop avahi-daemon.service avahi-daemon.socket'

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


# chpwd() ls 

# For fzf multi-select
# export FZF_DEFAULT_OPTS='--multi --no-height --extended'
# export FZF_DEFAULT_COMMAND='fzf --type f'

# [ "$ARCH" = '' ] && export ARCH=`arch`
# export TOOLDIR=$HOME/c-tools
# export PATH="$TOOLDIR/bin:$TOOLDIR/bin/$ARCH:$PATH"
# [ "$MANPATH" = '' ] && export MANPATH=$TOOLDIR/man || export MANPATH=${MANPATH}:$TOOLDIR/man

# VTUNE
source /opt/intel/oneapi/vtune/2023.0.0/amplxe-vars.sh
alias vtune-gui="vtune-gui & disown"
alias sng="singularity shell -e -H /home --pwd /home --no-home --no-mount $PWD -B /home/otto/Documents/Imperial_CS/Year_3/SPE/cw/cw1/spe-coursework-1-ottowhite:/home/covidhotspotfinder,/data/$USER/m2/:/home/.m2,$HOME/.ssh/authorized_keys:/home/.ssh/authorized_keys,$HOME/.ssh/id_rsa:/home/.ssh/id_rsa,/home/otto/Documents/Imperial_CS/Year_3/SPE/cw/cw1/passwd:/etc/passwd,/home/otto/Documents/Imperial_CS/Year_3/SPE/cw/cw1/ptrace_scope:/proc/sys/kernel/yama/ptrace_scope,/home/otto/Documents/Imperial_CS/Year_3/SPE/cw/cw1/perf_event_paranoid:/proc/sys/kernel/perf_event_paranoid,/home/otto/Documents/Imperial_CS/Year_3/SPE/cw/cw1/.bashrc:/home/.bashrc /data/$USER/spe-image_main.sif"
alias crun="g++ ../Source/*.cpp ../Source/*.hpp ../Source/Column/*.cpp ../Source/Column/*.hpp  ../Source/Utils/*.cpp ../Source/Utils/*.hpp --output standalone && ./standalone"
alias cbnch="cmake --build . && ./Benchmarks"
alias jbnch="mvn install && java -jar target/benchmarks.jar -w 1 -wi 3 -r 1 -f 1 -i 5 -bm avgt -tu s"

