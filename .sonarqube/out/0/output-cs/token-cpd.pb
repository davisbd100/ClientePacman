ЄG
ЩC:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Brushes\TintTextureGenerator.cs
[ 
ExecuteInEditMode 
] 
public 
class  
TintTextureGenerator !
:" #
MonoBehaviour$ 1
{		 
public 

int 
k_TintMapSize 
= 
$num "
;" #
public 

void 
Start 
( 
) 
{ 
Refresh 
( 
GetComponent 
< 
Grid !
>! "
(" #
)# $
)$ %
;% &
} 
private 
	Texture2D 
m_TintTexture #
;# $
private 
	Texture2D 
tintTexture !
{ 
get 
{ 	
if 
( 
m_TintTexture 
==  
null! %
)% &
{ 
m_TintTexture 
= 
new  #
	Texture2D$ -
(- .
k_TintMapSize. ;
,; <
k_TintMapSize= J
,J K
TextureFormatL Y
.Y Z
ARGB32Z `
,` a
falseb g
)g h
;h i
m_TintTexture   
.   
	hideFlags   '
=  ( )
	HideFlags  * 3
.  3 4
HideAndDontSave  4 C
;  C D
m_TintTexture!! 
.!! 
wrapMode!! &
=!!' (
TextureWrapMode!!) 8
.!!8 9
Clamp!!9 >
;!!> ?
m_TintTexture"" 
."" 

filterMode"" (
="") *

FilterMode""+ 5
.""5 6
Bilinear""6 >
;""> ?%
RefreshGlobalShaderValues## )
(##) *
)##* +
;##+ ,
}$$ 
return%% 
m_TintTexture%%  
;%%  !
}&& 	
}'' 
public-- 

void-- 
Refresh-- 
(-- 
Grid-- 
grid-- !
)--! "
{.. 
if// 

(// 
grid// 
==// 
null// 
)// 
return00 
;00 
int22 
w22 
=22 
tintTexture22 
.22 
width22 !
;22! "
int33 
h33 
=33 
tintTexture33 
.33 
height33 "
;33" #
for44 
(44 
int44 
y44 
=44 
$num44 
;44 
y44 
<44 
h44 
;44 
y44  
++44  "
)44" #
{55 	
for66 
(66 
int66 
x66 
=66 
$num66 
;66 
x66 
<66 
w66  !
;66! "
x66# $
++66$ &
)66& '
{77 

Vector3Int88 
world88  
=88! "
TextureToWorld88# 1
(881 2
new882 5

Vector3Int886 @
(88@ A
x88A B
,88B C
y88D E
,88E F
$num88G H
)88H I
)88I J
;88J K
tintTexture99 
.99 
SetPixel99 $
(99$ %
x99% &
,99& '
y99( )
,99) *
GetGridInformation99+ =
(99= >
grid99> B
)99B C
.99C D
GetPositionProperty99D W
(99W X
world99X ]
,99] ^
$str99_ e
,99e f
Color99g l
.99l m
white99m r
)99r s
)99s t
;99t u
}:: 
};; 	
tintTexture<< 
.<< 
Apply<< 
(<< 
)<< 
;<< 
}== 
publicDD 

voidDD 
RefreshDD 
(DD 
GridDD 
gridDD !
,DD! "

Vector3IntDD# -
positionDD. 6
)DD6 7
{EE 
ifFF 

(FF 
gridFF 
==FF 
nullFF 
)FF 
returnGG 
;GG %
RefreshGlobalShaderValuesII !
(II! "
)II" #
;II# $

Vector3IntJJ 
texPositionJJ 
=JJ  
WorldToTextureJJ! /
(JJ/ 0
positionJJ0 8
)JJ8 9
;JJ9 :
tintTextureKK 
.KK 
SetPixelKK 
(KK 
texPositionKK (
.KK( )
xKK) *
,KK* +
texPositionKK, 7
.KK7 8
yKK8 9
,KK9 :
GetGridInformationKK; M
(KKM N
gridKKN R
)KKR S
.KKS T
GetPositionPropertyKKT g
(KKg h
positionKKh p
,KKp q
$strKKr x
,KKx y
ColorKKz 
.	KK А
white
KKА Е
)
KKЕ Ж
)
KKЖ З
;
KKЗ И
tintTextureLL 
.LL 
ApplyLL 
(LL 
)LL 
;LL 
}MM 
publicUU 

