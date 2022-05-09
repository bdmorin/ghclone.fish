function ghclone 
    # set -l gh ( string split -r -m2 '/' 'https://github.com/LearnLinuxTV/personal_ansible_desktop_configs.git' )
    set -f gh ( string split --no-empty '/' "$argv" ) 
    set -f site $gh[2]
    set -f user $gh[3]
    set -f repo $gh[4]
    mkdir -vp ./$site/$user
    git clone "$argv" "./$site/$user/$repo"
end
