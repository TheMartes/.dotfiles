<h1 align="center">🔥 .files 🔥</h1>

![dotfiles](https://i.imgur.com/z1D20AT.png)

## Config files installation
1. Clone repo into your $HOME and name it .files
2. Make sure you have Fish shell and OH-MY-FISH installed
3. Symlink all files. (Now you can pull repo for updated and every symlinked file will be changed)
4. Done

## For automated installation (Works on ubuntu only)
```shell-script
wget https://raw.githubusercontent.com/TheMartes/dotfiles/master/install 
chmod +x install
./install
```

## Manual Installation
Clone the repo as `.files` directory into your home folder

### Terminal commands
```shell-script
$ cd ~
$ git clone https://github.com/TheMartes/dotfiles .files
$ ln -s $HOME/.files/.aliases.sh $HOME/.aliases.sh
$ ln -s $HOME/.files/.tmux.conf $HOME/.tmux.conf
$ ln -s $HOME/.files/fish/ $HOME/.config/fish
$ ln -s $HOME/.files/omf/ $HOME/.config/omf
$ ln -s $HOME/.files/nvim/ $HOME/.config/nvim
$ ln -s $HOME/.files/.zshrc $HOME/.zshrc
```

### Reload Tmux with new config file
```
tmux source-file $HOME/.tmux.conf
```

### Pull all Submodules (ONLY IF YOU NEED IT)
```
git submodule update --init --recursive
```

### Update VIMProc for your system
If you're on ubuntu you will need following packages
```
sudo apt install gcc && make
```
Remember that the APT package manager will work only on ubuntu and debian, so according to your operating system you'll need to use your package manager like `dnf`, `pacman` or `brew`  

If you have the package already installed then go into vimproc directory and run `make`. Or enter following command
```
cd $HOME/.files/nvim/bundle/vimproc.vim && make
```

***
## Apps
### Development
+ **Editor:** NeoVIM. Really loving it. [Here you have number of reasons why you should use NeoVIM instead of VIM](https://www.youtube.com/watch?v=LRQGAnPtNdM)
+ **Terminal:** [iTerm2](https://iterm2.com/) + tmux [with my config files](https://github.com/TheMartes/dotfiles/blob/master/.tmux.conf).
+ **Database Client:** [SequelPro](https://sequelpro.com/), probably most awesome MySQL Client for mac. For redis i'm using [Medis](http://getmedis.com/)
+ **API Testing** is delivered by [Postman](https://www.getpostman.com/)
+ **Containers** are managed by [Docker](https://www.docker.com/), and [Valet](https://laravel.com/docs/5.5/valet) for localhost
+ **GIT:** CLI driven :)

### Other tools
+ For music i'm using [Spotify](https://www.spotify.com/)
+ Email client is [Spark](https://sparkmailapp.com/)
+ Browser of choice is [Google Chrome](https://www.google.com/chrome/index.html)
+ For communication i'm using [Discord](https://discordapp.com/), [Slack](https://slack.com/) & [Telegram](https://telegram.org/)
+ Note taking app of choice is [Simplenote](https://simplenote.com/)
+ [Google Keep](https://keep.google.com/) for staying organized.
+ For Office i used to use [Google Docs](docs.google.com), since it's free and awesome, but for more complex work with documents i'm using [MS Office](https://products.office.com/)
+ Speaking of documents, for markdown is best [MacDown](http://macdown.uranusjr.com/)
+ My files are safe in [Dropbox](https://www.dropbox.com/)
+ [Transmit](https://panic.com/transmit/) as my primary FTP Client
+ To be more productive on mac, i can't stand out Spotlight and Default App Switcher (Alt + Tab), So i investigated a quick research, and i'm pretty happy with [Alfred](https://www.alfredapp.com/) and [Contexts](https://contexts.co/)

### Slack Darkmode for macOS
```
echo 'document.addEventListener("DOMContentLoaded", function() {$.ajax({url: "https://cdn.rawgit.com/laCour/slack-night-mode/master/css/raw/black.css",success: function(css) {let overrides = "code { background-color: #535353; color: #85c5ff; } .c-mrkdwn__pre, .c-mrkdwn__quote { background: #535353 !important; background-color: #535353 !important; }"; $("<style></style>").appendTo("head").html(css + overrides);}});});' | sudo tee -a /Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/ssb-interop.js

```
