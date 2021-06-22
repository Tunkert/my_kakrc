colorscheme gruvbox

hook global InsertChar \t %{ exec -draft -itersel h@ }
set global tabstop 2
set global indentwidth 2

add-highlighter global/ number-lines -relative

hook global InsertChar k %{ try %{
    exec -draft hH <a-k>jk<ret> d
      exec <esc>
}}

hook global InsertChar j %{ try %{
    exec -draft hH <a-k>kj<ret> d
      exec <esc>
}}

