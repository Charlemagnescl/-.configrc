export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export fzf_preview_cmd='[[ $(file --mime {}) =~ binary  ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500'
