#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



KeyboardOn := true

Ctrl & Pause:: ; Pause == NumLock
KeyboardOn := !KeyboardOn
return



/*
total number of characters:
a i u e o x 9 + special n wo
+ softened version
+ hardened version
+ small version
+ all katakana
*/



#If KeyboardOn
#InputLevel 5
;base
NumpadPgUp::さ ;9
NumpadUp::か ;8
NumpadHome::あ ;7
NumpadRight::は ;6
NumpadClear::な ;5
NumpadLeft::た ;4
NumpadPgDn::ら ;3
NumpadDown::や ;2
NumpadEnd::ま ;1
NumpadIns::わ ;0



;instant replace hostrings aren't entitled to an inputlevel other than 0, so we get to repeat these blocks a few hundred times
;and you can't even have hotkeys in functions ;-;

;base mod
:*?:さw::
Send す
return

:*?:かw::
Send く
return

:*?:あw::
Send う
return

:*?:はw::
Send ふ
return

:*?:なw::
Send ぬ
return

:*?:たw::
Send つ
return

:*?:らw::
Send る
return

:*?:やw::
Send ゆ
return

:*?:まw::
Send む
return

:*?:わw::
Send ー
return


:*?:さd::
Send せ
return

:*?:かd::
Send け
return

:*?:あd::
Send え
return

:*?:はd::
Send へ
return

:*?:なd::
Send ね
return

:*?:たd::
Send て
return

:*?:らd::
Send れ
return

:*?:やd::
Send ）
return

:*?:まd::
Send め
return

:*?:わd::
Send ー
return


:*?:さs::
Send そ
return

:*?:かs::
Send こ
return

:*?:あs::
Send お
return

:*?:はs::
Send ほ
return

:*?:なs::
Send の
return

:*?:たs::
Send と
return

:*?:らs::
Send ろ
return

:*?:やs::
Send よ
return

:*?:まs::
Send も
return

:*?:わs::
Send を
return


:*?:さa::
Send し
return

:*?:かa::
Send き
return

:*?:あa::
Send い
return

:*?:はa::
Send ひ
return

:*?:なa::
Send に
return

:*?:たa::
Send ち
return

:*?:らa::
Send り
return

:*?:やa::
Send （
return

:*?:まa::
Send み
return

:*?:わa::
Send ～
return



#InputLevel 4
;soft
:*?:qさ::
Send ざ
return

:*?:qか::
Send が
return

:*?:qあ::
Send ぁ
return

:*?:qは::
Send ば
return

:*?:qた::
Send だ
return

:*?:qや::
Send ゃ
return

:*?:qわ::
Send ゎ
return


:*?:ざw::
Send ず
return

:*?:がw::
Send ぐ
return

:*?:ぁw::
Send ぅ
return

:*?:ばw::
Send ぶ
return

:*?:だw::
Send づ
return

:*?:ゃw::
Send ゅ
return


:*?:ざd::
Send ぜ
return

:*?:がd::
Send げ
return

:*?:ぁd::
Send ぇ
return

:*?:ばd::
Send べ
return

:*?:だd::
Send で
return


:*?:ざs::
Send ぞ
return

:*?:がs::
Send ご
return

:*?:ぁs::
Send ぉ
return

:*?:ばs::
Send ぼ
return

:*?:だs::
Send ど
return

:*?:ゃs::
Send ょ
return


:*?:ざa::
Send じ
return

:*?:がa::
Send ぎ
return

:*?:ぁa::
Send ぃ
return

:*?:ばa::
Send び
return

:*?:だa::
Send ぢ
return



;hard
:*?:eは::
Send ぱ
return


:*?:ぱw::
Send ぷ
return

:*?:ぱd::
Send ぺ
return

:*?:ぱs::
Send ぽ
return

:*?:ぱa::
Send ぴ
return



;combinations
:*?:さy::
Send しゃ
return

:*?:すy::
Send しゅ
return

:*?:そy::
Send しょ
return


:*?:ざy::
Send じゃ
return

:*?:ずy::
Send じゅ
return

:*?:ぞy::
Send じょ
return


:*?:かy::
Send きゃ
return

:*?:くy::
Send きゅ
return

:*?:こy::
Send きょ
return


:*?:がy::
Send ぎゃ
return

:*?:ぐy::
Send ぎゅ
return

:*?:ごy::
Send ぎょ
return


:*?:はy::
Send ひゃ
return

:*?:ふy::
Send ひゅ
return

:*?:ほy::
Send ひょ
return


:*?:ばy::
Send びゃ
return

:*?:ぶy::
Send びゅ
return

:*?:ぼy::
Send びょ
return


:*?:ぱy::
Send ぴゃ
return

:*?:ぷy::
Send ぴゅ
return

:*?:ぽy::
Send ぴょ
return


:*?:なy::
Send にゃ
return

:*?:ぬy::
Send にゅ
return

:*?:のy::
Send にょ
return


:*?:たy::
Send ちゃ
return

:*?:つy::
Send ちゅ
return

:*?:とy::
Send ちょ
return


:*?:だy::
Send ぢゃ
return

:*?:づy::
Send ぢゅ
return

:*?:どy::
Send ぢょ
return


:*?:らy::
Send りゃ
return

:*?:るy::
Send りゅ
return

