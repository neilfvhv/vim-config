" vundle {
    " Set The Environment Noncompatiable
    set nocompatible
    " Turn The Filetype Specific Off
    filetype off
    " Set The Path For Vundle
    set rtp+=~/.vim/bundle/Vundle.vim
    " Plugin Begin
    call vundle#begin()

    " Plugin {
        
        Plugin 'sickill/vim-monokai'
        Plugin 'vim-airline/vim-airline'
        Plugin 'vim-airline/vim-airline-themes'     
        Plugin 'airblade/vim-gitgutter'
        Plugin 'majutsushi/tagbar'
        Plugin 'scrooloose/syntastic'    
        Plugin 'scrooloose/nerdtree'
        Plugin 'scrooloose/nerdcommenter'
        Plugin 'mbbill/undotree'
        Plugin 'djoshea/vim-matlab'
        Plugin 'djoshea/vim-matlab-fold'
        Plugin 'godlygeek/tabular'
    
    " }

    " Plugin End
    call vundle#end()
    " Turn The Filetype Plugin Indent On
    filetype plugin indent on
" }

" basic {

    " keymap {
        " Set The <leader> Key
        let mapleader=","
        " Set The <localleader> Key
        let maplocalleader=";"
        " Visual Move Up And Move Down
        nmap j gj
        nmap k gk
        " Beginning Of The Line
        map <C-A> 0
        " End Of The Line
        map <C-E> $
        " Jump Between The Pair
        nmap <leader>r %
    " }

    " encoding {
        set fileencodings=utf-8,gbk
    " }

    " ui {
        " Turn On The Syntax Highlight
        syntax on
        " Show Line Numbers
        set number
        " Show Cursorline
        set cursorline
        " Hight Cursorline With No Line
        highlight cursorline cterm=NONE
        " Visual Autocomplete For Command Menu
        set wildmenu
        " Redraw Only When Needed
        set lazyredraw
    " }

    " tab {
        " n --- next, N --- previous
        " Turn On The Filetype Specific Indet
        filetype indent on
        " Insert Tabs As Spaces
        set expandtab
        " Number Of Visual Spaces Per Tab
        set tabstop=4
        " Number Of Spaces When Editing Per Tab
        set softtabstop=4
        " Autoindent Tab Width
        set shiftwidth=4
        " Prevent Two Spaces After Punction
        set nojoinspaces
    " }

    " search {
        " Show Matchs        
        set showmatch
        " Search As The Characters Entered
        set incsearch
        " Highlight Matches
        set hlsearch
        " Case Insensitive
        set ignorecase
    " }
    
    " fold { 
        " Enable Folding
        set foldenable
        " Set The Fold Marker
        set foldmarker={,}
        " Fold By Marker
        set foldmethod=marker
        " Close All Fold By Default
        set foldlevelstart=5
        " 5 Nested Folds At Most
        set foldnestmax=5
    " }

    " buffer {
        " Hide Buffers When They Are Abandoned    
        set hidden                
    " }

" }

" theme {
    " Enable Syntax On
    syntax enable
    " Set Dark Background
    set background=light
    " Set Monokai Theme
    colorscheme monokai
" }

" airline {
    " Set 256 Color
    set t_Co=256
    " Set The Powerline Fonts
    let g:airline_powerline_fonts = 1
    " Enable The Tabline
    let g:airline#extensions#tabline#enabled = 1
    " Always Show Statusline
    set laststatus=2
" }

" airline-theme {
    " Set The Durant Theme For Airline
    let g:airline_theme = "luna"
" }

" gitgutter {
    " Set The Update Time For Vim
    set updatetime=250
    " Set The Maximum Signs Of The Gitgutter
    let g:gitgutter_max_signs = 500
" }

" tagbar {
    " Bind The Key To Toggle Tagbar
    nmap <leader>tb :TagbarToggle<CR>
" }

" syntastic {
    " Turn On The Syntastic Check When Open The File
    let g:syntastic_check_on_open = 1
" }

" nerdtree {
    " Bind The Key To Toggle Nerdtree    
    nmap <leader>nt :NERDTreeToggle<CR>
    " Auto Close The Nerdtree When There Is No File
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    " Shortcuts
    " Ctrl + W + * Move The Foucs
" }

" nerdcommenter {
    " Turn On The Filetype Specific Plugin
    filetype plugin on 
    " Shortcuts
    " <leader>cc comment
    " <leader>cA commnet insert at the end of the line
    " <leader>cu uncomment
" }

" undotree {
    " Bind The Key To Toggle NerdTree
    nmap <leader>ud :UndotreeToggle<CR>
" }
