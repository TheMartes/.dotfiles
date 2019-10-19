export PATH="$HOME/bin:$HOME/go/bin:$PATH";

if [[ "$OSTYPE" == "linux-gnu" ]]; then 
    export PATH="$HOME/.config/composer/vendor/bin:$PATH";
elif [[ "$OSTYPE" == "darwin"* ]]; then
    export PATH="$HOME/.composer/vendor/bin:$PATH";
    export PATH="$HOME/.cargo/bin:$PATH";
    export PATH="$HOME/bin:/usr/local/bin:$PATH";
    export NVM_DIR="$HOME/.nvm";
fi

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

# Take Command
function take() {
  mkdir "$1"
  cd "$1"
}

