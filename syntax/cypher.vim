" Vim syntax file
" Language:         cypher
" Maintainer:       Gabriel Girard
" Last Change:      $Date: Mon 6 Dec 2021 14:35:00 GMT$
" Filenames:        *.cypher
" Version:          $Id: cypher.vim,v 1.1 $

" Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore
syn match     cypherComment       "\s*\/\/.*$"
syn keyword cypherSpecial true false null none

syn keyword cypherKeyword as call yield
syn keyword cypherKeyword create detach delete optional mandatory match merge
syn keyword cypherKeyword union all unwind with where distinct set remove
syn keyword cypherKeyword return limit order by asc[ending] desc[ending]
syn keyword cypherKeyword index unique constraint on exists skip
syn keyword cypherKeyword case when then else end
syn keyword cypherKeyword commit periodic schema drop using
syn keyword cypherKeyword load csv from starts ends
syn keyword cypherKeyword key join scan node cypher start foreach
syn keyword cypherKeyword explain user role identified grant privileges to
syn keyword cypherKeyword profile header delimiter no replication replica port
syn keyword cypherKeyword register async sync timeout free memory unlimited
syn keyword cypherKeyword kb mb assert show info lock unlock data directory
syn keyword cypherKeyword password for clear auth revoke storage users
syn keyword cypherKeyword bfs dfs wshortest roles
syn keyword cypherKeyword update before after trigger execute
syn keyword cypherKeyword stream topics transform
syn keyword cypherKeyword consumer_group batch_interval batch_size

syn keyword cypherOperator or and not xor is in contains

syn keyword   cypherFunction  id all any single length type nodes
syn keyword   cypherFunction  labels collect uniformsample toupper
syn keyword   cypherFunction  exp floor stdev rtrim trim count sum
syn keyword   cypherFunction  rels relationships coalesce last extract
syn keyword   cypherFunction  head filter tail range properties size
syn keyword   cypherFunction  toboolean tofloat tointeger tostring
syn keyword   cypherFunction  startswith endswith reverse tolower keys
syn keyword   cypherFunction  timestamp startnode endnode split
syn keyword   cypherFunction  abs acos asin atan atan2 cos cot degree e
syn keyword   cypherFunction  haversin log log10 pi radians rand round
syn keyword   cypherFunction  sign sin sqrt tan reduce percentiledisc
syn keyword   cypherFunction  str replace substring left right ltrim
syn keyword   cypherFunction  lower upper assert counter
syn keyword   cypherFunction         min max avg percentilecont stdevp
syn keyword   cypherFunction       tointeger tostring

syn region    cypherProperty      start=+'+ skip=+\\\\\|\\'+ end=+'+
syn region    cypherProperty      start=+"+ skip=+\\\\\|\\"+ end=+"+
"syn match     cypherRelationship  ':\w*_\w*'
syn match     cypherRelationship  "\v(\[\w*:)@<=\w*"
syn match     cypherLabel         "\v(\(\w*:)@<=\w*"
syn match     cypherSymbol        "->"
syn match     cypherSymbol        "<=>"
syn match     cypherSymbol        "<-"
syn match     cypherPropertyName   "\v((\(\w*)|(\[\w*))@<!\w*(:)@="

syn match cypherNumber        "-\=\<\d*\.\=[0-9_]\>"

hi link cypherComment              Comment
hi link cypherKeyword              Define
hi link cypherProperty             String
hi link cypherPropertyName         Identifier
hi link cypherRelationship         Type
hi link cypherLabel                Type
hi link cypherSymbol               Operator
hi link cypherVariable             Identifier
hi link cypherFunction             Function
hi link cypherNumber               Number
hi link cypherOperator             Statement

let b:current_syntax = "cypher"
