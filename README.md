# wsl-lvim-config
Configuration of wsl and neovim[Lunarvim] for React Development

### wsl-ubuntu
&nbsp;Pre-requisites : 

&nbsp;&nbsp; a. Install wsl

&nbsp;&nbsp;b. Install Ubuntu from MS Store

1. Install a nerd font

2. Install zsh

&nbsp;&nbsp;```sudo apt-get install zsh ```

&nbsp;&nbsp;set zsh as default shell  &nbsp; ```chsh -s $(which zsh)```

3. Install xcip &nbsp; ``` sudo apt-get install xclip ```

&nbsp;&nbsp;Configure VcXserv [from here](https://www.youtube.com/watch?v=_MgrjgQqDcE&t=1s)

&nbsp;&nbsp;It's description has some configs

4. Install build tools

```
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
```

5. Install node using nvm from this [link](https://github.com/nvm-sh/nvm#installing-and-updating)

&nbsp;&nbsp;To install node and npm 

```
nvm install --lts
```

6. Install rust using cargo from this [link](https://doc.rust-lang.org/cargo/getting-started/installation.html)

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

&nbsp;&nbsp;and add near the jsx block having something like below

```
\    'javascript': {
\        'extends': 'html',
\        'attribute_name': {'class': 'className', 'for': 'htmlFor'},
\        'empty_element_suffix': ' />',
\    },
```

12. To get jsx snippets in js files, add react snippets to js snippet file (friendly snippets)

13. Replace [this](config.lua) with your config.lua. You may get some errors, avoid them. Once they are installed, restart lvim.

14. To get auto imports of custom Components through LSP, you need to have a jsconfig.json file in your project. I have provided my jsconfig. To get jsonfig everytime easily I have created a alias (in .zshrc) and you just need to type jsconfig in your project directory and you are good to go.

##### Tips 
If you are getting any path related errors like nvm not found, lvim not found, etc. Kindly update your path by refering to [.zshrc](.zshrc)

For any help regarding LunarVim help, you can refer to the [docs](https://www.lunarvim.org/01-installing.html#prerequisites)

Also you can join their [discord](https://discord.com/invite/Xb9B4Ny) server to get help.


