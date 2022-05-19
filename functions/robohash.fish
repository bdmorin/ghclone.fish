# this function should safely show you 5 images if your iterm is setup to show images, any modern iterm2 terminal will support this.

function robohash
    set -l outfile 
    set -l term (string escape --style=url "$argv")
    for I in (seq 5);
        set -l url "https://robohash.org/set_set$I/$term"
        set -a outfile "
![$url]($url)
- [$url]($url)
"
    end
    echo $outfile
end


# I use this like: robohas-web > /tmp/robohash.html; open /tmp/robohash.html
function robohash-web
    set -l outfile 
    set -l rand
    set -l term (string escape --style=url "$argv")
    for I in (seq 100);
	set -l r (random 1 2)
        set -l url "https://robohash.org/set_set$I/bgset_bg$r/$term"
        set -a outfile "<img alt=\"$url\" src=\"$url\" />"
    end
    echo $outfile
end
