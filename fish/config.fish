if status is-interactive
    # Commands to run in interactive sessions can go here

starship init fish | source
nvm use latest --silent

alias pn="pnpm"
alias pnd="pnpm dev"
alias pnb="pnpm build"
alias pns="pnpm start"
alias pni="pnpm install"
alias cls="clear"

export BROWSER=wslview

end

# pnpm
set -gx PNPM_HOME "/home/anurag/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end