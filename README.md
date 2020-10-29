# Packages

## brew

+ awscli
+ diff-so-fancy
+ git
+ go
+ heroku
+ imagemagick
+ imgcat
+ postgresql
+ pyenv
+ rbenv
+ nodenv
+ the_silver_searcher
+ tmate
+ tree

## VSCode

+ ESLint
+ Git Blame
+ Go
+ highlight-matching-tag
+ mapfile Syntax
+ markdownlint
+ mssql
+ Python
+ Rails Snippets
+ Rainbow CSV
+ Ruby
+ Ruby Solargraph
+ ruby-rubocop
+ Sass
+ Vim
+ VS Color Picker
+ Wakatime
+ Git History
+ IntelliSense for CSS class names in HTML

## vim

+ ale
+ colorschemes
+ ctrlp.vim
+ nerdtree
+ node
+ vim-gitgutter
+ vim-indent-guides
+ vim-javascript
+ vim-javascript-syntax
+ vim-jsbeautify
+ vim-wakatime
+ vim-airline
+ vim-airline-themes
+ vim-fugitive

## other

+ npm
+ powerlevel10k (zsh PS1 customizer)
ack.vim/
fzf.vim/
lh-vim-lib/
limelight.vim/
local_vimrc/
typescript-vim/
vim-jsx/
vim-wakatime/

deleted:
comfortable-motion.vim
ctrlp.vim
vimrcs/plugins_config.vim
--- a/vimrcs/plugins_config.vim
+++ b/vimrcs/plugins_config.vim
@@ -77,7 +77,7 @@ set grepprg=/bin/grep\ -nH
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " => Nerd Tree
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
-let g:NERDTreeWinPos = "right"
+let g:NERDTreeWinPos = "left"
 let NERDTreeShowHidden=0
 let NERDTreeIgnore = ['\.pyc$', '__pycache__']
 let g:NERDTreeWinSize=35
@@ -159,7 +159,8 @@ let g:go_fmt_command = "goimports"
 let g:ale_linters = {
 \   'javascript': ['jshint'],
 \   'python': ['flake8'],
-\   'go': ['go', 'golint', 'errcheck']
+\   'go': ['go', 'golint', 'errcheck'],
+\   'ruby': ['rubocop']
 \}

 nmap <silent> <leader>a <Plug>(ale_next_wrap)
