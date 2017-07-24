#
# Custom aliases/settings
#

# any custom stuff should go here.
# ensure that 'custom' exists in the zmodules array in your .zimrc

alias mkdir='mkdir -p'

# remove default aliases from df and du
unalias df
unalias du

# some keybindings
bindkey '^I' menu-expand-or-complete

export LESS='-R -M --shift 10'

# redo less settings
if [[ ${PAGER} == 'less' ]]; then
    export LESS_TERMCAP_mb=$'\E[1;31m'      # Begins blinking.
    export LESS_TERMCAP_md=$'\E[1;34m'      # Begins bold.
    export LESS_TERMCAP_me=$'\E[0m'         # Ends mode.
    export LESS_TERMCAP_se=$'\E[0m'         # Ends standout-mode.
    export LESS_TERMCAP_so=$'\E[7m'         # Begins standout-mode.
    export LESS_TERMCAP_ue=$'\E[0m'         # Ends underline.
    export LESS_TERMCAP_us=$'\E[4;38;5;28m' # Begins underline.
fi
