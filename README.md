# ghclone.fish
simple fish function for how I like to clone repositories

## Update
I've been using `git grab` instead of ghclone. It fits the git ecosystem better. I might pick this up again, otherwise check out https://github.com/wezm/git-grab it works wonderfully.

just type `ghclone [https://github.com/bdmorin/ghclone.fish.git]` and it will create a small directory structure and clone to it.

```
cd ~/Projects
ghclone https://github.com/bdmorin/ghclone.fish
❯ tree ./github.com/bdmorin                                                                                             
github.com/bdmorin
└── ghclone.fish
    ├── README.md
    ├── completions
    │   └── ghclone.fish
    ├── functions
    │   └── ghclone.fish
    └── tests
        └── ghclone.fish
```

I wanted to write a fisher plugin.

#todo
 - write tests
 - write completion
 - integrate [gws](https://streakycobra.github.io/gws/)
 - maybe write a charm.sh/glow wrapper for fun
