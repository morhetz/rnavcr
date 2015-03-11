rnavcr
======

Rnavcr's not another vim config repo


### Cheats

quickfix
scratch
targets

http://sheet.shiar.nl/vi
http://benmccormick.org/2014/07/28/learning-vim-in-2014-copy-and-paste-the-vim-way/

`iw` Applies to everything in the current word
`it` Applies to everything in current xml/html tag
`i{` Applies to everything inside nearest curly brackets

`~` Toggle the case (upper/lower) of the character under the cursor.
`gu{motion}` lowercase
`gU{motion}` uppercase
`(` begin sentence
`)` end sentence
`{` begin paragraph
`}` end paragraph

`10dd` deletes the next 10 whole lines
`dis` delete inside a sentence
`va(` visualise around some parentheses
`cit` change inside tags
`10dw` delete the next 10 words
`5c{` change the previous 5 blocks ({)

`Ctrl-o` allows you to jump back to your last jump location.
You can then move back up the chain with `ctrl-i`.

`` (two backticks)
Works with single quotes (') too, if you just care about lines, not cols.

m* put mark
`* goto mark
'* goto mark lineStart

http://reefpoints.dockyard.com/2015/02/04/vim-jump-jump-jump.html
http://zzapper.co.uk/vimtips.html

`gi` insert at last pos
`. jump to last pos

`C-]` Go to the definition/tag under the cursor.
`<C-x><C-]>` to complete by tags

`[[` Jump to previous function.
`]]` Jump to next function.
`[{` Jump to beginning of current block.
`]}` Jump to end of current block.

`>aB` Indent current block (defined by curly braces).
`>ap` Indent current paragraph.
`>i{` Indent inside current set of curly braces.


`<C-w> h` Move focus to the window to the left.
`<C-w> j` Move focus to the window underneath.
`<C-w> k` Move focus to the window above.
`<C-w> l` Move focus to the window to the right.
`<C-w> w` Move focus to the window below/right of the current one.
`<C-w> W` Move focus to the window above/left of the current one.

`zR` Open all folds.
`a Jump to mark 'a'. (The first character is a backtick, left of the '1' on your keyboard.)

### Remaps

`H` start of line
`L` end of line

`x{motion}` cut
`X` cut till the line end
`Y` yank till the line end
`gs{motion}`
`gS`

`v` expand visual region
`V` shrink visual region

`f`, `F` 2-char vim-sneak
`t`, `t` 1-char vim-sneak `t`


### CtrlP (`<SPC>p`, `,\*`)

`,,` CtrlPMixed
`,p` CtrlPMixed
`,b` CtrlPBuffer
`,t` CtrlPTag
`,l` CtrlPLine
`,f` CtrlPFunky


### CtrlSF (`<SPC>f`)

`<SPC>f` CtrlSFPrompt

> `<SPC>fn` CtrlSFCwordPath
> `<SPC>fp` CtrlSFPwordPath
> `<SPC>fo` CtrlSFOpen


### EasyAlign (`<SPC>a`)

`ga{motion}`


### Tagbar (`<SPC>t`)


### Undotree (`<SPC>u`)


### TComment (`<SPC>_`)

`gc{motion}`
`<c-_>`, `<leader>_`


### Fugitive (`<SPC>g\*`)
