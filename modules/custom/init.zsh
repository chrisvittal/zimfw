#
# Custom aliases/settings
#

# any custom stuff should go here.
# ensure that 'custom' exists in the zmodules array in your .zimrc

## fpath
rustcomppath="${HOME}/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/share/zsh/site-functions"
fpath=(${ZDOTDIR:-"${HOME}/.zsh"}/completions ${rustcomppath} ${fpath})

## Aliases
alias mkdir='mkdir -p'
alias svim='sudo -E vim'
alias p='$PAGER'

# remove default aliases from df and du
unalias df
unalias du

# change default alias for ls, rest are fine
alias ls='ls --color=auto'

## Some Keybindings
bindkey '^I' menu-expand-or-complete

## Pager settings
export LESS='-R -M --shift 10'

# redo less settings
if [[ ${PAGER} == 'less' ]]; then
    # configure a git alias to leave output on screen
    alias gitx='LESS="-X ${LESS}" git'

    export LESS_TERMCAP_mb=$'\E[1;31m'      # Begins blinking.
    export LESS_TERMCAP_md=$'\E[1;34m'      # Begins bold.
    export LESS_TERMCAP_me=$'\E[0m'         # Ends mode.
    export LESS_TERMCAP_se=$'\E[0m'         # Ends standout-mode.
    export LESS_TERMCAP_so=$'\E[7m'         # Begins standout-mode.
    export LESS_TERMCAP_ue=$'\E[0m'         # Ends underline.
    export LESS_TERMCAP_us=$'\E[4;38;5;28m' # Begins underline.
fi

# PS2 prompt settings
