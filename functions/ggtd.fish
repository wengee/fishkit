function ggtd --description 'Delete the tag'
    if test "$argv[1]" != ""
        git tag -d $argv[1]
        git push origin :refs/tags/$argv[1]
    end
end