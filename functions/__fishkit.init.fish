function __fishkit.init
    if status is-interactive
        if status is-login
            cd $HOME
        end

        alias notepad="/mnt/c/Windows/notepad.exe"
        alias open="/mnt/c/Windows/explorer.exe"

        alias root="sudo su -"
        alias vi=vim
        alias initwsl="sudo /etc/wsl.init"
        alias redis=redis-cli
        alias myip="curl http://myip.ipip.net/"
    
        set -gx EDITOR vim

        for p in /usr/local/bin /usr/local/sbin
            if not contains $p $PATH
                set -gx PATH $p $PATH
            end
        end
        set -gx PATH . $HOME/.local/bin $HOME/.yarn/bin $HOME/.config/composer/bin $HOME/.composer/vendor/bin $PATH

        abbr -a -g ggpull git pull origin \(__git.current_branch\)
        abbr -a -g gr git remote
    end
end