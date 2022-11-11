## 1. instal Neovim

[Installing Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

Requirements for this configuration: Neovim 0.8.0 or later .

## 2. clone config

```
git clone https://github.com/imhy123/nvim-config\
 ~/.config/nvim
```

## 3. install packer.nvim and plugins

### 3.1 install packer.nvim

#### Linux

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### 3.2 Sync Plugins

Run `:PackerSync` in NeoVim.


## Usage

Leader key is space.

* space + m : toggle File Explorer ( nvim-tree )
* Ctrl + w, h : move cursor to the left window ( move between File Explorer and Editor )
* Ctrl + w, l : move cursor to the right window ( move between File Explorer and Editor )


Filer Explorer:

* Enter or o : open file

bufferline / tab manage :

* space + h : move to left tab
* space + l : move to right tab
* space + w : close current tab