ColorUU 
GetColorUU 
(UU 
GridUU 
gridUU #
,UU# $

Vector3IntUU% /
positionUU0 8
)UU8 9
{VV 
ifWW 

(WW 
gridWW 
==WW 
nullWW 
)WW 
returnXX 
ColorXX 
.XX 
whiteXX 
;XX 
returnZZ 
GetGridInformationZZ !
(ZZ! "
gridZZ" &
)ZZ& '
.ZZ' (
GetPositionPropertyZZ( ;
(ZZ; <
positionZZ< D
,ZZD E
$strZZF L
,ZZL M
ColorZZN S
.ZZS T
whiteZZT Y
)ZZY Z
;ZZZ [
}[[ 
publicbb 

voidbb 
SetColorbb 
(bb 
Gridbb 
gridbb "
,bb" #

Vector3Intbb$ .
positionbb/ 7
,bb7 8
Colorbb9 >
colorbb? D
)bbD E
{cc 
ifdd 

(dd 
griddd 
==dd 
nulldd 
)dd 
returnee 
;ee 
GetGridInformationgg 
(gg 
gridgg 
)gg  
.gg  !
SetPositionPropertygg! 4
(gg4 5
positiongg5 =
,gg= >
$strgg? E
,ggE F
colorggG L
)ggL M
;ggM N
Refreshhh 
(hh 
gridhh 
,hh 
positionhh 
)hh 
;hh  
}ii 

Vector3Intkk 
WorldToTexturekk 
(kk 

Vector3Intkk (
worldkk) .
)kk. /
{ll 
returnmm 
newmm 

Vector3Intmm 
(mm 
worldmm #
.mm# $
xmm$ %
+mm& '
tintTexturemm( 3
.mm3 4
widthmm4 9
/mm: ;
$nummm< =
,mm= >
worldmm? D
.mmD E
ymmE F
+mmG H
tintTexturemmI T
.mmT U
heightmmU [
/mm\ ]
$nummm^ _
,mm_ `
$nummma b
)mmb c
;mmc d
}nn 

Vector3Intpp 
TextureToWorldpp 
(pp 

Vector3Intpp (
texpospp) /
)pp/ 0
{qq 
returnrr 
newrr 

Vector3Intrr 
(rr 
texposrr $
.rr$ %
xrr% &
-rr' (
tintTexturerr) 4
.rr4 5
widthrr5 :
/rr; <
$numrr= >
,rr> ?
texposrr@ F
.rrF G
yrrG H
-rrI J
tintTexturerrK V
.rrV W
heightrrW ]
/rr^ _
$numrr` a
,rra b
$numrrc d
)rrd e
;rre f
}ss 
GridInformationuu 
GetGridInformationuu &
(uu& '
Griduu' +
griduu, 0
)uu0 1
{vv 
GridInformationww 
gridInformationww '
=ww( )
gridww* .
.ww. /
GetComponentww/ ;
<ww; <
GridInformationww< K
>wwK L
(wwL M
)wwM N
;wwN O
ifyy 

(yy 
gridInformationyy 
==yy 
nullyy #
)yy# $
gridInformationzz 
=zz 
gridzz "
.zz" #

gameObjectzz# -
.zz- .
AddComponentzz. :
<zz: ;
GridInformationzz; J
>zzJ K
(zzK L
)zzL M
;zzM N
return|| 
gridInformation|| 
;|| 
}}} 
void %
RefreshGlobalShaderValues	 "
(" #
)# $
{
АА 
Shader
ББ 
.
ББ 
SetGlobalTexture
ББ 
(
ББ  
$str
ББ  *
,
ББ* +
m_TintTexture
ББ, 9
)
ББ9 :
;
ББ: ;
Shader
ВВ 
.
ВВ 
SetGlobalFloat
ВВ 
(
ВВ 
$str
ВВ ,
,
ВВ, -
k_TintMapSize
ВВ. ;
)
ВВ; <
;
ВВ< =
}
ГГ 
}ДД ∙и
ЬC:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\GridInformation\GridInformation.cs
	namespace 	
UnityEngine
 
. 
Tilemaps 
{ 
[ 
Serializable 
] 
internal 
enum 
GridInformationType %
{		 
Integer

 
,

 
String 
, 
Float 
, 
Double 
, 
UnityObject 
, 
Color 
} 
[ 
Serializable 
] 
[ 
AddComponentMenu 
( 
$str 0
)0 1
]1 2
public 

class 
GridInformation  
:! "
MonoBehaviour# 0
,0 1*
ISerializationCallbackReceiver2 P
{ 
internal 
struct  
GridInformationValue ,
{ 	
public 
GridInformationType &
type' +
;+ ,
public 
object 
data 
; 
} 	
[ 	
Serializable	 
] 
internal   
struct   
GridInformationKey   *
{!! 	
public"" 

Vector3Int"" 
position"" &
;""& '
public## 
String## 
name## 
;## 
}$$ 	
private&& 

Dictionary&& 
<&& 
GridInformationKey&& -
,&&- . 
GridInformationValue&&/ C
>&&C D 
m_PositionProperties&&E Y
=&&Z [
new&&\ _

Dictionary&&` j
<&&j k
GridInformationKey&&k }
,&&} ~!
GridInformationValue	&& У
>
&&У Ф
(
&&Ф Х
)
&&Х Ц
;
&&Ц Ч
internal'' 

Dictionary'' 
<'' 
GridInformationKey'' .
,''. / 
GridInformationValue''0 D
>''D E
PositionProperties''F X
{(( 	
get)) 
{)) 
return))  
m_PositionProperties)) -
;))- .
}))/ 0
}** 	
[,, 	
SerializeField,,	 
],, 
[-- 	
HideInInspector--	 
]-- 
private.. 
List.. 
<.. 
GridInformationKey.. '
>..' (
m_PositionIntKeys..) :
=..; <
new..= @
List..A E
<..E F
GridInformationKey..F X
>..X Y
(..Y Z
)..Z [
;..[ \
[00 	
SerializeField00	 
]00 
[11 	
HideInInspector11	 
]11 
private22 
List22 
<22 
int22 
>22 
m_PositionIntValues22 -
=22. /
new220 3
List224 8
<228 9
int229 <
>22< =
(22= >
)22> ?
;22? @
[44 	
SerializeField44	 
]44 
[55 	
HideInInspector55	 
]55 
private66 
List66 
<66 
GridInformationKey66 '
>66' ( 
m_PositionStringKeys66) =
=66> ?
new66@ C
List66D H
<66H I
GridInformationKey66I [
>66[ \
(66\ ]
)66] ^
;66^ _
[88 	
SerializeField88	 
]88 
[99 	
HideInInspector99	 
]99 
private:: 
List:: 
<:: 
String:: 
>:: "
m_PositionStringValues:: 3
=::4 5
new::6 9
List::: >
<::> ?
String::? E
>::E F
(::F G
)::G H
;::H I
[<< 	
SerializeField<<	 
]<< 
[== 	
HideInInspector==	 
]== 
private>> 
List>> 
<>> 
GridInformationKey>> '
>>>' (
m_PositionFloatKeys>>) <
=>>= >
new>>? B
List>>C G
<>>G H
GridInformationKey>>H Z
>>>Z [
(>>[ \
)>>\ ]
;>>] ^
[@@ 	
SerializeField@@	 
]@@ 
[AA 	
HideInInspectorAA	 
]AA 
privateBB 
ListBB 
<BB 
floatBB 
>BB !
m_PositionFloatValuesBB 1
=BB2 3
newBB4 7
ListBB8 <
<BB< =
floatBB= B
>BBB C
(BBC D
)BBD E
;BBE F
[DD 	
SerializeFieldDD	 
]DD 
[EE 	
HideInInspectorEE	 
]EE 
privateFF 
ListFF 
<FF 
GridInformationKeyFF '
>FF' ( 
m_PositionDoubleKeysFF) =
=FF> ?
newFF@ C
ListFFD H
<FFH I
GridInformationKeyFFI [
>FF[ \
(FF\ ]
)FF] ^
;FF^ _
[HH 	
SerializeFieldHH	 
]HH 
[II 	
HideInInspectorII	 
]II 
privateJJ 
ListJJ 
<JJ 
DoubleJJ 
>JJ "
m_PositionDoubleValuesJJ 3
=JJ4 5
newJJ6 9
ListJJ: >
<JJ> ?
DoubleJJ? E
>JJE F
(JJF G
)JJG H
;JJH I
[LL 	
SerializeFieldLL	 
]LL 
[MM 	
HideInInspectorMM	 
]MM 
privateNN 
ListNN 
<NN 
GridInformationKeyNN '
>NN' ( 
m_PositionObjectKeysNN) =
=NN> ?
newNN@ C
ListNND H
<NNH I
GridInformationKeyNNI [
>NN[ \
(NN\ ]
)NN] ^
;NN^ _
[PP 	
SerializeFieldPP	 
]PP 
[QQ 	
HideInInspectorQQ	 
]QQ 
privateRR 
ListRR 
<RR 
ObjectRR 
>RR "
m_PositionObjectValuesRR 3
=RR4 5
newRR6 9
ListRR: >
<RR> ?
ObjectRR? E
>RRE F
(RRF G
)RRG H
;RRH I
[TT 	
SerializeFieldTT	 
]TT 
[UU 	
HideInInspectorUU	 
]UU 
privateVV 
ListVV 
<VV 
GridInformationKeyVV '
>VV' (
m_PositionColorKeysVV) <
=VV= >
newVV? B
ListVVC G
<VVG H
GridInformationKeyVVH Z
>VVZ [
(VV[ \
)VV\ ]
;VV] ^
[XX 	
SerializeFieldXX	 
]XX 
[YY 	
HideInInspectorYY	 
]YY 
privateZZ 
ListZZ 
<ZZ 
ColorZZ 
>ZZ !
m_PositionColorValuesZZ 1
=ZZ2 3
newZZ4 7
ListZZ8 <
<ZZ< =
ColorZZ= B
>ZZB C
(ZZC D
)ZZD E
;ZZE F
void\\ *
ISerializationCallbackReceiver\\ +
.\\+ ,
OnBeforeSerialize\\, =
(\\= >
)\\> ?
{]] 	
Grid^^ 
grid^^ 
=^^  
GetComponentInParent^^ ,
<^^, -
Grid^^- 1
>^^1 2
(^^2 3
)^^3 4
;^^4 5
if__ 
(__ 
grid__ 
==__ 
null__ 
)__ 
return`` 
;`` 
m_PositionIntKeysbb 
.bb 
Clearbb #
(bb# $
)bb$ %
;bb% &
m_PositionIntValuescc 
.cc  
Clearcc  %
(cc% &
)cc& '
;cc' ( 
m_PositionStringKeysdd  
.dd  !
Cleardd! &
(dd& '
)dd' (
;dd( )"
m_PositionStringValuesee "
.ee" #
Clearee# (
(ee( )
)ee) *
;ee* +
m_PositionFloatKeysff 
.ff  
Clearff  %
(ff% &
)ff& '
;ff' (!
m_PositionFloatValuesgg !
.gg! "
Cleargg" '
(gg' (
)gg( )
;gg) * 
m_PositionDoubleKeyshh  
.hh  !
Clearhh! &
(hh& '
)hh' (
;hh( )"
m_PositionDoubleValuesii "
.ii" #
Clearii# (
(ii( )
)ii) *
;ii* + 
m_PositionObjectKeysjj  
.jj  !
Clearjj! &
(jj& '
)jj' (
;jj( )"
m_PositionObjectValueskk "
.kk" #
Clearkk# (
(kk( )
)kk) *
;kk* +
m_PositionColorKeysll 
.ll  
Clearll  %
(ll% &
)ll& '
;ll' (!
m_PositionColorValuesmm !
.mm! "
Clearmm" '
(mm' (
)mm( )
;mm) *
foreachoo 
(oo 
varoo 
kvpoo 
inoo  
m_PositionPropertiesoo  4
)oo4 5
{pp 
switchqq 
(qq 
kvpqq 
.qq 
Valueqq !
.qq! "
typeqq" &
)qq& '
{rr 
casess 
GridInformationTypess ,
.ss, -
Integerss- 4
:ss4 5
m_PositionIntKeystt )
.tt) *
Addtt* -
(tt- .
kvptt. 1
.tt1 2
Keytt2 5
)tt5 6
;tt6 7
m_PositionIntValuesuu +
.uu+ ,
Adduu, /
(uu/ 0
(uu0 1
intuu1 4
)uu4 5
kvpuu5 8
.uu8 9
Valueuu9 >
.uu> ?
datauu? C
)uuC D
;uuD E
breakvv 
;vv 
caseww 
GridInformationTypeww ,
.ww, -
Stringww- 3
:ww3 4 
m_PositionStringKeysxx ,
.xx, -
Addxx- 0
(xx0 1
kvpxx1 4
.xx4 5
Keyxx5 8
)xx8 9
;xx9 :"
m_PositionStringValuesyy .
.yy. /
Addyy/ 2
(yy2 3
kvpyy3 6
.yy6 7
Valueyy7 <
.yy< =
datayy= A
asyyB D
StringyyE K
)yyK L
;yyL M
breakzz 
;zz 
case{{ 
GridInformationType{{ ,
.{{, -
Float{{- 2
:{{2 3
m_PositionFloatKeys|| +
.||+ ,
Add||, /
(||/ 0
kvp||0 3
.||3 4
Key||4 7
)||7 8
;||8 9!
m_PositionFloatValues}} -
.}}- .
Add}}. 1
(}}1 2
(}}2 3
float}}3 8
)}}8 9
kvp}}9 <
.}}< =
Value}}= B
.}}B C
data}}C G
)}}G H
;}}H I
break~~ 
;~~ 
case 
GridInformationType ,
., -
Double- 3
:3 4"
m_PositionDoubleKeys
АА ,
.
АА, -
Add
АА- 0
(
АА0 1
kvp
АА1 4
.
АА4 5
Key
АА5 8
)
АА8 9
;
АА9 :$
m_PositionDoubleValues
ББ .
.
ББ. /
Add
ББ/ 2
(
ББ2 3
(
ББ3 4
double
ББ4 :
)
ББ: ;
kvp
ББ; >
.
ББ> ?
Value
ББ? D
.
ББD E
data
ББE I
)
ББI J
;
ББJ K
break
ВВ 
;
ВВ 
case
ГГ !
GridInformationType
ГГ ,
.
ГГ, -
Color
ГГ- 2
:
ГГ2 3!
m_PositionColorKeys
ДД +
.
ДД+ ,
Add
ДД, /
(
ДД/ 0
kvp
ДД0 3
.
ДД3 4
Key
ДД4 7
)
ДД7 8
;
ДД8 9#
m_PositionColorValues
ЕЕ -
.
ЕЕ- .
Add
ЕЕ. 1
(
ЕЕ1 2
(
ЕЕ2 3
Color
ЕЕ3 8
)
ЕЕ8 9
kvp
ЕЕ9 <
.
ЕЕ< =
Value
ЕЕ= B
.
ЕЕB C
data
ЕЕC G
)
ЕЕG H
;
ЕЕH I
break
ЖЖ 
;
ЖЖ 
default
ЗЗ 
:
ЗЗ "
m_PositionObjectKeys
ИИ ,
.
ИИ, -
Add
ИИ- 0
(
ИИ0 1
kvp
ИИ1 4
.
ИИ4 5
Key
ИИ5 8
)
ИИ8 9
;
ИИ9 :$
m_PositionObjectValues
ЙЙ .
.
ЙЙ. /
Add
ЙЙ/ 2
(
ЙЙ2 3
kvp
ЙЙ3 6
.
ЙЙ6 7
Value
ЙЙ7 <
.
ЙЙ< =
data
ЙЙ= A
as
ЙЙB D
Object
ЙЙE K
)
ЙЙK L
;
ЙЙL M
break
КК 
;
КК 
}
ЛЛ 
}
ММ 
}
НН 	
void
ПП ,
ISerializationCallbackReceiver
ПП +
.
ПП+ , 
OnAfterDeserialize
ПП, >
(
ПП> ?
)
ПП? @
{
РР 	"
m_PositionProperties
СС  
.
СС  !
Clear
СС! &
(
СС& '
)
СС' (
;
СС( )
for
ТТ 
(
ТТ 
int
ТТ 
i
ТТ 
=
ТТ 
$num
ТТ 
;
ТТ 
i
ТТ 
!=
ТТ  
Math
ТТ! %
.
ТТ% &
Min
ТТ& )
(
ТТ) *
m_PositionIntKeys
ТТ* ;
.
ТТ; <
Count
ТТ< A
,
ТТA B!
m_PositionIntValues
ТТC V
.
ТТV W
Count
ТТW \
)
ТТ\ ]
;
ТТ] ^
i
ТТ_ `
++
ТТ` b
)
ТТb c
{
УУ "
GridInformationValue
ФФ $
positionValue
ФФ% 2
;
ФФ2 3
positionValue
ХХ 
.
ХХ 
type
ХХ "
=
ХХ# $!
GridInformationType
ХХ% 8
.
ХХ8 9
Integer
ХХ9 @
;
ХХ@ A
positionValue
ЦЦ 
.
ЦЦ 
data
ЦЦ "
=
ЦЦ# $!
m_PositionIntValues
ЦЦ% 8
[
ЦЦ8 9
i
ЦЦ9 :
]
ЦЦ: ;
;
ЦЦ; <"
m_PositionProperties
ЧЧ $
.
ЧЧ$ %
Add
ЧЧ% (
(
ЧЧ( )
m_PositionIntKeys
ЧЧ) :
[
ЧЧ: ;
i
ЧЧ; <
]
ЧЧ< =
,
ЧЧ= >
positionValue
ЧЧ? L
)
ЧЧL M
;
ЧЧM N
}
ШШ 
for
ЩЩ 
(
ЩЩ 
int
ЩЩ 
i
ЩЩ 
=
ЩЩ 
$num
ЩЩ 
;
ЩЩ 
i
ЩЩ 
!=
ЩЩ  
Math
ЩЩ! %
.
ЩЩ% &
Min
ЩЩ& )
(
ЩЩ) *"
m_PositionStringKeys
ЩЩ* >
.
ЩЩ> ?
Count
ЩЩ? D
,
ЩЩD E$
m_PositionStringValues
ЩЩF \
.
ЩЩ\ ]
Count
ЩЩ] b
)
ЩЩb c
;
ЩЩc d
i
ЩЩe f
++
ЩЩf h
)
ЩЩh i
{
ЪЪ "
GridInformationValue
ЫЫ $
positionValue
ЫЫ% 2
;
ЫЫ2 3
positionValue
ЬЬ 
.
ЬЬ 
type
ЬЬ "
=
ЬЬ# $!
GridInformationType
ЬЬ% 8
.
ЬЬ8 9
String
ЬЬ9 ?
;
ЬЬ? @
positionValue
ЭЭ 
.
ЭЭ 
data
ЭЭ "
=
ЭЭ# $$
m_PositionStringValues
ЭЭ% ;
[
ЭЭ; <
i
ЭЭ< =
]
ЭЭ= >
;
ЭЭ> ?"
m_PositionProperties
ЮЮ $
.
ЮЮ$ %
Add
ЮЮ% (
(
ЮЮ( )"
m_PositionStringKeys
ЮЮ) =
[
ЮЮ= >
i
ЮЮ> ?
]
ЮЮ? @
,
ЮЮ@ A
positionValue
ЮЮB O
)
ЮЮO P
;
ЮЮP Q
}
ЯЯ 
for
аа 
(
аа 
int
аа 
i
аа 
=
аа 
$num
аа 
;
аа 
i
аа 
!=
аа  
Math
аа! %
.
аа% &
Min
аа& )
(
аа) *!
m_PositionFloatKeys
аа* =
.
аа= >
Count
аа> C
,
ааC D#
m_PositionFloatValues
ааE Z
.
ааZ [
Count
аа[ `
)
аа` a
;
ааa b
i
ааc d
++
ааd f
)
ааf g
{
бб "
GridInformationValue
вв $
positionValue
вв% 2
;
вв2 3
positionValue
гг 
.
гг 
type
гг "
=
гг# $!
GridInformationType
гг% 8
.
гг8 9
Float
гг9 >
;
гг> ?
positionValue
дд 
.
дд 
data
дд "
=
дд# $#
m_PositionFloatValues
дд% :
[
дд: ;
i
дд; <
]
дд< =
;
дд= >"
m_PositionProperties
ее $
.
ее$ %
Add
ее% (
(
ее( )!
m_PositionFloatKeys
ее) <
[
ее< =
i
ее= >
]
ее> ?
,
ее? @
positionValue
ееA N
)
ееN O
;
ееO P
}
жж 
for
зз 
(
зз 
int
зз 
i
зз 
=
зз 
$num
зз 
;
зз 
i
зз 
!=
зз  
Math
зз! %
.
зз% &
Min
зз& )
(
зз) *"
m_PositionDoubleKeys
зз* >
.
зз> ?
Count
зз? D
,
ззD E$
m_PositionDoubleValues
ззF \
.
зз\ ]
Count
зз] b
)
ззb c
;
ззc d
i
ззe f
++
ззf h
)
ззh i
{
ии "
GridInformationValue
йй $
positionValue
йй% 2
;
йй2 3
positionValue
кк 
.
кк 
type
кк "
=
кк# $!
GridInformationType
кк% 8
.
кк8 9
Double
кк9 ?
;
кк? @
positionValue
лл 
.
лл 
data
лл "
=
лл# $$
m_PositionDoubleValues
лл% ;
[
лл; <
i
лл< =
]
лл= >
;
лл> ?"
m_PositionProperties
мм $
.
мм$ %
Add
мм% (
(
мм( )"
m_PositionDoubleKeys
мм) =
[
мм= >
i
мм> ?
]
мм? @
,
мм@ A
positionValue
ммB O
)
ммO P
;
ммP Q
}
нн 
for
оо 
(
оо 
int
оо 
i
оо 
=
оо 
$num
оо 
;
оо 
i
оо 
!=
оо  
Math
оо! %
.
оо% &
Min
оо& )
(
оо) *"
m_PositionObjectKeys
оо* >
.
оо> ?
Count
оо? D
,
ооD E$
m_PositionObjectValues
ооF \
.
оо\ ]
Count
оо] b
)
ооb c
;
ооc d
i
ооe f
++
ооf h
)
ооh i
{
пп "
GridInformationValue
░░ $
positionValue
░░% 2
;
░░2 3
positionValue
▒▒ 
.
▒▒ 
type
▒▒ "
=
▒▒# $!
GridInformationType
▒▒% 8
.
▒▒8 9
UnityObject
▒▒9 D
;
▒▒D E
positionValue
▓▓ 
.
▓▓ 
data
▓▓ "
=
▓▓# $$
m_PositionObjectValues
▓▓% ;
[
▓▓; <
i
▓▓< =
]
▓▓= >
;
▓▓> ?"
m_PositionProperties
││ $
.
││$ %
Add
││% (
(
││( )"
m_PositionObjectKeys
││) =
[
││= >
i
││> ?
]
││? @
,
││@ A
positionValue
││B O
)
││O P
;
││P Q
}
┤┤ 
for
╡╡ 
(
╡╡ 
int
╡╡ 
i
╡╡ 
=
╡╡ 
$num
╡╡ 
;
╡╡ 
i
╡╡ 
!=
╡╡  
Math
╡╡! %
.
╡╡% &
Min
╡╡& )
(
╡╡) *!
m_PositionColorKeys
╡╡* =
.
╡╡= >
Count
╡╡> C
,
╡╡C D#
m_PositionColorValues
╡╡E Z
.
╡╡Z [
Count
╡╡[ `
)
╡╡` a
;
╡╡a b
i
╡╡c d
++
╡╡d f
)
╡╡f g
{
╢╢ "
GridInformationValue
╖╖ $
positionValue
╖╖% 2
;
╖╖2 3
positionValue
╕╕ 
.
╕╕ 
type
╕╕ "
=
╕╕# $!
GridInformationType
╕╕% 8
.
╕╕8 9
Color
╕╕9 >
;
╕╕> ?
positionValue
╣╣ 
.
╣╣ 
data
╣╣ "
=
╣╣# $#
m_PositionColorValues
╣╣% :
[
╣╣: ;
i
╣╣; <
]
╣╣< =
;
╣╣= >"
m_PositionProperties
║║ $
.
║║$ %
Add
║║% (
(
║║( )!
m_PositionColorKeys
║║) <
[
║║< =
i
║║= >
]
║║> ?
,
║║? @
positionValue
║║A N
)
║║N O
;
║║O P
}
╗╗ 
}
╝╝ 	
public
╟╟ 
bool
╟╟ !
SetPositionProperty
╟╟ '
<
╟╟' (
T
╟╟( )
>
╟╟) *
(
╟╟* +

Vector3Int
╟╟+ 5
position
╟╟6 >
,
╟╟> ?
String
╟╟@ F
name
╟╟G K
,
╟╟K L
T
╟╟M N
positionProperty
╟╟O _
)
╟╟_ `
{
╚╚ 	
throw
╔╔ 
new
╔╔ %
NotImplementedException
╔╔ -
(
╔╔- .
$str
╔╔. d
)
╔╔d e
;
╔╔e f
}
╩╩ 	
public
╙╙ 
bool
╙╙ !
SetPositionProperty
╙╙ '
(
╙╙' (

Vector3Int
╙╙( 2
position
╙╙3 ;
,
╙╙; <
String
╙╙= C
name
╙╙D H
,
╙╙H I
int
╙╙J M
positionProperty
╙╙N ^
)
╙╙^ _
{
╘╘ 	
return
╒╒ !
SetPositionProperty
╒╒ &
(
╒╒& '
position
╒╒' /
,
╒╒/ 0
name
╒╒1 5
,
╒╒5 6!
GridInformationType
╒╒7 J
.
╒╒J K
Integer
╒╒K R
,
╒╒R S
positionProperty
╒╒T d
)
╒╒d e
;
╒╒e f
}
╓╓ 	
public
▀▀ 
bool
▀▀ !
SetPositionProperty
▀▀ '
(
▀▀' (

Vector3Int
▀▀( 2
position
▀▀3 ;
,
▀▀; <
String
▀▀= C
name
▀▀D H
,
▀▀H I
string
▀▀J P
positionProperty
▀▀Q a
)
▀▀a b
{
рр 	
return
сс !
SetPositionProperty
сс &
(
сс& '
position
сс' /
,
сс/ 0
name
сс1 5
,
сс5 6!
GridInformationType
сс7 J
.
ссJ K
String
ссK Q
,
ссQ R
positionProperty
ссS c
)
ссc d
;
ссd e
}
тт 	
public
ыы 
bool
ыы !
SetPositionProperty
ыы '
(
ыы' (

Vector3Int
ыы( 2
position
ыы3 ;
,
ыы; <
String
ыы= C
name
ыыD H
,
ыыH I
float
ыыJ O
positionProperty
ыыP `
)
ыы` a
{
ьь 	
return
ээ !
SetPositionProperty
ээ &
(
ээ& '
position
ээ' /
,
ээ/ 0
name
ээ1 5
,
ээ5 6!
GridInformationType
ээ7 J
.
ээJ K
Float
ээK P
,
ээP Q
positionProperty
ээR b
)
ээb c
;
ээc d
}
юю 	
public
ўў 
bool
ўў !
SetPositionProperty
ўў '
(
ўў' (

Vector3Int
ўў( 2
position
ўў3 ;
,
ўў; <
String
ўў= C
name
ўўD H
,
ўўH I
double
ўўJ P
positionProperty
ўўQ a
)
ўўa b
{
°° 	
return
∙∙ !
SetPositionProperty
∙∙ &
(
∙∙& '
position
∙∙' /
,
∙∙/ 0
name
∙∙1 5
,
∙∙5 6!
GridInformationType
∙∙7 J
.
∙∙J K
Double
∙∙K Q
,
∙∙Q R
positionProperty
∙∙S c
)
∙∙c d
;
∙∙d e
}
·· 	
public
ГГ 
bool
ГГ !
SetPositionProperty
ГГ '
(
ГГ' (

Vector3Int
ГГ( 2
position
ГГ3 ;
,
ГГ; <
String
ГГ= C
name
ГГD H
,
ГГH I
UnityEngine
ГГJ U
.
ГГU V
Object
ГГV \
positionProperty
ГГ] m
)
ГГm n
{
ДД 	
return
ЕЕ !
SetPositionProperty
ЕЕ &
(
ЕЕ& '
position
ЕЕ' /
,
ЕЕ/ 0
name
ЕЕ1 5
,
ЕЕ5 6!
GridInformationType
ЕЕ7 J
.
ЕЕJ K
UnityObject
ЕЕK V
,
ЕЕV W
positionProperty
ЕЕX h
)
ЕЕh i
;
ЕЕi j
}
ЖЖ 	
public
ПП 
bool
ПП !
SetPositionProperty
ПП '
(
ПП' (

Vector3Int
ПП( 2
position
ПП3 ;
,
ПП; <
String
ПП= C
name
ППD H
,
ППH I
Color
ППJ O
positionProperty
ППP `
)
ПП` a
{
РР 	
return
СС !
SetPositionProperty
СС &
(
СС& '
position
СС' /
,
СС/ 0
name
СС1 5
,
СС5 6!
GridInformationType
СС7 J
.
ССJ K
Color
ССK P
,
ССP Q
positionProperty
ССR b
)
ССb c
;
ССc d
}
ТТ 	
private
ФФ 
bool
ФФ !
SetPositionProperty
ФФ (
(
ФФ( )

Vector3Int
ФФ) 3
position
ФФ4 <
,
ФФ< =
String
ФФ> D
name
ФФE I
,
ФФI J!
GridInformationType
ФФK ^
dataType
ФФ_ g
,
ФФg h
System
ФФi o
.
ФФo p
Object
ФФp v
positionPropertyФФw З
)ФФЗ И
{
ХХ 	
Grid
ЦЦ 
grid
ЦЦ 
=
ЦЦ "
GetComponentInParent
ЦЦ ,
<
ЦЦ, -
Grid
ЦЦ- 1
>
ЦЦ1 2
(
ЦЦ2 3
)
ЦЦ3 4
;
ЦЦ4 5
if
ЧЧ 
(
ЧЧ 
grid
ЧЧ 
!=
ЧЧ 
null
ЧЧ 
&&
ЧЧ 
positionProperty
ЧЧ  0
!=
ЧЧ1 3
null
ЧЧ4 8
)
ЧЧ8 9
{
ШШ  
GridInformationKey
ЩЩ "
positionKey
ЩЩ# .
;
ЩЩ. /
positionKey
ЪЪ 
.
ЪЪ 
position
ЪЪ $
=
ЪЪ% &
position
ЪЪ' /
;
ЪЪ/ 0
positionKey
ЫЫ 
.
ЫЫ 
name
ЫЫ  
=
ЫЫ! "
name
ЫЫ# '
;
ЫЫ' ("
GridInformationValue
ЭЭ $
positionValue
ЭЭ% 2
;
ЭЭ2 3
positionValue
ЮЮ 
.
ЮЮ 
type
ЮЮ "
=
ЮЮ# $
dataType
ЮЮ% -
;
ЮЮ- .
positionValue
ЯЯ 
.
ЯЯ 
data
ЯЯ "
=
ЯЯ# $
positionProperty
ЯЯ% 5
;
ЯЯ5 6"
m_PositionProperties
бб $
[
бб$ %
positionKey
бб% 0
]
бб0 1
=
бб2 3
positionValue
бб4 A
;
ббA B
return
вв 
true
вв 
;
вв 
}
гг 
return
дд 
false
дд 
;
дд 
}
ее 	
public
░░ 
T
░░ !
GetPositionProperty
░░ $
<
░░$ %
T
░░% &
>
░░& '
(
░░' (

Vector3Int
░░( 2
position
░░3 ;
,
░░; <
String
░░= C
name
░░D H
,
░░H I
T
░░J K
defaultValue
░░L X
)
░░X Y
where
░░Z _
T
░░` a
:
░░b c
UnityEngine
░░d o
.
░░o p
Object
░░p v
{
▒▒ 	 
GridInformationKey
▓▓ 
positionKey
▓▓ *
;
▓▓* +
positionKey
││ 
.
││ 
position
││  
=
││! "
position
││# +
;
││+ ,
positionKey
┤┤ 
.
┤┤ 
name
┤┤ 
=
┤┤ 
name
┤┤ #
;
┤┤# $"
GridInformationValue
╢╢  
positionValue
╢╢! .
;
╢╢. /
if
╖╖ 
(
╖╖ "
m_PositionProperties
╖╖ $
.
╖╖$ %
TryGetValue
╖╖% 0
(
╖╖0 1
positionKey
╖╖1 <
,
╖╖< =
out
╖╖> A
positionValue
╖╖B O
)
╖╖O P
)
╖╖P Q
{
╕╕ 
if
╣╣ 
(
╣╣ 
positionValue
╣╣ !
.
╣╣! "
type
╣╣" &
!=
╣╣' )!
GridInformationType
╣╣* =
.
╣╣= >
UnityObject
╣╣> I
)
╣╣I J
throw
║║ 
new
║║ "
InvalidCastException
║║ 2
(
║║2 3
$str
║║3 m
)
║║m n
;
║║n o
return
╗╗ 
positionValue
╗╗ $
.
╗╗$ %
data
╗╗% )
as
╗╗* ,
T
╗╗- .
;
╗╗. /
}
╝╝ 
return
╜╜ 
defaultValue
╜╜ 
;
╜╜  
}
╛╛ 	
public
╚╚ 
int
╚╚ !
GetPositionProperty
╚╚ &
(
╚╚& '

Vector3Int
╚╚' 1
position
╚╚2 :
,
╚╚: ;
String
╚╚< B
name
╚╚C G
,
╚╚G H
int
╚╚I L
defaultValue
╚╚M Y
)
╚╚Y Z
{
╔╔ 	 
GridInformationKey
╩╩ 
positionKey
╩╩ *
;
╩╩* +
positionKey
╦╦ 
.
╦╦ 
position
╦╦  
=
╦╦! "
position
╦╦# +
;
╦╦+ ,
positionKey
╠╠ 
.
╠╠ 
name
╠╠ 
=
╠╠ 
name
╠╠ #
;
╠╠# $"
GridInformationValue
╬╬  
positionValue
╬╬! .
;
╬╬. /
if
╧╧ 
(
╧╧ "
m_PositionProperties
╧╧ $
.
╧╧$ %
TryGetValue
╧╧% 0
(
╧╧0 1
positionKey
╧╧1 <
,
╧╧< =
out
╧╧> A
positionValue
╧╧B O
)
╧╧O P
)
╧╧P Q
{
╨╨ 
if
╤╤ 
(
╤╤ 
positionValue
╤╤ !
.
╤╤! "
type
╤╤" &
!=
╤╤' )!
GridInformationType
╤╤* =
.
╤╤= >
Integer
╤╤> E
)
╤╤E F
throw
╥╥ 
new
╥╥ "
InvalidCastException
╥╥ 2
(
╥╥2 3
$str
╥╥3 m
)
╥╥m n
;
╥╥n o
return
╙╙ 
(
╙╙ 
int
╙╙ 
)
╙╙ 
positionValue
╙╙ )
.
╙╙) *
data
╙╙* .
;
╙╙. /
}
╘╘ 
return
╒╒ 
defaultValue
╒╒ 
;
╒╒  
}
╓╓ 	
public
рр 
string
рр !
GetPositionProperty
рр )
(
рр) *

Vector3Int
рр* 4
position
рр5 =
,
рр= >
String
рр? E
name
ррF J
,
ррJ K
string
ррL R
defaultValue
ррS _
)
рр_ `
{
сс 	 
GridInformationKey
тт 
positionKey
тт *
;
тт* +
positionKey
уу 
.
уу 
position
уу  
=
уу! "
position
уу# +
;
уу+ ,
positionKey
фф 
.
фф 
name
фф 
=
фф 
name
фф #
;
фф# $"
GridInformationValue
цц  
positionValue
цц! .
;
цц. /
if
чч 
(
чч "
m_PositionProperties
чч $
.
чч$ %
TryGetValue
чч% 0
(
чч0 1
positionKey
чч1 <
,
чч< =
out
чч> A
positionValue
ччB O
)
ччO P
)
ччP Q
{
шш 
if
щщ 
(
щщ 
positionValue
щщ !
.
щщ! "
type
щщ" &
!=
щщ' )!
GridInformationType
щщ* =
.
щщ= >
String
щщ> D
)
щщD E
throw
ъъ 
new
ъъ "
InvalidCastException
ъъ 2
(
ъъ2 3
$str
ъъ3 m
)
ъъm n
;
ъъn o
return
ыы 
(
ыы 
string
ыы 
)
ыы 
positionValue
ыы ,
.
ыы, -
data
ыы- 1
;
ыы1 2
}
ьь 
return
ээ 
defaultValue
ээ 
;
ээ  
}
юю 	
public
°° 
float
°° !
GetPositionProperty
°° (
(
°°( )

Vector3Int
°°) 3
position
°°4 <
,
°°< =
String
°°> D
name
°°E I
,
°°I J
float
°°K P
defaultValue
°°Q ]
)
°°] ^
{
∙∙ 	 
GridInformationKey
·· 
positionKey
·· *
;
··* +
positionKey
√√ 
.
√√ 
position
√√  
=
√√! "
position
√√# +
;
√√+ ,
positionKey
№№ 
.
№№ 
name
№№ 
=
№№ 
name
№№ #
;
№№# $"
GridInformationValue
■■  
positionValue
■■! .
;
■■. /
if
   
(
   "
m_PositionProperties
   $
.
  $ %
TryGetValue
  % 0
(
  0 1
positionKey
  1 <
,
  < =
out
  > A
positionValue
  B O
)
  O P
)
  P Q
{
АА 
if
ББ 
(
ББ 
positionValue
ББ !
.
ББ! "
type
ББ" &
!=
ББ' )!
GridInformationType
ББ* =
.
ББ= >
Float
ББ> C
)
ББC D
throw
ВВ 
new
ВВ "
InvalidCastException
ВВ 2
(
ВВ2 3
$str
ВВ3 m
)
ВВm n
;
ВВn o
return
ГГ 
(
ГГ 
float
ГГ 
)
ГГ 
positionValue
ГГ +
.
ГГ+ ,
data
ГГ, 0
;
ГГ0 1
}
ДД 
return
ЕЕ 
defaultValue
ЕЕ 
;
ЕЕ  
}
ЖЖ 	
public
РР 
double
РР !
GetPositionProperty
РР )
(
РР) *

Vector3Int
РР* 4
position
РР5 =
,
РР= >
String
РР? E
name
РРF J
,
РРJ K
double
РРL R
defaultValue
РРS _
)
РР_ `
{
СС 	 
GridInformationKey
ТТ 
positionKey
ТТ *
;
ТТ* +
positionKey
УУ 
.
УУ 
position
УУ  
=
УУ! "
position
УУ# +
;
УУ+ ,
positionKey
ФФ 
.
ФФ 
name
ФФ 
=
ФФ 
name
ФФ #
;
ФФ# $"
GridInformationValue
ЦЦ  
positionValue
ЦЦ! .
;
ЦЦ. /
if
ЧЧ 
(
ЧЧ "
m_PositionProperties
ЧЧ $
.
ЧЧ$ %
TryGetValue
ЧЧ% 0
(
ЧЧ0 1
positionKey
ЧЧ1 <
,
ЧЧ< =
out
ЧЧ> A
positionValue
ЧЧB O
)
ЧЧO P
)
ЧЧP Q
{
ШШ 
if
ЩЩ 
(
ЩЩ 
positionValue
ЩЩ !
.
ЩЩ! "
type
ЩЩ" &
!=
ЩЩ' )!
GridInformationType
ЩЩ* =
.
ЩЩ= >
Double
ЩЩ> D
)
ЩЩD E
throw
ЪЪ 
new
ЪЪ "
InvalidCastException
ЪЪ 2
(
ЪЪ2 3
$str
ЪЪ3 m
)
ЪЪm n
;
ЪЪn o
return
ЫЫ 
(
ЫЫ 
double
ЫЫ 
)
ЫЫ 
positionValue
ЫЫ ,
.
ЫЫ, -
data
ЫЫ- 1
;
ЫЫ1 2
}
ЬЬ 
return
ЭЭ 
defaultValue
ЭЭ 
;
ЭЭ  
}
ЮЮ 	
public
ии 
Color
ии !
GetPositionProperty
ии (
(
ии( )

Vector3Int
ии) 3
position
ии4 <
,
ии< =
String
ии> D
name
ииE I
,
ииI J
Color
ииK P
defaultValue
ииQ ]
)
ии] ^
{
йй 	 
GridInformationKey
кк 
positionKey
кк *
;
кк* +
positionKey
лл 
.
лл 
position
лл  
=
лл! "
position
лл# +
;
лл+ ,
positionKey
мм 
.
мм 
name
мм 
=
мм 
name
мм #
;
мм# $"
GridInformationValue
оо  
positionValue
оо! .
;
оо. /
if
пп 
(
пп "
m_PositionProperties
пп $
.
пп$ %
TryGetValue
пп% 0
(
пп0 1
positionKey
пп1 <
,
пп< =
out
пп> A
positionValue
ппB O
)
ппO P
)
ппP Q
{
░░ 
if
▒▒ 
(
▒▒ 
positionValue
▒▒ !
.
▒▒! "
type
▒▒" &
!=
▒▒' )!
GridInformationType
▒▒* =
.
▒▒= >
Color
▒▒> C
)
▒▒C D
throw
▓▓ 
new
▓▓ "
InvalidCastException
▓▓ 2
(
▓▓2 3
$str
▓▓3 m
)
▓▓m n
;
▓▓n o
return
││ 
(
││ 
Color
││ 
)
││ 
positionValue
││ +
.
││+ ,
data
││, 0
;
││0 1
}
┤┤ 
return
╡╡ 
defaultValue
╡╡ 
;
╡╡  
}
╢╢ 	
public
╛╛ 
bool
╛╛ #
ErasePositionProperty
╛╛ )
(
╛╛) *

Vector3Int
╛╛* 4
position
╛╛5 =
,
╛╛= >
String
╛╛? E
name
╛╛F J
)
╛╛J K
{
┐┐ 	 
GridInformationKey
└└ 
positionKey
└└ *
;
└└* +
positionKey
┴┴ 
.
┴┴ 
position
┴┴  
=
┴┴! "
position
┴┴# +
;
┴┴+ ,
positionKey
┬┬ 
.
┬┬ 
name
┬┬ 
=
┬┬ 
name
┬┬ #
;
┬┬# $
return
├├ "
m_PositionProperties
├├ '
.
├├' (
Remove
├├( .
(
├├. /
positionKey
├├/ :
)
├├: ;
;
├├; <
}
── 	
public
╔╔ 
virtual
╔╔ 
void
╔╔ 
Reset
╔╔ !
(
╔╔! "
)
╔╔" #
{
╩╩ 	"
m_PositionProperties
╦╦  
.
╦╦  !
Clear
╦╦! &
(
╦╦& '
)
╦╦' (
;
╦╦( )
}
╠╠ 	
public
╙╙ 

Vector3Int
╙╙ 
[
╙╙ 
]
╙╙ 
GetAllPositions
╙╙ +
(
╙╙+ ,
string
╙╙, 2
propertyName
╙╙3 ?
)
╙╙? @
{
╘╘ 	
return
╒╒ "
m_PositionProperties
╒╒ '
.
╒╒' (
Keys
╒╒( ,
.
╒╒, -
ToList
╒╒- 3
(
╒╒3 4
)
╒╒4 5
.
╒╒5 6
FindAll
╒╒6 =
(
╒╒= >
x
╒╒> ?
=>
╒╒@ B
x
╒╒C D
.
╒╒D E
name
╒╒E I
==
╒╒J L
propertyName
╒╒M Y
)
╒╒Y Z
.
╒╒Z [
Select
╒╒[ a
(
╒╒a b
x
╒╒b c
=>
╒╒d f
x
╒╒g h
.
╒╒h i
position
╒╒i q
)
╒╒q r
.
╒╒r s
ToArray
╒╒s z
(
╒╒z {
)
╒╒{ |
;
╒╒| }
}
╓╓ 	
}
╫╫ 
}╪╪ шG
ЬC:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Tiles\AnimatedTile\AnimatedTile.cs
	namespace 	
UnityEngine
 
. 
Tilemaps 
{ 
[ 
Serializable 
] 
[ 
CreateAssetMenu 
( 
fileName 
= 
$str  3
,3 4
menuName5 =
=> ?
$str@ U
)U V
]V W
public 

class 
AnimatedTile 
: 
TileBase  (
{ 
public 
Sprite 
[ 
] 
m_AnimatedSprites )
;) *
public 
float 

m_MinSpeed 
=  !
$num" $
;$ %
public 
float 

m_MaxSpeed 
=  !
$num" $
;$ %
public## 
float##  
m_AnimationStartTime## )
;##) *
public'' 
Tile'' 
.'' 
ColliderType''  
m_TileColliderType''! 3
;''3 4
public// 
override// 
void// 
GetTileData// (
(//( )

Vector3Int//) 3
location//4 <
,//< =
ITilemap//> F
tileMap//G N
,//N O
ref//P S
TileData//T \
tileData//] e
)//e f
{00 	
tileData11 
.11 
	transform11 
=11  
	Matrix4x411! *
.11* +
identity11+ 3
;113 4
tileData22 
.22 
color22 
=22 
Color22 "
.22" #
white22# (
;22( )
if33 
(33 
m_AnimatedSprites33 !
!=33" $
null33% )
&&33* ,
m_AnimatedSprites33- >
.33> ?
Length33? E
>33F G
$num33H I
)33I J
{44 
tileData55 
.55 
sprite55 
=55  !
m_AnimatedSprites55" 3
[553 4
m_AnimatedSprites554 E
.55E F
Length55F L
-55M N
$num55O P
]55P Q
;55Q R
tileData66 
.66 
colliderType66 %
=66& '
m_TileColliderType66( :
;66: ;
}77 
}88 	
publicAA 
overrideAA 
boolAA  
GetTileAnimationDataAA 1
(AA1 2

Vector3IntAA2 <
locationAA= E
,AAE F
ITilemapAAG O
tileMapAAP W
,AAW X
refAAY \
TileAnimationDataAA] n
tileAnimationData	AAo А
)
AAА Б
{BB 	
ifCC 
(CC 
m_AnimatedSpritesCC !
.CC! "
LengthCC" (
>CC) *
$numCC+ ,
)CC, -
{DD 
tileAnimationDataEE !
.EE! "
animatedSpritesEE" 1
=EE2 3
m_AnimatedSpritesEE4 E
;EEE F
tileAnimationDataFF !
.FF! "
animationSpeedFF" 0
=FF1 2
RandomFF3 9
.FF9 :
RangeFF: ?
(FF? @

m_MinSpeedFF@ J
,FFJ K

m_MaxSpeedFFL V
)FFV W
;FFW X
tileAnimationDataGG !
.GG! "
animationStartTimeGG" 4
=GG5 6 
m_AnimationStartTimeGG7 K
;GGK L
returnHH 
trueHH 
;HH 
}II 
returnJJ 
falseJJ 
;JJ 
}KK 	
}LL 
[OO 
CustomEditorOO 
(OO 
typeofOO 
(OO 
AnimatedTileOO %
)OO% &
)OO& '
]OO' (
publicPP 

classPP 
AnimatedTileEditorPP #
:PP$ %
EditorPP& ,
{QQ 
privateRR 
AnimatedTileRR 
tileRR !
{RR" #
getRR$ '
{RR( )
returnRR* 0
(RR1 2
targetRR2 8
asRR9 ;
AnimatedTileRR< H
)RRH I
;RRI J
}RRK L
}RRM N
publicTT 
overrideTT 
voidTT 
OnInspectorGUITT +
(TT+ ,
)TT, -
{UU 	
	EditorGUIVV 
.VV 
BeginChangeCheckVV &
(VV& '
)VV' (
;VV( )
intWW 
countWW 
=WW 
EditorGUILayoutWW '
.WW' (
DelayedIntFieldWW( 7
(WW7 8
$strWW8 T
,WWT U
tileWWV Z
.WWZ [
m_AnimatedSpritesWW[ l
!=WWm o
nullWWp t
?WWu v
tileWWw {
.WW{ |
m_AnimatedSprites	WW| Н
.
WWН О
Length
WWО Ф
:
WWХ Ц
$num
WWЧ Ш
)
WWШ Щ
;
WWЩ Ъ
ifXX 
(XX 
countXX 
<XX 
$numXX 
)XX 
countYY 
=YY 
$numYY 
;YY 
if[[ 
([[ 
tile[[ 
.[[ 
m_AnimatedSprites[[ &
==[[' )
null[[* .
||[[/ 1
tile[[2 6
.[[6 7
m_AnimatedSprites[[7 H
.[[H I
Length[[I O
!=[[P R
count[[S X
)[[X Y
{\\ 
Array]] 
.]] 
Resize]] 
<]] 
Sprite]] #
>]]# $
(]]$ %
ref]]% (
tile]]) -
.]]- .
m_AnimatedSprites]]. ?
,]]? @
count]]A F
)]]F G
;]]G H
}^^ 
if`` 
(`` 
count`` 
==`` 
$num`` 
)`` 
returnaa 
;aa 
EditorGUILayoutcc 
.cc 

LabelFieldcc &
(cc& '
$strcc' ]
)cc] ^
;cc^ _
EditorGUILayoutdd 
.dd 
Spacedd !
(dd! "
)dd" #
;dd# $
forff 
(ff 
intff 
iff 
=ff 
$numff 
;ff 
iff 
<ff 
countff  %
;ff% &
iff' (
++ff( *
)ff* +
{gg 
tilehh 
.hh 
m_AnimatedSpriteshh &
[hh& '
ihh' (
]hh( )
=hh* +
(hh, -
Spritehh- 3
)hh3 4
EditorGUILayouthh5 D
.hhD E
ObjectFieldhhE P
(hhP Q
$strhhQ Z
+hh[ \
(hh] ^
ihh^ _
+hh_ `
$numhh` a
)hha b
,hhb c
tilehhd h
.hhh i
m_AnimatedSpriteshhi z
[hhz {
ihh{ |
]hh| }
,hh} ~
typeof	hh Е
(
hhЕ Ж
Sprite
hhЖ М
)
hhМ Н
,
hhН О
false
hhП Ф
,
hhФ Х
null
hhЦ Ъ
)
hhЪ Ы
;
hhЫ Ь
}ii 
floatkk 
minSpeedkk 
=kk 
EditorGUILayoutkk ,
.kk, -

FloatFieldkk- 7
(kk7 8
$strkk8 G
,kkG H
tilekkI M
.kkM N

m_MinSpeedkkN X
)kkX Y
;kkY Z
floatll 
maxSpeedll 
=ll 
EditorGUILayoutll ,
.ll, -

FloatFieldll- 7
(ll7 8
$strll8 G
,llG H
tilellI M
.llM N

m_MaxSpeedllN X
)llX Y
;llY Z
ifmm 
(mm 
minSpeedmm 
<mm 
$nummm 
)mm  
minSpeednn 
=nn 
$numnn 
;nn  
ifpp 
(pp 
maxSpeedpp 
<pp 
$numpp 
)pp  
maxSpeedqq 
=qq 
$numqq 
;qq  
ifss 
(ss 
maxSpeedss 
<ss 
minSpeedss #
)ss# $
maxSpeedtt 
=tt 
minSpeedtt #
;tt# $
tilevv 
.vv 

m_MinSpeedvv 
=vv 
minSpeedvv &
;vv& '
tileww 
.ww 

m_MaxSpeedww 
=ww 
maxSpeedww &
;ww& '
tileyy 
.yy  
m_AnimationStartTimeyy %
=yy& '
EditorGUILayoutyy( 7
.yy7 8

FloatFieldyy8 B
(yyB C
$stryyC O
,yyO P
tileyyQ U
.yyU V 
m_AnimationStartTimeyyV j
)yyj k
;yyk l
tilezz 
.zz 
m_TileColliderTypezz #
=zz# $
(zz$ %
Tilezz% )
.zz) *
ColliderTypezz* 6
)zz6 7
EditorGUILayoutzz8 G
.zzG H
	EnumPopupzzH Q
(zzQ R
$strzzR a
,zza b
tilezzc g
.zzg h
m_TileColliderTypezzh z
)zzz {
;zz{ |
if{{ 
({{ 
	EditorGUI{{ 
.{{ 
EndChangeCheck{{ (
({{( )
){{) *
){{* +
EditorUtility|| 
.|| 
SetDirty|| &
(||& '
tile||' +
)||+ ,
;||, -
}}} 	
}~~ 
}АА ╚{
жC:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Tiles\HexagonalRuleTile\HexagonalRuleTile.cs
	namespace 	
UnityEngine
 
{ 
public 

class 
HexagonalRuleTile "
<" #
T# $
>$ %
:& '
HexagonalRuleTile( 9
{ 
public 
sealed 
override 
Type #
m_NeighborType$ 2
{3 4
get5 8
{9 :
return; A
typeofB H
(H I
TI J
)J K
;K L
}M N
}O P
} 
[ 
Serializable 
] 
[ 
CreateAssetMenu 
( 
fileName 
= 
$str  9
,9 :
menuName; C
=D E
$strF a
)a b
]b c
public 

class 
HexagonalRuleTile "
:# $
RuleTile% -
{ 
public 
override 
int 
m_RotationAngle +
=>, .
$num/ 1
;1 2
private 
static 
float 
[ 
] 
m_CosAngleArr1 -
=. /
{0 1
Mathf 
. 
Cos 
( 
$num 
* 
Mathf 
.  
Deg2Rad  '
)' (
,( )
Mathf   
.   
Cos   
(   
-   
$num   
*   
Mathf   !
.  ! "
Deg2Rad  " )
)  ) *
,  * +
Mathf!! 
.!! 
Cos!! 
(!! 
-!! 
$num!! 
*!! 
Mathf!! "
.!!" #
Deg2Rad!!# *
)!!* +
,!!+ ,
Mathf"" 
."" 
Cos"" 
("" 
-"" 
$num"" 
*"" 
Mathf"" "
.""" #
Deg2Rad""# *
)""* +
,""+ ,
Mathf## 
.## 
Cos## 
(## 
-## 
$num## 
*## 
Mathf## "
.##" #
Deg2Rad### *
)##* +
,##+ ,
Mathf$$ 
.$$ 
Cos$$ 
($$ 
-$$ 
$num$$ 
*$$ 
Mathf$$ "
.$$" #
Deg2Rad$$# *
)$$* +
,$$+ ,
}%% 	
;%%	 

private&& 
static&& 
float&& 
[&& 
]&& 
m_SinAngleArr1&& -
=&&. /
{&&0 1
Mathf'' 
.'' 
Sin'' 
('' 
$num'' 
*'' 
Mathf'' 
.''  
Deg2Rad''  '
)''' (
,''( )
Mathf(( 
.(( 
Sin(( 
((( 
-(( 
$num(( 
*(( 
Mathf(( !
.((! "
Deg2Rad((" )
)(() *
,((* +
Mathf)) 
.)) 
Sin)) 
()) 
-)) 
$num)) 
*)) 
Mathf)) "
.))" #
Deg2Rad))# *
)))* +
,))+ ,
Mathf** 
.** 
Sin** 
(** 
-** 
$num** 
*** 
Mathf** "
.**" #
Deg2Rad**# *
)*** +
,**+ ,
Mathf++ 
.++ 
Sin++ 
(++ 
-++ 
$num++ 
*++ 
Mathf++ "
.++" #
Deg2Rad++# *
)++* +
,+++ ,
Mathf,, 
.,, 
Sin,, 
(,, 
-,, 
$num,, 
*,, 
Mathf,, "
.,," #
Deg2Rad,,# *
),,* +
,,,+ ,
}-- 	
;--	 

private.. 
static.. 
float.. 
[.. 
].. 
m_CosAngleArr2.. -
=... /
{..0 1
Mathf// 
.// 
Cos// 
(// 
$num// 
*// 
Mathf// 
.//  
Deg2Rad//  '
)//' (
,//( )
Mathf00 
.00 
Cos00 
(00 
$num00 
*00 
Mathf00  
.00  !
Deg2Rad00! (
)00( )
,00) *
Mathf11 
.11 
Cos11 
(11 
$num11 
*11 
Mathf11 !
.11! "
Deg2Rad11" )
)11) *
,11* +
Mathf22 
.22 
Cos22 
(22 
$num22 
*22 
Mathf22 !
.22! "
Deg2Rad22" )
)22) *
,22* +
Mathf33 
.33 
Cos33 
(33 
$num33 
*33 
Mathf33 !
.33! "
Deg2Rad33" )
)33) *
,33* +
Mathf44 
.44 
Cos44 
(44 
$num44 
*44 
Mathf44 !
.44! "
Deg2Rad44" )
)44) *
,44* +
}55 	
;55	 

private66 
static66 
float66 
[66 
]66 
m_SinAngleArr266 -
=66. /
{660 1
Mathf77 
.77 
Sin77 
(77 
$num77 
*77 
Mathf77 
.77  
Deg2Rad77  '
)77' (
,77( )
Mathf88 
.88 
Sin88 
(88 
$num88 
*88 
Mathf88  
.88  !
Deg2Rad88! (
)88( )
,88) *
Mathf99 
.99 
Sin99 
(99 
$num99 
*99 
Mathf99 !
.99! "
Deg2Rad99" )
)99) *
,99* +
Mathf:: 
.:: 
Sin:: 
(:: 
$num:: 
*:: 
Mathf:: !
.::! "
Deg2Rad::" )
)::) *
,::* +
Mathf;; 
.;; 
Sin;; 
(;; 
$num;; 
*;; 
Mathf;; !
.;;! "
Deg2Rad;;" )
);;) *
,;;* +
Mathf<< 
.<< 
Sin<< 
(<< 
$num<< 
*<< 
Mathf<< !
.<<! "
Deg2Rad<<" )
)<<) *
,<<* +
}== 	
;==	 

publicBB 
boolBB 
	m_FlatTopBB 
;BB 
staticDD 
floatDD "
m_TilemapToWorldYScaleDD +
=DD, -
MathfDD. 3
.DD3 4
PowDD4 7
(DD7 8
$numDD8 9
-DD: ;
MathfDD< A
.DDA B
PowDDB E
(DDE F
$numDDF J
,DDJ K
$numDDL N
)DDN O
,DDO P
$numDDQ U
)DDU V
;DDV W
publicFF 
staticFF 
Vector3FF *
TilemapPositionToWorldPositionFF <
(FF< =

Vector3IntFF= G
tilemapPositionFFH W
)FFW X
{GG 	
Vector3HH 
worldPositionHH !
=HH" #
newHH$ '
Vector3HH( /
(HH/ 0
tilemapPositionHH0 ?
.HH? @
xHH@ A
,HHA B
tilemapPositionHHC R
.HHR S
yHHS T
)HHT U
;HHU V
ifII 
(II 
tilemapPositionII 
.II  
yII  !
%II" #
$numII$ %
!=II& (
$numII) *
)II* +
worldPositionJJ 
.JJ 
xJJ 
+=JJ  "
$numJJ# '
;JJ' (
worldPositionKK 
.KK 
yKK 
*=KK "
m_TilemapToWorldYScaleKK 5
;KK5 6
returnLL 
worldPositionLL  
;LL  !
}MM 	
publicOO 
staticOO 

Vector3IntOO  *
WorldPositionToTilemapPositionOO! ?
(OO? @
Vector3OO@ G
worldPositionOOH U
)OOU V
{PP 	
worldPositionQQ 
.QQ 
yQQ 
/=QQ "
m_TilemapToWorldYScaleQQ 5
;QQ5 6

Vector3IntRR 
tilemapPositionRR &
=RR' (
newRR) ,

Vector3IntRR- 7
(RR7 8
)RR8 9
;RR9 :
tilemapPositionSS 
.SS 
ySS 
=SS 
MathfSS  %
.SS% &

RoundToIntSS& 0
(SS0 1
worldPositionSS1 >
.SS> ?
ySS? @
)SS@ A
;SSA B
ifTT 
(TT 
tilemapPositionTT 
.TT  
yTT  !
%TT" #
$numTT$ %
!=TT& (
$numTT) *
)TT* +
tilemapPositionUU 
.UU  
xUU  !
=UU" #
MathfUU$ )
.UU) *

RoundToIntUU* 4
(UU4 5
worldPositionUU5 B
.UUB C
xUUC D
-UUE F
$numUUG K
)UUK L
;UUL M
elseVV 
tilemapPositionWW 
.WW  
xWW  !
=WW" #
MathfWW$ )
.WW) *

RoundToIntWW* 4
(WW4 5
worldPositionWW5 B
.WWB C
xWWC D
)WWD E
;WWE F
returnXX 
tilemapPositionXX "
;XX" #
}YY 	
	protected[[ 
override[[ 

Vector3Int[[ %
GetOffsetPosition[[& 7
([[7 8

Vector3Int[[8 B
location[[C K
,[[K L

Vector3Int[[M W
offset[[X ^
)[[^ _
{\\ 	

Vector3Int]] 
position]] 
=]]  !
location]]" *
+]]+ ,
offset]]- 3
;]]3 4
if__ 
(__ 
offset__ 
.__ 
y__ 
%__ 
$num__ 
!=__ 
$num__  !
&&__" $
location__% -
.__- .
y__. /
%__0 1
$num__2 3
!=__4 6
$num__7 8
)__8 9
position`` 
.`` 
x`` 
+=`` 
$num`` 
;``  
returnbb 
positionbb 
;bb 
}cc 	
	protectedee 
overrideee 

Vector3Intee %$
GetOffsetPositionReverseee& >
(ee> ?

Vector3Intee? I
positioneeJ R
,eeR S

Vector3InteeT ^
offsetee_ e
)eee f
{ff 	

Vector3Intgg 
locationgg 
=gg  !
positiongg" *
-gg+ ,
offsetgg- 3
;gg3 4
ifii 
(ii 
offsetii 
.ii 
yii 
%ii 
$numii 
!=ii 
$numii  !
&&ii" $
locationii% -
.ii- .
yii. /
%ii0 1
$numii2 3
!=ii4 6
$numii7 8
)ii8 9
locationjj 
.jj 
xjj 
-=jj 
$numjj 
;jj  
returnll 
locationll 
;ll 
}mm 	
	protecteduu 
overrideuu 

Vector3Intuu %
GetRotatedPositionuu& 8
(uu8 9

Vector3Intuu9 C
positionuuD L
,uuL M
intuuN Q
rotationuuR Z
)uuZ [
{vv 	
ifww 
(ww 
rotationww 
!=ww 
$numww 
)ww 
{xx 
Vector3yy 
worldPositionyy %
=yy& '*
TilemapPositionToWorldPositionyy( F
(yyF G
positionyyG O
)yyO P
;yyP Q
int{{ 
index{{ 
={{ 
rotation{{ $
/{{% &
$num{{' )
;{{) *
if|| 
(|| 
	m_FlatTop|| 
)|| 
{}} 
worldPosition~~ !
=~~" #
new~~$ '
Vector3~~( /
(~~/ 0
worldPosition %
.% &
x& '
*( )
m_CosAngleArr2* 8
[8 9
index9 >
]> ?
-@ A
worldPositionB O
.O P
yP Q
*R S
m_SinAngleArr2T b
[b c
indexc h
]h i
,i j
worldPosition
АА %
.
АА% &
x
АА& '
*
АА( )
m_SinAngleArr2
АА* 8
[
АА8 9
index
АА9 >
]
АА> ?
+
АА@ A
worldPosition
ААB O
.
ААO P
y
ААP Q
*
ААR S
m_CosAngleArr2
ААT b
[
ААb c
index
ААc h
]
ААh i
)
ББ 
;
ББ 
}
ВВ 
else
ГГ 
{
ДД 
worldPosition
ЕЕ !
=
ЕЕ" #
new
ЕЕ$ '
Vector3
ЕЕ( /
(
ЕЕ/ 0
worldPosition
ЖЖ %
.
ЖЖ% &
x
ЖЖ& '
*
ЖЖ( )
m_CosAngleArr1
ЖЖ* 8
[
ЖЖ8 9
index
ЖЖ9 >
]
ЖЖ> ?
-
ЖЖ@ A
worldPosition
ЖЖB O
.
ЖЖO P
y
ЖЖP Q
*
ЖЖR S
m_SinAngleArr1
ЖЖT b
[
ЖЖb c
index
ЖЖc h
]
ЖЖh i
,
ЖЖi j
worldPosition
ЗЗ %
.
ЗЗ% &
x
ЗЗ& '
*
ЗЗ( )
m_SinAngleArr1
ЗЗ* 8
[
ЗЗ8 9
index
ЗЗ9 >
]
ЗЗ> ?
+
ЗЗ@ A
worldPosition
ЗЗB O
.
ЗЗO P
y
ЗЗP Q
*
ЗЗR S
m_CosAngleArr1
ЗЗT b
[
ЗЗb c
index
ЗЗc h
]
ЗЗh i
)
ИИ 
;
ИИ 
}
ЙЙ 
position
ЛЛ 
=
ЛЛ ,
WorldPositionToTilemapPosition
ЛЛ 9
(
ЛЛ9 :
worldPosition
ЛЛ: G
)
ЛЛG H
;
ЛЛH I
}
ММ 
return
НН 
position
НН 
;
НН 
}
ОО 	
	protected
ЧЧ 
override
ЧЧ 

Vector3Int
ЧЧ %!
GetMirroredPosition
ЧЧ& 9
(
ЧЧ9 :

Vector3Int
ЧЧ: D
position
ЧЧE M
,
ЧЧM N
bool
ЧЧO S
mirrorX
ЧЧT [
,
ЧЧ[ \
bool
ЧЧ] a
mirrorY
ЧЧb i
)
ЧЧi j
{
ШШ 	
if
ЩЩ 
(
ЩЩ 
mirrorX
ЩЩ 
||
ЩЩ 
mirrorY
ЩЩ "
)
ЩЩ" #
{
ЪЪ 
Vector3
ЫЫ 
worldPosition
ЫЫ %
=
ЫЫ& ',
TilemapPositionToWorldPosition
ЫЫ( F
(
ЫЫF G
position
ЫЫG O
)
ЫЫO P
;
ЫЫP Q
if
ЭЭ 
(
ЭЭ 
	m_FlatTop
ЭЭ 
)
ЭЭ 
{
ЮЮ 
if
ЯЯ 
(
ЯЯ 
mirrorX
ЯЯ 
)
ЯЯ  
worldPosition
аа %
.
аа% &
y
аа& '
*=
аа( *
-
аа+ ,
$num
аа, -
;
аа- .
if
бб 
(
бб 
mirrorY
бб 
)
бб  
worldPosition
вв %
.
вв% &
x
вв& '
*=
вв( *
-
вв+ ,
$num
вв, -
;
вв- .
}
гг 
else
дд 
{
ее 
if
жж 
(
жж 
mirrorX
жж 
)
жж  
worldPosition
зз %
.
зз% &
x
зз& '
*=
зз( *
-
зз+ ,
$num
зз, -
;
зз- .
if
ии 
(
ии 
mirrorY
ии 
)
ии  
worldPosition
йй %
.
йй% &
y
йй& '
*=
йй( *
-
йй+ ,
$num
йй, -
;
йй- .
}
кк 
position
мм 
=
мм ,
WorldPositionToTilemapPosition
мм 9
(
мм9 :
worldPosition
мм: G
)
ммG H
;
ммH I
}
нн 
return
оо 
position
оо 
;
оо 
}
пп 	
}
░░ 
}▒▒ ф
жC:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Tiles\IsometricRuleTile\IsometricRuleTile.cs
	namespace 	
UnityEngine
 
{ 
public 

class 
IsometricRuleTile "
<" #
T# $
>$ %
:& '
IsometricRuleTile( 9
{ 
public 
sealed 
override 
Type #
m_NeighborType$ 2
{3 4
get5 8
{9 :
return; A
typeofB H
(H I
TI J
)J K
;K L
}M N
}O P
} 
[ 
Serializable 
] 
[ 
CreateAssetMenu 
( 
fileName 
= 
$str  9
,9 :
menuName; C
=D E
$strF a
)a b
]b c
public 

class 
IsometricRuleTile "
:# $
RuleTile% -
{ 
} 
} Н{
ЬC:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Tiles\PipelineTile\PipelineTile.cs
	namespace 	
UnityEngine
 
. 
Tilemaps 
{ 
[ 
Serializable 
] 
[ 
CreateAssetMenu 
( 
fileName 
= 
$str  3
,3 4
menuName5 =
=> ?
$str@ U
)U V
]V W
public 

class 
PipelineTile 
: 
TileBase  (
{ 
[ 	
SerializeField	 
] 
public 
Sprite 
[ 
] 
	m_Sprites !
;! "
public 
override 
void 
RefreshTile (
(( )

Vector3Int) 3
location4 <
,< =
ITilemap> F
tileMapG N
)N O
{   	
for!! 
(!! 
int!! 
yd!! 
=!! 
-!! 
$num!! 
;!! 
yd!!  
<=!!! #
$num!!$ %
;!!% &
yd!!' )
++!!) +
)!!+ ,
for"" 
("" 
int"" 
xd"" 
="" 
-"" 
$num""  
;""  !
xd""" $
<=""% '
$num""( )
;"") *
xd""+ -
++""- /
)""/ 0
{## 

Vector3Int$$ 
position$$ '
=$$( )
new$$* -

Vector3Int$$. 8
($$8 9
location$$9 A
.$$A B
x$$B C
+$$D E
xd$$F H
,$$H I
location$$J R
.$$R S
y$$S T
+$$U V
yd$$W Y
,$$Y Z
location$$[ c
.$$c d
z$$d e
)$$e f
;$$f g
if%% 
(%% 
	TileValue%% !
(%%! "
tileMap%%" )
,%%) *
position%%+ 3
)%%3 4
)%%4 5
tileMap&& 
.&&  
RefreshTile&&  +
(&&+ ,
position&&, 4
)&&4 5
;&&5 6
}'' 
}(( 	
public00 
override00 
void00 
GetTileData00 (
(00( )

Vector3Int00) 3
location004 <
,00< =
ITilemap00> F
tileMap00G N
,00N O
ref00P S
TileData00T \
tileData00] e
)00e f
{11 	

UpdateTile22 
(22 
location22 
,22  
tileMap22! (
,22( )
ref22* -
tileData22. 6
)226 7
;227 8
}33 	
private55 
void55 

UpdateTile55 
(55  

Vector3Int55  *
location55+ 3
,553 4
ITilemap555 =
tileMap55> E
,55E F
ref55G J
TileData55K S
tileData55T \
)55\ ]
{66 	
tileData77 
.77 
	transform77 
=77  
	Matrix4x477! *
.77* +
identity77+ 3
;773 4
tileData88 
.88 
color88 
=88 
Color88 "
.88" #
white88# (
;88( )
int:: 
mask:: 
=:: 
	TileValue::  
(::  !
tileMap::! (
,::( )
location::* 2
+::3 4
new::5 8

Vector3Int::9 C
(::C D
$num::D E
,::E F
$num::G H
,::H I
$num::J K
)::K L
)::L M
?::N O
$num::P Q
:::R S
$num::T U
;::U V
mask;; 
+=;; 
	TileValue;; 
(;; 
tileMap;; %
,;;% &
location;;' /
+;;0 1
new;;2 5

Vector3Int;;6 @
(;;@ A
$num;;A B
,;;B C
$num;;D E
,;;E F
$num;;G H
);;H I
);;I J
?;;K L
$num;;M N
:;;O P
$num;;Q R
;;;R S
mask<< 
+=<< 
	TileValue<< 
(<< 
tileMap<< %
,<<% &
location<<' /
+<<0 1
new<<2 5

Vector3Int<<6 @
(<<@ A
$num<<A B
,<<B C
-<<D E
$num<<E F
,<<F G
$num<<H I
)<<I J
)<<J K
?<<L M
$num<<N O
:<<P Q
$num<<R S
;<<S T
mask== 
+=== 
	TileValue== 
(== 
tileMap== %
,==% &
location==' /
+==0 1
new==2 5

Vector3Int==6 @
(==@ A
-==A B
$num==B C
,==C D
$num==E F
,==F G
$num==H I
)==I J
)==J K
?==L M
$num==N O
:==P Q
$num==R S
;==S T
int?? 
index?? 
=?? 
GetIndex??  
(??  !
(??! "
byte??" &
)??& '
mask??' +
)??+ ,
;??, -
if@@ 
(@@ 
index@@ 
>=@@ 
$num@@ 
&&@@ 
index@@ #
<@@$ %
	m_Sprites@@& /
.@@/ 0
Length@@0 6
&&@@7 9
	TileValue@@: C
(@@C D
tileMap@@D K
,@@K L
location@@M U
)@@U V
)@@V W
{AA 
tileDataBB 
.BB 
spriteBB 
=BB  !
	m_SpritesBB" +
[BB+ ,
indexBB, 1
]BB1 2
;BB2 3
tileDataCC 
.CC 
	transformCC "
=CC# $
GetTransformCC% 1
(CC1 2
(CC2 3
byteCC3 7
)CC7 8
maskCC8 <
)CC< =
;CC= >
tileDataDD 
.DD 
flagsDD 
=DD  
	TileFlagsDD! *
.DD* +
LockTransformDD+ 8
|DD9 :
	TileFlagsDD; D
.DDD E
	LockColorDDE N
;DDN O
tileDataEE 
.EE 
colliderTypeEE %
=EE& '
TileEE( ,
.EE, -
ColliderTypeEE- 9
.EE9 :
SpriteEE: @
;EE@ A
}FF 
}GG 	
privateII 
boolII 
	TileValueII 
(II 
ITilemapII '
tileMapII( /
,II/ 0

Vector3IntII1 ;
positionII< D
)IID E
{JJ 	
TileBaseKK 
tileKK 
=KK 
tileMapKK #
.KK# $
GetTileKK$ +
(KK+ ,
positionKK, 4
)KK4 5
;KK5 6
returnLL 
(LL 
tileLL 
!=LL 
nullLL  
&&LL! #
tileLL$ (
==LL) +
thisLL, 0
)LL0 1
;LL1 2
}MM 	
privateOO 
intOO 
GetIndexOO 
(OO 
byteOO !
maskOO" &
)OO& '
{PP 	
switchQQ 
(QQ 
maskQQ 
)QQ 
{RR 
caseSS 
$numSS 
:SS 
returnSS 
$numSS  
;SS  !
caseTT 
$numTT 
:TT 
caseUU 
$numUU 
:UU 
caseVV 
$numVV 
:VV 
caseWW 
$numWW 
:WW 
returnWW 
$numWW  !
;WW! "
caseXX 
$numXX 
:XX 
caseYY 
$numYY 
:YY 
caseZZ 
$numZZ 
:ZZ 
case[[ 
$num[[ 
:[[ 
case\\ 
$num\\ 
:\\ 
case]] 
$num]] 
:]] 
return]] 
$num]]  
;]]  !
case^^ 
$num^^ 
:^^ 
case__ 
$num__ 
:__ 
case`` 
$num`` 
:`` 
caseaa 
$numaa 
:aa 
returnaa 
$numaa  !
;aa! "
casebb 
$numbb 
:bb 
returnbb 
$numbb  !
;bb! "
}cc 
returndd 
-dd 
$numdd 
;dd 
}ee 	
privategg 
	Matrix4x4gg 
GetTransformgg &
(gg& '
bytegg' +
maskgg, 0
)gg0 1
{hh 	
switchii 
(ii 
maskii 
)ii 
{jj 
casekk 
$numkk 
:kk 
casell 
$numll 
:ll 
casemm 
$nummm 
:mm 
casenn 
$numnn 
:nn 
caseoo 
$numoo 
:oo 
returnpp 
	Matrix4x4pp $
.pp$ %
TRSpp% (
(pp( )
Vector3pp) 0
.pp0 1
zeropp1 5
,pp5 6

Quaternionpp7 A
.ppA B
EulerppB G
(ppG H
$numppH J
,ppJ K
$numppL N
,ppN O
-ppP Q
$numppQ T
)ppT U
,ppU V
Vector3ppW ^
.pp^ _
onepp_ b
)ppb c
;ppc d
caseqq 
$numqq 
:qq 
caserr 
$numrr 
:rr 
returnss 
	Matrix4x4ss $
.ss$ %
TRSss% (
(ss( )
Vector3ss) 0
.ss0 1
zeross1 5
,ss5 6

Quaternionss7 A
.ssA B
EulerssB G
(ssG H
$numssH J
,ssJ K
$numssL N
,ssN O
-ssP Q
$numssQ U
)ssU V
,ssV W
Vector3ssX _
.ss_ `
oness` c
)ssc d
;ssd e
casett 
$numtt 
:tt 
caseuu 
$numuu 
:uu 
returnvv 
	Matrix4x4vv $
.vv$ %
TRSvv% (
(vv( )
Vector3vv) 0
.vv0 1
zerovv1 5
,vv5 6

Quaternionvv7 A
.vvA B
EulervvB G
(vvG H
$numvvH J
,vvJ K
$numvvL N
,vvN O
-vvP Q
$numvvQ U
)vvU V
,vvV W
Vector3vvX _
.vv_ `
onevv` c
)vvc d
;vvd e
}ww 
returnxx 
	Matrix4x4xx 
.xx 
identityxx %
;xx% &
}yy 	
}zz 
[}} 
CustomEditor}} 
(}} 
typeof}} 
(}} 
PipelineTile}} %
)}}% &
)}}& '
]}}' (
public~~ 

class~~ 
PipelineTileEditor~~ #
:~~$ %
Editor~~& ,
{ 
private
АА 
PipelineTile
АА 
tile
АА !
{
АА" #
get
АА$ '
{
АА( )
return
АА* 0
(
АА1 2
target
АА2 8
as
АА9 ;
PipelineTile
АА< H
)
ААH I
;
ААI J
}
ААK L
}
ААM N
public
ВВ 
void
ВВ 
OnEnable
ВВ 
(
ВВ 
)
ВВ 
{
ГГ 	
if
ДД 
(
ДД 
tile
ДД 
.
ДД 
	m_Sprites
ДД 
==
ДД !
null
ДД" &
||
ДД' )
tile
ДД* .
.
ДД. /
	m_Sprites
ДД/ 8
.
ДД8 9
Length
ДД9 ?
!=
ДД@ B
$num
ДДC D
)
ДДD E
tile
ЕЕ 
.
ЕЕ 
	m_Sprites
ЕЕ 
=
ЕЕ  
new
ЕЕ! $
Sprite
ЕЕ% +
[
ЕЕ+ ,
$num
ЕЕ, -
]
ЕЕ- .
;
ЕЕ. /
}
ЖЖ 	
public
ИИ 
override
ИИ 
void
ИИ 
OnInspectorGUI
ИИ +
(
ИИ+ ,
)
ИИ, -
{
ЙЙ 	
EditorGUILayout
КК 
.
КК 

LabelField
КК &
(
КК& '
$str
КК' g
)
ККg h
;
ККh i
EditorGUILayout
ЛЛ 
.
ЛЛ 
Space
ЛЛ !
(
ЛЛ! "
)
ЛЛ" #
;
ЛЛ# $
	EditorGUI
НН 
.
НН 
BeginChangeCheck
НН &
(
НН& '
)
НН' (
;
НН( )
tile
ОО 
.
ОО 
	m_Sprites
ОО 
[
ОО 
$num
ОО 
]
ОО 
=
ОО 
(
ОО  !
Sprite
ОО! '
)
ОО' (
EditorGUILayout
ОО) 8
.
ОО8 9
ObjectField
ОО9 D
(
ООD E
$str
ООE K
,
ООK L
tile
ООM Q
.
ООQ R
	m_Sprites
ООR [
[
ОО[ \
$num
ОО\ ]
]
ОО] ^
,
ОО^ _
typeof
ОО` f
(
ООf g
Sprite
ООg m
)
ООm n
,
ООn o
false
ООp u
,
ООu v
null
ООw {
)
ОО{ |
;
ОО| }
tile
ПП 
.
ПП 
	m_Sprites
ПП 
[
ПП 
$num
ПП 
]
ПП 
=
ПП 
(
ПП  !
Sprite
ПП! '
)
ПП' (
EditorGUILayout
ПП) 8
.
ПП8 9
ObjectField
ПП9 D
(
ППD E
$str
ППE J
,
ППJ K
tile
ППL P
.
ППP Q
	m_Sprites
ППQ Z
[
ППZ [
$num
ПП[ \
]
ПП\ ]
,
ПП] ^
typeof
ПП_ e
(
ППe f
Sprite
ППf l
)
ППl m
,
ППm n
false
ППo t
,
ППt u
null
ППv z
)
ППz {
;
ПП{ |
tile
РР 
.
РР 
	m_Sprites
РР 
[
РР 
$num
РР 
]
РР 
=
РР 
(
РР  !
Sprite
РР! '
)
РР' (
EditorGUILayout
РР) 8
.
РР8 9
ObjectField
РР9 D
(
РРD E
$str
РРE J
,
РРJ K
tile
РРL P
.
РРP Q
	m_Sprites
РРQ Z
[
РРZ [
$num
РР[ \
]
РР\ ]
,
РР] ^
typeof
РР_ e
(
РРe f
Sprite
РРf l
)
РРl m
,
РРm n
false
РРo t
,
РРt u
null
РРv z
)
РРz {
;
РР{ |
tile
СС 
.
СС 
	m_Sprites
СС 
[
СС 
$num
СС 
]
СС 
=
СС 
(
СС  !
Sprite
СС! '
)
СС' (
EditorGUILayout
СС) 8
.
СС8 9
ObjectField
СС9 D
(
ССD E
$str
ССE L
,
ССL M
tile
ССN R
.
ССR S
	m_Sprites
ССS \
[
СС\ ]
$num
СС] ^
]
СС^ _
,
СС_ `
typeof
ССa g
(
ССg h
Sprite
ССh n
)
ССn o
,
ССo p
false
ССq v
,
ССv w
null
ССx |
)
СС| }
;
СС} ~
tile
ТТ 
.
ТТ 
	m_Sprites
ТТ 
[
ТТ 
$num
ТТ 
]
ТТ 
=
ТТ 
(
ТТ  !
Sprite
ТТ! '
)
ТТ' (
EditorGUILayout
ТТ) 8
.
ТТ8 9
ObjectField
ТТ9 D
(
ТТD E
$str
ТТE K
,
ТТK L
tile
ТТM Q
.
ТТQ R
	m_Sprites
ТТR [
[
ТТ[ \
$num
ТТ\ ]
]
ТТ] ^
,
ТТ^ _
typeof
ТТ` f
(
ТТf g
Sprite
ТТg m
)
ТТm n
,
ТТn o
false
ТТp u
,
ТТu v
null
ТТw {
)
ТТ{ |
;
ТТ| }
if
УУ 
(
УУ 
	EditorGUI
УУ 
.
УУ 
EndChangeCheck
УУ (
(
УУ( )
)
УУ) *
)
УУ* +
EditorUtility
ФФ 
.
ФФ 
SetDirty
ФФ &
(
ФФ& '
tile
ФФ' +
)
ФФ+ ,
;
ФФ, -
}
ХХ 	
}
ЦЦ 
}ШШ ┐A
ШC:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Tiles\RandomTile\RandomTile.cs
	namespace 	
UnityEngine
 
. 
Tilemaps 
{ 
[ 
Serializable 
] 
[ 
CreateAssetMenu 
( 
fileName 
= 
$str  1
,1 2
menuName3 ;
=< =
$str> Q
)Q R
]R S
public 

class 

RandomTile 
: 
Tile "
{ 
[ 	
SerializeField	 
] 
public 
Sprite 
[ 
] 
	m_Sprites !
;! "
public 
override 
void 
GetTileData (
(( )

Vector3Int) 3
location4 <
,< =
ITilemap> F
tileMapG N
,N O
refP S
TileDataT \
tileData] e
)e f
{ 	
base 
. 
GetTileData 
( 
location %
,% &
tileMap' .
,. /
ref0 3
tileData4 <
)< =
;= >
if   
(   
(   
	m_Sprites   
!=   
null   "
)  " #
&&  $ &
(  ' (
	m_Sprites  ( 1
.  1 2
Length  2 8
>  9 :
$num  ; <
)  < =
)  = >
{!! 
long"" 
hash"" 
="" 
location"" $
.""$ %
x""% &
;""& '
hash## 
=## 
(## 
hash## 
+## 
$num## )
)##) *
+##+ ,
(##- .
hash##. 2
<<##3 5
$num##6 8
)##8 9
;##9 :
hash$$ 
=$$ 
($$ 
hash$$ 
+$$ 
$num$$ )
)$$) *
^$$+ ,
($$- .
hash$$. 2
>>$$3 5
$num$$6 8
)$$8 9
;$$9 :
hash%% 
^=%% 
location%%  
.%%  !
y%%! "
;%%" #
hash&& 
=&& 
(&& 
hash&& 
+&& 
$num&& )
)&&) *
+&&+ ,
(&&- .
hash&&. 2
<<&&3 5
$num&&6 7
)&&7 8
;&&8 9
hash'' 
='' 
('' 
hash'' 
+'' 
$num'' )
)'') *
^''+ ,
(''- .
hash''. 2
<<''3 5
$num''6 8
)''8 9
;''9 :
var(( 
oldState(( 
=(( 
Random(( %
.((% &
state((& +
;((+ ,
Random)) 
.)) 
	InitState))  
())  !
())! "
int))" %
)))% &
hash))& *
)))* +
;))+ ,
tileData** 
.** 
sprite** 
=**  !
	m_Sprites**" +