:*?:ろy::
Send りょ
return


:*?:まy::
Send みゃ
return

:*?:むy::
Send みゅ
return

:*?:もy::
Send みょ
return



;others
:*?:xた::
Send っ
return




;the katakana ,-,

#InputLevel 5
;base
Numpad9::サ
Numpad8::カ
Numpad7::ア
Numpad6::ハ
Numpad5::ナ
Numpad4::タ
Numpad3::ラ
Numpad2::ヤ
Numpad1::マ
Numpad0::ワ



:*?:サw::
Send ス
return

:*?:カw::
Send ク
return

:*?:アw::
Send ウ
return

:*?:ハw::
Send フ
return

:*?:ナw::
Send ヌ
return

:*?:タw::
Send ツ
return

:*?:ラw::
Send ル
return

:*?:ヤw::
Send ユ
return

:*?:マw::
Send ム
return

:*?:ワw::
Send ー
return


:*?:サd::
Send セ
return

:*?:カd::
Send ケ
return

:*?:アd::
Send エ
return

:*?:ハd::
Send ヘ
return

:*?:ナd::
Send ネ
return

:*?:タd::
Send テ
return

:*?:ラd::
Send レ
return

:*?:ヤd::
Send ）
return

:*?:マd::
Send メ
return

:*?:ワd::
Send ー
return


:*?:サs::
Send ソ
return

:*?:カs::
Send コ
return

:*?:アs::
Send オ
return

:*?:ハs::
Send ホ
return

:*?:ナs::
Send ノ
return

:*?:タs::
Send ト
return

:*?:ラs::
Send ロ
return

:*?:ヤs::
Send ヨ
return

:*?:マs::
Send モ
return

:*?:ワs::
Send ヲ
return


:*?:サa::
Send シ
return

:*?:カa::
Send キ
return

:*?:アa::
Send イ
return

:*?:ハa::
Send ヒ
return

:*?:ナa::
Send ニ
return

:*?:タa::
Send チ
return

:*?:ラa::
Send リ
return

:*?:ヤa::
Send （
return

:*?:マa::
Send ミ
return

:*?:ワa::
Send ～
return



#InputLevel 4
;soft
:*?:qサ::
Send ザ
return

:*?:qカ::
Send ガ
return

:*?:qア::
Send ァ
return

:*?:qハ::
Send バ
return

:*?:qタ::
Send ダ
return

:*?:qヤ::
Send ャ
return

:*?:qワ::
Send ヮ
return


:*?:ザw::
Send ズ
return

:*?:ガw::
Send グ
return

:*?:ァw::
Send ゥ
return

:*?:バw::
Send ぶ
return

:*?:ダw::
Send ヅ
return

:*?:ャw::
Send ュ
return


:*?:ザd::
Send ゼ
return

:*?:ガd::
Send ゲ
return

:*?:ァd::
Send ェ
return

:*?:バd::
Send ベ
return

:*?:ダd::
Send デ
return


:*?:ザs::
Send ゾ
return

:*?:ガs::
Send ゴ
return

:*?:ァs::
Send ォ
return

:*?:バs::
Send ボ
return

:*?:ダs::
Send ド
return

:*?:ゃs::
Send ョ
return


:*?:ザa::
Send ジ
return

:*?:ガa::
Send ギ
return

:*?:ァa::
Send ィ
return

:*?:バa::
Send ビ
return

:*?:ダa::
Send ヂ
return



;hard
:*?:eハ::
Send パ
return


:*?:パw::
Send プ
return

:*?:パd::
Send ペ
return

:*?:パs::
Send ポ
return

:*?:パa::
Send ピ
return



;combinations
:*?:サy::
Send シャ
return

:*?:スy::
Send シュ
return

:*?:ソy::
Send ショ
return


:*?:ザy::
Send ジャ
return

:*?:ズy::
Send ジュ
return

:*?:ゾy::
Send ジョ
return


:*?:カy::
Send キャ
return

:*?:クy::
Send キュ
return

:*?:コy::
Send キョ
return


:*?:ガy::
Send ギャ
return

:*?:グy::
Send ギュ
return

:*?:ゴy::
Send ギョ
return


:*?:ハy::
Send ヒャ
return

:*?:フy::
Send ヒュ
return

:*?:ホy::
Send ヒョ
return


:*?:バy::
Send ビャ
return

:*?:ブy::
Send ビュ
return

:*?:ボy::
Send ビョ
return


:*?:パy::
Send ピャ
return

:*?:プy::
Send ピュ
return

:*?:ポy::
Send ピョ
return


:*?:ナy::
Send ニャ
return

:*?:ヌy::
Send ニュ
return

:*?:ノy::
Send ニョ
return


:*?:タy::
Send チャ
return

:*?:ツy::
Send チュ
return

:*?:トy::
Send チョ
return


:*?:ダy::
Send ヂャ
return

:*?:ヅy::
Send ヂュ
return

:*?:ドy::
Send ヂョ
return


:*?:ラy::
Send リャ
return

:*?:ルy::
Send リュ
return

:*?:ロy::
Send リョ
return


:*?:マy::
Send ミャ
return

:*?:ムy::
Send ミュ
return

:*?:モy::
Send ミョ
return



;others
:*?:xタ::
Send ッ
return



#If



^Escape::ExitApp
