function ggpa --description 'Commit all changes, push current HEAD to remote'
    if test "$argv[1]" = ""
        set COMMENT "commit"
    else
        set COMMENT "$argv[1]"
    end

    git add -A .
    git commit -m "$COMMENT"
    git push origin (__git.current_branch)
end