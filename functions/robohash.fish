function robohash
    set -l outfile 
    set -l term (string escape --style=url "$argv")
    for I in (seq 4);
        set -l url "https://robohash.org/set_set$I/$term"
        set -a outfile "
![$url]($url)
- [$url]($url)
"
    end
    echo $outfile
end