[**+ ,
(**, -
int**- 0
)**0 1
(**2 3
	m_Sprites**3 <
.**< =
Length**= C
***D E
Random**F L
.**L M
value**M R
)**R S
]**S T
;**T U
Random++ 
.++ 
state++ 
=++ 
oldState++ '
;++' (
},, 
}-- 	
}.. 
[11 
CustomEditor11 
(11 
typeof11 
(11 

RandomTile11 #
)11# $
)11$ %
]11% &
public22 

class22 
RandomTileEditor22 !
:22" #
Editor22$ *
{33 
private44 
SerializedProperty44 "
m_Color44# *
;44* +
private55 
SerializedProperty55 "
m_ColliderType55# 1
;551 2
private77 

RandomTile77 
tile77 
{77  !
get77" %
{77& '
return77( .
(77/ 0
target770 6
as777 9

RandomTile77: D
)77D E
;77E F
}77G H
}77I J
public99 
void99 
OnEnable99 
(99 
)99 
{:: 	
m_Color;; 
=;; 
serializedObject;; &
.;;& '
FindProperty;;' 3
(;;3 4
$str;;4 =
);;= >
;;;> ?
m_ColliderType<< 
=<< 
serializedObject<< -
.<<- .
FindProperty<<. :
(<<: ;
$str<<; K
)<<K L
;<<L M
}== 	
public?? 
override?? 
void?? 
OnInspectorGUI?? +
(??+ ,
)??, -
{@@ 	
serializedObjectAA 
.AA 
UpdateAA #
(AA# $
)AA$ %
;AA% &
	EditorGUICC 
.CC 
BeginChangeCheckCC &
(CC& '
)CC' (
;CC( )
intDD 
countDD 
=DD 
EditorGUILayoutDD '
.DD' (
DelayedIntFieldDD( 7
(DD7 8
$strDD8 K
,DDK L
tileDDM Q
.DDQ R
	m_SpritesDDR [
!=DD\ ^
nullDD_ c
?DDd e
tileDDf j
.DDj k
	m_SpritesDDk t
.DDt u
LengthDDu {
:DD| }
$numDD~ 
)	DD А
;
DDА Б
ifEE 
(EE 
countEE 
<EE 
$numEE 
)EE 
countFF 
=FF 
$numFF 
;FF 
ifGG 
(GG 
tileGG 
.GG 
	m_SpritesGG 
==GG !
nullGG" &
||GG' )
tileGG* .
.GG. /
	m_SpritesGG/ 8
.GG8 9
LengthGG9 ?
!=GG@ B
countGGC H
)GGH I
{HH 
ArrayII 
.II 
ResizeII 
<II 
SpriteII #
>II# $
(II$ %
refII% (
tileII) -
.II- .
	m_SpritesII. 7
,II7 8
countII9 >
)II> ?
;II? @
}JJ 
ifLL 
(LL 
countLL 
==LL 
$numLL 
)LL 
returnMM 
;MM 
EditorGUILayoutOO 
.OO 

LabelFieldOO &
(OO& '
$strOO' >
)OO> ?
;OO? @
EditorGUILayoutPP 
.PP 
SpacePP !
(PP! "
)PP" #
;PP# $
forRR 
(RR 
intRR 
iRR 
=RR 
$numRR 
;RR 
iRR 
<RR 
countRR  %
;RR% &
iRR' (
++RR( *
)RR* +
{SS 
tileTT 
.TT 
	m_SpritesTT 
[TT 
iTT  
]TT  !
=TT" #
(TT$ %
SpriteTT% +
)TT+ ,
EditorGUILayoutTT- <
.TT< =
ObjectFieldTT= H
(TTH I
$strTTI R
+TTS T
(TTU V
iTTV W
+TTW X
$numTTX Y
)TTY Z
,TTZ [
tileTT\ `
.TT` a
	m_SpritesTTa j
[TTj k
iTTk l
]TTl m
,TTm n
typeofTTo u
(TTu v
SpriteTTv |
)TT| }
,TT} ~
false	TT Д
,
TTД Е
null
TTЖ К
)
TTК Л
;
TTЛ М
}UU 
EditorGUILayoutWW 
.WW 
SpaceWW !
(WW! "
)WW" #
;WW# $
EditorGUILayoutYY 
.YY 
PropertyFieldYY )
(YY) *
m_ColorYY* 1
)YY1 2
;YY2 3
EditorGUILayoutZZ 
.ZZ 
PropertyFieldZZ )
(ZZ) *
m_ColliderTypeZZ* 8
)ZZ8 9
;ZZ9 :
if\\ 
(\\ 
	EditorGUI\\ 
.\\ 
EndChangeCheck\\ (
(\\( )
)\\) *
)\\* +
{]] 
EditorUtility^^ 
.^^ 
SetDirty^^ &
(^^& '
tile^^' +
)^^+ ,
;^^, -
serializedObject__  
.__  !#
ApplyModifiedProperties__! 8
(__8 9
)__9 :
;__: ;
}`` 
}aa 	
}bb 
}dd ру
дC:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Tiles\RuleOverrideTile\RuleOverrideTile.cs
	namespace 	
