# Shell-agnostic preferences
if [ -f $HOME/.profile ]; then
    source $HOME/.profile
fi

# Load zshuery
source $HOME/Github/zshuery/zshuery.sh
load_defaults
load_aliases
load_lol_aliases
load_completion $HOME/Github/zshuery/completion
load_correction
load_vim_input

# Prompt appearence
prompts '%{$fg_bold[green]%}$(COLLAPSED_DIR)%{$reset_color%}$(virtualenv_info) %{$fg[yellow]%}$(prompt_char)%{$reset_color%} ' '%{$fg[red]%}$(ruby_version)%{$reset_color%}'

if [[ $IS_MAC -eq 1 ]]; then
    # Add OSX default paths
    eval `/usr/libexec/path_helper -s`
    export EDITOR='mvim -f --nomru -c "au VimLeave * !open -a Terminal"'
else
    export EDITOR='vim'
fi

chpwd() {
    update_terminal_cwd
}
