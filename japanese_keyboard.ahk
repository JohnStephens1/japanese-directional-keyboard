#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
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

NumpadAdd::Backspace

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
SendEvent す
return

:*?:かw::
SendEvent く
return

:*?:あw::
SendEvent う
return

:*?:はw::
SendEvent ふ
return

:*?:なw::
SendEvent ぬ
return

:*?:たw::
SendEvent つ
return

:*?:らw::
SendEvent る
return

:*?:やw::
SendEvent ゆ
return

:*?:まw::
SendEvent む
return

:*?:わw::
SendEvent ん
return


:*?:さd::
SendEvent せ
return

:*?:かd::
SendEvent け
return

;to allow proper use using an ime without conflicts
#InputLevel 0
:*?:あd::
SendEvent え
return
#InputLevel 5

:*?:はd::
SendEvent へ
return

:*?:なd::
SendEvent ね
return

:*?:たd::
SendEvent て
return

:*?:らd::
SendEvent れ
return

:*?:やd::
SendEvent ）
return

:*?:まd::
SendEvent め
return

:*?:わd::
SendEvent ー
return


:*?:さs::
SendEvent そ
return

:*?:かs::
SendEvent こ
return

:*?:あs::
SendEvent お
return

:*?:はs::
SendEvent ほ
return

:*?:なs::
SendEvent の
return

:*?:たs::
SendEvent と
return

:*?:らs::
SendEvent ろ
return

:*?:やs::
SendEvent よ
return

:*?:まs::
SendEvent も
return

:*?:わs::
SendEvent を
return


:*?:さa::
SendEvent し
return

:*?:かa::
SendEvent き
return

:*?:あa::
SendEvent い
return

:*?:はa::
SendEvent ひ
return

:*?:なa::
SendEvent に
return

:*?:たa::
SendEvent ち
return

:*?:らa::
SendEvent り
return

:*?:やa::
SendEvent （
return

:*?:まa::
SendEvent み
return

:*?:わa::
SendEvent ～
return



#InputLevel 4
;soft
:*?:qさ::
SendEvent ざ
return

:*?:qか::
SendEvent が
return

:*?:qあ::
SendEvent ぁ
return

:*?:qは::
SendEvent ば
return

:*?:qた::
SendEvent だ
return

:*?:qや::
SendEvent ゃ
return

:*?:qわ::
SendEvent ゎ
return


:*?:ざw::
SendEvent ず
return

:*?:がw::
SendEvent ぐ
return

:*?:ぁw::
SendEvent ぅ
return

:*?:ばw::
SendEvent ぶ
return

:*?:だw::
SendEvent づ
return

:*?:ゃw::
SendEvent ゅ
return


:*?:ざd::
SendEvent ぜ
return

:*?:がd::
SendEvent げ
return

:*?:ぁd::
SendEvent ぇ
return

:*?:ばd::
SendEvent べ
return

:*?:だd::
SendEvent で
return


:*?:ざs::
SendEvent ぞ
return

:*?:がs::
SendEvent ご
return

:*?:ぁs::
SendEvent ぉ
return

:*?:ばs::
SendEvent ぼ
return

:*?:だs::
SendEvent ど
return

:*?:ゃs::
SendEvent ょ
return


:*?:ざa::
SendEvent じ
return

:*?:がa::
SendEvent ぎ
return

:*?:ぁa::
SendEvent ぃ
return

:*?:ばa::
SendEvent び
return

:*?:だa::
SendEvent ぢ
return



;hard
:*?:eは::
SendEvent ぱ
return

:*?:えは::
SendEvent ぱ
return


:*?:ぱw::
SendEvent ぷ
return

:*?:ぱd::
SendEvent ぺ
return

:*?:ぱs::
SendEvent ぽ
return

:*?:ぱa::
SendEvent ぴ
return



;combinations
:*?:さy::
SendEvent しゃ
return

:*?:すy::
SendEvent しゅ
return