UnityEngine
 
. 
Tilemaps 
{ 
[ 
	MovedFrom 
( 
true 
, 
$str "
)" #
]# $
[ 
Serializable 
] 
[ 
CreateAssetMenu 
( 
fileName 
= 
$str  8
,8 9
menuName: B
=C D
$strE _
)_ `
]` a
public 

class 
RuleOverrideTile !
:" #
TileBase$ ,
{ 
[ 	
Serializable	 
] 
public 
class 
TileSpritePair #
{ 	
public 
Sprite 
m_OriginalSprite *
;* +
public 
Sprite 
m_OverrideSprite *
;* +
} 	
[ 	
Serializable	 
] 
public 
class 
OverrideTilingRule '
{ 	
public   
bool   
	m_Enabled   !
;  ! "
public!! 
RuleTile!! 
.!! 

TilingRule!! &
m_TilingRule!!' 3
=!!4 5
new!!6 9
RuleTile!!: B
.!!B C

TilingRule!!C M
(!!M N
)!!N O
;!!O P
}"" 	
public(( 
Sprite(( 
this(( 
[(( 
Sprite(( !
originalSprite((" 0
]((0 1
{)) 	
get** 
{++ 
foreach,, 
(,, 
TileSpritePair,, '

spritePair,,( 2
in,,3 5
	m_Sprites,,6 ?
),,? @
{-- 
if.. 
(.. 

spritePair.. "
..." #
m_OriginalSprite..# 3
==..4 6
originalSprite..7 E
)..E F
{// 
return00 

spritePair00 )
.00) *
m_OverrideSprite00* :
;00: ;
}11 
}22 
return33 
null33 
;33 
}44 
set55 
{66 
if77 
(77 
value77 
==77 
null77 !
)77! "
{88 
	m_Sprites99 
=99 
	m_Sprites99  )
.99) *
Where99* /
(99/ 0

spritePair990 :
=>99; =

spritePair99> H
.99H I
m_OriginalSprite99I Y
!=99Z \
originalSprite99] k
)99k l
.99l m
ToList99m s
(99s t
)99t u
;99u v
}:: 
else;; 
{<< 
foreach== 
(== 
TileSpritePair== +

spritePair==, 6
in==7 9
	m_Sprites==: C
)==C D
{>> 
if?? 
(?? 

spritePair?? &
.??& '
m_OriginalSprite??' 7
==??8 :
originalSprite??; I
)??I J
{@@ 

spritePairAA &
.AA& '
m_OverrideSpriteAA' 7
=AA8 9
valueAA: ?
;AA? @
returnBB "
;BB" #
}CC 
}DD 
	m_SpritesEE 
.EE 
AddEE !
(EE! "
newEE" %
TileSpritePairEE& 4
(EE4 5
)EE5 6
{FF 
m_OriginalSpriteGG (
=GG) *
originalSpriteGG+ 9
,GG9 :
m_OverrideSpriteHH (
=HH) *
valueHH+ 0
,HH0 1
}II 
)II 
;II 
}JJ 
}KK 
}LL 	
publicRR 
RuleTileRR 
.RR 

TilingRuleRR "
thisRR# '
[RR' (
RuleTileRR( 0
.RR0 1

TilingRuleRR1 ;
originalRuleRR< H
]RRH I
{SS 	
getTT 
{UU 
ifVV 
(VV 
!VV 
m_TileVV 
)VV 
returnWW 
nullWW 
;WW  
intYY 
indexYY 
=YY 
m_TileYY "
.YY" #
m_TilingRulesYY# 0
.YY0 1
IndexOfYY1 8
(YY8 9
originalRuleYY9 E
)YYE F
;YYF G
ifZZ 
(ZZ 
indexZZ 
==ZZ 
-ZZ 
$numZZ 
)ZZ  
return[[ 
null[[ 
;[[  
if\\ 
(\\ !
m_OverrideTilingRules\\ )
.\\) *
Count\\* /
<\\0 1
index\\2 7
+\\8 9
$num\\: ;
)\\; <
return]] 
null]] 
;]]  
return__ !
m_OverrideTilingRules__ ,
[__, -
index__- 2
]__2 3
.__3 4
	m_Enabled__4 =
?__> ?!
m_OverrideTilingRules__@ U
[__U V
index__V [
]__[ \
.__\ ]
m_TilingRule__] i
:__j k
null__l p
;__p q
}`` 
setaa 
{bb 
ifcc 
(cc 
!cc 
m_Tilecc 
)cc 
returndd 
;dd 
intff 
indexff 
=ff 
m_Tileff "
.ff" #
m_TilingRulesff# 0
.ff0 1
IndexOfff1 8
(ff8 9
originalRuleff9 E
)ffE F
;ffF G
ifgg 
(gg 
indexgg 
==gg 
-gg 
$numgg 
)gg  
returnhh 
;hh 
ifjj 
(jj 
valuejj 
==jj 
nulljj !
)jj! "
{kk 
ifll 
(ll !
m_OverrideTilingRulesll -
.ll- .
Countll. 3
<ll4 5
indexll6 ;
+ll< =
$numll> ?
)ll? @
returnmm 
;mm !
m_OverrideTilingRulesnn )
[nn) *
indexnn* /
]nn/ 0
.nn0 1
	m_Enablednn1 :
=nn; <
falsenn= B
;nnB C
whileoo 
(oo !
m_OverrideTilingRulesoo 0
.oo0 1
Countoo1 6
>oo7 8
$numoo9 :
&&oo; =
!oo> ?!
m_OverrideTilingRulesoo? T
[ooT U!
m_OverrideTilingRulesooU j
.ooj k
Countook p
-ooq r
$numoos t
]oot u
.oou v
	m_Enabledoov 
)	oo А!
m_OverrideTilingRulespp -
.pp- .
RemoveAtpp. 6
(pp6 7!
m_OverrideTilingRulespp7 L
.ppL M
CountppM R
-ppS T
$numppU V
)ppV W
;ppW X
}qq 
elserr 
{ss 
whilett 
(tt !
m_OverrideTilingRulestt 0
.tt0 1
Counttt1 6
<tt7 8
indextt9 >
+tt? @
$numttA B
)ttB C!
m_OverrideTilingRulesuu -
.uu- .
Adduu. 1
(uu1 2
newuu2 5
OverrideTilingRuleuu6 H
(uuH I
)uuI J
)uuJ K
;uuK L!
m_OverrideTilingRulesvv )
[vv) *
indexvv* /
]vv/ 0
.vv0 1
	m_Enabledvv1 :
=vv; <
truevv= A
;vvA B!
m_OverrideTilingRulesww )
[ww) *
indexww* /
]ww/ 0
.ww0 1
m_TilingRuleww1 =
=ww> ?
CopyTilingRuleww@ N
(wwN O
valuewwO T
,wwT U
newwwV Y
RuleTilewwZ b
.wwb c

TilingRulewwc m
(wwm n
)wwn o
,wwo p
truewwq u
)wwu v
;wwv w!
m_OverrideTilingRulesxx )
[xx) *
indexxx* /
]xx/ 0
.xx0 1
m_TilingRulexx1 =
.xx= >
m_Neighborsxx> I
=xxJ K
nullxxL P
;xxP Q
}yy 
}zz 
}{{ 	
public
АА 
RuleTile
АА 
m_Tile
АА 
;
АА 
public
ДД 
bool
ДД 

m_Advanced
ДД 
;
ДД 
public
ИИ 
List
ИИ 
<
ИИ 
TileSpritePair
ИИ "
>
ИИ" #
	m_Sprites
ИИ$ -
=
ИИ. /
new
ИИ0 3
List
ИИ4 8
<
ИИ8 9
TileSpritePair
ИИ9 G
>
ИИG H
(
ИИH I
)
ИИI J
;
ИИJ K
public
ММ 
List
ММ 
<
ММ  
OverrideTilingRule
ММ &
>
ММ& '#
m_OverrideTilingRules
ММ( =
=
ММ> ?
new
ММ@ C
List
ММD H
<
ММH I 
OverrideTilingRule
ММI [
>
ММ[ \
(
ММ\ ]
)
ММ] ^
;
ММ^ _
public
РР  
OverrideTilingRule
РР !
m_OverrideDefault
РР" 3
=
РР4 5
new
РР6 9 
OverrideTilingRule
РР: L
(
РРL M
)
РРM N
;
РРN O
public
ФФ 
RuleTile
ФФ 
.
ФФ 

TilingRule
ФФ "
m_OriginalDefault
ФФ# 4
{
ХХ 	
get
ЦЦ 
{
ЧЧ 
return
ШШ 
new
ШШ 
RuleTile
ШШ #
.
ШШ# $

TilingRule
ШШ$ .
(
ШШ. /
)
ШШ/ 0
{
ЩЩ 
	m_Sprites
ЪЪ 
=
ЪЪ 
new
ЪЪ  #
Sprite
ЪЪ$ *
[
ЪЪ* +
]
ЪЪ+ ,
{
ЪЪ- .
m_Tile
ЪЪ/ 5
!=
ЪЪ6 8
null
ЪЪ9 =
?
ЪЪ> ?
m_Tile
ЪЪ@ F
.
ЪЪF G
m_DefaultSprite
ЪЪG V
:
ЪЪW X
null
ЪЪY ]
}
ЪЪ^ _
,
ЪЪ_ `
m_ColliderType
ЫЫ "
=
ЫЫ# $
m_Tile
ЫЫ% +
!=
ЫЫ, .
null
ЫЫ/ 3
?
ЫЫ4 5
m_Tile
ЫЫ6 <
.
ЫЫ< =#
m_DefaultColliderType
ЫЫ= R
:
ЫЫS T
Tile
ЫЫU Y
.
ЫЫY Z
ColliderType
ЫЫZ f
.
ЫЫf g
None
ЫЫg k
,
ЫЫk l
}
ЬЬ 
;
ЬЬ 
}
ЭЭ 
}
ЮЮ 	
[
гг 	
HideInInspector
гг	 
]
гг 
public
гг  
RuleTile
гг! )
m_InstanceTile
гг* 8
;
гг8 9
public
мм 
override
мм 
bool
мм "
GetTileAnimationData
мм 1
(
мм1 2

Vector3Int
мм2 <
position
мм= E
,
ммE F
ITilemap
ммG O
tilemap
ммP W
,
ммW X
ref
ммY \
TileAnimationData
мм] n 
tileAnimationDataммo А
)ммА Б
{
нн 	
if
оо 
(
оо 
!
оо 
m_InstanceTile
оо 
)
оо  
return
пп 
false
пп 
;
пп 
return
░░ 
m_InstanceTile
░░ !
.
░░! ""
GetTileAnimationData
░░" 6
(
░░6 7
position
░░7 ?
,
░░? @
tilemap
░░A H
,
░░H I
ref
░░J M
tileAnimationData
░░N _
)
░░_ `
;
░░` a
}
▒▒ 	
public
╣╣ 
override
╣╣ 
void
╣╣ 
GetTileData
╣╣ (
(
╣╣( )

Vector3Int
╣╣) 3
position
╣╣4 <
,
╣╣< =
ITilemap
╣╣> F
tilemap
╣╣G N
,
╣╣N O
ref
╣╣P S
TileData
╣╣T \
tileData
╣╣] e
)
╣╣e f
{
║║ 	
if
╗╗ 
(
╗╗ 
!
╗╗ 
m_InstanceTile
╗╗ 
)
╗╗  
return
╝╝ 
;
╝╝ 
m_InstanceTile
╜╜ 
.
╜╜ 
GetTileData
╜╜ &
(
╜╜& '
position
╜╜' /
,
╜╜/ 0
tilemap
╜╜1 8
,
╜╜8 9
ref
╜╜: =
tileData
╜╜> F
)
╜╜F G
;
╜╜G H
}
╛╛ 	
public
┼┼ 
override
┼┼ 
void
┼┼ 
RefreshTile
┼┼ (
(
┼┼( )

Vector3Int
┼┼) 3
position
┼┼4 <
,
┼┼< =
ITilemap
┼┼> F
tilemap
┼┼G N
)
┼┼N O
{
╞╞ 	
if
╟╟ 
(
╟╟ 
!
╟╟ 
m_InstanceTile
╟╟ 
)
╟╟  
return
╚╚ 
;
╚╚ 
m_InstanceTile
╔╔ 
.
╔╔ 
RefreshTile
╔╔ &
(
╔╔& '
position
╔╔' /
,
╔╔/ 0
tilemap
╔╔1 8
)
╔╔8 9
;
╔╔9 :
}
╩╩ 	
public
╙╙ 
override
╙╙ 
bool
╙╙ 
StartUp
╙╙ $
(
╙╙$ %

Vector3Int
╙╙% /
position
╙╙0 8
,
╙╙8 9
ITilemap
╙╙: B
tilemap
╙╙C J
,
╙╙J K

GameObject
╙╙L V
go
╙╙W Y
)
╙╙Y Z
{
╘╘ 	
if
╒╒ 
(
╒╒ 
!
╒╒ 
m_InstanceTile
╒╒ 
)
╒╒  
return
╓╓ 
true
╓╓ 
;
╓╓ 
return
╫╫ 
m_InstanceTile
╫╫ !
.
╫╫! "
StartUp
╫╫" )
(
╫╫) *
position
╫╫* 2
,
╫╫2 3
tilemap
╫╫4 ;
,
╫╫; <
go
╫╫= ?
)
╫╫? @
;
╫╫@ A
}
╪╪ 	
public
▀▀ 
void
▀▀ 
ApplyOverrides
▀▀ "
(
▀▀" #
IList
▀▀# (
<
▀▀( )
KeyValuePair
▀▀) 5
<
▀▀5 6
Sprite
▀▀6 <
,
▀▀< =
Sprite
▀▀> D
>
▀▀D E
>
▀▀E F
	overrides
▀▀G P
)
▀▀P Q
{
рр 	
if
сс 
(
сс 
	overrides
сс 
==
сс 
null
сс !
)
сс! "
throw
тт 
new
тт 
System
тт  
.
тт  !#
ArgumentNullException
тт! 6
(
тт6 7
$str
тт7 B
)
ттB C
;
ттC D
for
фф 
(
фф 
int
фф 
i
фф 
=
фф 
$num
фф 
;
фф 
i
фф 
<
фф 
	overrides
фф  )
.
фф) *
Count
фф* /
;
фф/ 0
i
фф1 2
++
фф2 4
)
фф4 5
this
хх 
[
хх 
	overrides
хх 
[
хх 
i
хх  
]
хх  !
.
хх! "
Key
хх" %
]
хх% &
=
хх' (
	overrides
хх) 2
[
хх2 3
i
хх3 4
]
хх4 5
.
хх5 6
Value
хх6 ;
;
хх; <
}
цц 	
public
ээ 
void
ээ 
GetOverrides
ээ  
(
ээ  !
List
ээ! %
<
ээ% &
KeyValuePair
ээ& 2
<
ээ2 3
Sprite
ээ3 9
,
ээ9 :
Sprite
ээ; A
>
ээA B
>
ээB C
	overrides
ээD M
)
ээM N
{
юю 	
if
яя 
(
яя 
	overrides
яя 
==
яя 
null
яя !
)
яя! "
throw
ЁЁ 
new
ЁЁ 
System
ЁЁ  
.
ЁЁ  !#
ArgumentNullException
ЁЁ! 6
(
ЁЁ6 7
$str
ЁЁ7 B
)
ЁЁB C
;
ЁЁC D
	overrides
ЄЄ 
.
ЄЄ 
Clear
ЄЄ 
(
ЄЄ 
)
ЄЄ 
;
ЄЄ 
if
ЇЇ 
(
ЇЇ 
!
ЇЇ 
m_Tile
ЇЇ 
)
ЇЇ 
return
її 
;
її 
List
ўў 
<
ўў 
Sprite
ўў 
>
ўў 
originalSprites
ўў (
=
ўў) *
new
ўў+ .
List
ўў/ 3
<
ўў3 4
Sprite
ўў4 :
>
ўў: ;
(
ўў; <
)
ўў< =
;
ўў= >
if
∙∙ 
(
∙∙ 
m_Tile
∙∙ 
.
∙∙ 
m_DefaultSprite
∙∙ &
)
∙∙& '
originalSprites
·· 
.
··  
Add
··  #
(
··# $
m_Tile
··$ *
.
··* +
m_DefaultSprite
··+ :
)
··: ;
;
··; <
foreach
№№ 
(
№№ 
RuleTile
№№ 
.
№№ 

TilingRule
№№ (
rule
№№) -
in
№№. 0
m_Tile
№№1 7
.
№№7 8
m_TilingRules
№№8 E
)
№№E F
foreach
¤¤ 
(
¤¤ 
Sprite
¤¤ 
sprite
¤¤  &
in
¤¤' )
rule
¤¤* .
.
¤¤. /
	m_Sprites
¤¤/ 8
)
¤¤8 9
if
■■ 
(
■■ 
sprite
■■ 
&&
■■ !
!
■■" #
originalSprites
■■# 2
.
■■2 3
Contains
■■3 ;
(
■■; <
sprite
■■< B
)
■■B C
)
■■C D
originalSprites
   '
.
  ' (
Add
  ( +
(
  + ,
sprite
  , 2
)
  2 3
;
  3 4
foreach
ББ 
(
ББ 
Sprite
ББ 
sprite
ББ "
in
ББ# %
originalSprites
ББ& 5
)
ББ5 6
	overrides
ВВ 
.
ВВ 
Add
ВВ 
(
ВВ 
new
ВВ !
KeyValuePair
ВВ" .
<
ВВ. /
Sprite
ВВ/ 5
,
ВВ5 6
Sprite
ВВ7 =
>
ВВ= >
(
ВВ> ?
sprite
ВВ? E
,
ВВE F
this
ВВG K
[
ВВK L
sprite
ВВL R
]
ВВR S
)
ВВS T
)
ВВT U
;
ВВU V
}
ГГ 	
public
КК 
void
КК 
ApplyOverrides
КК "
(
КК" #
IList
КК# (
<
КК( )
KeyValuePair
КК) 5
<
КК5 6
RuleTile
КК6 >
.
КК> ?

TilingRule
КК? I
,
ККI J
RuleTile
ККK S
.
ККS T

TilingRule
ККT ^
>
КК^ _
>
КК_ `
	overrides
ККa j
)
ККj k
{
ЛЛ 	
if
ММ 
(
ММ 
	overrides
ММ 
==
ММ 
null
ММ !
)
ММ! "
throw
НН 
new
НН 
System
НН  
.
НН  !#
ArgumentNullException
НН! 6
(
НН6 7
$str
НН7 B
)
ННB C
;
ННC D
for
ПП 
(
ПП 
int
ПП 
i
ПП 
=
ПП 
$num
ПП 
;
ПП 
i
ПП 
<
ПП 
	overrides
ПП  )
.
ПП) *
Count
ПП* /
;
ПП/ 0
i
ПП1 2
++
ПП2 4
)
ПП4 5
this
РР 
[
РР 
	overrides
РР 
[
РР 
i
РР  
]
РР  !
.
РР! "
Key
РР" %
]
РР% &
=
РР' (
	overrides
РР) 2
[
РР2 3
i
РР3 4
]
РР4 5
.
РР5 6
Value
РР6 ;
;
РР; <
}
СС 	
public
ШШ 
void
ШШ 
GetOverrides
ШШ  
(
ШШ  !
List
ШШ! %
<
ШШ% &
KeyValuePair
ШШ& 2
<
ШШ2 3
RuleTile
ШШ3 ;
.
ШШ; <

TilingRule
ШШ< F
,
ШШF G
RuleTile
ШШH P
.
ШШP Q

TilingRule
ШШQ [
>
ШШ[ \
>
ШШ\ ]
	overrides
ШШ^ g
)
ШШg h
{
ЩЩ 	
if
ЪЪ 
(
ЪЪ 
	overrides
ЪЪ 
==
ЪЪ 
null
ЪЪ !
)
ЪЪ! "
throw
ЫЫ 
new
ЫЫ 
System
ЫЫ  
.
ЫЫ  !#
ArgumentNullException
ЫЫ! 6
(
ЫЫ6 7
$str
ЫЫ7 B
)
ЫЫB C
;
ЫЫC D
	overrides
ЭЭ 
.
ЭЭ 
Clear
ЭЭ 
(
ЭЭ 
)
ЭЭ 
;
ЭЭ 
if
ЯЯ 
(
ЯЯ 
!
ЯЯ 
m_Tile
ЯЯ 
)
ЯЯ 
return
аа 
;
аа 
foreach
вв 
(
вв 
var
вв 
originalRule
вв %
in
вв& (
m_Tile
вв) /
.
вв/ 0
m_TilingRules
вв0 =
)
вв= >
{
гг 
RuleTile
дд 
.
дд 

TilingRule
дд #
overrideRule
дд$ 0
=
дд1 2
this
дд3 7
[
дд7 8
originalRule
дд8 D
]
ддD E
;
ддE F
	overrides
ее 
.
ее 
Add
ее 
(
ее 
new
ее !
KeyValuePair
ее" .
<
ее. /
RuleTile
ее/ 7
.
ее7 8

TilingRule
ее8 B
,
ееB C
RuleTile
ееD L
.
ееL M

TilingRule
ееM W
>
ееW X
(
ееX Y
originalRule
ееY e
,
ееe f
overrideRule
ееg s
)
ееs t
)
ееt u
;
ееu v
}
жж 
	overrides
зз 
.
зз 
Add
зз 
(
зз 
new
зз 
KeyValuePair
зз *
<
зз* +
RuleTile
зз+ 3
.
зз3 4

TilingRule
зз4 >
,
зз> ?
RuleTile
зз@ H
.
ззH I

TilingRule
ззI S
>
ззS T
(
ззT U
m_OriginalDefault
ззU f
,
ззf g
m_OverrideDefault
ззh y
.
ззy z
m_TilingRuleззz Ж
)ззЖ З
)ззЗ И
;ззИ Й
}
ии 	
public
кк 
void
кк 
Override
кк 
(
кк 
)
кк 
{
лл 	
if
мм 
(
мм 
!
мм 
m_Tile
мм 
||
мм 
!
мм 
m_InstanceTile
мм *
)
мм* +
return
нн 
;
нн 
var
пп 
tile
пп 
=
пп 
m_InstanceTile
пп %
;
пп% &
tile
▒▒ 
.
▒▒ 
m_DefaultSprite
▒▒  
=
▒▒! "
m_Tile
▒▒# )
.
▒▒) *
m_DefaultSprite
▒▒* 9
;
▒▒9 :
tile
▓▓ 
.
▓▓ !
m_DefaultGameObject
▓▓ $
=
▓▓% &
m_Tile
▓▓' -
.
▓▓- .!
m_DefaultGameObject
▓▓. A
;
▓▓A B
tile
││ 
.
││ #
m_DefaultColliderType
││ &
=
││' (
m_Tile
││) /
.
││/ 0#
m_DefaultColliderType
││0 E
;
││E F
tile
╡╡ 
.
╡╡ 
m_TilingRules
╡╡ 
.
╡╡ 
Clear
╡╡ $
(
╡╡$ %
)
╡╡% &
;
╡╡& '
foreach
╢╢ 
(
╢╢ 
var
╢╢ 
rule
╢╢ 
in
╢╢  
m_Tile
╢╢! '
.
╢╢' (
m_TilingRules
╢╢( 5
)
╢╢5 6
tile
╖╖ 
.
╖╖ 
m_TilingRules
╖╖ "
.
╖╖" #
Add
╖╖# &
(
╖╖& '
CopyTilingRule
╖╖' 5
(
╖╖5 6
rule
╖╖6 :
,
╖╖: ;
new
╖╖< ?
RuleTile
╖╖@ H
.
╖╖H I

TilingRule
╖╖I S
(
╖╖S T
)
╖╖T U
,
╖╖U V
true
╖╖W [
)
╖╖[ \
)
╖╖\ ]
;
╖╖] ^
if
╣╣ 
(
╣╣ 
!
╣╣ 

m_Advanced
╣╣ 
)
╣╣ 
{
║║ 
tile
╗╗ 
.
╗╗ 
m_DefaultSprite
╗╗ $
=
╗╗% &
this
╗╗' +
[
╗╗+ ,
m_Tile
╗╗, 2
.
╗╗2 3
m_DefaultSprite
╗╗3 B
]
╗╗B C
;
╗╗C D
foreach
╜╜ 
(
╜╜ 
RuleTile
╜╜ !
.
╜╜! "

TilingRule
╜╜" ,
rule
╜╜- 1
in
╜╜2 4
tile
╜╜5 9
.
╜╜9 :
m_TilingRules
╜╜: G
)
╜╜G H
for
╛╛ 
(
╛╛ 
int
╛╛ 
i
╛╛ 
=
╛╛  
$num
╛╛! "
;
╛╛" #
i
╛╛$ %
<
╛╛& '
rule
╛╛( ,
.
╛╛, -
	m_Sprites
╛╛- 6
.
╛╛6 7
Length
╛╛7 =
;
╛╛= >
i
╛╛? @
++
╛╛@ B
)
╛╛B C
if
┐┐ 
(
┐┐ 
rule
┐┐  
.
┐┐  !
	m_Sprites
┐┐! *
[
┐┐* +
i
┐┐+ ,
]
┐┐, -
)
┐┐- .
rule
└└  
.
└└  !
	m_Sprites
└└! *
[
└└* +
i
└└+ ,
]
└└, -
=
└└. /
this
└└0 4
[
└└4 5
rule
└└5 9
.
└└9 :
	m_Sprites
└└: C
[
└└C D
i
└└D E
]
└└E F
]
└└F G
;
└└G H
}
┴┴ 
else
┬┬ 
{
├├ 
if
── 
(
── 
m_OverrideDefault
── %
.
──% &
	m_Enabled
──& /
)
──/ 0
{
┼┼ 
tile
╞╞ 
.
╞╞ 
m_DefaultSprite
╞╞ (
=
╞╞) *
m_OverrideDefault
╞╞+ <
.
╞╞< =
m_TilingRule
╞╞= I
.
╞╞I J
	m_Sprites
╞╞J S
.
╞╞S T
Length
╞╞T Z
>
╞╞[ \
$num
╞╞] ^
?
╞╞_ `
m_OverrideDefault
╞╞a r
.
╞╞r s
m_TilingRule
╞╞s 
.╞╞ А
	m_Sprites╞╞А Й
[╞╞Й К
$num╞╞К Л
]╞╞Л М
:╞╞Н О
null╞╞П У
;╞╞У Ф
tile
╟╟ 
.
╟╟ !
m_DefaultGameObject
╟╟ ,
=
╟╟- .
m_OverrideDefault
╟╟/ @
.
╟╟@ A
m_TilingRule
╟╟A M
.
╟╟M N
m_GameObject
╟╟N Z
;
╟╟Z [
tile
╚╚ 
.
╚╚ #
m_DefaultColliderType
╚╚ .
=
╚╚/ 0
m_OverrideDefault
╚╚1 B
.
╚╚B C
m_TilingRule
╚╚C O
.
╚╚O P
m_ColliderType
╚╚P ^
;
╚╚^ _
}
╔╔ 
for
╩╩ 
(
╩╩ 
int
╩╩ 
i
╩╩ 
=
╩╩ 
$num
╩╩ 
;
╩╩ 
i
╩╩  !
<
╩╩" #
tile
╩╩$ (
.
╩╩( )
m_TilingRules
╩╩) 6
.
╩╩6 7
Count
╩╩7 <
;
╩╩< =
i
╩╩> ?
++
╩╩? A
)
╩╩A B
{
╦╦ 
RuleTile
╠╠ 
.
╠╠ 

TilingRule
╠╠ '
originalRule
╠╠( 4
=
╠╠5 6
tile
╠╠7 ;
.
╠╠; <
m_TilingRules
╠╠< I
[
╠╠I J
i
╠╠J K
]
╠╠K L
;
╠╠L M
RuleTile
══ 
.
══ 

TilingRule
══ '
overrideRule
══( 4
=
══5 6
this
══7 ;
[
══; <
m_Tile
══< B
.
══B C
m_TilingRules
══C P
[
══P Q
i
══Q R
]
══R S
]
══S T
;
══T U
if
╬╬ 
(
╬╬ 
overrideRule
╬╬ $
==
╬╬% '
null
╬╬( ,
)
╬╬, -
continue
╧╧  
;
╧╧  !
CopyTilingRule
╨╨ "
(
╨╨" #
overrideRule
╨╨# /
,
╨╨/ 0
originalRule
╨╨1 =
,
╨╨= >
false
╨╨? D
)
╨╨D E
;
╨╨E F
}
╤╤ 
}
╥╥ 
}
╙╙ 	
public
██ 
RuleTile
██ 
.
██ 

TilingRule
██ "
CopyTilingRule
██# 1
(
██1 2
RuleTile
██2 :
.
██: ;

TilingRule
██; E
from
██F J
,
██J K
RuleTile
██L T
.
██T U

TilingRule
██U _
to
██` b
,
██b c
bool
██d h
copyRule
██i q
)
██q r
{
▄▄ 	
if
▌▌ 
(
▌▌ 
from
▌▌ 
==
▌▌ 
null
▌▌ 
)
▌▌ 
return
▐▐ 
null
▐▐ 
;
▐▐ 
if
рр 
(
рр 
copyRule
рр 
)
рр 
{
сс 
to
тт 
.
тт 
m_Neighbors
тт 
=
тт  
from
тт! %
.
тт% &
m_Neighbors
тт& 1
;
тт1 2
to
уу 
.
уу !
m_NeighborPositions
уу &
=
уу' (
from
уу) -
.
уу- .!
m_NeighborPositions
уу. A
;
ууA B
to
фф 
.
фф 
m_RuleTransform
фф "
=
фф# $
from
фф% )
.
фф) *
m_RuleTransform
фф* 9
;
фф9 :
}
хх 
to
цц 
.
цц 
	m_Sprites
цц 
=
цц 
from
цц 
.
цц  
	m_Sprites
цц  )
.
цц) *
Clone
цц* /
(
цц/ 0
)
цц0 1
as
цц2 4
Sprite
цц5 ;
[
цц; <
]
цц< =
;
цц= >
to
чч 
.
чч 
m_GameObject
чч 
=
чч 
from
чч "
.
чч" #
m_GameObject
чч# /
;
чч/ 0
to
шш 
.
шш 
m_AnimationSpeed
шш 
=
шш  !
from
шш" &
.
шш& '
m_AnimationSpeed
шш' 7
;
шш7 8
to
щщ 
.
щщ 
m_PerlinScale
щщ 
=
щщ 
from
щщ #
.
щщ# $
m_PerlinScale
щщ$ 1
;
щщ1 2
to
ъъ 
.
ъъ 
m_Output
ъъ 
=
ъъ 
from
ъъ 
.
ъъ 
m_Output
ъъ '
;
ъъ' (
to
ыы 
.
ыы 
m_ColliderType
ыы 
=
ыы 
from
ыы  $
.
ыы$ %
m_ColliderType
ыы% 3
;
ыы3 4
to
ьь 
.
ьь 
m_RandomTransform
ьь  
=
ьь! "
from
ьь# '
.
ьь' (
m_RandomTransform
ьь( 9
;
ьь9 :
return
юю 
to
юю 
;
юю 
}
яя 	
}
ЁЁ 
}ёё ╦╘
ФC:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Tiles\RuleTile\RuleTile.cs
	namespace 	
