## 1. instal Neovim

[Installing Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

Requirements for this configuration: Neovim 0.8.0 or later .

### Linux

Download pre-built binaries:

```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
```

Then add this to shell config:

```
export PATH="$PATH:/opt/nvim-linux64/bin"
```

### MacOS

```
brew install neovim
```

## 2. clone config

```
git clone https://github.com/imhy123/nvim-config\
 ~/.config/nvim
```

## 3. install plugins

### 3.1 Sync Plugins

Run `:Lazy sync` in NeoVim.


## 4. other dependencies

`apt install ripgrep` for telescope live_grep.


## Usage

Leader key is space.

* space + m : toggle File Explorer ( nvim-tree )
* Ctrl + w, h : move cursor to the left window ( move between File Explorer and Editor )
* Ctrl + w, l : move cursor to the right window ( move between File Explorer and Editor )

### Lazy plugin manager

`:Lazy` to start.

### nvim-tree / Filer Explorer

* Enter or o : open file
* a : add a file; leaving a trailing `/` will add a directory
* d : delete a file (will prompt for confirmation)

### bufferline / tab manage

* space + h : move to left tab
* space + l : move to right tab
* space + w : close current tab

### telescope / find file

* space + f, f : find file
* space + f, g : find file

## Reference