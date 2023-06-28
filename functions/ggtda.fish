function ggtda --description 'Delete all tags but not the latest'
    git fetch --tags
    for tag in (git tag | head -n -1)
        git tag -d $tag
        git push origin :refs/tags/$tag
    end
end