UnityEngine
 
{ 
public 

class 
RuleTile 
< 
T 
> 
: 
RuleTile '
{ 
public 
sealed 
override 
Type #
m_NeighborType$ 2
{3 4
get5 8
{9 :
return; A
typeofB H
(H I
TI J
)J K
;K L
}M N
}O P
} 
[ 
Serializable 
] 
[ 
CreateAssetMenu 
( 
fileName 
= 
$str  /
,/ 0
menuName1 9
=: ;
$str< M
)M N
]N O
public 

class 
RuleTile 
: 
TileBase $
{ 
public 
virtual 
Type 
m_NeighborType *
{+ ,
get- 0
{1 2
return3 9
typeof: @
(@ A

TilingRuleA K
.K L
NeighborL T
)T U
;U V
}W X
}Y Z
public$$ 
Sprite$$ 
m_DefaultSprite$$ %
;$$% &
public(( 

GameObject(( 
m_DefaultGameObject(( -
;((- .
public,, 
Tile,, 
.,, 
ColliderType,,  !
m_DefaultColliderType,,! 6
=,,7 8
Tile,,9 =
.,,= >
ColliderType,,> J
.,,J K
Sprite,,K Q
;,,Q R
public.. 
virtual.. 
int.. 
m_RotationAngle.. *
=>..+ -
$num... 0
;..0 1
public// 
int// 
m_RotationCount// "
=>//# %
$num//& )
///* +
m_RotationAngle//, ;
;//; <
[55 	
Serializable55	 
]55 
public66 
class66 

TilingRule66 
{77 	
public;; 
List;; 
<;; 
int;; 
>;; 
m_Neighbors;; (
=;;) *
new;;+ .
List;;/ 3
<;;3 4
int;;4 7
>;;7 8
(;;8 9
);;9 :
;;;: ;
public?? 
List?? 
<?? 

Vector3Int?? "
>??" #
m_NeighborPositions??$ 7
=??8 9
new??: =
List??> B
<??B C

Vector3Int??C M
>??M N
(??N O
)??O P
{@@ 
newAA 

Vector3IntAA 
(AA 
-AA  
$numAA  !
,AA! "
$numAA# $
,AA$ %
$numAA& '
)AA' (
,AA( )
newBB 

Vector3IntBB 
(BB 
$numBB  
,BB  !
$numBB" #
,BB# $
$numBB% &
)BB& '
,BB' (
newCC 

Vector3IntCC 
(CC 
$numCC  
,CC  !
$numCC" #
,CC# $
$numCC% &
)CC& '
,CC' (
newDD 

Vector3IntDD 
(DD 
-DD  
$numDD  !
,DD! "
$numDD# $
,DD$ %
$numDD& '
)DD' (
,DD( )
newEE 

Vector3IntEE 
(EE 
$numEE  
,EE  !
$numEE" #
,EE# $
$numEE% &
)EE& '
,EE' (
newFF 

Vector3IntFF 
(FF 
-FF  
$numFF  !
,FF! "
-FF# $
$numFF$ %
,FF% &
$numFF' (
)FF( )
,FF) *
newGG 

Vector3IntGG 
(GG 
$numGG  
,GG  !
-GG" #
$numGG# $
,GG$ %
$numGG& '
)GG' (
,GG( )
newHH 

Vector3IntHH 
(HH 
$numHH  
,HH  !
-HH" #
$numHH# $
,HH$ %
$numHH& '
)HH' (
,HH( )
}II 
;II 
publicMM 
SpriteMM 
[MM 
]MM 
	m_SpritesMM %
;MM% &
publicQQ 

GameObjectQQ 
m_GameObjectQQ *
;QQ* +
publicUU 
floatUU 
m_AnimationSpeedUU )
;UU) *
publicYY 
floatYY 
m_PerlinScaleYY &
;YY& '
public]] 
	Transform]] 
m_RuleTransform]] ,
;]], -
publicaa 
OutputSpriteaa 
m_Outputaa  (
;aa( )
publicee 
Tileee 
.ee 
ColliderTypeee $
m_ColliderTypeee% 3
;ee3 4
publicii 
	Transformii 
m_RandomTransformii .
;ii. /
publicnn 

TilingRulenn 
(nn 
)nn 
{oo 
m_Outputpp 
=pp 
OutputSpritepp '
.pp' (
Singlepp( .
;pp. /
	m_Spritesqq 
=qq 
newqq 
Spriteqq  &
[qq& '
$numqq' (
]qq( )
;qq) *
m_GameObjectrr 
=rr 
nullrr #
;rr# $
m_AnimationSpeedss  
=ss! "
$numss# %
;ss% &
m_PerlinScalett 
=tt 
$numtt  $
;tt$ %
m_ColliderTypeuu 
=uu  
Tileuu! %
.uu% &
ColliderTypeuu& 2
.uu2 3
Spriteuu3 9
;uu9 :
}vv 
publicxx 

Dictionaryxx 
<xx 

Vector3Intxx (
,xx( )
intxx* -
>xx- .
GetNeighborsxx/ ;
(xx; <
)xx< =
{yy 

Dictionaryzz 
<zz 

Vector3Intzz %
,zz% &
intzz' *
>zz* +
dictzz, 0
=zz1 2
newzz3 6

Dictionaryzz7 A
<zzA B

Vector3IntzzB L
,zzL M
intzzN Q
>zzQ R
(zzR S
)zzS T
;zzT U
for|| 
(|| 
int|| 
i|| 
=|| 
$num|| 
;|| 
i||  !
<||" #
m_Neighbors||$ /
.||/ 0
Count||0 5
&&||6 8
i||9 :
<||; <
m_NeighborPositions||= P
.||P Q
Count||Q V
;||V W
i||X Y
++||Y [
)||[ \
dict}} 
.}} 
Add}} 
(}} 
m_NeighborPositions}} 0
[}}0 1
i}}1 2
]}}2 3
,}}3 4
m_Neighbors}}5 @
[}}@ A
i}}A B
]}}B C
)}}C D
;}}D E
return 
dict 
; 
}
АА 
public
ББ 
void
ББ 
ApplyNeighbors
ББ &
(
ББ& '

Dictionary
ББ' 1
<
ББ1 2

Vector3Int
ББ2 <
,
ББ< =
int
ББ> A
>
ББA B
dict
ББC G
)
ББG H
{
ВВ !
m_NeighborPositions
ГГ #
=
ГГ$ %
dict
ГГ& *
.
ГГ* +
Keys
ГГ+ /
.
ГГ/ 0
ToList
ГГ0 6
(
ГГ6 7
)
ГГ7 8
;
ГГ8 9
m_Neighbors
ДД 
=
ДД 
dict
ДД "
.
ДД" #
Values
ДД# )
.
ДД) *
ToList
ДД* 0
(
ДД0 1
)
ДД1 2
;
ДД2 3
}
ЕЕ 
public
ЗЗ 
	BoundsInt
ЗЗ 
	GetBounds
