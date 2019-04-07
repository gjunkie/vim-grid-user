" Author: Freddie Carthy
" Maintainer: Freddie Carthy

" --------------------------------
set background=dark

highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="grid"

"----------------------------------------------------------------
" General settings                                              |
"----------------------------------------------------------------
"----------------------------------------------------------------
" Syntax group   | Foreground    | Background    | Style        |
"----------------------------------------------------------------

" --------------------------------
" Editor settings
" --------------------------------
hi Normal          ctermfg=none    ctermbg=none    cterm=none
hi Cursor          ctermfg=none    ctermbg=none    cterm=none
hi CursorLine      ctermfg=none    ctermbg=none    cterm=none
hi LineNr          ctermfg=117     ctermbg=none    cterm=none
hi CursorLineNR    ctermfg=none    ctermbg=none    cterm=none

" -----------------
" - Number column -
" -----------------
hi CursorColumn    ctermfg=none    ctermbg=none    cterm=none
hi FoldColumn      ctermfg=none    ctermbg=none    cterm=none
hi SignColumn      ctermfg=none    ctermbg=none    cterm=none
hi Folded          ctermfg=none    ctermbg=none    cterm=none

" -------------------------
" - Window/Tab delimiters - 
" -------------------------
hi VertSplit       ctermfg=16      ctermbg=16      cterm=none
hi ColorColumn     ctermfg=117     ctermbg=117     cterm=none
hi TabLine         ctermfg=none    ctermbg=none    cterm=none
hi TabLineFill     ctermfg=none    ctermbg=none    cterm=none
hi TabLineSel      ctermfg=none    ctermbg=none    cterm=none

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory       ctermfg=none    ctermbg=none    cterm=none
hi Search          ctermfg=16      ctermbg=159     cterm=none
hi IncSearch       ctermfg=none    ctermbg=none    cterm=none

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine      ctermfg=none    ctermbg=none    cterm=none
hi StatusLineNC    ctermfg=16      ctermbg=none    cterm=none
hi WildMenu        ctermfg=none    ctermbg=none    cterm=none
hi Question        ctermfg=none    ctermbg=none    cterm=none
hi Title           ctermfg=none    ctermbg=none    cterm=none
hi ModeMsg         ctermfg=none    ctermbg=none    cterm=none
hi MoreMsg         ctermfg=none    ctermbg=none    cterm=none

" --------------
" - Visual aid -
" --------------
hi MatchParen      ctermfg=16      ctermbg=117     cterm=none
hi Visual          ctermfg=16      ctermbg=117     cterm=none
hi VisualNOS       ctermfg=none    ctermbg=none    cterm=none
hi NonText         ctermfg=16      ctermbg=none    cterm=none

hi Todo            ctermfg=none    ctermbg=none    cterm=none
hi Underlined      ctermfg=none    ctermbg=none    cterm=none
hi Error           ctermfg=none    ctermbg=none    cterm=none
hi ErrorMsg        ctermfg=none    ctermbg=none    cterm=none
hi WarningMsg      ctermfg=none    ctermbg=none    cterm=none
hi Ignore          ctermfg=none    ctermbg=none    cterm=none
hi SpecialKey      ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Variable types
" --------------------------------
hi Constant        ctermfg=117     ctermbg=none    cterm=none
hi String          ctermfg=184     ctermbg=none    cterm=none
hi StringDelimiter ctermfg=none    ctermbg=none    cterm=none
hi Character       ctermfg=none    ctermbg=none    cterm=none
hi Number          ctermfg=184     ctermbg=none    cterm=none
hi Boolean         ctermfg=184     ctermbg=none    cterm=none
hi Float           ctermfg=none    ctermbg=none    cterm=none

hi Identifier      ctermfg=117     ctermbg=none    cterm=none
hi Function        ctermfg=117     ctermbg=none    cterm=none

" --------------------------------
" Language constructs
" --------------------------------
hi Statement       ctermfg=214     ctermbg=none    cterm=none
hi Conditional     ctermfg=117     ctermbg=none    cterm=none
hi Repeat          ctermfg=none    ctermbg=none    cterm=none
hi Label           ctermfg=117     ctermbg=none    cterm=none
hi Operator        ctermfg=117     ctermbg=none    cterm=none
hi Keyword         ctermfg=184     ctermbg=none    cterm=none
hi Exception       ctermfg=none    ctermbg=none    cterm=none

hi Comment         ctermfg=008     ctermbg=none    cterm=none
hi Special         ctermfg=117     ctermbg=none    cterm=none
hi SpecialChar     ctermfg=none    ctermbg=none    cterm=none
hi Tag             ctermfg=none    ctermbg=none    cterm=none
hi Delimiter       ctermfg=none    ctermbg=none    cterm=none
hi SpecialComment  ctermfg=none    ctermbg=none    cterm=none
hi Debug           ctermfg=none    ctermbg=none    cterm=none

" ----------
" - C like -
" ----------
hi PreProc         ctermfg=none    ctermbg=none    cterm=none
hi Include         ctermfg=117     ctermbg=none    cterm=none
hi Define          ctermfg=none    ctermbg=none    cterm=none
hi Macro           ctermfg=none    ctermbg=none    cterm=none
hi PreCondit       ctermfg=none    ctermbg=none    cterm=none

hi Type            ctermfg=117     ctermbg=none    cterm=none
hi StorageClass    ctermfg=117     ctermbg=none    cterm=none
hi Structure       ctermfg=none    ctermbg=none    cterm=none
hi Typedef         ctermfg=117     ctermbg=none    cterm=none

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd         ctermfg=119     ctermbg=none    cterm=none
hi DiffChange      ctermfg=184     ctermbg=none    cterm=none
hi DiffDelete      ctermfg=196     ctermbg=none    cterm=none
hi DiffText        ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu           ctermfg=117     ctermbg=234    cterm=none
hi PmenuSel        ctermfg=16      ctermbg=117    cterm=none
hi PmenuSbar       ctermfg=none    ctermbg=16     cterm=none
hi PmenuThumb      ctermfg=none    ctermbg=117    cterm=none

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad        ctermfg=none    ctermbg=none    cterm=none
hi SpellCap        ctermfg=none    ctermbg=none    cterm=none
hi SpellLocal      ctermfg=none    ctermbg=none    cterm=none
hi SpellRare       ctermfg=none    ctermbg=none    cterm=none

"--------------------------------------------------------------------
" Specific settings                                                 |
"--------------------------------------------------------------------

hi! ALEErrorSign                   ctermfg=160     ctermbg=none
hi! ALEWarningSign                 ctermfg=184     ctermbg=none
hi! ALEVirtualTextError            ctermfg=203     guifg=#e27878
hi! ALEVirtualTextWarning          ctermfg=216     guifg=#e2a478

"--------------------------------------------------------------------
" Links                                                |
"--------------------------------------------------------------------
hi def link jsObjectKey Label
