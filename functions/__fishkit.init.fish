function __fishkit.init
    if status is-interactive
        if status is-login
            cd $HOME
        end
    
        alias notepad="/mnt/c/Windows/notepad.exe"
        alias open="/mnt/c/Windows/explorer.exe"

        if test -e /mnt/d/Scoop/apps/vscode/current/bin/code
            alias code="/mnt/d/Scoop/apps/vscode/current/bin/code"
        else
            alias code="/mnt/d/Program\ Files/VSCode/bin/code"
        end
    
        alias root="sudo su -"
        alias vi=vim
        alias initwsl="sudo /etc/wsl.init"
        alias redis=redis-cli
        alias myip="curl http://myip.ipip.net/"
    
        set -gx EDITOR vim
        set -gx PATH . $HOME/.local/bin $HOME/.yarn/bin $HOME/.config/composer/bin $PATH

        abbr -a -g ggpull git pull origin \(__git.current_branch\)
        abbr -a -g gr git remote
    end
end