ЗЗ &
(
ЗЗ& '
)
ЗЗ' (
{
ИИ 
	BoundsInt
ЙЙ 
bounds
ЙЙ  
=
ЙЙ! "
new
ЙЙ# &
	BoundsInt
ЙЙ' 0
(
ЙЙ0 1

Vector3Int
ЙЙ1 ;
.
ЙЙ; <
zero
ЙЙ< @
,
ЙЙ@ A

Vector3Int
ЙЙB L
.
ЙЙL M
one
ЙЙM P
)
ЙЙP Q
;
ЙЙQ R
foreach
КК 
(
КК 
var
КК 
neighbor
КК %
in
КК& (
GetNeighbors
КК) 5
(
КК5 6
)
КК6 7
)
КК7 8
{
ЛЛ 
bounds
ММ 
.
ММ 
xMin
ММ 
=
ММ  !
Mathf
ММ" '
.
ММ' (
Min
ММ( +
(
ММ+ ,
bounds
ММ, 2
.
ММ2 3
xMin
ММ3 7
,
ММ7 8
neighbor
ММ9 A
.
ММA B
Key
ММB E
.
ММE F
x
ММF G
)
ММG H
;
ММH I
bounds
НН 
.
НН 
yMin
НН 
=
НН  !
Mathf
НН" '
.
НН' (
Min
НН( +
(
НН+ ,
bounds
НН, 2
.
НН2 3
yMin
НН3 7
,
НН7 8
neighbor
НН9 A
.
ННA B
Key
ННB E
.
ННE F
y
ННF G
)
ННG H
;
ННH I
bounds
ОО 
.
ОО 
xMax
ОО 
=
ОО  !
Mathf
ОО" '
.
ОО' (
Max
ОО( +
(
ОО+ ,
bounds
ОО, 2
.
ОО2 3
xMax
ОО3 7
,
ОО7 8
neighbor
ОО9 A
.
ООA B
Key
ООB E
.
ООE F
x
ООF G
+
ООH I
$num
ООJ K
)
ООK L
;
ООL M
bounds
ПП 
.
ПП 
yMax
ПП 
=
ПП  !
Mathf
ПП" '
.
ПП' (
Max
ПП( +
(
ПП+ ,
bounds
ПП, 2
.
ПП2 3
yMax
ПП3 7
,
ПП7 8
neighbor
ПП9 A
.
ППA B
Key
ППB E
.
ППE F
y
ППF G
+
ППH I
$num
ППJ K
)
ППK L
;
ППL M
}
РР 
return
СС 
bounds
СС 
;
СС 
}
ТТ 
public
ЧЧ 
class
ЧЧ 
Neighbor
ЧЧ !
{
ШШ 
public
ЭЭ 
const
ЭЭ 
int
ЭЭ  
This
ЭЭ! %
=
ЭЭ& '
$num
ЭЭ( )
;
ЭЭ) *
public
вв 
const
вв 
int
вв  
NotThis
вв! (
=
вв) *
$num
вв+ ,
;
вв, -
}
гг 
public
ии 
enum
ии 
	Transform
ии !
{
йй 
Fixed
нн 
,
нн 
Rotated
▒▒ 
,
▒▒ 
MirrorX
╡╡ 
,
╡╡ 
MirrorY
╣╣ 
,
╣╣ 
MirrorXY
╜╜ 
}
╛╛ 
public
├├ 
enum
├├ 
OutputSprite
├├ $
{
── 
Single
╚╚ 
,
╚╚ 
Random
╠╠ 
,
╠╠ 
	Animation
╨╨ 
}
╤╤ 
}
╥╥ 	
[
╫╫ 	
HideInInspector
╫╫	 
]
╫╫ 
public
╫╫  
List
╫╫! %
<
╫╫% &

TilingRule
╫╫& 0
>
╫╫0 1
m_TilingRules
╫╫2 ?
=
╫╫@ A
new
╫╫B E
List
╫╫F J
<
╫╫J K
RuleTile
╫╫K S
.
╫╫S T

TilingRule
╫╫T ^
>
╫╫^ _
(
╫╫_ `
)
╫╫` a
;
╫╫a b
public
┘┘ 
HashSet
┘┘ 
<
┘┘ 

Vector3Int
┘┘ !
>
┘┘! "
neighborPositions
┘┘# 4
{
┌┌ 	
get
██ 
{
▄▄ 
if
▌▌ 
(
▌▌ !
m_NeighborPositions
▌▌ '
.
▌▌' (
Count
▌▌( -
==
▌▌. 0
$num
▌▌1 2
)
▌▌2 3%
UpdateNeighborPositions
▐▐ +
(
▐▐+ ,
)
▐▐, -
;
▐▐- .
return
рр !
m_NeighborPositions
рр *
;
рр* +
}
сс 
}
тт 	
private
фф 
HashSet
фф 
<
фф 

Vector3Int
фф "
>
фф" #!
m_NeighborPositions
фф$ 7
=
фф8 9
new
фф: =
HashSet
фф> E
<
ффE F

Vector3Int
ффF P
>
ффP Q
(
ффQ R
)
ффR S
;
ффS T
public
цц 
void
цц %
UpdateNeighborPositions
цц +
(
цц+ ,
)
цц, -
{
чч 	.
 m_CacheTilemapsNeighborPositions
шш ,
.
шш, -
Clear
шш- 2
(
шш2 3
)
шш3 4
;
шш4 5
HashSet
ъъ 
<
ъъ 

Vector3Int
ъъ 
>
ъъ 
	positions
ъъ  )
=
ъъ* +!
m_NeighborPositions
ъъ, ?
;
ъъ? @
	positions
ыы 
.
ыы 
Clear
ыы 
(
ыы 
)
ыы 
;
ыы 
foreach
ээ 
(
ээ 

TilingRule
ээ 
rule
ээ  $
in
ээ% '
m_TilingRules
ээ( 5
)
ээ5 6
{
юю 
foreach
яя 
(
яя 
var
яя 
neighbor
яя %
in
яя& (
rule
яя) -
.
яя- .
GetNeighbors
яя. :
(
яя: ;
)
яя; <
)
яя< =
{
ЁЁ 

Vector3Int
ёё 
position
ёё '
=
ёё( )
neighbor
ёё* 2
.
ёё2 3
Key
ёё3 6
;
ёё6 7
	positions
ЄЄ 
.
ЄЄ 
Add
ЄЄ !
(
ЄЄ! "
position
ЄЄ" *
)
ЄЄ* +
;
ЄЄ+ ,
if
її 
(
її 
rule
її 
.
її 
m_RuleTransform
її ,
==
її- /

TilingRule
її0 :
.
її: ;
	Transform
її; D
.
їїD E
Rotated
їїE L
)
їїL M
{
ЎЎ 
for
ўў 
(
ўў 
int
ўў  
angle
ўў! &
=
ўў' (
m_RotationAngle
ўў) 8
;
ўў8 9
angle
ўў: ?
<
ўў@ A
$num
ўўB E
;
ўўE F
angle
ўўG L
+=
ўўM O
m_RotationAngle
ўўP _
)
ўў_ `
{
°° 
	positions
∙∙ %
.
∙∙% &
Add
∙∙& )
(
∙∙) * 
GetRotatedPosition
∙∙* <
(
∙∙< =
position
∙∙= E
,
∙∙E F
angle
∙∙G L
)
∙∙L M
)
∙∙M N
;
∙∙N O
}
·· 
}
√√ 
else
¤¤ 
if
¤¤ 
(
¤¤ 
rule
¤¤ !
.
¤¤! "
m_RuleTransform
¤¤" 1
==
¤¤2 4

TilingRule
¤¤5 ?
.
¤¤? @
	Transform
¤¤@ I
.
¤¤I J
MirrorXY
¤¤J R
)
¤¤R S
{
■■ 
	positions
   !
.
  ! "
Add
  " %
(
  % &!
GetMirroredPosition
  & 9
(
  9 :
position
  : B
,
  B C
true
  D H
,
  H I
true
  J N
)
  N O
)
  O P
;
  P Q
	positions
АА !
.
АА! "
Add
АА" %
(
АА% &!
GetMirroredPosition
АА& 9
(
АА9 :
position
АА: B
,
ААB C
true
ААD H
,
ААH I
false
ААJ O
)
ААO P
)
ААP Q
;
ААQ R
	positions
ББ !
.
ББ! "
Add
ББ" %
(
ББ% &!
GetMirroredPosition
ББ& 9
(
ББ9 :
position
ББ: B
,
ББB C
false
ББD I
,
ББI J
true
ББK O
)
ББO P
)
ББP Q
;
ББQ R
}
ВВ 
else
ДД 
if
ДД 
(
ДД 
rule
ДД !
.
ДД! "
m_RuleTransform
ДД" 1
==
ДД2 4

TilingRule
ДД5 ?
.
ДД? @
	Transform
ДД@ I
.
ДДI J
MirrorX
ДДJ Q
)
ДДQ R
{
ЕЕ 
	positions
ЖЖ !
.
ЖЖ! "
Add
ЖЖ" %
(
ЖЖ% &!
GetMirroredPosition
ЖЖ& 9
(
ЖЖ9 :
position
ЖЖ: B
,
ЖЖB C
true
ЖЖD H
,
ЖЖH I
false
ЖЖJ O
)
ЖЖO P
)
ЖЖP Q
;
ЖЖQ R
}
ЗЗ 
else
ЙЙ 
if
ЙЙ 
(
ЙЙ 
rule
ЙЙ !
.
ЙЙ! "
m_RuleTransform
ЙЙ" 1
==
ЙЙ2 4

TilingRule
ЙЙ5 ?
.
ЙЙ? @
	Transform
ЙЙ@ I
.
ЙЙI J
MirrorY
ЙЙJ Q
)
ЙЙQ R
{
КК 
	positions
ЛЛ !
.
ЛЛ! "
Add
ЛЛ" %
(
ЛЛ% &!
GetMirroredPosition
ЛЛ& 9
(
ЛЛ9 :
position
ЛЛ: B
,
ЛЛB C
false
ЛЛD I
,
ЛЛI J
true
ЛЛK O
)
ЛЛO P
)
ЛЛP Q
;
ЛЛQ R
}
ММ 
}
НН 
}
ОО 
}
ПП 	
public
ШШ 
override
ШШ 
bool
ШШ 
StartUp
ШШ $
(
ШШ$ %

Vector3Int
ШШ% /
location
ШШ0 8
,
ШШ8 9
ITilemap
ШШ: B
tilemap
ШШC J
,
ШШJ K

GameObject
ШШL V$
instantiatedGameObject
ШШW m
)
ШШm n
{
ЩЩ 	
if
ЪЪ 
(
ЪЪ $
instantiatedGameObject
ЪЪ &
!=
ЪЪ' )
null
ЪЪ* .
)
ЪЪ. /
{
ЫЫ 
var
ЬЬ 
iden
ЬЬ 
=
ЬЬ 
	Matrix4x4
ЬЬ $
.
ЬЬ$ %
identity
ЬЬ% -
;
ЬЬ- .

Quaternion
ЭЭ "
gameObjectQuaternion
ЭЭ /
=
ЭЭ0 1
new
ЭЭ2 5

Quaternion
ЭЭ6 @
(
ЭЭ@ A
)
ЭЭA B
;
ЭЭB C
foreach
ЯЯ 
(
ЯЯ 

TilingRule
ЯЯ #
rule
ЯЯ$ (
in
ЯЯ) +
m_TilingRules
ЯЯ, 9
)
ЯЯ9 :
{
аа 
	Matrix4x4
бб 
	transform
бб '
=
бб( )
iden
бб* .
;
бб. /
if
вв 
(
вв 
RuleMatches
вв #
(
вв# $
rule
вв$ (
,
вв( )
location
вв* 2
,
вв2 3
tilemap
вв4 ;
,
вв; <
ref
вв= @
	transform
ввA J
)
ввJ K
)
ввK L
{
гг "
gameObjectQuaternion
ее ,
=
ее- .

Quaternion
ее/ 9
.
ее9 :
LookRotation
ее: F
(
ееF G
new
ееG J
Vector3
ееK R
(
ееR S
	transform
ееS \
.
ее\ ]
m02
ее] `
,
ее` a
	transform
ееb k
.
ееk l
m12
ееl o
,
ееo p
	transform
ееq z
.
ееz {
m22
ее{ ~
)
ее~ 
,ее А
newееБ Д
Vector3ееЕ М
(ееМ Н
	transformееН Ц
.ееЦ Ч
m01ееЧ Ъ
,ееЪ Ы
	transformееЬ е
.еее ж
m11ееж й
,еей к
	transformеел ┤
.ее┤ ╡
m21ее╡ ╕
)ее╕ ╣
)ее╣ ║
;ее║ ╗
break
жж 
;
жж 
}
зз 
}
ии 
Tilemap
кк 
tmpMap
кк 
=
кк  
tilemap
кк! (
.
кк( )
GetComponent
кк) 5
<
кк5 6
Tilemap
кк6 =
>
кк= >
(
кк> ?
)
кк? @
;
кк@ A$
instantiatedGameObject
лл &
.
лл& '
	transform
лл' 0
.
лл0 1
position
лл1 9
=
лл: ;
tmpMap
лл< B
.
ллB C
LocalToWorld
ллC O
(
ллO P
tmpMap
ллP V
.
ллV W%
CellToLocalInterpolated
ллW n
(
ллn o
location
ллo w
+
ллx y
tmpMapллz А
.ллА Б

tileAnchorллБ Л
)ллЛ М
)ллМ Н
;ллН О$
instantiatedGameObject
мм &
.
мм& '
	transform
мм' 0
.
мм0 1
rotation
мм1 9
=
мм: ;"
gameObjectQuaternion
мм< P
;
ммP Q
}
нн 
return
пп 
true
пп 
;
пп 
}
░░ 	
public
╕╕ 
override
╕╕ 
void
╕╕ 
GetTileData
╕╕ (
(
╕╕( )

Vector3Int
╕╕) 3
position
╕╕4 <
,
╕╕< =
ITilemap
╕╕> F
tilemap
╕╕G N
,
╕╕N O
ref
╕╕P S
TileData
╕╕T \
tileData
╕╕] e
)
╕╕e f
{
╣╣ 	
var
║║ 
iden
║║ 
=
║║ 
	Matrix4x4
║║  
.
║║  !
identity
║║! )
;
║║) *
tileData
╝╝ 
.
╝╝ 
sprite
╝╝ 
=
╝╝ 
m_DefaultSprite
╝╝ -
;
╝╝- .
tileData
╜╜ 
.
╜╜ 

gameObject
╜╜ 
=
╜╜  !!
m_DefaultGameObject
╜╜" 5
;
╜╜5 6
tileData
╛╛ 
.
╛╛ 
colliderType
╛╛ !
=
╛╛" ##
m_DefaultColliderType
╛╛$ 9
;
╛╛9 :
tileData
┐┐ 
.
┐┐ 
flags
┐┐ 
=
┐┐ 
	TileFlags
┐┐ &
.
┐┐& '
LockTransform
┐┐' 4
;
┐┐4 5
tileData
└└ 
.
└└ 
	transform
└└ 
=
└└  
iden
└└! %
;
└└% &
foreach
┬┬ 
(
┬┬ 

TilingRule
┬┬ 
rule
┬┬  $
in
┬┬% '
m_TilingRules
┬┬( 5
)
┬┬5 6
{
├├ 
	Matrix4x4
── 
	transform
── #
=
──$ %
iden
──& *
;
──* +
if
┼┼ 
(
┼┼ 
RuleMatches
┼┼ 
(
┼┼  
rule
┼┼  $
,
┼┼$ %
position
┼┼& .
,
┼┼. /
tilemap
┼┼0 7
,
┼┼7 8
ref
┼┼9 <
	transform
┼┼= F
)
┼┼F G
)
┼┼G H
{
╞╞ 
switch
╟╟ 
(
╟╟ 
rule
╟╟  
.
╟╟  !
m_Output
╟╟! )
)
╟╟) *
{
╚╚ 
case
╔╔ 

TilingRule
╔╔ '
.
╔╔' (
OutputSprite
╔╔( 4
.
╔╔4 5
Single
╔╔5 ;
:
╔╔; <
case
╩╩ 

TilingRule
╩╩ '
.
╩╩' (
OutputSprite
╩╩( 4
.
╩╩4 5
	Animation
╩╩5 >
:
╩╩> ?
tileData
╦╦ $
.
╦╦$ %
sprite
╦╦% +
=
╦╦, -
rule
╦╦. 2
.
╦╦2 3
	m_Sprites
╦╦3 <
[
╦╦< =
$num
╦╦= >
]
╦╦> ?
;
╦╦? @
break
╠╠ !
;
╠╠! "
case
══ 

TilingRule
══ '
.
══' (
OutputSprite
══( 4
.
══4 5
Random
══5 ;
:
══; <
int
╬╬ 
index
╬╬  %
=
╬╬& '
Mathf
╬╬( -
.
╬╬- .
Clamp
╬╬. 3
(
╬╬3 4
Mathf
╬╬4 9
.
╬╬9 :

FloorToInt
╬╬: D
(
╬╬D E
GetPerlinValue
╬╬E S
(
╬╬S T
position
╬╬T \
,
╬╬\ ]
rule
╬╬^ b
.
╬╬b c
m_PerlinScale
╬╬c p
,
╬╬p q
$num
╬╬r y
)
╬╬y z
*
╬╬{ |
rule╬╬} Б
.╬╬Б В
	m_Sprites╬╬В Л
.╬╬Л М
Length╬╬М Т
)╬╬Т У
,╬╬У Ф
$num╬╬Х Ц
,╬╬Ц Ч
rule╬╬Ш Ь
.╬╬Ь Э
	m_Sprites╬╬Э ж
.╬╬ж з
Length╬╬з н
-╬╬о п
$num╬╬░ ▒
)╬╬▒ ▓
;╬╬▓ │
tileData
╧╧ $
.
╧╧$ %
sprite
╧╧% +
=
╧╧, -
rule
╧╧. 2
.
╧╧2 3
	m_Sprites
╧╧3 <
[
╧╧< =
index
╧╧= B
]
╧╧B C
;
╧╧C D
if
╨╨ 
(
╨╨  
rule
╨╨  $
.
╨╨$ %
m_RandomTransform
╨╨% 6
!=
╨╨7 9

TilingRule
╨╨: D
.
╨╨D E
	Transform
╨╨E N
.
╨╨N O
Fixed
╨╨O T
)
╨╨T U
	transform
╤╤  )
=
╤╤* +"
ApplyRandomTransform
╤╤, @
(
╤╤@ A
rule
╤╤A E
.
╤╤E F
m_RandomTransform
╤╤F W
,
╤╤W X
	transform
╤╤Y b
,
╤╤b c
rule
╤╤d h
.
╤╤h i
m_PerlinScale
╤╤i v
,
╤╤v w
position╤╤x А
)╤╤А Б
;╤╤Б В
break
╥╥ !
;
╥╥! "
}
╙╙ 
tileData
╘╘ 
.
╘╘ 
	transform
╘╘ &
=
╘╘' (
	transform
╘╘) 2
;
╘╘2 3
tileData
╒╒ 
.
╒╒ 

gameObject
╒╒ '
=
╒╒( )
rule
╒╒* .
.
╒╒. /
m_GameObject
╒╒/ ;
;
╒╒; <
tileData
╓╓ 
.
╓╓ 
colliderType
╓╓ )
=
╓╓* +
rule
╓╓, 0
.
╓╓0 1
m_ColliderType
╓╓1 ?
;
╓╓? @
break
╫╫ 
;
╫╫ 
}
╪╪ 
}
┘┘ 
}
┌┌ 	
	protected
уу 
static
уу 
float
уу 
GetPerlinValue
уу -
(
уу- .

Vector3Int
уу. 8
position
уу9 A
,
ууA B
float
ууC H
scale
ууI N
,
ууN O
float
ууP U
offset
ууV \
)
уу\ ]
{
фф 	
return
хх 
Mathf
хх 
.
хх 
PerlinNoise
хх $
(
хх$ %
(
хх% &
position
хх& .
.
хх. /
x
хх/ 0
+
хх1 2
offset
хх3 9
)
хх9 :
*
хх; <
scale
хх= B
,
ххB C
(
ххD E
position
ххE M
.
ххM N
y
ххN O
+
ххP Q
offset
ххR X
)
ххX Y
*
ххZ [
scale
хх\ a
)
ххa b
;
ххb c
}
цц 	
static
шш 

Dictionary
шш 
<
шш 
Tilemap
шш !
,
шш! "
KeyValuePair
шш# /
<
шш/ 0
HashSet
шш0 7
<
шш7 8
TileBase
шш8 @
>
шш@ A
,
шшA B
HashSet
шшC J
<
шшJ K

Vector3Int
шшK U
>
шшU V
>
шшV W
>
шшW X.
 m_CacheTilemapsNeighborPositions
шшY y
=
шшz {
new
шш| 

DictionaryшшА К
<шшК Л
TilemapшшЛ Т
,шшТ У
KeyValuePairшшФ а
<шша б
HashSetшшб и
<шши й
TileBaseшшй ▒
>шш▒ ▓
,шш▓ │
HashSetшш┤ ╗
<шш╗ ╝

Vector3Intшш╝ ╞
>шш╞ ╟
>шш╟ ╚
>шш╚ ╔
(шш╔ ╩
)шш╩ ╦
;шш╦ ╠
static
щщ 
TileBase
щщ 
[
щщ 
]
щщ $
m_AllocatedUsedTileArr
щщ 0
=
щщ1 2
new
щщ3 6
TileBase
щщ7 ?
[
щщ? @
$num
щщ@ A
]
щщA B
;
щщB C
static
ыы 
bool
ыы &
IsTilemapUsedTilesChange
ыы ,
(
ыы, -
Tilemap
ыы- 4
tilemap
ыы5 <
)
ыы< =
{
ьь 	
if
ээ 
(
ээ 
!
ээ .
 m_CacheTilemapsNeighborPositions
ээ 1
.
ээ1 2
ContainsKey
ээ2 =
(
ээ= >
tilemap
ээ> E
)
ээE F
)
ээF G
return
юю 
true
юю 
;
юю 
var
ЁЁ 
oldUsedTiles
ЁЁ 
=
ЁЁ .
 m_CacheTilemapsNeighborPositions
ЁЁ ?
[
ЁЁ? @
tilemap
ЁЁ@ G
]
ЁЁG H
.
ЁЁH I
Key
ЁЁI L
;
ЁЁL M
int
ёё 
newUsedTilesCount
ёё !
=
ёё" #
tilemap
ёё$ +
.
ёё+ ,
GetUsedTilesCount
ёё, =
(
ёё= >
)
ёё> ?
;
ёё? @
if
єє 
(
єє 
newUsedTilesCount
єє !
!=
єє" $
oldUsedTiles
єє% 1
.
єє1 2
Count
єє2 7
)
єє7 8
return
ЇЇ 
true
ЇЇ 
;
ЇЇ 
if
ЎЎ 
(
ЎЎ $
m_AllocatedUsedTileArr
ЎЎ &
.
ЎЎ& '
Length
ЎЎ' -
<
ЎЎ. /
newUsedTilesCount
ЎЎ0 A
)
ЎЎA B$
m_AllocatedUsedTileArr
ўў &
=
ўў' (
new
ўў) ,
TileBase
ўў- 5
[
ўў5 6
newUsedTilesCount
ўў6 G
]
ўўG H
;
ўўH I
tilemap
∙∙ 
.
∙∙ "
GetUsedTilesNonAlloc
∙∙ (
(
∙∙( )$
m_AllocatedUsedTileArr
∙∙) ?
)
∙∙? @
;
∙∙@ A
for
√√ 
(
√√ 
int
√√ 
i
√√ 
=
√√ 
$num
√√ 
;
√√ 
i
√√ 
<
√√ 
newUsedTilesCount
√√  1
;
√√1 2
i
√√3 4
++
√√4 6
)
√√6 7
{
№№ 
TileBase
¤¤ 
newUsedTile
¤¤ $
=
¤¤% &$
m_AllocatedUsedTileArr
¤¤' =
[
¤¤= >
i
¤¤> ?
]
¤¤? @
;
¤¤@ A
if
■■ 
(
■■ 
!
■■ 
oldUsedTiles
■■ !
.
■■! "
Contains
■■" *
(
■■* +
newUsedTile
■■+ 6
)
■■6 7
)
■■7 8
return
   
true
   
;
    
}
АА 
return
ВВ 
false
ВВ 
;
ВВ 
}
ГГ 	
static
ДД 
void
ДД -
CachingTilemapNeighborPositions
ДД 3
(
ДД3 4
Tilemap
ДД4 ;
tilemap
ДД< C
)
ДДC D
{
ЕЕ 	
int
ЖЖ 
usedTileCount
ЖЖ 
=
ЖЖ 
tilemap
ЖЖ  '
.
ЖЖ' (
GetUsedTilesCount
ЖЖ( 9
(
ЖЖ9 :
)
ЖЖ: ;
;
ЖЖ; <
HashSet
ЗЗ 
<
ЗЗ 
TileBase
ЗЗ 
>
ЗЗ 
	usedTiles
ЗЗ '
=
ЗЗ( )
new
ЗЗ* -
HashSet
ЗЗ. 5
<
ЗЗ5 6
TileBase
ЗЗ6 >
>
ЗЗ> ?
(
ЗЗ? @
)
ЗЗ@ A
;
ЗЗA B
HashSet
ИИ 
<
ИИ 

Vector3Int
ИИ 
>
ИИ 
neighborPositions
ИИ  1
=
ИИ2 3
new
ИИ4 7
HashSet
ИИ8 ?
<
ИИ? @

Vector3Int
ИИ@ J
>
ИИJ K
(
ИИK L
)
ИИL M
;
ИИM N
if
КК 
(
КК $
m_AllocatedUsedTileArr
КК &
.
КК& '
Length
КК' -
<
КК. /
usedTileCount
КК0 =
)
КК= >$
m_AllocatedUsedTileArr
ЛЛ &
=
ЛЛ' (
new
ЛЛ) ,
TileBase
ЛЛ- 5
[
ЛЛ5 6
usedTileCount
ЛЛ6 C
]
ЛЛC D
;
ЛЛD E
tilemap
НН 
.
НН "
GetUsedTilesNonAlloc
НН (
(
НН( )$
m_AllocatedUsedTileArr
НН) ?
)
НН? @
;
НН@ A
for
ПП 
(
ПП 
int
ПП 
i
ПП 
=
ПП 
$num
ПП 
;
ПП 
i
ПП 
<
ПП 
usedTileCount
ПП  -
;
ПП- .
i
ПП/ 0
++
ПП0 2
)
ПП2 3
{
РР 
TileBase
СС 
tile
СС 
=
СС $
m_AllocatedUsedTileArr
СС  6
[
СС6 7
i
СС7 8
]
СС8 9
;
СС9 :
	usedTiles
ТТ 
.
ТТ 
Add
ТТ 
(
ТТ 
tile
ТТ "
)
ТТ" #
;
ТТ# $
RuleTile
УУ 
ruleTile
УУ !
=
УУ" #
null
УУ$ (
;
УУ( )
if
ХХ 
(
ХХ 
tile
ХХ 
is
ХХ 
RuleTile
ХХ $
)
ХХ$ %
ruleTile
ЦЦ 
=
ЦЦ 
tile
ЦЦ #
as
ЦЦ$ &
RuleTile
ЦЦ' /
;
ЦЦ/ 0
else
ЧЧ 
if
ЧЧ 
(
ЧЧ 
tile
ЧЧ 
is
ЧЧ  
RuleOverrideTile
ЧЧ! 1
)
ЧЧ1 2
ruleTile
ШШ 
=
ШШ 
(
ШШ  
tile
ШШ  $
as
ШШ% '
RuleOverrideTile
ШШ( 8
)
ШШ8 9
.
ШШ9 :
m_Tile
ШШ: @
;
ШШ@ A
if
ЪЪ 
(
ЪЪ 
ruleTile
ЪЪ 
)
ЪЪ 
foreach
ЫЫ 
(
ЫЫ 

Vector3Int
ЫЫ '
neighborPosition
ЫЫ( 8
in
ЫЫ9 ;
ruleTile
ЫЫ< D
.
ЫЫD E
neighborPositions
ЫЫE V
)
ЫЫV W
neighborPositions
ЬЬ )
.
ЬЬ) *
Add
ЬЬ* -
(
ЬЬ- .
neighborPosition
ЬЬ. >
)
ЬЬ> ?
;
ЬЬ? @
}
ЭЭ .
 m_CacheTilemapsNeighborPositions
ЯЯ ,
[
ЯЯ, -
tilemap
ЯЯ- 4
]
ЯЯ4 5
=
ЯЯ6 7
new
ЯЯ8 ;
KeyValuePair
ЯЯ< H
<
ЯЯH I
HashSet
ЯЯI P
<
ЯЯP Q
TileBase
ЯЯQ Y
>
ЯЯY Z
,
ЯЯZ [
HashSet
ЯЯ\ c
<
ЯЯc d

Vector3Int
ЯЯd n
>
ЯЯn o
>
ЯЯo p
(
ЯЯp q
	usedTiles
ЯЯq z
,
ЯЯz { 
neighborPositionsЯЯ| Н
)ЯЯН О
;ЯЯО П
}
аа 	
static
бб 
void
бб .
 ReleaseDestroyedTilemapCacheData
бб 4
(
бб4 5
)
бб5 6
{
вв 	.
 m_CacheTilemapsNeighborPositions
гг ,
=
гг- ..
 m_CacheTilemapsNeighborPositions
гг/ O
.
дд 
Where
дд 
(
дд 
data
дд 
=>
дд 
data
дд #
.
дд# $
Key
дд$ '
!=
дд( *
null
дд+ /
)
дд/ 0
.
ее 
ToDictionary
ее 
(
ее 
data
ее "
=>
ее# %
data
ее& *
.
ее* +
Key
ее+ .
,
ее. /
data
ее0 4
=>
ее5 7
data
ее8 <
.
ее< =
Value
ее= B
)
ееB C
;
ееC D
}
жж 	
public
пп 
override
пп 
bool
пп "
GetTileAnimationData
пп 1
(
пп1 2

Vector3Int
пп2 <
position
пп= E
,
ппE F
ITilemap
ппG O
tilemap
ппP W
,
ппW X
ref
ппY \
TileAnimationData
пп] n 
tileAnimationDataппo А
)ппА Б
{
░░ 	
var
▒▒ 
iden
▒▒ 
=
▒▒ 
	Matrix4x4
▒▒  
.
▒▒  !
identity
▒▒! )
;
▒▒) *
foreach
▓▓ 
(
▓▓ 

TilingRule
▓▓ 
rule
▓▓  $
in
▓▓% '
m_TilingRules
▓▓( 5
)
▓▓5 6
{
││ 
if
┤┤ 
(
┤┤ 
rule
┤┤ 
.
┤┤ 
m_Output
┤┤ !
==
┤┤" $

TilingRule
┤┤% /
.
┤┤/ 0
OutputSprite
┤┤0 <
.
┤┤< =
	Animation
┤┤= F
)
┤┤F G
{
╡╡ 
	Matrix4x4
╢╢ 
	transform
╢╢ '
=
╢╢( )
iden
╢╢* .
;
╢╢. /
if
╖╖ 
(
╖╖ 
RuleMatches
╖╖ #
(
╖╖# $
rule
╖╖$ (
,
╖╖( )
position
╖╖* 2
,
╖╖2 3
tilemap
╖╖4 ;
,
╖╖; <
ref
╖╖= @
	transform
╖╖A J
)
╖╖J K
)
╖╖K L
{
╕╕ 
tileAnimationData
╣╣ )
.
╣╣) *
animatedSprites
╣╣* 9
=
╣╣: ;
rule
╣╣< @
.
╣╣@ A
	m_Sprites
╣╣A J
;
╣╣J K
tileAnimationData
║║ )
.
║║) *
animationSpeed
║║* 8
=
║║9 :
rule
║║; ?
.
║║? @
m_AnimationSpeed
║║@ P
;
║║P Q
return
╗╗ 
true
╗╗ #
;
╗╗# $
}
╝╝ 
}
╜╜ 
}
╛╛ 
return
┐┐ 
false
┐┐ 
;
┐┐ 
}
└└ 	
public
╟╟ 
override
╟╟ 
void
╟╟ 
RefreshTile
╟╟ (
(
╟╟( )

Vector3Int
╟╟) 3
location
╟╟4 <
,
╟╟< =
ITilemap
╟╟> F
tilemap
╟╟G N
)
╟╟N O
{
╚╚ 	
base
╔╔ 
.
╔╔ 
RefreshTile
╔╔ 
(
╔╔ 
location
╔╔ %
,
╔╔% &
tilemap
╔╔' .
)
╔╔. /
;
╔╔/ 0
Tilemap
╦╦ 
	tilemap_2
╦╦ 
=
╦╦ 
tilemap
╦╦  '
.
╦╦' (
GetComponent
╦╦( 4
<
╦╦4 5
Tilemap
╦╦5 <
>
╦╦< =
(
╦╦= >
)
╦╦> ?
;
╦╦? @.
 ReleaseDestroyedTilemapCacheData
══ ,
(
══, -
)
══- .
;
══. /
if
╧╧ 
(
╧╧ &
IsTilemapUsedTilesChange
╧╧ (
(
╧╧( )
	tilemap_2
╧╧) 2
)
╧╧2 3
)
╧╧3 4-
CachingTilemapNeighborPositions
╨╨ /
(
╨╨/ 0
	tilemap_2
╨╨0 9
)
╨╨9 :
;
╨╨: ;
HashSet
╥╥ 
<
╥╥ 

Vector3Int
╥╥ 
>
╥╥ 
neighborPositions
╥╥  1
=
╥╥2 3.
 m_CacheTilemapsNeighborPositions
╥╥4 T
[
╥╥T U
	tilemap_2
╥╥U ^
]
╥╥^ _
.
╥╥_ `
Value
╥╥` e
;
╥╥e f
foreach
╙╙ 
(
╙╙ 

Vector3Int
╙╙ 
offset
╙╙  &
in
╙╙' )
neighborPositions
╙╙* ;
)
╙╙; <
{
╘╘ 

Vector3Int
╒╒ 
position
╒╒ #
=
╒╒$ %&
GetOffsetPositionReverse
╒╒& >
(
╒╒> ?
location
╒╒? G
,
╒╒G H
offset
╒╒I O
)
╒╒O P
;
╒╒P Q
TileBase
╓╓ 
tile
╓╓ 
=
╓╓ 
	tilemap_2
╓╓  )
.
╓╓) *
GetTile
╓╓* 1
(
╓╓1 2
position
╓╓2 :
)
╓╓: ;
;
╓╓; <
RuleTile
╫╫ 
ruleTile
╫╫ !
=
╫╫" #
null
╫╫$ (
;
╫╫( )
if
┘┘ 
(
┘┘ 
tile
┘┘ 
is
┘┘ 
RuleTile
┘┘ $
)
┘┘$ %
ruleTile
┌┌ 
=
┌┌ 
tile
┌┌ #
as
┌┌$ &
RuleTile
┌┌' /
;
┌┌/ 0
else
██ 
if
██ 
(
██ 
tile
██ 
is
██  
RuleOverrideTile
██! 1
)
██1 2
ruleTile
▄▄ 
=
▄▄ 
(
▄▄  
tile
▄▄  $
as
▄▄% '
RuleOverrideTile
▄▄( 8
)
▄▄8 9
.
▄▄9 :
m_Tile
▄▄: @
;
▄▄@ A
if
▐▐ 
(
▐▐ 
ruleTile
▐▐ 
)
▐▐ 
if
▀▀ 
(
▀▀ 
ruleTile
▀▀  
.
▀▀  !
neighborPositions
▀▀! 2
.
▀▀2 3
Contains
▀▀3 ;
(
▀▀; <
offset
▀▀< B
)
▀▀B C
)
▀▀C D
base
рр 
.
рр 
RefreshTile
рр (
(
рр( )
position
рр) 1
,
рр1 2
tilemap
рр3 :
)
рр: ;
;
рр; <
}
сс 
}
тт 	
	protected
ыы 
virtual
ыы 
bool
ыы 
RuleMatches
ыы *
(
ыы* +

TilingRule
ыы+ 5
rule
ыы6 :
,
ыы: ;

Vector3Int
ыы< F
position
ыыG O
,
ыыO P
ITilemap
ыыQ Y
tilemap
ыыZ a
,
ыыa b
ref
ыыc f
	Matrix4x4
ыыg p
	transform
ыыq z
)
ыыz {
{
ьь 	
if
ээ 
(
ээ 
RuleMatches
ээ 
(
ээ 
rule
ээ  
,
ээ  !
position
ээ" *
,
ээ* +
tilemap
ээ, 3
,
ээ3 4
$num
ээ5 6
)
ээ6 7
)
ээ7 8
{
юю 
	transform
яя 
=
яя 
	Matrix4x4
яя %
.
яя% &
TRS
яя& )
(
яя) *
Vector3
яя* 1
.
яя1 2
zero
яя2 6
,
яя6 7

Quaternion
яя8 B
.
яяB C
Euler
яяC H
(
яяH I
$num
яяI K
,
яяK L
$num
яяM O
,
яяO P
$num
яяQ S
)
яяS T
,
яяT U
Vector3
яяV ]
.
яя] ^
one
яя^ a
)
яяa b
;
яяb c
return
ЁЁ 
true
ЁЁ 
;
ЁЁ 
}
ёё 
if
ЇЇ 
(
ЇЇ 
rule
ЇЇ 
.
ЇЇ 
m_RuleTransform
ЇЇ $
==
ЇЇ% '

TilingRule
ЇЇ( 2
.
ЇЇ2 3
	Transform
ЇЇ3 <
.
ЇЇ< =
Rotated
ЇЇ= D
)
ЇЇD E
{
її 
for
ЎЎ 
(
ЎЎ 
int
ЎЎ 
angle
ЎЎ 
=
ЎЎ  
m_RotationAngle
ЎЎ! 0
;
ЎЎ0 1
angle
ЎЎ2 7
<
ЎЎ8 9
$num
ЎЎ: =
;
ЎЎ= >
angle
ЎЎ? D
+=
ЎЎE G
m_RotationAngle
ЎЎH W
)
ЎЎW X
{
ўў 
if
°° 
(
°° 
RuleMatches
°° #
(
°°# $
rule
°°$ (
,
°°( )
position
°°* 2
,
°°2 3
tilemap
°°4 ;
,
°°; <
angle
°°= B
)
°°B C
)
°°C D
{
∙∙ 
	transform
·· !
=
··" #
	Matrix4x4
··$ -
.
··- .
TRS
··. 1
(
··1 2
Vector3
··2 9
.
··9 :
zero
··: >
,
··> ?

Quaternion
··@ J
.
··J K
Euler
··K P
(
··P Q
$num
··Q S
,
··S T
$num
··U W
,
··W X
-
··Y Z
angle
··Z _
)
··_ `
,
··` a
Vector3
··b i
.
··i j
one
··j m
)
··m n
;
··n o
return
√√ 
true
√√ #
;
√√# $
}
№№ 
}
¤¤ 
}
■■ 
else
АА 
if
АА 
(
АА 
rule
АА 
.
АА 
m_RuleTransform
АА )
==
АА* ,

TilingRule
АА- 7
.
АА7 8
	Transform
АА8 A
.
ААA B
MirrorXY
ААB J
)
ААJ K
{
ББ 
if
ВВ 
(
ВВ 
RuleMatches
ВВ 
(
ВВ  
rule
ВВ  $
,
ВВ$ %
position
ВВ& .
,
ВВ. /
tilemap
ВВ0 7
,
ВВ7 8
true
ВВ9 =
,
ВВ= >
true
ВВ? C
)
ВВC D
)
ВВD E
{
ГГ 
	transform
ДД 
=
ДД 
	Matrix4x4
ДД  )
.
ДД) *
TRS
ДД* -
(
ДД- .
Vector3
ДД. 5
.
ДД5 6
zero
ДД6 :
,
ДД: ;

Quaternion
ДД< F
.
ДДF G
identity
ДДG O
,
ДДO P
new
ДДQ T
Vector3
ДДU \
(
ДД\ ]
-
ДД] ^
$num
ДД^ `
,
ДД` a
-
ДДb c
$num
ДДc e
,
ДДe f
$num
ДДg i
)
ДДi j
)
ДДj k
;
ДДk l
return
ЕЕ 
true
ЕЕ 
;
ЕЕ  
}
ЖЖ 
if
ЗЗ 
(
ЗЗ 
RuleMatches
ЗЗ 
(
ЗЗ  
rule
ЗЗ  $
,
ЗЗ$ %
position
ЗЗ& .
,
ЗЗ. /
tilemap
ЗЗ0 7
,
ЗЗ7 8
true
ЗЗ9 =
,
ЗЗ= >
false
ЗЗ? D
)
ЗЗD E
)
ЗЗE F
{
ИИ 
	transform
ЙЙ 
=
ЙЙ 
	Matrix4x4
ЙЙ  )
.
ЙЙ) *
TRS
ЙЙ* -
(
ЙЙ- .
Vector3
ЙЙ. 5
.
ЙЙ5 6
zero
ЙЙ6 :
,
ЙЙ: ;

Quaternion
ЙЙ< F
.
ЙЙF G
identity
ЙЙG O
,
ЙЙO P
new
ЙЙQ T
Vector3
ЙЙU \
(
ЙЙ\ ]
-
ЙЙ] ^
$num
ЙЙ^ `
,
ЙЙ` a
$num
ЙЙb d
,
ЙЙd e
$num
ЙЙf h
)
ЙЙh i
)
ЙЙi j
;
ЙЙj k
return
КК 
true
КК 
;
КК  
}
ЛЛ 
if
ММ 
(
ММ 
RuleMatches
ММ 
(
ММ  
rule
ММ  $
,
ММ$ %
position
ММ& .
,
ММ. /
tilemap
ММ0 7
,
ММ7 8
false
ММ9 >
,
ММ> ?
true
ММ@ D
)
ММD E
)
ММE F
{
НН 
	transform
ОО 
=
ОО 
	Matrix4x4
ОО  )
.
ОО) *
TRS
ОО* -
(
ОО- .
Vector3
ОО. 5
.
ОО5 6
zero
ОО6 :
,
ОО: ;

Quaternion
ОО< F
.
ООF G
identity
ООG O
,
ООO P
new
ООQ T
Vector3
ООU \
(
ОО\ ]
$num
ОО] _
,
ОО_ `
-
ООa b
$num
ООb d
,
ООd e
$num
ООf h
)
ООh i
)
ООi j
;
ООj k
return
ПП 
true
ПП 
;
ПП  
}
РР 
}
СС 
else
УУ 
if
УУ 
(
УУ 
rule
УУ 
.
УУ 
m_RuleTransform
УУ )
==
УУ* ,

TilingRule
УУ- 7
.
УУ7 8
	Transform
УУ8 A
.
УУA B
MirrorX
УУB I
)
УУI J
{
ФФ 
if
ХХ 
(
ХХ 
RuleMatches
ХХ 
(
ХХ  
rule
ХХ  $
,
ХХ$ %
position
ХХ& .
,
ХХ. /
tilemap
ХХ0 7
,
ХХ7 8
true
ХХ9 =
,
ХХ= >
false
ХХ? D
)
ХХD E
)
ХХE F
{
ЦЦ 
	transform
ЧЧ 
=
ЧЧ 
	Matrix4x4
ЧЧ  )
.
ЧЧ) *
TRS
ЧЧ* -
(
ЧЧ- .
Vector3
ЧЧ. 5
.
ЧЧ5 6
zero
ЧЧ6 :
,
ЧЧ: ;

Quaternion
ЧЧ< F
.
ЧЧF G
identity
ЧЧG O
,
ЧЧO P
new
ЧЧQ T
Vector3
ЧЧU \
(
ЧЧ\ ]
-
ЧЧ] ^
$num
ЧЧ^ `
,
ЧЧ` a
$num
ЧЧb d
,
ЧЧd e
$num
ЧЧf h
)
ЧЧh i
)
ЧЧi j
;
ЧЧj k
return
ШШ 
true
ШШ 
;
ШШ  
}
ЩЩ 
}
ЪЪ 
else
ЬЬ 
if
ЬЬ 
(
ЬЬ 
rule
ЬЬ 
.
ЬЬ 
m_RuleTransform
ЬЬ )
==
ЬЬ* ,

