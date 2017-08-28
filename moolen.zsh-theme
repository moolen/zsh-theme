#
eval my_orange='$FG[214]'
local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%} $(git_prompt_info)'
local dots='%(?.%{$terminfo[bold]$fg[green]%}•%{$terminfo[bold]$fg[yellow]%}•%{$terminfo[bold]$fg[red]%}•%{$reset_color%}.%{$terminfo[bold]$fg[red]%}•%{$terminfo[bold]$fg[red]%}•%{$terminfo[bold]$fg[red]%}•%{$reset_color%})'

prompt_dots() {
    echo -n "$dots"
}

prompt_dir() {
    echo -n " $current_dir $(git_prompt_info)"
}

build_prompt() {
  prompt_dots
  prompt_dir
}

PROMPT="$(build_prompt)"
RPROMPT='$(nvm_prompt_info)'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075]($FG[078]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange•%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"

ZSH_THEME_NVM_PROMPT_PREFIX="%B⬡%b "
ZSH_THEME_NVM_PROMPT_SUFFIX=""