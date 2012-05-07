set tabstop=2
set shiftwidth=2
set expandtab

map <F2> <ESC>:NERDTreeToggle <RETURN>

let NERDTreeShowHidden=1

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif




