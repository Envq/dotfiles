"TO INSTALL EXEC:
"1) curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"2) :PlugInstall


"---LIST OF PLUGINS
call plug#begin('~/.local/share/nvim/plugged')


"--AUTOSAVE
Plug '907th/vim-auto-save'

"--AUTO-CLOSE
Plug 'townk/vim-autoclose'

"--THEME
Plug 'morhetz/gruvbox'

"--BARS 
"Plug 'vim-airline/vim-airline'

"--ICONS
"Plug 'ryanoasis/vim-devicons'

"--FILE SYSTEM EXPLORER
"Plug 'scrooloose/nerdtree'

"--NUMBER MODE TOOGLE
"Plug 'myusuf3/numbers.vim'

"--SUPERTAB
"Plug 'ervandew/supertab'

"--GIT WRAPPER
"Plug 'tpope/vim-fugitive'



"Initialize plugin system
call plug#end()


"---SETTINGS
set termguicolors		    "enable true color
set t_Co=256 			    "enable 256 color
set number			        "enable number
set autoindent			    "enable autoindent
set shiftwidth=4		    "tab = 4 lspace
set cursorline			    "enable highlight cursor line 
set background=dark		    "enable dark theme
set wrap              	    "newline when scale down"                                        
set linebreak       	    "dont break word"     
set mouse=a 			    "enable mouse
set clipboard+=unnamedplus	"enable clipboard

"to disable highlight
nnoremap <CR> :noh<CR><ESC>
"nnoremap <F9> :!make execute<CR>
"nnoremap <F10> :make

"to real delete
"nnoremap <leader>d "_d
"xnoremap <leader>d "_d


"--THEME
"to enable theme
let g:gruvbox_bold = '1'
let g:gruvbox_italic = '1'
let g:gruvbox_underline = '1'
let g:gruvbox_undercurl = '1'
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_contrast_light = 'medium'
colorscheme gruvbox


"--AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 
let g:hybrid_custom_term_colors = 1


"--DEV-ICONS
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:webdevicons_conceal_nerdtree_brackets = 1


"--AUTOSAVE
"to enable on startup
let g:auto_save = 1


"--NUMBER TOOGLE
nnoremap <F3> :NumbersToggle<CR>
let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree']
