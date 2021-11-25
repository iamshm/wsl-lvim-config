# wsl-lvim-config
Config for wsl and Lunarvim

### wsl-ubuntu
Pre-requisites : 
a. Install wsl
b. Install Ubuntu from MS Store

1. Install a nerd font

2. Install zsh

```sudo apt-get install zsh ```

set zsh as default shell 

```chsh -s $(which zsh)```

3. Install xcip ``` sudo apt-get install xclip ```

Configure VcXserv [from here](https://www.youtube.com/watch?v=_MgrjgQqDcE&t=1s)
It's description has some configs

4. Install build tools

```
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
```

5. Install node using nvm from this [link](https://github.com/nvm-sh/nvm#installing-and-updating)

To install node and npm 

```
nvm install --lts
```

6. Install rust using cargo from this link 
  1.[https://doc.rust-lang.org/cargo/getting-started/installation.html]

7. Disable windows PATH on wsl from [here](https://stackoverflow.com/questions/51336147/how-to-remove-the-win10s-path-from-wsl)

8. Install latest neovim binary 

```
bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/rolling/utils/installer/install-neovim-from-release)
```

9. Install Lunarvim from [here](https://www.lunarvim.org/01-installing.html#prerequisites)

10. For React, Typescript is Required 

```npm install -g typescript-language-server typescript eslint_d prettier```

11. To get emmet support for jsx in js files go to this file

``` /home/{user}/.local/share/lunarvim/site/pack/packer/start/emmet-vim/autoload/emmet.vim ```

and add near the jsx block having something like below

```
\    'javascript': {
\        'extends': 'html',
\        'attribute_name': {'class': 'className', 'for': 'htmlFor'},
\        'empty_element_suffix': ' />',
\    },
```

12. To get jsx snippets in js files, add react snippets to js snippet file (friendly snippets)

13. To get auto imports of custom Components through LSP, you need to have a jsconfig.json file in your project. I have provided my jsconfig. To get jsonfig everytime easily I have created a alias (in .zshrc) and you just need to type jsconfig in your project directory and you are good to go.

            