TilingRule
ЬЬ- 7
.
ЬЬ7 8
	Transform
ЬЬ8 A
.
ЬЬA B
MirrorY
ЬЬB I
)
ЬЬI J
{
ЭЭ 
if
ЮЮ 
(
ЮЮ 
RuleMatches
ЮЮ 
(
ЮЮ  
rule
ЮЮ  $
,
ЮЮ$ %
position
ЮЮ& .
,
ЮЮ. /
tilemap
ЮЮ0 7
,
ЮЮ7 8
false
ЮЮ9 >
,
ЮЮ> ?
true
ЮЮ@ D
)
ЮЮD E
)
ЮЮE F
{
ЯЯ 
	transform
аа 
=
аа 
	Matrix4x4
аа  )
.
аа) *
TRS
аа* -
(
аа- .
Vector3
аа. 5
.
аа5 6
zero
аа6 :
,
аа: ;

Quaternion
аа< F
.
ааF G
identity
ааG O
,
ааO P
new
ааQ T
Vector3
ааU \
(
аа\ ]
$num
аа] _
,
аа_ `
-
ааa b
$num
ааb d
,
ааd e
$num
ааf h
)
ааh i
)
ааi j
;
ааj k
return
бб 
true
бб 
;
бб  
}
вв 
}
гг 
return
ее 
false
ее 
;
ее 
}
жж 	
	protected
░░ 
virtual
░░ 
	Matrix4x4
░░ #"
ApplyRandomTransform
░░$ 8
(
░░8 9

TilingRule
░░9 C
.
░░C D
	Transform
░░D M
type
░░N R
,
░░R S
	Matrix4x4
░░T ]
original
░░^ f
,
░░f g
float
░░h m
perlinScale
░░n y
,
░░y z

Vector3Int░░{ Е
position░░Ж О
)░░О П
{
▒▒ 	
float
▓▓ 
perlin
▓▓ 
=
▓▓ 
GetPerlinValue
▓▓ )
(
▓▓) *
position
▓▓* 2
,
▓▓2 3
perlinScale
▓▓4 ?
,
▓▓? @
$num
▓▓A H
)
▓▓H I
;
▓▓I J
switch
││ 
(
││ 
type
││ 
)
││ 
{
┤┤ 
case
╡╡ 

TilingRule
╡╡ 
.
╡╡  
	Transform
╡╡  )
.
╡╡) *
MirrorXY
╡╡* 2
:
╡╡2 3
return
╢╢ 
original
╢╢ #
*
╢╢$ %
	Matrix4x4
╢╢& /
.
╢╢/ 0
TRS
╢╢0 3
(
╢╢3 4
Vector3
╢╢4 ;
.
╢╢; <
zero
╢╢< @
,
╢╢@ A

Quaternion
╢╢B L
.
╢╢L M
identity
╢╢M U
,
╢╢U V
new
╢╢W Z
Vector3
╢╢[ b
(
╢╢b c
Math
╢╢c g
.
╢╢g h
Abs
╢╢h k
(
╢╢k l
perlin
╢╢l r
-
╢╢s t
$num
╢╢u x
)
╢╢x y
>
╢╢z {
$num╢╢| А
?╢╢Б В
$num╢╢Г Е
:╢╢Ж З
-╢╢И Й
$num╢╢Й Л
,╢╢Л М
perlin╢╢Н У
<╢╢Ф Х
$num╢╢Ц Щ
?╢╢Ъ Ы
$num╢╢Ь Ю
:╢╢Я а
-╢╢б в
$num╢╢в д
,╢╢д е
$num╢╢ж и
)╢╢и й
)╢╢й к
;╢╢к л
case
╖╖ 

TilingRule
╖╖ 
.
╖╖  
	Transform
╖╖  )
.
╖╖) *
MirrorX
╖╖* 1
:
╖╖1 2
return
╕╕ 
original
╕╕ #
*
╕╕$ %
	Matrix4x4
╕╕& /
.
╕╕/ 0
TRS
╕╕0 3
(
╕╕3 4
Vector3
╕╕4 ;
.
╕╕; <
zero
╕╕< @
,
╕╕@ A

Quaternion
╕╕B L
.
╕╕L M
identity
╕╕M U
,
╕╕U V
new
╕╕W Z
Vector3
╕╕[ b
(
╕╕b c
perlin
╕╕c i
<
╕╕j k
$num
╕╕l o
?
╕╕p q
$num
╕╕r t
:
╕╕u v
-
╕╕w x
$num
╕╕x z
,
╕╕z {
$num
╕╕| ~
,
╕╕~ 
$num╕╕А В
)╕╕В Г
)╕╕Г Д
;╕╕Д Е
case
╣╣ 

TilingRule
╣╣ 
.
╣╣  
	Transform
╣╣  )
.
╣╣) *
MirrorY
╣╣* 1
:
╣╣1 2
return
║║ 
original
║║ #
*
║║$ %
	Matrix4x4
║║& /
.
║║/ 0
TRS
║║0 3
(
║║3 4
Vector3
║║4 ;
.
║║; <
zero
║║< @
,
║║@ A

Quaternion
║║B L
.
║║L M
identity
║║M U
,
║║U V
new
║║W Z
Vector3
║║[ b
(
║║b c
$num
║║c e
,
║║e f
perlin
║║g m
<
║║n o
$num
║║p s
?
║║t u
$num
║║v x
:
║║y z
-
║║{ |
$num
║║| ~
,
║║~ 
$num║║А В
)║║В Г
)║║Г Д
;║║Д Е
case
╗╗ 

TilingRule
╗╗ 
.
╗╗  
	Transform
╗╗  )
.
╗╗) *
Rotated
╗╗* 1
:
╗╗1 2
int
╝╝ 
angle
╝╝ 
=
╝╝ 
Mathf
╝╝  %
.
╝╝% &
Clamp
╝╝& +
(
╝╝+ ,
Mathf
╝╝, 1
.
╝╝1 2

FloorToInt
╝╝2 <
(
╝╝< =
perlin
╝╝= C
*
╝╝D E
m_RotationCount
╝╝F U
)
╝╝U V
,
╝╝V W
$num
╝╝X Y
,
╝╝Y Z
m_RotationCount
╝╝[ j
-
╝╝k l
$num
╝╝m n
)
╝╝n o
*
╝╝p q
m_RotationAngle╝╝r Б
;╝╝Б В
return
╜╜ 
	Matrix4x4
╜╜ $
.
╜╜$ %
TRS
╜╜% (
(
╜╜( )
Vector3
╜╜) 0
.
╜╜0 1
zero
╜╜1 5
,
╜╜5 6

Quaternion
╜╜7 A
.
╜╜A B
Euler
╜╜B G
(
╜╜G H
$num
╜╜H J
,
╜╜J K
$num
╜╜L N
,
╜╜N O
-
╜╜P Q
angle
╜╜Q V
)
╜╜V W
,
╜╜W X
Vector3
╜╜Y `
.
╜╜` a
one
╜╜a d
)
╜╜d e
;
╜╜e f
}
╛╛ 
return
┐┐ 
original
┐┐ 
;
┐┐ 
}
└└ 	
public
╚╚ 
virtual
╚╚ 
bool
╚╚ 
	RuleMatch
╚╚ %
(
╚╚% &
int
╚╚& )
neighbor
╚╚* 2
,
╚╚2 3
TileBase
╚╚4 <
other
╚╚= B
)
╚╚B C
{
╔╔ 	
if
╩╩ 
(
╩╩ 
other
╩╩ 
is
╩╩ 
RuleOverrideTile
╩╩ )
)
╩╩) *
other
╦╦ 
=
╦╦ 
(
╦╦ 
other
╦╦ 
as
╦╦ !
RuleOverrideTile
╦╦" 2
)
╦╦2 3
.
╦╦3 4
m_InstanceTile
╦╦4 B
;
╦╦B C
switch
══ 
(
══ 
neighbor
══ 
)
══ 
{
╬╬ 
case
╧╧ 

TilingRule
╧╧ 
.
╧╧  
Neighbor
╧╧  (
.
╧╧( )
This
╧╧) -
:
╧╧- .
return
╧╧/ 5
other
╧╧6 ;
==
╧╧< >
this
╧╧? C
;
╧╧C D
case
╨╨ 

TilingRule
╨╨ 
.
╨╨  
Neighbor
╨╨  (
.
╨╨( )
NotThis
╨╨) 0
:
╨╨0 1
return
╨╨2 8
other
╨╨9 >
!=
╨╨? A
this
╨╨B F
;
╨╨F G
}
╤╤ 
return
╥╥ 
true
╥╥ 
;
╥╥ 
}
╙╙ 	
	protected
▄▄ 
bool
▄▄ 
RuleMatches
▄▄ "
(
▄▄" #

TilingRule
▄▄# -
rule
▄▄. 2
,
▄▄2 3

Vector3Int
▄▄4 >
position
▄▄? G
,
▄▄G H
ITilemap
▄▄I Q
tilemap
▄▄R Y
,
▄▄Y Z
int
▄▄[ ^
angle
▄▄_ d
)
▄▄d e
{
▌▌ 	
for
▐▐ 
(
▐▐ 
int
▐▐ 
i
▐▐ 
=
▐▐ 
$num
▐▐ 
;
▐▐ 
i
▐▐ 
<
▐▐ 
rule
▐▐  $
.
▐▐$ %
m_Neighbors
▐▐% 0
.
▐▐0 1
Count
▐▐1 6
&&
▐▐7 9
i
▐▐: ;
<
▐▐< =
rule
▐▐> B
.
▐▐B C!
m_NeighborPositions
▐▐C V
.
▐▐V W
Count
▐▐W \
;
▐▐\ ]
i
▐▐^ _
++
▐▐_ a
)
▐▐a b
{
▀▀ 
int
рр 
neighbor
рр 
=
рр 
rule
рр #
.
рр# $
m_Neighbors
рр$ /
[
рр/ 0
i
рр0 1
]
рр1 2
;
рр2 3

Vector3Int
сс 
positionOffset
сс )
=
сс* + 
GetRotatedPosition
сс, >
(
сс> ?
rule
сс? C
.
ссC D!
m_NeighborPositions
ссD W
[
ссW X
i
ссX Y
]
ссY Z
,
ссZ [
angle
сс\ a
)
ссa b
;
ссb c
TileBase
тт 
other
тт 
=
тт  
tilemap
тт! (
.
тт( )
GetTile
тт) 0
(
тт0 1
GetOffsetPosition
тт1 B
(
ттB C
position
ттC K
,
ттK L
positionOffset
ттM [
)
тт[ \
)
тт\ ]
;
тт] ^
if
уу 
(
уу 
!
уу 
	RuleMatch
уу 
(
уу 
neighbor
уу '
,
уу' (
other
уу) .
)
уу. /
)
уу/ 0
{
фф 
return
хх 
false
хх  
;
хх  !
}
цц 
}
чч 
return
шш 
true
шш 
;
шш 
}
щщ 	
	protected
єє 
bool
єє 
RuleMatches
єє "
(
єє" #

TilingRule
єє# -
rule
єє. 2
,
єє2 3

Vector3Int
єє4 >
position
єє? G
,
єєG H
ITilemap
єєI Q
tilemap
єєR Y
,
єєY Z
bool
єє[ _
mirrorX
єє` g
,
єєg h
bool
єєi m
mirrorY
єєn u
)
єєu v
{
ЇЇ 	
for
її 
(
її 
int
її 
i
її 
=
її 
$num
її 
;
її 
i
її 
<
її 
rule
її  $
.
її$ %
m_Neighbors
її% 0
.
її0 1
Count
її1 6
&&
її7 9
i
її: ;
<
її< =
rule
її> B
.
їїB C!
m_NeighborPositions
їїC V
.
їїV W
Count
їїW \
;
її\ ]
i
її^ _
++
її_ a
)
їїa b
{
ЎЎ 
int
ўў 
neighbor
ўў 
=
ўў 
rule
ўў #
.
ўў# $
m_Neighbors
ўў$ /
[
ўў/ 0
i
ўў0 1
]
ўў1 2
;
ўў2 3

Vector3Int
°° 
positionOffset
°° )
=
°°* +!
GetMirroredPosition
°°, ?
(
°°? @
rule
°°@ D
.
°°D E!
m_NeighborPositions
°°E X
[
°°X Y
i
°°Y Z
]
°°Z [
,
°°[ \
mirrorX
°°] d
,
°°d e
mirrorY
°°f m
)
°°m n
;
°°n o
TileBase
∙∙ 
other
∙∙ 
=
∙∙  
tilemap
∙∙! (
.
∙∙( )
GetTile
∙∙) 0
(
∙∙0 1
GetOffsetPosition
∙∙1 B
(
∙∙B C
position
∙∙C K
,
∙∙K L
positionOffset
∙∙M [
)
∙∙[ \
)
∙∙\ ]
;
∙∙] ^
if
·· 
(
·· 
!
·· 
	RuleMatch
·· 
(
·· 
neighbor
·· '
,
··' (
other
··) .
)
··. /
)
··/ 0
{
√√ 
return
№№ 
false
№№  
;
№№  !
}
¤¤ 
}
■■ 
return
   
true
   
;
   
}
АА 	
	protected
ИИ 
virtual
ИИ 

Vector3Int
ИИ $ 
GetRotatedPosition
ИИ% 7
(
ИИ7 8

Vector3Int
ИИ8 B
position
ИИC K
,
ИИK L
int
ИИM P
rotation
ИИQ Y
)
ИИY Z
{
ЙЙ 	
switch
КК 
(
КК 
rotation
КК 
)
КК 
{
ЛЛ 
case
ММ 
$num
ММ 
:
ММ 
return
НН 
position
НН #
;
НН# $
case
ОО 
$num
ОО 
:
ОО 
return
ПП 
new
ПП 

Vector3Int
ПП )
(
ПП) *
position
ПП* 2
.
ПП2 3
y
ПП3 4
,
ПП4 5
-
ПП6 7
position
ПП7 ?
.
ПП? @
x
ПП@ A
,
ППA B
$num
ППC D
)
ППD E
;
ППE F
case
РР 
$num
РР 
:
РР 
return
СС 
new
СС 

Vector3Int
СС )
(
СС) *
-
СС* +
position
СС+ 3
.
СС3 4
x
СС4 5
,
СС5 6
-
СС7 8
position
СС8 @
.
СС@ A
y
ССA B
,
ССB C
$num
ССD E
)
ССE F
;
ССF G
case
ТТ 
$num
ТТ 
:
ТТ 
return
УУ 
new
УУ 

Vector3Int
УУ )
(
УУ) *
-
УУ* +
position
УУ+ 3
.
УУ3 4
y
УУ4 5
,
УУ5 6
position
УУ7 ?
.
УУ? @
x
УУ@ A
,
УУA B
$num
УУC D
)
УУD E
;
УУE F
}
ФФ 
return
ХХ 
position
ХХ 
;
ХХ 
}
ЦЦ 	
	protected
ЯЯ 
virtual
ЯЯ 

