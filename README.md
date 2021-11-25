# wsl-lvim-config
Config for wsl and Lunarvim

### wsl-ubuntu

Install a nerd font

Install zsh

```sudo apt-get install zsh ```

set zsh as default shell 

```chsh -s $(which zsh)```

Install xcip ``` sudo apt-get install xclip ```

Configure VcXserv [https://www.youtube.com/watch?v=_MgrjgQqDcE&t=1s] It's description has some config 

Install build tools

```
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
```

Install node using nvm from this link
[https://github.com/nvm-sh/nvm#installing-and-updating] 

To install node and npm 

```
nvm install --lts
```

Install rust using cargo from this link 
[https://doc.rust-lang.org/cargo/getting-started/installation.html]

Disable windows PATH on wsl [https://stackoverflow.com/questions/51336147/how-to-remove-the-win10s-path-from-wsl

Install latest neovim binary [bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/rolling/utils/installer/install-neovim-from-release)
]

Install Lunarvim from here [https://www.lunarvim.org/01-installing.html#prerequisites]

For React, Typescript is Required 

```npm install -g typescript-language-server typescript eslint_d prettier```

To get emmet support for jsx in js files

go to this file
``` /home/{user}/.local/share/lunarvim/site/pack/packer/start/emmet-vim/autoload/emmet.vim ```

and add near the jsx block having something like below

```
\    'javascript': {
\        'extends': 'html',
\        'attribute_name': {'class': 'className', 'for': 'htmlFor'},
\        'empty_element_suffix': ' />',
\    },
```

to get jsx snippets in js files, add react snippets to js snippet file (friendly snippets)





