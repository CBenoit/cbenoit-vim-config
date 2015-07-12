" Change the search command for ack and specify the default arguments givent
" to it. See :h g:ackprg
let g:ackprg = "ack-grep -s -H --nocolor --column"

" Disable quickfix window ack mapping to avoid some conflicts with bépo remapping (with t key used to navigate). See :h ack-mappings
let g:ack_apply_qmappings=0

if isbepo == 1
    " Set mark and search.
    nmap <leader>j qANAck<space>

    " Set mark and search word.
    nmap <leader>ja qANAck "<C-r>=expand("<cword>")<cr>"
    nmap <leader>jA qANAck "<C-r>=expand("<cWORD>")<cr>"
else
    " Set mark and search.
    nmap <leader>j mA:Ack<space>

    " Set mark and search word.
    nmap <leader>ja mA:Ack "<C-r>=expand("<cword>")<cr>"
    nmap <leader>jA mA:Ack "<C-r>=expand("<cWORD>")<cr>"
endif

