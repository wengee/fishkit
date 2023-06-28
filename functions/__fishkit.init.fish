function __fishkit.init
    if status is-interactive
        if status is-login
            cd $HOME
        end
    
        alias notepad="/mnt/c/Windows/notepad.exe"
        alias open="/mnt/c/Windows/explorer.exe"
        alias code="/mnt/d/Program\ Files/VSCode/bin/code"
    
        alias root="sudo su -"
        alias vi=vim
        alias initwsl="sudo /etc/wsl.init"
        alias redis=redis-cli
        alias myip="curl http://myip.ipip.net/"
    
        set -gx EDITOR vim

        abbr -a -g ggpull git pull origin \(__git.current_branch\)
    end
end