:*?:そy::
SendEvent しょ
return


:*?:ざy::
SendEvent じゃ
return

:*?:ずy::
SendEvent じゅ
return

:*?:ぞy::
SendEvent じょ
return


:*?:かy::
SendEvent きゃ
return

:*?:くy::
SendEvent きゅ
return

:*?:こy::
SendEvent きょ
return


:*?:がy::
SendEvent ぎゃ
return

:*?:ぐy::
SendEvent ぎゅ
return

:*?:ごy::
SendEvent ぎょ
return


:*?:はy::
SendEvent ひゃ
return

:*?:ふy::
SendEvent ひゅ
return

:*?:ほy::
SendEvent ひょ
return


:*?:ばy::
SendEvent びゃ
return

:*?:ぶy::
SendEvent びゅ
return

:*?:ぼy::
SendEvent びょ
return


:*?:ぱy::
SendEvent ぴゃ
return

:*?:ぷy::
SendEvent ぴゅ
return

:*?:ぽy::
SendEvent ぴょ
return


:*?:なy::
SendEvent にゃ
return

:*?:ぬy::
SendEvent にゅ
return

:*?:のy::
SendEvent にょ
return


:*?:たy::
SendEvent ちゃ
return

:*?:つy::
SendEvent ちゅ
return

:*?:とy::
SendEvent ちょ
return


:*?:だy::
SendEvent ぢゃ
return

:*?:づy::
SendEvent ぢゅ
return

:*?:どy::
SendEvent ぢょ
return


:*?:らy::
SendEvent りゃ
return

:*?:るy::
SendEvent りゅ
return

:*?:ろy::
SendEvent りょ
return


:*?:まy::
SendEvent みゃ
return

:*?:むy::
SendEvent みゅ
return

:*?:もy::
SendEvent みょ
return



;others
:*?:xた::
SendEvent っ
return

:*?:xな::
SendEvent ん
return




;the katakana ,-,
;ahh the ime autoconverts katakana into hiragana

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
SendEvent ス
return

:*?:カw::
SendEvent ク
return

:*?:アw::
SendEvent ウ
return

:*?:ハw::
SendEvent フ
return

:*?:ナw::
SendEvent ヌ
return

:*?:タw::
SendEvent ツ
return

:*?:ラw::
SendEvent ル
return

:*?:ヤw::
SendEvent ユ
return

:*?:マw::
SendEvent ム
return

:*?:ワw::
SendEvent ン
return


:*?:サd::
SendEvent セ
return

:*?:カd::
SendEvent ケ
return

;to allow proper use using an ime without conflicts
#InputLevel 0
:*?:アd::
SendEvent エ
return
#InputLevel 5

:*?:ハd::
SendEvent ヘ
return

:*?:ナd::
SendEvent ネ
return

:*?:タd::
SendEvent テ
return

:*?:ラd::
SendEvent レ
return

:*?:ヤd::
SendEvent ）
return

:*?:マd::
SendEvent メ
return

:*?:ワd::
SendEvent ー
return


:*?:サs::
SendEvent ソ
return

:*?:カs::
SendEvent コ
return

:*?:アs::
SendEvent オ
return

:*?:ハs::
SendEvent ホ
return

:*?:ナs::
SendEvent ノ
return

:*?:タs::
SendEvent ト
return

:*?:ラs::
SendEvent ロ
return

:*?:ヤs::
SendEvent ヨ
return

:*?:マs::
SendEvent モ
return

:*?:ワs::
SendEvent ヲ
return


:*?:サa::
SendEvent シ
return

:*?:カa::
SendEvent キ
return

:*?:アa::
SendEvent イ
return

:*?:ハa::
SendEvent ヒ
return

:*?:ナa::
SendEvent ニ
return

:*?:タa::
SendEvent チ
return

:*?:ラa::
SendEvent リ
return

:*?:ヤa::
SendEvent （
return

