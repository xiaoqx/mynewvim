" VIM Setup {{{

" END VIM SETUP }}}

" Plugins {{{

" END Plugins }}}

" Plugin Setup {{{

" END Plugin Setup }}}

" Unite Menu {{{
let g:unite_source_menu_menus.bookmarks = {
    \ 'description' : '      bookmarks
        \                                             ⌘ [space]m',
    \}
let g:unite_source_menu_menus.bookmarks.command_candidates = [
    \['▷ open bookmarks',
        \'Unite bookmark:*'],
    \['▷ add bookmark',
        \'UniteBookmarkAdd'],
    \]
nnoremap <silent>[menu]m :Unite -silent menu:bookmarks<CR>

" END Unite Menu }}}
