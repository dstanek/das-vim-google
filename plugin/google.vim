" Copyright 2016 David Stanek <dstanek@dstanek.com>
"
" Licensed under the Apache License, Version 2.0 (the "License"); you may
" not use this file except in compliance with the License. You may obtain
" a copy of the License at
"
"      http://www.apache.org/licenses/LICENSE-2.0
"
" Unless required by applicable law or agreed to in writing, software
" distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
" WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
" License for the specific language governing permissions and limitations
" under the License.

" Let me Google that for you

if exists('g:loaded_google') || &cp
    finish
endif
let g:loaded_google = 1

function! s:google(q)
        " Google a search term using Chrome
        let l:goog = shellescape('https://google.com/search?q=' . a:q)
        let l:cmd = '/usr/bin/open -a Google\\ Chrome ' . l:goog
        call system(l:cmd . " 2>&1 > /dev/null")
endfunction

function! s:prompt()
    call inputsave()
    let q = input('Google: ')
    call inputrestore()
    call s:google(q)
endfunction

nnoremap <silent> <Plug>Google :call <SID>google(expand('<cword>'))<CR>
vnoremap <silent> <Plug>VGoogle "zy:call <SID>google(@z)<CR>
nnoremap <silent> <Plug>GooglePrompt :call <SID>prompt()<CR>

" vim:foldenable:fdm=marker
