function ggtg --description 'Push the tag to remote, or list the tags'
    if test "$argv[1]" = ""
        for tag in (git fetch --tags && git tag)
            echo "$tag"
        end
    else
        ggpa
        git tag "$argv[1]"
        for remote in (git remote show)
            git push "$remote" "$argv[1]"
        end
    end
end