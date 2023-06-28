function ggtga --description 'Commit all changes, auto tag, push the tag to remote'
    if ggpa
        set VERSION (date +'%Y%m%d%H%M')
        git tag $VERSION
        git push origin $VERSION
    end
end