export PATH="$HOME/bin:$PATH";
export PATH="$HOME/.config/composer/vendor/bin:$PATH";

# Prompt Init
source $HOME/.bash_prompt

# Aliases
source $HOME/.aliases.sh

# Git Credentials Info 
GIT_AUTHOR_NAME="Matej Buncek"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="matt.buncek@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"

# Init qfc
# See: https://github.com/pindexis/qfc
[[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"

# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/bin/git-completion.bash
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/bin/git-prompt.sh

# Take Command
function take() {
  mkdir "$1"
  cd "$1"
}