Vector3Int
ЯЯ $!
GetMirroredPosition
ЯЯ% 8
(
ЯЯ8 9

Vector3Int
ЯЯ9 C
position
ЯЯD L
,
ЯЯL M
bool
ЯЯN R
mirrorX
ЯЯS Z
,
ЯЯZ [
bool
ЯЯ\ `
mirrorY
ЯЯa h
)
ЯЯh i
{
аа 	
if
бб 
(
бб 
mirrorX
бб 
)
бб 
position
вв 
.
вв 
x
вв 
*=
вв 
-
вв 
$num
вв  
;
вв  !
if
гг 
(
гг 
mirrorY
гг 
)
гг 
position
дд 
.
дд 
y
дд 
*=
дд 
-
дд 
$num
дд  
;
дд  !
return
ее 
position
ее 
;
ее 
}
жж 	
	protected
ии 
virtual
ии 

Vector3Int
ии $
GetOffsetPosition
ии% 6
(
ии6 7

Vector3Int
ии7 A
location
ииB J
,
ииJ K

Vector3Int
ииL V
offset
ииW ]
)
ии] ^
{
йй 	
return
кк 
location
кк 
+
кк 
offset
кк $
;
кк$ %
}
лл 	
	protected
нн 
virtual
нн 

Vector3Int
нн $&
GetOffsetPositionReverse
нн% =
(
нн= >

Vector3Int
нн> H
position
ннI Q
,
ннQ R

Vector3Int
ннS ]
offset
нн^ d
)
ннd e
{
оо 	
return
пп 
position
пп 
-
пп 
offset
пп $
;
пп$ %
}
░░ 	
}
▒▒ 
}▓▓ ╕ш
ЪC:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Tiles\TerrainTile\TerrainTile.cs
	namespace 	
UnityEngine
 
. 
Tilemaps 
{ 
[ 
Serializable 
] 
[ 
CreateAssetMenu 
( 
fileName 
= 
$str  2
,2 3
menuName4 <
== >
$str? S
)S T
]T U
public 

class 
TerrainTile 
: 
TileBase '
{ 
[ 	
SerializeField	 
] 
public 
Sprite 
[ 
] 
	m_Sprites !
;! "
public 
override 
void 
RefreshTile (
(( )

Vector3Int) 3
location4 <
,< =
ITilemap> F
tileMapG N
)N O
{ 	
for 
( 
int 
yd 
= 
- 
$num 
; 
yd  
<=! #
$num$ %
;% &
yd' )
++) +
)+ ,
for 
( 
int 
xd 
= 
- 
$num  
;  !
xd" $
<=% '
$num( )
;) *
xd+ -
++- /
)/ 0
{ 

Vector3Int   
position   '
=  ( )
new  * -

Vector3Int  . 8
(  8 9
location  9 A
.  A B
x  B C
+  D E
xd  F H
,  H I
location  J R
.  R S
y  S T
+  U V
yd  W Y
,  Y Z
location  [ c
.  c d
z  d e
)  e f
;  f g
if!! 
(!! 
	TileValue!! !
(!!! "
tileMap!!" )
,!!) *
position!!+ 3
)!!3 4
)!!4 5
tileMap"" 
.""  
RefreshTile""  +
(""+ ,
position"", 4
)""4 5
;""5 6
}## 
}$$ 	
public,, 
override,, 
void,, 
GetTileData,, (
(,,( )

Vector3Int,,) 3
location,,4 <
,,,< =
ITilemap,,> F
tileMap,,G N
,,,N O
ref,,P S
TileData,,T \
tileData,,] e
),,e f
{-- 	

UpdateTile.. 
(.. 
location.. 
,..  
tileMap..! (
,..( )
ref..* -
tileData... 6
)..6 7
;..7 8
}// 	
private11 
void11 

UpdateTile11 
(11  

Vector3Int11  *
location11+ 3
,113 4
ITilemap115 =
tileMap11> E
,11E F
ref11G J
TileData11K S
tileData11T \
)11\ ]
{22 	
tileData33 
.33 
	transform33 
=33  
	Matrix4x433! *
.33* +
identity33+ 3
;333 4
tileData44 
.44 
color44 
=44 
Color44 "
.44" #
white44# (
;44( )
int66 
mask66 
=66 
	TileValue66  
(66  !
tileMap66! (
,66( )
location66* 2
+663 4
new665 8

Vector3Int669 C
(66C D
$num66D E
,66E F
$num66G H
,66H I
$num66J K
)66K L
)66L M
?66N O
$num66P Q
:66R S
$num66T U
;66U V
mask77 
+=77 
	TileValue77 
(77 
tileMap77 %
,77% &
location77' /
+770 1
new772 5

Vector3Int776 @
(77@ A
$num77A B
,77B C
$num77D E
,77E F
$num77G H
)77H I
)77I J
?77K L
$num77M N
:77O P
$num77Q R
;77R S
mask88 
+=88 
	TileValue88 
(88 
tileMap88 %
,88% &
location88' /
+880 1
new882 5

Vector3Int886 @
(88@ A
$num88A B
,88B C
$num88D E
,88E F
$num88G H
)88H I
)88I J
?88K L
$num88M N
:88O P
$num88Q R
;88R S
mask99 
+=99 
	TileValue99 
(99 
tileMap99 %
,99% &
location99' /
+990 1
new992 5

Vector3Int996 @
(99@ A
$num99A B
,99B C
-99D E
$num99E F
,99F G
$num99H I
)99I J
)99J K
?99L M
$num99N O
:99P Q
$num99R S
;99S T
mask:: 
+=:: 
	TileValue:: 
(:: 
tileMap:: %
,::% &
location::' /
+::0 1
new::2 5

Vector3Int::6 @
(::@ A
$num::A B
,::B C
-::D E
$num::E F
,::F G
$num::H I
)::I J
)::J K
?::L M
$num::N P
:::Q R
$num::S T
;::T U
mask;; 
+=;; 
	TileValue;; 
(;; 
tileMap;; %
,;;% &
location;;' /
+;;0 1
new;;2 5

Vector3Int;;6 @
(;;@ A
-;;A B
$num;;B C
,;;C D
-;;E F
$num;;F G
,;;G H
$num;;I J
);;J K
);;K L
?;;M N
$num;;O Q
:;;R S
$num;;T U
;;;U V
mask<< 
+=<< 
	TileValue<< 
(<< 
tileMap<< %
,<<% &
location<<' /
+<<0 1
new<<2 5

Vector3Int<<6 @
(<<@ A
-<<A B
$num<<B C
,<<C D
$num<<E F
,<<F G
$num<<H I
)<<I J
)<<J K
?<<L M
$num<<N P
:<<Q R
$num<<S T
;<<T U
mask== 
+=== 
	TileValue== 
(== 
tileMap== %
,==% &
location==' /
+==0 1
new==2 5

Vector3Int==6 @
(==@ A
-==A B
$num==B C
,==C D
$num==E F
,==F G
$num==H I
)==I J
)==J K
?==L M
$num==N Q
:==R S
$num==T U
;==U V
byte?? 
original?? 
=?? 
(?? 
byte?? !
)??! "
mask??" &
;??& '
if@@ 
(@@ 
(@@ 
original@@ 
|@@ 
$num@@ 
)@@  
<@@! "
$num@@# &
)@@& '
{@@( )
mask@@* .
=@@/ 0
mask@@1 5
&@@6 7
$num@@8 ;
;@@; <
}@@= >
ifAA 
(AA 
(AA 
originalAA 
|AA 
$numAA 
)AA  
<AA! "
$numAA# &
)AA& '
{AA( )
maskAA* .
=AA/ 0
maskAA1 5
&AA6 7
$numAA8 ;
;AA; <
}AA= >
ifBB 
(BB 
(BB 
originalBB 
|BB 
$numBB 
)BB  
<BB! "
$numBB# &
)BB& '
{BB( )
maskBB* .
=BB/ 0
maskBB1 5
&BB6 7
$numBB8 ;
;BB; <
}BB= >
ifCC 
(CC 
(CC 
originalCC 
|CC 
$numCC 
)CC  
<CC! "
$numCC# &
)CC& '
{CC( )
maskCC* .
=CC/ 0
maskCC1 5
&CC6 7
$numCC8 :
;CC: ;
}CC< =
intEE 
indexEE 
=EE 
GetIndexEE  
(EE  !
(EE! "
byteEE" &
)EE& '
maskEE' +
)EE+ ,
;EE, -
ifFF 
(FF 
indexFF 
>=FF 
$numFF 
&&FF 
indexFF #
<FF$ %
	m_SpritesFF& /
.FF/ 0
LengthFF0 6
&&FF7 9
	TileValueFF: C
(FFC D
tileMapFFD K
,FFK L
locationFFM U
)FFU V
)FFV W
{GG 
tileDataHH 
.HH 
spriteHH 
=HH  !
	m_SpritesHH" +
[HH+ ,
indexHH, 1
]HH1 2
;HH2 3
tileDataII 
.II 
	transformII "
=II# $
GetTransformII% 1
(II1 2
(II2 3
byteII3 7
)II7 8
maskII8 <
)II< =
;II= >
tileDataJJ 
.JJ 
colorJJ 
=JJ  
ColorJJ! &
.JJ& '
whiteJJ' ,
;JJ, -
tileDataKK 
.KK 
flagsKK 
=KK  
	TileFlagsKK! *
.KK* +
LockTransformKK+ 8
|KK9 :
	TileFlagsKK; D
.KKD E
	LockColorKKE N
;KKN O
tileDataLL 
.LL 
colliderTypeLL %
=LL& '
TileLL( ,
.LL, -
ColliderTypeLL- 9
.LL9 :
SpriteLL: @
;LL@ A
}MM 
}NN 	
privatePP 
boolPP 
	TileValuePP 
(PP 
ITilemapPP '
tileMapPP( /
,PP/ 0

Vector3IntPP1 ;
positionPP< D
)PPD E
{QQ 	
TileBaseRR 
tileRR 
=RR 
tileMapRR #
.RR# $
GetTileRR$ +
(RR+ ,
positionRR, 4
)RR4 5
;RR5 6
returnSS 
(SS 
tileSS 
!=SS 
nullSS  
&&SS! #
tileSS$ (
==SS) +
thisSS, 0
)SS0 1
;SS1 2
}TT 	
privateVV 
intVV 
GetIndexVV 
(VV 
byteVV !
maskVV" &
)VV& '
{WW 	
switchXX 
(XX 
maskXX 
)XX 
{YY 
caseZZ 
$numZZ 
:ZZ 
returnZZ 
$numZZ  
;ZZ  !
case[[ 
$num[[ 
:[[ 
case\\ 
$num\\ 
:\\ 
case]] 
$num]] 
:]] 
case^^ 
$num^^ 
:^^ 
return^^ 
$num^^  !
;^^! "
case__ 
$num__ 
:__ 
case`` 
$num`` 
:`` 
caseaa 
$numaa 
:aa 
casebb 
$numbb 
:bb 
returnbb 
$numbb  !
;bb! "
casecc 
$numcc 
:cc 
casedd 
$numdd 
:dd 
caseee 
$numee 
:ee 
caseff 
$numff 
:ff 
returnff  
$numff! "
;ff" #
casegg 
$numgg 
:gg 
casehh 
$numhh 
:hh 
returnhh 
$numhh  !
;hh! "
caseii 
$numii 
:ii 
casejj 
$numjj 
:jj 
casekk 
$numkk 
:kk 
casell 
$numll 
:ll 
returnll 
$numll  !
;ll! "
casemm 
$nummm 
:mm 
casenn 
$numnn 
:nn 
caseoo 
$numoo 
:oo 
casepp 
$numpp 
:pp 
returnpp  
$numpp! "
;pp" #
caseqq 
$numqq 
:qq 
caserr 
$numrr 
:rr 
casess 
$numss 
:ss 
casett 
$numtt 
:tt 
returntt 
$numtt  !
;tt! "
caseuu 
$numuu 
:uu 
casevv 
$numvv 
:vv 
caseww 
$numww 
:ww 
casexx 
$numxx 
:xx 
returnxx  
$numxx! "
;xx" #
caseyy 
$numyy 
:yy 
returnyy 
$numyy  !
;yy! "
casezz 
$numzz 
:zz 
case{{ 
$num{{ 
:{{ 
case|| 
$num|| 
:|| 
case}} 
$num}} 
:}} 
return}}  
$num}}! #
;}}# $
case~~ 
$num~~ 
:~~ 
case 
$num 
: 
case
АА 
$num
АА 
:
АА 
case
ББ 
$num
ББ 
:
ББ 
return
ББ  
$num
ББ! #
;
ББ# $
case
ВВ 
$num
ВВ 
:
ВВ 
case
ГГ 
$num
ГГ 
:
ГГ 
return
ГГ  
$num
ГГ! #
;
ГГ# $
case
ДД 
$num
ДД 
:
ДД 
case
ЕЕ 
$num
ЕЕ 
:
ЕЕ 
case
ЖЖ 
$num
ЖЖ 
:
ЖЖ 
case
ЗЗ 
$num
ЗЗ 
:
ЗЗ 
return
ЗЗ  
$num
ЗЗ! #
;
ЗЗ# $
case
ИИ 
$num
ИИ 
:
ИИ 
return
ИИ  
$num
ИИ! #
;
ИИ# $
}
ЙЙ 
return
КК 
-
КК 
$num
КК 
;
КК 
}
ЛЛ 	
private
НН 
	Matrix4x4
НН 
GetTransform
НН &
(
НН& '
byte
НН' +
mask
НН, 0
)
НН0 1
{
ОО 	
switch
ПП 
(
ПП 
mask
ПП 
)
ПП 
{
РР 
case
СС 
$num
СС 
:
СС 
case
ТТ 
$num
ТТ 
:
ТТ 
case
УУ 
$num
УУ 
:
УУ 
case
ФФ 
$num
ФФ 
:
ФФ 
case
ХХ 
$num
ХХ 
:
ХХ 
case
ЦЦ 
$num
ЦЦ 
:
ЦЦ 
case
ЧЧ 
$num
ЧЧ 
:
ЧЧ 
case
ШШ 
$num
ШШ 
:
ШШ 
case
ЩЩ 
$num
ЩЩ 
:
ЩЩ 
case
ЪЪ 
$num
ЪЪ 
:
ЪЪ 
case
ЫЫ 
$num
ЫЫ 
:
ЫЫ 
case
ЬЬ 
$num
ЬЬ 
:
ЬЬ 
return
ЭЭ 
	Matrix4x4
ЭЭ $
.
ЭЭ$ %
TRS
ЭЭ% (
(
ЭЭ( )
Vector3
ЭЭ) 0
.
ЭЭ0 1
zero
ЭЭ1 5
,
ЭЭ5 6

Quaternion
ЭЭ7 A
.
ЭЭA B
Euler
ЭЭB G
(
ЭЭG H
$num
ЭЭH J
,
ЭЭJ K
$num
ЭЭL N
,
ЭЭN O
-
ЭЭP Q
$num
ЭЭQ T
)
ЭЭT U
,
ЭЭU V
Vector3
ЭЭW ^
.
ЭЭ^ _
one
ЭЭ_ b
)
ЭЭb c
;
ЭЭc d
case
ЮЮ 
$num
ЮЮ 
:
ЮЮ 
case
ЯЯ 
$num
ЯЯ 
:
ЯЯ 
case
аа 
$num
аа 
:
аа 
case
бб 
$num
бб 
:
бб 
case
вв 
$num
вв 
:
вв 
case
гг 
$num
гг 
:
гг 
case
дд 
$num
дд 
:
дд 
case
ее 
$num
ее 
:
ее 
case
жж 
$num
жж 
:
жж 
case
зз 
$num
зз 
:
зз 
return
ии 
	Matrix4x4
ии $
.
ии$ %
TRS
ии% (
(
ии( )
Vector3
ии) 0
.
ии0 1
zero
ии1 5
,
ии5 6

Quaternion
ии7 A
.
ииA B
Euler
ииB G
(
ииG H
$num
ииH J
,
ииJ K
$num
ииL N
,
ииN O
-
ииP Q
$num
ииQ U
)
ииU V
,
ииV W
Vector3
ииX _
.
ии_ `
one
ии` c
)
ииc d
;
ииd e
case
йй 
$num
йй 
:
йй 
case
кк 
$num
кк 
:
кк 
case
лл 
$num
лл 
:
лл 
case
мм 
$num
мм 
:
мм 
case
нн 
$num
нн 
:
нн 
case
оо 
$num
оо 
:
оо 
case
пп 
$num
пп 
:
пп 
case
░░ 
$num
░░ 
:
░░ 
case
▒▒ 
$num
▒▒ 
:
▒▒ 
case
▓▓ 
$num
▓▓ 
:
▓▓ 
return
││ 
	Matrix4x4
││ $
.
││$ %
TRS
││% (
(
││( )
Vector3
││) 0
.
││0 1
zero
││1 5
,
││5 6

Quaternion
││7 A
.
││A B
Euler
││B G
(
││G H
$num
││H J
,
││J K
$num
││L N
,
││N O
-
││P Q
$num
││Q U
)
││U V
,
││V W
Vector3
││X _
.
││_ `
one
││` c
)
││c d
;
││d e
}
┤┤ 
return
╡╡ 
	Matrix4x4
╡╡ 
.
╡╡ 
identity
╡╡ %
;
╡╡% &
}
╢╢ 	
}
╖╖ 
[
║║ 
CustomEditor
║║ 
(
║║ 
typeof
║║ 
(
║║ 
TerrainTile
║║ $
)
║║$ %
)
║║% &
]
║║& '
public
╗╗ 

class
╗╗ 
TerrainTileEditor
╗╗ "
:
╗╗# $
Editor
╗╗% +
{
╝╝ 
private
╜╜ 
TerrainTile
╜╜ 
tile
╜╜  
{
╜╜! "
get
╜╜# &
{
╜╜' (
return
╜╜) /
(
╜╜0 1
target
╜╜1 7
as
╜╜8 :
TerrainTile
╜╜; F
)
╜╜F G
;
╜╜G H
}
╜╜I J
}
╜╜K L
public
┐┐ 
void
┐┐ 
OnEnable
┐┐ 
(
┐┐ 
)
┐┐ 
{
└└ 	
if
┴┴ 
(
┴┴ 
tile
┴┴ 
.
┴┴ 
	m_Sprites
┴┴ 
==
┴┴ !
null
┴┴" &
||
┴┴' )
tile
┴┴* .
.
┴┴. /
	m_Sprites
┴┴/ 8
.
┴┴8 9
Length
┴┴9 ?
!=
┴┴@ B
$num
┴┴C E
)
┴┴E F
{
┬┬ 
tile
├├ 
.
├├ 
	m_Sprites
├├ 
=
├├  
new
├├! $
Sprite
├├% +
[
├├+ ,
$num
├├, .
]
├├. /
;
├├/ 0
EditorUtility
── 
.
── 
SetDirty
── &
(
──& '
tile
──' +
)
──+ ,
;
──, -
}
┼┼ 
}
╞╞ 	
public
╔╔ 
override
╔╔ 
void
╔╔ 
OnInspectorGUI
╔╔ +
(
╔╔+ ,
)
╔╔, -
{
╩╩ 	
EditorGUILayout
╦╦ 
.
╦╦ 

LabelField
╦╦ &
(
╦╦& '
$str
╦╦' a
)
╦╦a b
;
╦╦b c
EditorGUILayout
╠╠ 
.
╠╠ 
Space
╠╠ !
(
╠╠! "
)
╠╠" #
;
╠╠# $
float
╬╬ 
oldLabelWidth
╬╬ 
=
╬╬  !
EditorGUIUtility
╬╬" 2
.
╬╬2 3

labelWidth
╬╬3 =
;
╬╬= >
EditorGUIUtility
╧╧ 
.
╧╧ 

labelWidth
╧╧ '
=
╧╧( )
$num
╧╧* -
;
╧╧- .
	EditorGUI
╤╤ 
.
╤╤ 
BeginChangeCheck
╤╤ &
(
╤╤& '
)
╤╤' (
;
╤╤( )
tile
╥╥ 
.
╥╥ 
	m_Sprites
╥╥ 
[
╥╥ 
$num
╥╥ 
]
╥╥ 
=
╥╥ 
(
╥╥  !
Sprite
╥╥! '
)
╥╥' (
EditorGUILayout
╥╥) 8
.
╥╥8 9
ObjectField
╥╥9 D
(
╥╥D E
$str
╥╥E M
,
╥╥M N
tile
╥╥O S
.
╥╥S T
	m_Sprites
╥╥T ]
[
╥╥] ^
$num
╥╥^ _
]
╥╥_ `
,
╥╥` a
typeof
╥╥b h
(
╥╥h i
Sprite
╥╥i o
)
╥╥o p
,
╥╥p q
false
╥╥r w
,
╥╥w x
null
╥╥y }
)
╥╥} ~
;
╥╥~ 
tile
╙╙ 
.
╙╙ 
	m_Sprites
╙╙ 
[
╙╙ 
$num
╙╙ 
]
╙╙ 
=
╙╙ 
(
╙╙  !
Sprite
╙╙! '
)
╙╙' (
EditorGUILayout
╙╙) 8
.
╙╙8 9
ObjectField
╙╙9 D
(
╙╙D E
$str
╙╙E R
,
╙╙R S
tile
╙╙T X
.
╙╙X Y
	m_Sprites
╙╙Y b
[
╙╙b c
$num
╙╙c d
]
╙╙d e
,
╙╙e f
typeof
╙╙g m
(
╙╙m n
Sprite
╙╙n t
)
╙╙t u
,
╙╙u v
false
╙╙w |
,
╙╙| }
null╙╙~ В
)╙╙В Г
;╙╙Г Д
tile
╘╘ 
.
╘╘ 
	m_Sprites
╘╘ 
[
╘╘ 
$num
╘╘ 
]
╘╘ 
=
╘╘ 
(
╘╘  !
Sprite
╘╘! '
)
╘╘' (
EditorGUILayout
╘╘) 8
.
╘╘8 9
ObjectField
╘╘9 D
(
╘╘D E
$str
╘╘E _
,
╘╘_ `
tile
╘╘a e
.
╘╘e f
	m_Sprites
╘╘f o
[
╘╘o p
$num
╘╘p q
]
╘╘q r
,
╘╘r s
typeof
╘╘t z
(
╘╘z {
Sprite╘╘{ Б
)╘╘Б В
,╘╘В Г
false╘╘Д Й
,╘╘Й К
null╘╘Л П
)╘╘П Р
;╘╘Р С
tile
╒╒ 
.
╒╒ 
	m_Sprites
╒╒ 
[
╒╒ 
$num
╒╒ 
]
╒╒ 
=
╒╒ 
(
╒╒  !
Sprite
╒╒! '
)
╒╒' (
EditorGUILayout
╒╒) 8
.
╒╒8 9
ObjectField
╒╒9 D
(
╒╒D E
$str
╒╒E Y
,
╒╒Y Z
tile
╒╒[ _
.
╒╒_ `
	m_Sprites
╒╒` i
[
╒╒i j
$num
╒╒j k
]
╒╒k l
,
╒╒l m
typeof
╒╒n t
(
╒╒t u
Sprite
╒╒u {
)
╒╒{ |
,
╒╒| }
false╒╒~ Г
,╒╒Г Д
null╒╒Е Й
)╒╒Й К
;╒╒К Л
tile
╓╓ 
.
╓╓ 
	m_Sprites
╓╓ 
[
╓╓ 
$num
╓╓ 
]
╓╓ 
=
╓╓ 
(
╓╓  !
Sprite
╓╓! '
)
╓╓' (
EditorGUILayout
╓╓) 8
.
╓╓8 9
ObjectField
╓╓9 D
(
╓╓D E
$str
╓╓E Y
,
╓╓Y Z
tile
╓╓[ _
.
╓╓_ `
	m_Sprites
╓╓` i
[
╓╓i j
$num
╓╓j k
]
╓╓k l
,
╓╓l m
typeof
╓╓n t
(
╓╓t u
Sprite
╓╓u {
)
╓╓{ |
,
╓╓| }
false╓╓~ Г
,╓╓Г Д
null╓╓Е Й
)╓╓Й К
;╓╓К Л
tile
╫╫ 
.
╫╫ 
	m_Sprites
╫╫ 
[
╫╫ 
$num
╫╫ 
]
╫╫ 
=
╫╫ 
(
╫╫  !
Sprite
╫╫! '
)
╫╫' (
EditorGUILayout
╫╫) 8
.
╫╫8 9
ObjectField
╫╫9 D
(
╫╫D E
$str
╫╫E _
,
╫╫_ `
tile
╫╫a e
.
╫╫e f
	m_Sprites
╫╫f o
[
╫╫o p
$num
╫╫p q
]
╫╫q r
,
╫╫r s
typeof
╫╫t z
(
╫╫z {
Sprite╫╫{ Б
)╫╫Б В
,╫╫В Г
false╫╫Д Й
,╫╫Й К
null╫╫Л П
)╫╫П Р
;╫╫Р С
tile
╪╪ 
.
╪╪ 
	m_Sprites
╪╪ 
[
╪╪ 
$num
╪╪ 
]
╪╪ 
=
╪╪ 
(
╪╪  !
Sprite
╪╪! '
)
╪╪' (
EditorGUILayout
╪╪) 8
.
╪╪8 9
ObjectField
╪╪9 D
(
╪╪D E
$str
╪╪E d
,
╪╪d e
tile
╪╪f j
.
╪╪j k
	m_Sprites
╪╪k t
[
╪╪t u
$num
╪╪u v
]
╪╪v w
,
╪╪w x
typeof
╪╪y 
(╪╪ А
Sprite╪╪А Ж
)╪╪Ж З
,╪╪З И
false╪╪Й О
,╪╪О П
null╪╪Р Ф
)╪╪Ф Х
;╪╪Х Ц
tile
┘┘ 
.
┘┘ 
	m_Sprites
┘┘ 
[
┘┘ 
$num
┘┘ 
]
┘┘ 
=
┘┘ 
(
┘┘  !
Sprite
┘┘! '
)
┘┘' (
EditorGUILayout
┘┘) 8
.
┘┘8 9
ObjectField
┘┘9 D
(
┘┘D E
$str
┘┘E d
,
┘┘d e
tile
┘┘f j
.
┘┘j k
	m_Sprites
┘┘k t
[
┘┘t u
$num
┘┘u v
]
┘┘v w
,
┘┘w x
typeof
┘┘y 
(┘┘ А
Sprite┘┘А Ж
)┘┘Ж З
,┘┘З И
false┘┘Й О
,┘┘О П
null┘┘Р Ф
)┘┘Ф Х
;┘┘Х Ц
tile
┌┌ 
.
┌┌ 
	m_Sprites
┌┌ 
[
┌┌ 
$num
┌┌ 
]
┌┌ 
=
┌┌ 
(
┌┌  !
Sprite
┌┌! '
)
┌┌' (
EditorGUILayout
┌┌) 8
.
┌┌8 9
ObjectField
┌┌9 D
(
┌┌D E
$str
┌┌E O
,
┌┌O P
tile
┌┌Q U
.
┌┌U V
	m_Sprites
┌┌V _
[
┌┌_ `
$num
┌┌` a
]
┌┌a b
,
┌┌b c
typeof
┌┌d j
(
┌┌j k
Sprite
┌┌k q
)
┌┌q r
,
┌┌r s
false
┌┌t y
,
┌┌y z
null
┌┌{ 
)┌┌ А
;┌┌А Б
tile
██ 
.
██ 
	m_Sprites
██ 
[
██ 
$num
██ 
]
██ 
=
██ 
(
██  !
Sprite
██! '
)
██' (
EditorGUILayout
██) 8
.
██8 9
ObjectField
██9 D
(
██D E
$str
██E S
,
██S T
tile
██U Y
.
██Y Z
	m_Sprites
██Z c
[
██c d
$num
██d e
]
██e f
,
██f g
typeof
██h n
(
██n o
Sprite
██o u
)
██u v
,
██v w
false
██x }
,
██} ~
null██ Г
)██Г Д
;██Д Е
tile
▄▄ 
.
▄▄ 
	m_Sprites
▄▄ 
[
▄▄ 
$num
▄▄ 
]
▄▄ 
=
▄▄  
(
▄▄! "
Sprite
▄▄" (
)
▄▄( )
EditorGUILayout
▄▄* 9
.
▄▄9 :
ObjectField
▄▄: E
(
▄▄E F
$str
▄▄F U
,
▄▄U V
tile
▄▄W [
.
▄▄[ \
	m_Sprites
▄▄\ e
[
▄▄e f
$num
▄▄f h
]
▄▄h i
,
▄▄i j
typeof
▄▄k q
(
▄▄q r
Sprite
▄▄r x
)
▄▄x y
,
▄▄y z
false▄▄{ А
,▄▄А Б
null▄▄В Ж
)▄▄Ж З
;▄▄З И
tile
▌▌ 
.
▌▌ 
	m_Sprites
▌▌ 
[
▌▌ 
$num
▌▌ 
]
▌▌ 
=
▌▌  
(
▌▌! "
Sprite
▌▌" (
)
▌▌( )
EditorGUILayout
▌▌* 9
.
▌▌9 :
ObjectField
▌▌: E
(
▌▌E F
$str
▌▌F \
,
▌▌\ ]
tile
▌▌^ b
.
▌▌b c
	m_Sprites
▌▌c l
[
▌▌l m
$num
▌▌m o
]
▌▌o p
,
▌▌p q
typeof
▌▌r x
(
▌▌x y
Sprite
▌▌y 
)▌▌ А
,▌▌А Б
false▌▌В З
,▌▌З И
null▌▌Й Н
)▌▌Н О
;▌▌О П
tile
▐▐ 
.
▐▐ 
	m_Sprites
▐▐ 
[
▐▐ 
$num
▐▐ 
]
▐▐ 
=
▐▐  
(
▐▐! "
Sprite
▐▐" (
)
▐▐( )
EditorGUILayout
▐▐* 9
.
▐▐9 :
ObjectField
▐▐: E
(
▐▐E F
$str
▐▐F \
,
▐▐\ ]
tile
▐▐^ b
.
▐▐b c
	m_Sprites
▐▐c l
[
▐▐l m
$num
▐▐m o
]
▐▐o p
,
▐▐p q
typeof
▐▐r x
(
▐▐x y
Sprite
▐▐y 
)▐▐ А
,▐▐А Б
false▐▐В З
,▐▐З И
null▐▐Й Н
)▐▐Н О
;▐▐О П
tile
▀▀ 
.
▀▀ 
	m_Sprites
▀▀ 
[
▀▀ 
$num
▀▀ 
]
▀▀ 
=
▀▀  
(
▀▀! "
Sprite
▀▀" (
)
▀▀( )
EditorGUILayout
▀▀* 9
.
▀▀9 :
ObjectField
▀▀: E
(
▀▀E F
$str
▀▀F R
,
▀▀R S
tile
▀▀T X
.
▀▀X Y
	m_Sprites
▀▀Y b
[
▀▀b c
$num
▀▀c e
]
▀▀e f
,
▀▀f g
typeof
▀▀h n
(
▀▀n o
Sprite
▀▀o u
)
▀▀u v
,
▀▀v w
false
▀▀x }
,
▀▀} ~
null▀▀ Г
)▀▀Г Д
;▀▀Д Е
tile
рр 
.
рр 
	m_Sprites
рр 
[
рр 
$num
рр 
]
рр 
=
рр  
(
рр! "
Sprite
рр" (
)
рр( )
EditorGUILayout
рр* 9
.
рр9 :
ObjectField
рр: E
(
ррE F
$str
ррF M
,
ррM N
tile
ррO S
.
ррS T
	m_Sprites
ррT ]
[
рр] ^
$num
рр^ `
]
рр` a
,
ррa b
typeof
ррc i
(
ррi j
Sprite
ррj p
)
ррp q
,
ррq r
false
ррs x
,
ррx y
null
ррz ~
)
рр~ 
;рр А
if
сс 
(
сс 
	EditorGUI
сс 
.
сс 
EndChangeCheck
сс (
(
сс( )
)
сс) *
)
сс* +
EditorUtility
тт 
.
тт 
SetDirty
тт &
(
тт& '
tile
тт' +
)
тт+ ,
;
тт, -
EditorGUIUtility
фф 
.
фф 

labelWidth
фф '
=
фф( )
oldLabelWidth
фф* 7
;
фф7 8
}
хх 	
}
цц 
}шш ║K
иC:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Tiles\WeightedRandomTile\WeightedRandomTile.cs
	namespace 	
UnityEngine
 
. 
Tilemaps 
{ 
[ 
Serializable 
] 
public 

struct 
WeightedSprite  
{ 
public 
Sprite 
Sprite 
; 
public 
int 
Weight 
; 
} 
[ 
Serializable 
] 
[ 
CreateAssetMenu 
( 
fileName 
= 
$str  :
,: ;
menuName< D
=E F
$strG c
)c d
]d e
public 

class 
WeightedRandomTile #
:$ %
Tile& *
{   
[$$ 	
SerializeField$$	 
]$$ 
public$$ 
WeightedSprite$$  .
[$$. /
]$$/ 0
Sprites$$1 8
;$$8 9
public,, 
override,, 
void,, 
GetTileData,, (
(,,( )

Vector3Int,,) 3
location,,4 <
,,,< =
ITilemap,,> F
tileMap,,G N
,,,N O
ref,,P S
TileData,,T \
tileData,,] e
),,e f
{-- 	
base.. 
... 
GetTileData.. 
(.. 
location.. %
,..% &
tileMap..' .
,... /
ref..0 3
tileData..4 <
)..< =
;..= >
if00 
(00 
Sprites00 
==00 
null00 
||00  "
Sprites00# *
.00* +
Length00+ 1
<=002 4
$num005 6
)006 7
return008 >
;00> ?
long22 
hash22 
=22 
location22  
.22  !
x22! "
;22" #
hash33 
=33 
hash33 
+33 
$num33 $
+33% &
(33' (
hash33( ,
<<33- /
$num330 2
)332 3
;333 4
hash44 
=44 
hash44 
+44 
$num44 $
^44% &
(44' (
hash44( ,
>>44- /
$num440 2
)442 3
;443 4
hash55 
^=55 
location55 
.55 
y55 
;55 
hash66 
=66 
hash66 
+66 
$num66 $
+66% &
(66' (
hash66( ,
<<66- /
$num660 1
)661 2
;662 3
hash77 
=77 
hash77 
+77 
$num77 $
^77% &
(77' (
hash77( ,
<<77- /
$num770 2
)772 3
;773 4
Random88 
.88 
	InitState88 
(88 
(88 
int88 !
)88! "
hash88# '
)88' (
;88( )
var;; 
cumulativeWeight;;  
=;;! "
$num;;# $
;;;$ %
foreach<< 
(<< 
var<< 

spriteInfo<< #
in<<$ &
Sprites<<' .
)<<. /
cumulativeWeight<<0 @
+=<<A C

spriteInfo<<D N
.<<N O
Weight<<O U
;<<U V
var?? 
randomWeight?? 
=?? 
Random?? %
.??% &
Range??& +
(??+ ,
$num??, -
,??- .
cumulativeWeight??/ ?
)??? @
;??@ A
foreach@@ 
(@@ 
var@@ 

spriteInfo@@ #
in@@$ &
Sprites@@' .
)@@. /
{@@0 1
randomWeightAA 
-=AA 

spriteInfoAA  *
.AA* +
WeightAA+ 1
;AA1 2
ifBB 
(BB 
randomWeightBB  
<BB! "
$numBB# $
)BB$ %
{BB& '
tileDataCC 
.CC 
spriteCC #
=CC$ %

spriteInfoCC& 0
.CC0 1
SpriteCC1 7
;CC7 8
breakDD 
;DD 
}EE 
}FF 
}GG 	
}HH 
[KK 
CustomEditorKK 
(KK 
typeofKK 
(KK 
WeightedRandomTileKK +
)KK+ ,
)KK, -
]KK- .
publicLL 

classLL $
WeightedRandomTileEditorLL )
:LL* +
EditorLL, 2
{MM 
privateNN 
SerializedPropertyNN "
m_ColorNN# *
;NN* +
privateOO 
SerializedPropertyOO "
m_ColliderTypeOO# 1
;OO1 2
privateQQ 
WeightedRandomTileQQ "
TileQQ# '
{QQ( )
getRR 
{RR 
returnRR 
targetRR 
asRR  "
WeightedRandomTileRR# 5
;RR5 6
}RR7 8
}SS 	
publicUU 
voidUU 
OnEnableUU 
(UU 
)UU 
{VV 	
m_ColorWW 
=WW 
serializedObjectWW &
.WW& '
FindPropertyWW' 3
(WW3 4
$strWW4 =
)WW= >
;WW> ?
m_ColliderTypeXX 
=XX 
serializedObjectXX -
.XX- .
FindPropertyXX. :
(XX: ;
$strXX; K
)XXK L
;XXL M
}YY 	
public[[ 
override[[ 
void[[ 
OnInspectorGUI[[ +
([[+ ,
)[[, -
{\\ 	
serializedObject]] 
.]] 
Update]] #
(]]# $
)]]$ %
;]]% &
	EditorGUI__ 
.__ 
BeginChangeCheck__ &
(__& '
)__' (
;__( )
intaa 
countaa 
=aa 
EditorGUILayoutaa '
.aa' (
DelayedIntFieldaa( 7
(aa7 8
$straa8 K
,aaK L
TileaaM Q
.aaQ R
SpritesaaR Y
!=aaZ \
nullaa] a
?aab c
Tileaad h
.aah i
Spritesaai p
.aap q
Lengthaaq w
:aax y
$numaaz {
)aa{ |
;aa| }
ifbb 
(bb 
countbb 
<bb 
$numbb 
)bb 
countcc 
=cc 
$numcc 
;cc 
ifee 
(ee 
Tileee 
.ee 
Spritesee 
==ee 
nullee  $
||ee% '
Tileee( ,
.ee, -
Spritesee- 4
.ee4 5
Lengthee5 ;
!=ee< >
countee? D
)eeD E
{ff 
Arraygg 
.gg 
Resizegg 
(gg 
refgg  
Tilegg! %
.gg% &
Spritesgg& -
,gg- .
countgg/ 4
)gg4 5
;gg5 6
}hh 
ifjj 
(jj 
countjj 
==jj 
$numjj 
)jj 
returnkk 
;kk 
EditorGUILayoutmm 
.mm 

LabelFieldmm &
(mm& '
$strmm' >
)mm> ?
;mm? @
EditorGUILayoutnn 
.nn 
Spacenn !
(nn! "
)nn" #
;nn# $
forpp 
(pp 
intpp 
ipp 
=pp 
$numpp 
;pp 
ipp 
<pp 
countpp  %
;pp% &
ipp' (
++pp( *
)pp* +
{qq 
Tilerr 
.rr 
Spritesrr 
[rr 
irr 
]rr 
.rr  
Spriterr  &
=rr' (
(rr) *
Spriterr* 0
)rr0 1
EditorGUILayoutrr2 A
.rrA B
ObjectFieldrrB M
(rrM N
$strrrN W
+rrX Y
(rrZ [
irr[ \
+rr] ^
$numrr_ `
)rr` a
,rra b
Tilerrc g
.rrg h
Spritesrrh o
[rro p
irrp q
]rrq r
.rrr s
Spriterrs y
,rry z
typeof	rr{ Б
(
rrБ В
Sprite
rrВ И
)
rrИ Й
,
rrЙ К
false
rrЛ Р
,
rrР С
null
rrТ Ц
)
rrЦ Ч
;
rrЧ Ш
Tiless 
.ss 
Spritesss 
[ss 
iss 
]ss 
.ss  
Weightss  &
=ss' (
EditorGUILayoutss) 8
.ss8 9
IntFieldss9 A
(ssA B
$strssB K
+ssL M
(ssN O
issO P
+ssQ R
$numssS T
)ssT U
,ssU V
TilessW [
.ss[ \
Spritesss\ c
[ssc d
issd e
]sse f
.ssf g
Weightssg m
)ssm n
;ssn o
}tt 
EditorGUILayoutvv 
.vv 
Spacevv !
(vv! "
)vv" #
;vv# $
EditorGUILayoutxx 
.xx 
PropertyFieldxx )
(xx) *
m_Colorxx* 1
)xx1 2
;xx2 3
EditorGUILayoutyy 
.yy 
PropertyFieldyy )
(yy) *
m_ColliderTypeyy* 8
)yy8 9
;yy9 :
if{{ 
({{ 
	EditorGUI{{ 
.{{ 
EndChangeCheck{{ (
({{( )
){{) *
){{* +
{|| 
EditorUtility}} 
.}} 
SetDirty}} &
(}}& '
Tile}}' +
)}}+ ,
;}}, -
serializedObject~~  
.~~  !#
ApplyModifiedProperties~~! 8
(~~8 9
)~~9 :
;~~: ;
} 
}
АА 	
}
ББ 
}ГГ 