:*?:マa::
SendEvent ミ
return

:*?:ワa::
SendEvent ～
return



#InputLevel 4
;soft
:*?:qサ::
SendEvent ザ
return

:*?:qカ::
SendEvent ガ
return

:*?:qア::
SendEvent ァ
return

:*?:qハ::
SendEvent バ
return

:*?:qタ::
SendEvent ダ
return

:*?:qヤ::
SendEvent ャ
return

:*?:qワ::
SendEvent ヮ
return


:*?:ザw::
SendEvent ズ
return

:*?:ガw::
SendEvent グ
return

:*?:ァw::
SendEvent ゥ
return

:*?:バw::
SendEvent ぶ
return

:*?:ダw::
SendEvent ヅ
return

:*?:ャw::
SendEvent ュ
return


:*?:ザd::
SendEvent ゼ
return

:*?:ガd::
SendEvent ゲ
return

:*?:ァd::
SendEvent ェ
return

:*?:バd::
SendEvent ベ
return

:*?:ダd::
SendEvent デ
return


:*?:ザs::
SendEvent ゾ
return

:*?:ガs::
SendEvent ゴ
return

:*?:ァs::
SendEvent ォ
return

:*?:バs::
SendEvent ボ
return

:*?:ダs::
SendEvent ド
return

:*?:ゃs::
SendEvent ョ
return


:*?:ザa::
SendEvent ジ
return

:*?:ガa::
SendEvent ギ
return

:*?:ァa::
SendEvent ィ
return

:*?:バa::
SendEvent ビ
return

:*?:ダa::
SendEvent ヂ
return



;hard
:*?:eハ::
SendEvent パ
return

:*?:えハ::
SendEvent パ
return


:*?:パw::
SendEvent プ
return

:*?:パd::
SendEvent ペ
return

:*?:パs::
SendEvent ポ
return

:*?:パa::
SendEvent ピ
return



;combinations
:*?:サy::
SendEvent シャ
return

:*?:スy::
SendEvent シュ
return

:*?:ソy::
SendEvent ショ
return


:*?:ザy::
SendEvent ジャ
return

:*?:ズy::
SendEvent ジュ
return

:*?:ゾy::
SendEvent ジョ
return


:*?:カy::
SendEvent キャ
return

:*?:クy::
SendEvent キュ
return

:*?:コy::
SendEvent キョ
return


:*?:ガy::
SendEvent ギャ
return

:*?:グy::
SendEvent ギュ
return

:*?:ゴy::
SendEvent ギョ
return


:*?:ハy::
SendEvent ヒャ
return

:*?:フy::
SendEvent ヒュ
return

:*?:ホy::
SendEvent ヒョ
return


:*?:バy::
SendEvent ビャ
return

:*?:ブy::
SendEvent ビュ
return

:*?:ボy::
SendEvent ビョ
return


:*?:パy::
SendEvent ピャ
return

:*?:プy::
SendEvent ピュ
return

:*?:ポy::
SendEvent ピョ
return


:*?:ナy::
SendEvent ニャ
return

:*?:ヌy::
SendEvent ニュ
return

:*?:ノy::
SendEvent ニョ
return


:*?:タy::
SendEvent チャ
return

:*?:ツy::
SendEvent チュ
return

:*?:トy::
SendEvent チョ
return


:*?:ダy::
SendEvent ヂャ
return

:*?:ヅy::
SendEvent ヂュ
return

:*?:ドy::
SendEvent ヂョ
return


:*?:ラy::
SendEvent リャ
return

:*?:ルy::
SendEvent リュ
return

:*?:ロy::
SendEvent リョ
return


:*?:マy::
SendEvent ミャ
return

:*?:ムy::
SendEvent ミュ
return

:*?:モy::
SendEvent ミョ
return



;others
:*?:xタ::
SendEvent ッ
return

:*?:xナ::
SendEvent ン
return



#If



^Escape::ExitApp
