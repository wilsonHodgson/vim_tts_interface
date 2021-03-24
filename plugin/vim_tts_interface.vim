let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let s:message_parse = s:path . '/../message_parse.pl'
let s:script_cache = s:path . '/../cache/script/'

function! GetTTSCode()
	echom system("perl " . s:message_parse . " load")
	let l:files = (fnameescape(s:script_cache) . '/*.lua')
	execute("args " . l:files)
	execute("argdo e")

endfunction

function! PushTTSCode()
	let l:_ = system("perl " . s:message_parse . " save")
endfunction

	

