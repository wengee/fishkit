function ggpaa --description 'Commit all changes, push current HEAD and tags to remote'
    if test "$argv[1]" = ""
        set COMMENT "commit"
    else
        set COMMENT "$argv[1]"
    end

    git add -A .
    git commit -m "$COMMENT"

    for remote in (git remote show)
        git push $remote (__git.current_branch)
        git push --tags $remote
    end
end