�G
�C:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Brushes\TintTextureGenerator.cs
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
.	KK �
white
KK� �
)
KK� �
)
KK� �
;
KK� �
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
�� 
Shader
�� 
.
�� 
SetGlobalTexture
�� 
(
��  
$str
��  *
,
��* +
m_TintTexture
��, 9
)
��9 :
;
��: ;
Shader
�� 
.
�� 
SetGlobalFloat
�� 
(
�� 
$str
�� ,
,
��, -
k_TintMapSize
��. ;
)
��; <
;
��< =
}
�� 
}�� ��
�C:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\GridInformation\GridInformation.cs
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
GridInformationValue	&& �
>
&&� �
(
&&� �
)
&&� �
;
&&� �
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
�� ,
.
��, -
Add
��- 0
(
��0 1
kvp
��1 4
.
��4 5
Key
��5 8
)
��8 9
;
��9 :$
m_PositionDoubleValues
�� .
.
��. /
Add
��/ 2
(
��2 3
(
��3 4
double
��4 :
)
��: ;
kvp
��; >
.
��> ?
Value
��? D
.
��D E
data
��E I
)
��I J
;
��J K
break
�� 
;
�� 
case
�� !
GridInformationType
�� ,
.
��, -
Color
��- 2
:
��2 3!
m_PositionColorKeys
�� +
.
��+ ,
Add
��, /
(
��/ 0
kvp
��0 3
.
��3 4
Key
��4 7
)
��7 8
;
��8 9#
m_PositionColorValues
�� -
.
��- .
Add
��. 1
(
��1 2
(
��2 3
Color
��3 8
)
��8 9
kvp
��9 <
.
��< =
Value
��= B
.
��B C
data
��C G
)
��G H
;
��H I
break
�� 
;
�� 
default
�� 
:
�� "
m_PositionObjectKeys
�� ,
.
��, -
Add
��- 0
(
��0 1
kvp
��1 4
.
��4 5
Key
��5 8
)
��8 9
;
��9 :$
m_PositionObjectValues
�� .
.
��. /
Add
��/ 2
(
��2 3
kvp
��3 6
.
��6 7
Value
��7 <
.
��< =
data
��= A
as
��B D
Object
��E K
)
��K L
;
��L M
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
void
�� ,
ISerializationCallbackReceiver
�� +
.
��+ , 
OnAfterDeserialize
��, >
(
��> ?
)
��? @
{
�� 	"
m_PositionProperties
��  
.
��  !
Clear
��! &
(
��& '
)
��' (
;
��( )
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
!=
��  
Math
��! %
.
��% &
Min
��& )
(
��) *
m_PositionIntKeys
��* ;
.
��; <
Count
��< A
,
��A B!
m_PositionIntValues
��C V
.
��V W
Count
��W \
)
��\ ]
;
��] ^
i
��_ `
++
��` b
)
��b c
{
�� "
GridInformationValue
�� $
positionValue
��% 2
;
��2 3
positionValue
�� 
.
�� 
type
�� "
=
��# $!
GridInformationType
��% 8
.
��8 9
Integer
��9 @
;
��@ A
positionValue
�� 
.
�� 
data
�� "
=
��# $!
m_PositionIntValues
��% 8
[
��8 9
i
��9 :
]
��: ;
;
��; <"
m_PositionProperties
�� $
.
��$ %
Add
��% (
(
��( )
m_PositionIntKeys
��) :
[
��: ;
i
��; <
]
��< =
,
��= >
positionValue
��? L
)
��L M
;
��M N
}
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
!=
��  
Math
��! %
.
��% &
Min
��& )
(
��) *"
m_PositionStringKeys
��* >
.
��> ?
Count
��? D
,
��D E$
m_PositionStringValues
��F \
.
��\ ]
Count
��] b
)
��b c
;
��c d
i
��e f
++
��f h
)
��h i
{
�� "
GridInformationValue
�� $
positionValue
��% 2
;
��2 3
positionValue
�� 
.
�� 
type
�� "
=
��# $!
GridInformationType
��% 8
.
��8 9
String
��9 ?
;
��? @
positionValue
�� 
.
�� 
data
�� "
=
��# $$
m_PositionStringValues
��% ;
[
��; <
i
��< =
]
��= >
;
��> ?"
m_PositionProperties
�� $
.
��$ %
Add
��% (
(
��( )"
m_PositionStringKeys
��) =
[
��= >
i
��> ?
]
��? @
,
��@ A
positionValue
��B O
)
��O P
;
��P Q
}
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
!=
��  
Math
��! %
.
��% &
Min
��& )
(
��) *!
m_PositionFloatKeys
��* =
.
��= >
Count
��> C
,
��C D#
m_PositionFloatValues
��E Z
.
��Z [
Count
��[ `
)
��` a
;
��a b
i
��c d
++
��d f
)
��f g
{
�� "
GridInformationValue
�� $
positionValue
��% 2
;
��2 3
positionValue
�� 
.
�� 
type
�� "
=
��# $!
GridInformationType
��% 8
.
��8 9
Float
��9 >
;
��> ?
positionValue
�� 
.
�� 
data
�� "
=
��# $#
m_PositionFloatValues
��% :
[
��: ;
i
��; <
]
��< =
;
��= >"
m_PositionProperties
�� $
.
��$ %
Add
��% (
(
��( )!
m_PositionFloatKeys
��) <
[
��< =
i
��= >
]
��> ?
,
��? @
positionValue
��A N
)
��N O
;
��O P
}
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
!=
��  
Math
��! %
.
��% &
Min
��& )
(
��) *"
m_PositionDoubleKeys
��* >
.
��> ?
Count
��? D
,
��D E$
m_PositionDoubleValues
��F \
.
��\ ]
Count
��] b
)
��b c
;
��c d
i
��e f
++
��f h
)
��h i
{
�� "
GridInformationValue
�� $
positionValue
��% 2
;
��2 3
positionValue
�� 
.
�� 
type
�� "
=
��# $!
GridInformationType
��% 8
.
��8 9
Double
��9 ?
;
��? @
positionValue
�� 
.
�� 
data
�� "
=
��# $$
m_PositionDoubleValues
��% ;
[
��; <
i
��< =
]
��= >
;
��> ?"
m_PositionProperties
�� $
.
��$ %
Add
��% (
(
��( )"
m_PositionDoubleKeys
��) =
[
��= >
i
��> ?
]
��? @
,
��@ A
positionValue
��B O
)
��O P
;
��P Q
}
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
!=
��  
Math
��! %
.
��% &
Min
��& )
(
��) *"
m_PositionObjectKeys
��* >
.
��> ?
Count
��? D
,
��D E$
m_PositionObjectValues
��F \
.
��\ ]
Count
��] b
)
��b c
;
��c d
i
��e f
++
��f h
)
��h i
{
�� "
GridInformationValue
�� $
positionValue
��% 2
;
��2 3
positionValue
�� 
.
�� 
type
�� "
=
��# $!
GridInformationType
��% 8
.
��8 9
UnityObject
��9 D
;
��D E
positionValue
�� 
.
�� 
data
�� "
=
��# $$
m_PositionObjectValues
��% ;
[
��; <
i
��< =
]
��= >
;
��> ?"
m_PositionProperties
�� $
.
��$ %
Add
��% (
(
��( )"
m_PositionObjectKeys
��) =
[
��= >
i
��> ?
]
��? @
,
��@ A
positionValue
��B O
)
��O P
;
��P Q
}
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
!=
��  
Math
��! %
.
��% &
Min
��& )
(
��) *!
m_PositionColorKeys
��* =
.
��= >
Count
��> C
,
��C D#
m_PositionColorValues
��E Z
.
��Z [
Count
��[ `
)
��` a
;
��a b
i
��c d
++
��d f
)
��f g
{
�� "
GridInformationValue
�� $
positionValue
��% 2
;
��2 3
positionValue
�� 
.
�� 
type
�� "
=
��# $!
GridInformationType
��% 8
.
��8 9
Color
��9 >
;
��> ?
positionValue
�� 
.
�� 
data
�� "
=
��# $#
m_PositionColorValues
��% :
[
��: ;
i
��; <
]
��< =
;
��= >"
m_PositionProperties
�� $
.
��$ %
Add
��% (
(
��( )!
m_PositionColorKeys
��) <
[
��< =
i
��= >
]
��> ?
,
��? @
positionValue
��A N
)
��N O
;
��O P
}
�� 
}
�� 	
public
�� 
bool
�� !
SetPositionProperty
�� '
<
��' (
T
��( )
>
��) *
(
��* +

Vector3Int
��+ 5
position
��6 >
,
��> ?
String
��@ F
name
��G K
,
��K L
T
��M N
positionProperty
��O _
)
��_ `
{
�� 	
throw
�� 
new
�� %
NotImplementedException
�� -
(
��- .
$str
��. d
)
��d e
;
��e f
}
�� 	
public
�� 
bool
�� !
SetPositionProperty
�� '
(
��' (

Vector3Int
��( 2
position
��3 ;
,
��; <
String
��= C
name
��D H
,
��H I
int
��J M
positionProperty
��N ^
)
��^ _
{
�� 	
return
�� !
SetPositionProperty
�� &
(
��& '
position
��' /
,
��/ 0
name
��1 5
,
��5 6!
GridInformationType
��7 J
.
��J K
Integer
��K R
,
��R S
positionProperty
��T d
)
��d e
;
��e f
}
�� 	
public
�� 
bool
�� !
SetPositionProperty
�� '
(
��' (

Vector3Int
��( 2
position
��3 ;
,
��; <
String
��= C
name
��D H
,
��H I
string
��J P
positionProperty
��Q a
)
��a b
{
�� 	
return
�� !
SetPositionProperty
�� &
(
��& '
position
��' /
,
��/ 0
name
��1 5
,
��5 6!
GridInformationType
��7 J
.
��J K
String
��K Q
,
��Q R
positionProperty
��S c
)
��c d
;
��d e
}
�� 	
public
�� 
bool
�� !
SetPositionProperty
�� '
(
��' (

Vector3Int
��( 2
position
��3 ;
,
��; <
String
��= C
name
��D H
,
��H I
float
��J O
positionProperty
��P `
)
��` a
{
�� 	
return
�� !
SetPositionProperty
�� &
(
��& '
position
��' /
,
��/ 0
name
��1 5
,
��5 6!
GridInformationType
��7 J
.
��J K
Float
��K P
,
��P Q
positionProperty
��R b
)
��b c
;
��c d
}
�� 	
public
�� 
bool
�� !
SetPositionProperty
�� '
(
��' (

Vector3Int
��( 2
position
��3 ;
,
��; <
String
��= C
name
��D H
,
��H I
double
��J P
positionProperty
��Q a
)
��a b
{
�� 	
return
�� !
SetPositionProperty
�� &
(
��& '
position
��' /
,
��/ 0
name
��1 5
,
��5 6!
GridInformationType
��7 J
.
��J K
Double
��K Q
,
��Q R
positionProperty
��S c
)
��c d
;
��d e
}
�� 	
public
�� 
bool
�� !
SetPositionProperty
�� '
(
��' (

Vector3Int
��( 2
position
��3 ;
,
��; <
String
��= C
name
��D H
,
��H I
UnityEngine
��J U
.
��U V
Object
��V \
positionProperty
��] m
)
��m n
{
�� 	
return
�� !
SetPositionProperty
�� &
(
��& '
position
��' /
,
��/ 0
name
��1 5
,
��5 6!
GridInformationType
��7 J
.
��J K
UnityObject
��K V
,
��V W
positionProperty
��X h
)
��h i
;
��i j
}
�� 	
public
�� 
bool
�� !
SetPositionProperty
�� '
(
��' (

Vector3Int
��( 2
position
��3 ;
,
��; <
String
��= C
name
��D H
,
��H I
Color
��J O
positionProperty
��P `
)
��` a
{
�� 	
return
�� !
SetPositionProperty
�� &
(
��& '
position
��' /
,
��/ 0
name
��1 5
,
��5 6!
GridInformationType
��7 J
.
��J K
Color
��K P
,
��P Q
positionProperty
��R b
)
��b c
;
��c d
}
�� 	
private
�� 
bool
�� !
SetPositionProperty
�� (
(
��( )

Vector3Int
��) 3
position
��4 <
,
��< =
String
��> D
name
��E I
,
��I J!
GridInformationType
��K ^
dataType
��_ g
,
��g h
System
��i o
.
��o p
Object
��p v
positionProperty��w �
)��� �
{
�� 	
Grid
�� 
grid
�� 
=
�� "
GetComponentInParent
�� ,
<
��, -
Grid
��- 1
>
��1 2
(
��2 3
)
��3 4
;
��4 5
if
�� 
(
�� 
grid
�� 
!=
�� 
null
�� 
&&
�� 
positionProperty
��  0
!=
��1 3
null
��4 8
)
��8 9
{
��  
GridInformationKey
�� "
positionKey
��# .
;
��. /
positionKey
�� 
.
�� 
position
�� $
=
��% &
position
��' /
;
��/ 0
positionKey
�� 
.
�� 
name
��  
=
��! "
name
��# '
;
��' ("
GridInformationValue
�� $
positionValue
��% 2
;
��2 3
positionValue
�� 
.
�� 
type
�� "
=
��# $
dataType
��% -
;
��- .
positionValue
�� 
.
�� 
data
�� "
=
��# $
positionProperty
��% 5
;
��5 6"
m_PositionProperties
�� $
[
��$ %
positionKey
��% 0
]
��0 1
=
��2 3
positionValue
��4 A
;
��A B
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
T
�� !
GetPositionProperty
�� $
<
��$ %
T
��% &
>
��& '
(
��' (

Vector3Int
��( 2
position
��3 ;
,
��; <
String
��= C
name
��D H
,
��H I
T
��J K
defaultValue
��L X
)
��X Y
where
��Z _
T
��` a
:
��b c
UnityEngine
��d o
.
��o p
Object
��p v
{
�� 	 
GridInformationKey
�� 
positionKey
�� *
;
��* +
positionKey
�� 
.
�� 
position
��  
=
��! "
position
��# +
;
��+ ,
positionKey
�� 
.
�� 
name
�� 
=
�� 
name
�� #
;
��# $"
GridInformationValue
��  
positionValue
��! .
;
��. /
if
�� 
(
�� "
m_PositionProperties
�� $
.
��$ %
TryGetValue
��% 0
(
��0 1
positionKey
��1 <
,
��< =
out
��> A
positionValue
��B O
)
��O P
)
��P Q
{
�� 
if
�� 
(
�� 
positionValue
�� !
.
��! "
type
��" &
!=
��' )!
GridInformationType
��* =
.
��= >
UnityObject
��> I
)
��I J
throw
�� 
new
�� "
InvalidCastException
�� 2
(
��2 3
$str
��3 m
)
��m n
;
��n o
return
�� 
positionValue
�� $
.
��$ %
data
��% )
as
��* ,
T
��- .
;
��. /
}
�� 
return
�� 
defaultValue
�� 
;
��  
}
�� 	
public
�� 
int
�� !
GetPositionProperty
�� &
(
��& '

Vector3Int
��' 1
position
��2 :
,
��: ;
String
��< B
name
��C G
,
��G H
int
��I L
defaultValue
��M Y
)
��Y Z
{
�� 	 
GridInformationKey
�� 
positionKey
�� *
;
��* +
positionKey
�� 
.
�� 
position
��  
=
��! "
position
��# +
;
��+ ,
positionKey
�� 
.
�� 
name
�� 
=
�� 
name
�� #
;
��# $"
GridInformationValue
��  
positionValue
��! .
;
��. /
if
�� 
(
�� "
m_PositionProperties
�� $
.
��$ %
TryGetValue
��% 0
(
��0 1
positionKey
��1 <
,
��< =
out
��> A
positionValue
��B O
)
��O P
)
��P Q
{
�� 
if
�� 
(
�� 
positionValue
�� !
.
��! "
type
��" &
!=
��' )!
GridInformationType
��* =
.
��= >
Integer
��> E
)
��E F
throw
�� 
new
�� "
InvalidCastException
�� 2
(
��2 3
$str
��3 m
)
��m n
;
��n o
return
�� 
(
�� 
int
�� 
)
�� 
positionValue
�� )
.
��) *
data
��* .
;
��. /
}
�� 
return
�� 
defaultValue
�� 
;
��  
}
�� 	
public
�� 
string
�� !
GetPositionProperty
�� )
(
��) *

Vector3Int
��* 4
position
��5 =
,
��= >
String
��? E
name
��F J
,
��J K
string
��L R
defaultValue
��S _
)
��_ `
{
�� 	 
GridInformationKey
�� 
positionKey
�� *
;
��* +
positionKey
�� 
.
�� 
position
��  
=
��! "
position
��# +
;
��+ ,
positionKey
�� 
.
�� 
name
�� 
=
�� 
name
�� #
;
��# $"
GridInformationValue
��  
positionValue
��! .
;
��. /
if
�� 
(
�� "
m_PositionProperties
�� $
.
��$ %
TryGetValue
��% 0
(
��0 1
positionKey
��1 <
,
��< =
out
��> A
positionValue
��B O
)
��O P
)
��P Q
{
�� 
if
�� 
(
�� 
positionValue
�� !
.
��! "
type
��" &
!=
��' )!
GridInformationType
��* =
.
��= >
String
��> D
)
��D E
throw
�� 
new
�� "
InvalidCastException
�� 2
(
��2 3
$str
��3 m
)
��m n
;
��n o
return
�� 
(
�� 
string
�� 
)
�� 
positionValue
�� ,
.
��, -
data
��- 1
;
��1 2
}
�� 
return
�� 
defaultValue
�� 
;
��  
}
�� 	
public
�� 
float
�� !
GetPositionProperty
�� (
(
��( )

Vector3Int
��) 3
position
��4 <
,
��< =
String
��> D
name
��E I
,
��I J
float
��K P
defaultValue
��Q ]
)
��] ^
{
�� 	 
GridInformationKey
�� 
positionKey
�� *
;
��* +
positionKey
�� 
.
�� 
position
��  
=
��! "
position
��# +
;
��+ ,
positionKey
�� 
.
�� 
name
�� 
=
�� 
name
�� #
;
��# $"
GridInformationValue
��  
positionValue
��! .
;
��. /
if
�� 
(
�� "
m_PositionProperties
�� $
.
��$ %
TryGetValue
��% 0
(
��0 1
positionKey
��1 <
,
��< =
out
��> A
positionValue
��B O
)
��O P
)
��P Q
{
�� 
if
�� 
(
�� 
positionValue
�� !
.
��! "
type
��" &
!=
��' )!
GridInformationType
��* =
.
��= >
Float
��> C
)
��C D
throw
�� 
new
�� "
InvalidCastException
�� 2
(
��2 3
$str
��3 m
)
��m n
;
��n o
return
�� 
(
�� 
float
�� 
)
�� 
positionValue
�� +
.
��+ ,
data
��, 0
;
��0 1
}
�� 
return
�� 
defaultValue
�� 
;
��  
}
�� 	
public
�� 
double
�� !
GetPositionProperty
�� )
(
��) *

Vector3Int
��* 4
position
��5 =
,
��= >
String
��? E
name
��F J
,
��J K
double
��L R
defaultValue
��S _
)
��_ `
{
�� 	 
GridInformationKey
�� 
positionKey
�� *
;
��* +
positionKey
�� 
.
�� 
position
��  
=
��! "
position
��# +
;
��+ ,
positionKey
�� 
.
�� 
name
�� 
=
�� 
name
�� #
;
��# $"
GridInformationValue
��  
positionValue
��! .
;
��. /
if
�� 
(
�� "
m_PositionProperties
�� $
.
��$ %
TryGetValue
��% 0
(
��0 1
positionKey
��1 <
,
��< =
out
��> A
positionValue
��B O
)
��O P
)
��P Q
{
�� 
if
�� 
(
�� 
positionValue
�� !
.
��! "
type
��" &
!=
��' )!
GridInformationType
��* =
.
��= >
Double
��> D
)
��D E
throw
�� 
new
�� "
InvalidCastException
�� 2
(
��2 3
$str
��3 m
)
��m n
;
��n o
return
�� 
(
�� 
double
�� 
)
�� 
positionValue
�� ,
.
��, -
data
��- 1
;
��1 2
}
�� 
return
�� 
defaultValue
�� 
;
��  
}
�� 	
public
�� 
Color
�� !
GetPositionProperty
�� (
(
��( )

Vector3Int
��) 3
position
��4 <
,
��< =
String
��> D
name
��E I
,
��I J
Color
��K P
defaultValue
��Q ]
)
��] ^
{
�� 	 
GridInformationKey
�� 
positionKey
�� *
;
��* +
positionKey
�� 
.
�� 
position
��  
=
��! "
position
��# +
;
��+ ,
positionKey
�� 
.
�� 
name
�� 
=
�� 
name
�� #
;
��# $"
GridInformationValue
��  
positionValue
��! .
;
��. /
if
�� 
(
�� "
m_PositionProperties
�� $
.
��$ %
TryGetValue
��% 0
(
��0 1
positionKey
��1 <
,
��< =
out
��> A
positionValue
��B O
)
��O P
)
��P Q
{
�� 
if
�� 
(
�� 
positionValue
�� !
.
��! "
type
��" &
!=
��' )!
GridInformationType
��* =
.
��= >
Color
��> C
)
��C D
throw
�� 
new
�� "
InvalidCastException
�� 2
(
��2 3
$str
��3 m
)
��m n
;
��n o
return
�� 
(
�� 
Color
�� 
)
�� 
positionValue
�� +
.
��+ ,
data
��, 0
;
��0 1
}
�� 
return
�� 
defaultValue
�� 
;
��  
}
�� 	
public
�� 
bool
�� #
ErasePositionProperty
�� )
(
��) *

Vector3Int
��* 4
position
��5 =
,
��= >
String
��? E
name
��F J
)
��J K
{
�� 	 
GridInformationKey
�� 
positionKey
�� *
;
��* +
positionKey
�� 
.
�� 
position
��  
=
��! "
position
��# +
;
��+ ,
positionKey
�� 
.
�� 
name
�� 
=
�� 
name
�� #
;
��# $
return
�� "
m_PositionProperties
�� '
.
��' (
Remove
��( .
(
��. /
positionKey
��/ :
)
��: ;
;
��; <
}
�� 	
public
�� 
virtual
�� 
void
�� 
Reset
�� !
(
��! "
)
��" #
{
�� 	"
m_PositionProperties
��  
.
��  !
Clear
��! &
(
��& '
)
��' (
;
��( )
}
�� 	
public
�� 

Vector3Int
�� 
[
�� 
]
�� 
GetAllPositions
�� +
(
��+ ,
string
��, 2
propertyName
��3 ?
)
��? @
{
�� 	
return
�� "
m_PositionProperties
�� '
.
��' (
Keys
��( ,
.
��, -
ToList
��- 3
(
��3 4
)
��4 5
.
��5 6
FindAll
��6 =
(
��= >
x
��> ?
=>
��@ B
x
��C D
.
��D E
name
��E I
==
��J L
propertyName
��M Y
)
��Y Z
.
��Z [
Select
��[ a
(
��a b
x
��b c
=>
��d f
x
��g h
.
��h i
position
��i q
)
��q r
.
��r s
ToArray
��s z
(
��z {
)
��{ |
;
��| }
}
�� 	
}
�� 
}�� �G
�C:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Tiles\AnimatedTile\AnimatedTile.cs
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
tileAnimationData	AAo �
)
AA� �
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
m_AnimatedSprites	WW| �
.
WW� �
Length
WW� �
:
WW� �
$num
WW� �
)
WW� �
;
WW� �
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
typeof	hh �
(
hh� �
Sprite
hh� �
)
hh� �
,
hh� �
false
hh� �
,
hh� �
null
hh� �
)
hh� �
;
hh� �
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
}�� �{
�C:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Tiles\HexagonalRuleTile\HexagonalRuleTile.cs
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
�� %
.
��% &
x
��& '
*
��( )
m_SinAngleArr2
��* 8
[
��8 9
index
��9 >
]
��> ?
+
��@ A
worldPosition
��B O
.
��O P
y
��P Q
*
��R S
m_CosAngleArr2
��T b
[
��b c
index
��c h
]
��h i
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
worldPosition
�� !
=
��" #
new
��$ '
Vector3
��( /
(
��/ 0
worldPosition
�� %
.
��% &
x
��& '
*
��( )
m_CosAngleArr1
��* 8
[
��8 9
index
��9 >
]
��> ?
-
��@ A
worldPosition
��B O
.
��O P
y
��P Q
*
��R S
m_SinAngleArr1
��T b
[
��b c
index
��c h
]
��h i
,
��i j
worldPosition
�� %
.
��% &
x
��& '
*
��( )
m_SinAngleArr1
��* 8
[
��8 9
index
��9 >
]
��> ?
+
��@ A
worldPosition
��B O
.
��O P
y
��P Q
*
��R S
m_CosAngleArr1
��T b
[
��b c
index
��c h
]
��h i
)
�� 
;
�� 
}
�� 
position
�� 
=
�� ,
WorldPositionToTilemapPosition
�� 9
(
��9 :
worldPosition
��: G
)
��G H
;
��H I
}
�� 
return
�� 
position
�� 
;
�� 
}
�� 	
	protected
�� 
override
�� 

Vector3Int
�� %!
GetMirroredPosition
��& 9
(
��9 :

Vector3Int
��: D
position
��E M
,
��M N
bool
��O S
mirrorX
��T [
,
��[ \
bool
��] a
mirrorY
��b i
)
��i j
{
�� 	
if
�� 
(
�� 
mirrorX
�� 
||
�� 
mirrorY
�� "
)
��" #
{
�� 
Vector3
�� 
worldPosition
�� %
=
��& ',
TilemapPositionToWorldPosition
��( F
(
��F G
position
��G O
)
��O P
;
��P Q
if
�� 
(
�� 
	m_FlatTop
�� 
)
�� 
{
�� 
if
�� 
(
�� 
mirrorX
�� 
)
��  
worldPosition
�� %
.
��% &
y
��& '
*=
��( *
-
��+ ,
$num
��, -
;
��- .
if
�� 
(
�� 
mirrorY
�� 
)
��  
worldPosition
�� %
.
��% &
x
��& '
*=
��( *
-
��+ ,
$num
��, -
;
��- .
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
mirrorX
�� 
)
��  
worldPosition
�� %
.
��% &
x
��& '
*=
��( *
-
��+ ,
$num
��, -
;
��- .
if
�� 
(
�� 
mirrorY
�� 
)
��  
worldPosition
�� %
.
��% &
y
��& '
*=
��( *
-
��+ ,
$num
��, -
;
��- .
}
�� 
position
�� 
=
�� ,
WorldPositionToTilemapPosition
�� 9
(
��9 :
worldPosition
��: G
)
��G H
;
��H I
}
�� 
return
�� 
position
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�C:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Tiles\IsometricRuleTile\IsometricRuleTile.cs
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
} �{
�C:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Tiles\PipelineTile\PipelineTile.cs
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
�� 
PipelineTile
�� 
tile
�� !
{
��" #
get
��$ '
{
��( )
return
��* 0
(
��1 2
target
��2 8
as
��9 ;
PipelineTile
��< H
)
��H I
;
��I J
}
��K L
}
��M N
public
�� 
void
�� 
OnEnable
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
tile
�� 
.
�� 
	m_Sprites
�� 
==
�� !
null
��" &
||
��' )
tile
��* .
.
��. /
	m_Sprites
��/ 8
.
��8 9
Length
��9 ?
!=
��@ B
$num
��C D
)
��D E
tile
�� 
.
�� 
	m_Sprites
�� 
=
��  
new
��! $
Sprite
��% +
[
��+ ,
$num
��, -
]
��- .
;
��. /
}
�� 	
public
�� 
override
�� 
void
�� 
OnInspectorGUI
�� +
(
��+ ,
)
��, -
{
�� 	
EditorGUILayout
�� 
.
�� 

LabelField
�� &
(
��& '
$str
��' g
)
��g h
;
��h i
EditorGUILayout
�� 
.
�� 
Space
�� !
(
��! "
)
��" #
;
��# $
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� &
(
��& '
)
��' (
;
��( )
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
(
��  !
Sprite
��! '
)
��' (
EditorGUILayout
��) 8
.
��8 9
ObjectField
��9 D
(
��D E
$str
��E K
,
��K L
tile
��M Q
.
��Q R
	m_Sprites
��R [
[
��[ \
$num
��\ ]
]
��] ^
,
��^ _
typeof
��` f
(
��f g
Sprite
��g m
)
��m n
,
��n o
false
��p u
,
��u v
null
��w {
)
��{ |
;
��| }
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
(
��  !
Sprite
��! '
)
��' (
EditorGUILayout
��) 8
.
��8 9
ObjectField
��9 D
(
��D E
$str
��E J
,
��J K
tile
��L P
.
��P Q
	m_Sprites
��Q Z
[
��Z [
$num
��[ \
]
��\ ]
,
��] ^
typeof
��_ e
(
��e f
Sprite
��f l
)
��l m
,
��m n
false
��o t
,
��t u
null
��v z
)
��z {
;
��{ |
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
(
��  !
Sprite
��! '
)
��' (
EditorGUILayout
��) 8
.
��8 9
ObjectField
��9 D
(
��D E
$str
��E J
,
��J K
tile
��L P
.
��P Q
	m_Sprites
��Q Z
[
��Z [
$num
��[ \
]
��\ ]
,
��] ^
typeof
��_ e
(
��e f
Sprite
��f l
)
��l m
,
��m n
false
��o t
,
��t u
null
��v z
)
��z {
;
��{ |
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
(
��  !
Sprite
��! '
)
��' (
EditorGUILayout
��) 8
.
��8 9
ObjectField
��9 D
(
��D E
$str
��E L
,
��L M
tile
��N R
.
��R S
	m_Sprites
��S \
[
��\ ]
$num
��] ^
]
��^ _
,
��_ `
typeof
��a g
(
��g h
Sprite
��h n
)
��n o
,
��o p
false
��q v
,
��v w
null
��x |
)
��| }
;
��} ~
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
(
��  !
Sprite
��! '
)
��' (
EditorGUILayout
��) 8
.
��8 9
ObjectField
��9 D
(
��D E
$str
��E K
,
��K L
tile
��M Q
.
��Q R
	m_Sprites
��R [
[
��[ \
$num
��\ ]
]
��] ^
,
��^ _
typeof
��` f
(
��f g
Sprite
��g m
)
��m n
,
��n o
false
��p u
,
��u v
null
��w {
)
��{ |
;
��| }
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� (
(
��( )
)
��) *
)
��* +
EditorUtility
�� 
.
�� 
SetDirty
�� &
(
��& '
tile
��' +
)
��+ ,
;
��, -
}
�� 	
}
�� 
}�� �A
�C:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Tiles\RandomTile\RandomTile.cs
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
)	DD �
;
DD� �
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
false	TT �
,
TT� �
null
TT� �
)
TT� �
;
TT� �
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
}dd ��
�C:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Tiles\RuleOverrideTile\RuleOverrideTile.cs
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
)	oo �!
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
�� 
RuleTile
�� 
m_Tile
�� 
;
�� 
public
�� 
bool
�� 

m_Advanced
�� 
;
�� 
public
�� 
List
�� 
<
�� 
TileSpritePair
�� "
>
��" #
	m_Sprites
��$ -
=
��. /
new
��0 3
List
��4 8
<
��8 9
TileSpritePair
��9 G
>
��G H
(
��H I
)
��I J
;
��J K
public
�� 
List
�� 
<
��  
OverrideTilingRule
�� &
>
��& '#
m_OverrideTilingRules
��( =
=
��> ?
new
��@ C
List
��D H
<
��H I 
OverrideTilingRule
��I [
>
��[ \
(
��\ ]
)
��] ^
;
��^ _
public
��  
OverrideTilingRule
�� !
m_OverrideDefault
��" 3
=
��4 5
new
��6 9 
OverrideTilingRule
��: L
(
��L M
)
��M N
;
��N O
public
�� 
RuleTile
�� 
.
�� 

TilingRule
�� "
m_OriginalDefault
��# 4
{
�� 	
get
�� 
{
�� 
return
�� 
new
�� 
RuleTile
�� #
.
��# $

TilingRule
��$ .
(
��. /
)
��/ 0
{
�� 
	m_Sprites
�� 
=
�� 
new
��  #
Sprite
��$ *
[
��* +
]
��+ ,
{
��- .
m_Tile
��/ 5
!=
��6 8
null
��9 =
?
��> ?
m_Tile
��@ F
.
��F G
m_DefaultSprite
��G V
:
��W X
null
��Y ]
}
��^ _
,
��_ `
m_ColliderType
�� "
=
��# $
m_Tile
��% +
!=
��, .
null
��/ 3
?
��4 5
m_Tile
��6 <
.
��< =#
m_DefaultColliderType
��= R
:
��S T
Tile
��U Y
.
��Y Z
ColliderType
��Z f
.
��f g
None
��g k
,
��k l
}
�� 
;
�� 
}
�� 
}
�� 	
[
�� 	
HideInInspector
��	 
]
�� 
public
��  
RuleTile
��! )
m_InstanceTile
��* 8
;
��8 9
public
�� 
override
�� 
bool
�� "
GetTileAnimationData
�� 1
(
��1 2

Vector3Int
��2 <
position
��= E
,
��E F
ITilemap
��G O
tilemap
��P W
,
��W X
ref
��Y \
TileAnimationData
��] n 
tileAnimationData��o �
)��� �
{
�� 	
if
�� 
(
�� 
!
�� 
m_InstanceTile
�� 
)
��  
return
�� 
false
�� 
;
�� 
return
�� 
m_InstanceTile
�� !
.
��! ""
GetTileAnimationData
��" 6
(
��6 7
position
��7 ?
,
��? @
tilemap
��A H
,
��H I
ref
��J M
tileAnimationData
��N _
)
��_ `
;
��` a
}
�� 	
public
�� 
override
�� 
void
�� 
GetTileData
�� (
(
��( )

Vector3Int
��) 3
position
��4 <
,
��< =
ITilemap
��> F
tilemap
��G N
,
��N O
ref
��P S
TileData
��T \
tileData
��] e
)
��e f
{
�� 	
if
�� 
(
�� 
!
�� 
m_InstanceTile
�� 
)
��  
return
�� 
;
�� 
m_InstanceTile
�� 
.
�� 
GetTileData
�� &
(
��& '
position
��' /
,
��/ 0
tilemap
��1 8
,
��8 9
ref
��: =
tileData
��> F
)
��F G
;
��G H
}
�� 	
public
�� 
override
�� 
void
�� 
RefreshTile
�� (
(
��( )

Vector3Int
��) 3
position
��4 <
,
��< =
ITilemap
��> F
tilemap
��G N
)
��N O
{
�� 	
if
�� 
(
�� 
!
�� 
m_InstanceTile
�� 
)
��  
return
�� 
;
�� 
m_InstanceTile
�� 
.
�� 
RefreshTile
�� &
(
��& '
position
��' /
,
��/ 0
tilemap
��1 8
)
��8 9
;
��9 :
}
�� 	
public
�� 
override
�� 
bool
�� 
StartUp
�� $
(
��$ %

Vector3Int
��% /
position
��0 8
,
��8 9
ITilemap
��: B
tilemap
��C J
,
��J K

GameObject
��L V
go
��W Y
)
��Y Z
{
�� 	
if
�� 
(
�� 
!
�� 
m_InstanceTile
�� 
)
��  
return
�� 
true
�� 
;
�� 
return
�� 
m_InstanceTile
�� !
.
��! "
StartUp
��" )
(
��) *
position
��* 2
,
��2 3
tilemap
��4 ;
,
��; <
go
��= ?
)
��? @
;
��@ A
}
�� 	
public
�� 
void
�� 
ApplyOverrides
�� "
(
��" #
IList
��# (
<
��( )
KeyValuePair
��) 5
<
��5 6
Sprite
��6 <
,
��< =
Sprite
��> D
>
��D E
>
��E F
	overrides
��G P
)
��P Q
{
�� 	
if
�� 
(
�� 
	overrides
�� 
==
�� 
null
�� !
)
��! "
throw
�� 
new
�� 
System
��  
.
��  !#
ArgumentNullException
��! 6
(
��6 7
$str
��7 B
)
��B C
;
��C D
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
	overrides
��  )
.
��) *
Count
��* /
;
��/ 0
i
��1 2
++
��2 4
)
��4 5
this
�� 
[
�� 
	overrides
�� 
[
�� 
i
��  
]
��  !
.
��! "
Key
��" %
]
��% &
=
��' (
	overrides
��) 2
[
��2 3
i
��3 4
]
��4 5
.
��5 6
Value
��6 ;
;
��; <
}
�� 	
public
�� 
void
�� 
GetOverrides
��  
(
��  !
List
��! %
<
��% &
KeyValuePair
��& 2
<
��2 3
Sprite
��3 9
,
��9 :
Sprite
��; A
>
��A B
>
��B C
	overrides
��D M
)
��M N
{
�� 	
if
�� 
(
�� 
	overrides
�� 
==
�� 
null
�� !
)
��! "
throw
�� 
new
�� 
System
��  
.
��  !#
ArgumentNullException
��! 6
(
��6 7
$str
��7 B
)
��B C
;
��C D
	overrides
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
!
�� 
m_Tile
�� 
)
�� 
return
�� 
;
�� 
List
�� 
<
�� 
Sprite
�� 
>
�� 
originalSprites
�� (
=
��) *
new
��+ .
List
��/ 3
<
��3 4
Sprite
��4 :
>
��: ;
(
��; <
)
��< =
;
��= >
if
�� 
(
�� 
m_Tile
�� 
.
�� 
m_DefaultSprite
�� &
)
��& '
originalSprites
�� 
.
��  
Add
��  #
(
��# $
m_Tile
��$ *
.
��* +
m_DefaultSprite
��+ :
)
��: ;
;
��; <
foreach
�� 
(
�� 
RuleTile
�� 
.
�� 

TilingRule
�� (
rule
��) -
in
��. 0
m_Tile
��1 7
.
��7 8
m_TilingRules
��8 E
)
��E F
foreach
�� 
(
�� 
Sprite
�� 
sprite
��  &
in
��' )
rule
��* .
.
��. /
	m_Sprites
��/ 8
)
��8 9
if
�� 
(
�� 
sprite
�� 
&&
�� !
!
��" #
originalSprites
��# 2
.
��2 3
Contains
��3 ;
(
��; <
sprite
��< B
)
��B C
)
��C D
originalSprites
�� '
.
��' (
Add
��( +
(
��+ ,
sprite
��, 2
)
��2 3
;
��3 4
foreach
�� 
(
�� 
Sprite
�� 
sprite
�� "
in
��# %
originalSprites
��& 5
)
��5 6
	overrides
�� 
.
�� 
Add
�� 
(
�� 
new
�� !
KeyValuePair
��" .
<
��. /
Sprite
��/ 5
,
��5 6
Sprite
��7 =
>
��= >
(
��> ?
sprite
��? E
,
��E F
this
��G K
[
��K L
sprite
��L R
]
��R S
)
��S T
)
��T U
;
��U V
}
�� 	
public
�� 
void
�� 
ApplyOverrides
�� "
(
��" #
IList
��# (
<
��( )
KeyValuePair
��) 5
<
��5 6
RuleTile
��6 >
.
��> ?

TilingRule
��? I
,
��I J
RuleTile
��K S
.
��S T

TilingRule
��T ^
>
��^ _
>
��_ `
	overrides
��a j
)
��j k
{
�� 	
if
�� 
(
�� 
	overrides
�� 
==
�� 
null
�� !
)
��! "
throw
�� 
new
�� 
System
��  
.
��  !#
ArgumentNullException
��! 6
(
��6 7
$str
��7 B
)
��B C
;
��C D
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
	overrides
��  )
.
��) *
Count
��* /
;
��/ 0
i
��1 2
++
��2 4
)
��4 5
this
�� 
[
�� 
	overrides
�� 
[
�� 
i
��  
]
��  !
.
��! "
Key
��" %
]
��% &
=
��' (
	overrides
��) 2
[
��2 3
i
��3 4
]
��4 5
.
��5 6
Value
��6 ;
;
��; <
}
�� 	
public
�� 
void
�� 
GetOverrides
��  
(
��  !
List
��! %
<
��% &
KeyValuePair
��& 2
<
��2 3
RuleTile
��3 ;
.
��; <

TilingRule
��< F
,
��F G
RuleTile
��H P
.
��P Q

TilingRule
��Q [
>
��[ \
>
��\ ]
	overrides
��^ g
)
��g h
{
�� 	
if
�� 
(
�� 
	overrides
�� 
==
�� 
null
�� !
)
��! "
throw
�� 
new
�� 
System
��  
.
��  !#
ArgumentNullException
��! 6
(
��6 7
$str
��7 B
)
��B C
;
��C D
	overrides
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
!
�� 
m_Tile
�� 
)
�� 
return
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
originalRule
�� %
in
��& (
m_Tile
��) /
.
��/ 0
m_TilingRules
��0 =
)
��= >
{
�� 
RuleTile
�� 
.
�� 

TilingRule
�� #
overrideRule
��$ 0
=
��1 2
this
��3 7
[
��7 8
originalRule
��8 D
]
��D E
;
��E F
	overrides
�� 
.
�� 
Add
�� 
(
�� 
new
�� !
KeyValuePair
��" .
<
��. /
RuleTile
��/ 7
.
��7 8

TilingRule
��8 B
,
��B C
RuleTile
��D L
.
��L M

TilingRule
��M W
>
��W X
(
��X Y
originalRule
��Y e
,
��e f
overrideRule
��g s
)
��s t
)
��t u
;
��u v
}
�� 
	overrides
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
KeyValuePair
�� *
<
��* +
RuleTile
��+ 3
.
��3 4

TilingRule
��4 >
,
��> ?
RuleTile
��@ H
.
��H I

TilingRule
��I S
>
��S T
(
��T U
m_OriginalDefault
��U f
,
��f g
m_OverrideDefault
��h y
.
��y z
m_TilingRule��z �
)��� �
)��� �
;��� �
}
�� 	
public
�� 
void
�� 
Override
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
!
�� 
m_Tile
�� 
||
�� 
!
�� 
m_InstanceTile
�� *
)
��* +
return
�� 
;
�� 
var
�� 
tile
�� 
=
�� 
m_InstanceTile
�� %
;
��% &
tile
�� 
.
�� 
m_DefaultSprite
��  
=
��! "
m_Tile
��# )
.
��) *
m_DefaultSprite
��* 9
;
��9 :
tile
�� 
.
�� !
m_DefaultGameObject
�� $
=
��% &
m_Tile
��' -
.
��- .!
m_DefaultGameObject
��. A
;
��A B
tile
�� 
.
�� #
m_DefaultColliderType
�� &
=
��' (
m_Tile
��) /
.
��/ 0#
m_DefaultColliderType
��0 E
;
��E F
tile
�� 
.
�� 
m_TilingRules
�� 
.
�� 
Clear
�� $
(
��$ %
)
��% &
;
��& '
foreach
�� 
(
�� 
var
�� 
rule
�� 
in
��  
m_Tile
��! '
.
��' (
m_TilingRules
��( 5
)
��5 6
tile
�� 
.
�� 
m_TilingRules
�� "
.
��" #
Add
��# &
(
��& '
CopyTilingRule
��' 5
(
��5 6
rule
��6 :
,
��: ;
new
��< ?
RuleTile
��@ H
.
��H I

TilingRule
��I S
(
��S T
)
��T U
,
��U V
true
��W [
)
��[ \
)
��\ ]
;
��] ^
if
�� 
(
�� 
!
�� 

m_Advanced
�� 
)
�� 
{
�� 
tile
�� 
.
�� 
m_DefaultSprite
�� $
=
��% &
this
��' +
[
��+ ,
m_Tile
��, 2
.
��2 3
m_DefaultSprite
��3 B
]
��B C
;
��C D
foreach
�� 
(
�� 
RuleTile
�� !
.
��! "

TilingRule
��" ,
rule
��- 1
in
��2 4
tile
��5 9
.
��9 :
m_TilingRules
��: G
)
��G H
for
�� 
(
�� 
int
�� 
i
�� 
=
��  
$num
��! "
;
��" #
i
��$ %
<
��& '
rule
��( ,
.
��, -
	m_Sprites
��- 6
.
��6 7
Length
��7 =
;
��= >
i
��? @
++
��@ B
)
��B C
if
�� 
(
�� 
rule
��  
.
��  !
	m_Sprites
��! *
[
��* +
i
��+ ,
]
��, -
)
��- .
rule
��  
.
��  !
	m_Sprites
��! *
[
��* +
i
��+ ,
]
��, -
=
��. /
this
��0 4
[
��4 5
rule
��5 9
.
��9 :
	m_Sprites
��: C
[
��C D
i
��D E
]
��E F
]
��F G
;
��G H
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
m_OverrideDefault
�� %
.
��% &
	m_Enabled
��& /
)
��/ 0
{
�� 
tile
�� 
.
�� 
m_DefaultSprite
�� (
=
��) *
m_OverrideDefault
��+ <
.
��< =
m_TilingRule
��= I
.
��I J
	m_Sprites
��J S
.
��S T
Length
��T Z
>
��[ \
$num
��] ^
?
��_ `
m_OverrideDefault
��a r
.
��r s
m_TilingRule
��s 
.�� �
	m_Sprites��� �
[��� �
$num��� �
]��� �
:��� �
null��� �
;��� �
tile
�� 
.
�� !
m_DefaultGameObject
�� ,
=
��- .
m_OverrideDefault
��/ @
.
��@ A
m_TilingRule
��A M
.
��M N
m_GameObject
��N Z
;
��Z [
tile
�� 
.
�� #
m_DefaultColliderType
�� .
=
��/ 0
m_OverrideDefault
��1 B
.
��B C
m_TilingRule
��C O
.
��O P
m_ColliderType
��P ^
;
��^ _
}
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
tile
��$ (
.
��( )
m_TilingRules
��) 6
.
��6 7
Count
��7 <
;
��< =
i
��> ?
++
��? A
)
��A B
{
�� 
RuleTile
�� 
.
�� 

TilingRule
�� '
originalRule
��( 4
=
��5 6
tile
��7 ;
.
��; <
m_TilingRules
��< I
[
��I J
i
��J K
]
��K L
;
��L M
RuleTile
�� 
.
�� 

TilingRule
�� '
overrideRule
��( 4
=
��5 6
this
��7 ;
[
��; <
m_Tile
��< B
.
��B C
m_TilingRules
��C P
[
��P Q
i
��Q R
]
��R S
]
��S T
;
��T U
if
�� 
(
�� 
overrideRule
�� $
==
��% '
null
��( ,
)
��, -
continue
��  
;
��  !
CopyTilingRule
�� "
(
��" #
overrideRule
��# /
,
��/ 0
originalRule
��1 =
,
��= >
false
��? D
)
��D E
;
��E F
}
�� 
}
�� 
}
�� 	
public
�� 
RuleTile
�� 
.
�� 

TilingRule
�� "
CopyTilingRule
��# 1
(
��1 2
RuleTile
��2 :
.
��: ;

TilingRule
��; E
from
��F J
,
��J K
RuleTile
��L T
.
��T U

TilingRule
��U _
to
��` b
,
��b c
bool
��d h
copyRule
��i q
)
��q r
{
�� 	
if
�� 
(
�� 
from
�� 
==
�� 
null
�� 
)
�� 
return
�� 
null
�� 
;
�� 
if
�� 
(
�� 
copyRule
�� 
)
�� 
{
�� 
to
�� 
.
�� 
m_Neighbors
�� 
=
��  
from
��! %
.
��% &
m_Neighbors
��& 1
;
��1 2
to
�� 
.
�� !
m_NeighborPositions
�� &
=
��' (
from
��) -
.
��- .!
m_NeighborPositions
��. A
;
��A B
to
�� 
.
�� 
m_RuleTransform
�� "
=
��# $
from
��% )
.
��) *
m_RuleTransform
��* 9
;
��9 :
}
�� 
to
�� 
.
�� 
	m_Sprites
�� 
=
�� 
from
�� 
.
��  
	m_Sprites
��  )
.
��) *
Clone
��* /
(
��/ 0
)
��0 1
as
��2 4
Sprite
��5 ;
[
��; <
]
��< =
;
��= >
to
�� 
.
�� 
m_GameObject
�� 
=
�� 
from
�� "
.
��" #
m_GameObject
��# /
;
��/ 0
to
�� 
.
�� 
m_AnimationSpeed
�� 
=
��  !
from
��" &
.
��& '
m_AnimationSpeed
��' 7
;
��7 8
to
�� 
.
�� 
m_PerlinScale
�� 
=
�� 
from
�� #
.
��# $
m_PerlinScale
��$ 1
;
��1 2
to
�� 
.
�� 
m_Output
�� 
=
�� 
from
�� 
.
�� 
m_Output
�� '
;
��' (
to
�� 
.
�� 
m_ColliderType
�� 
=
�� 
from
��  $
.
��$ %
m_ColliderType
��% 3
;
��3 4
to
�� 
.
�� 
m_RandomTransform
��  
=
��! "
from
��# '
.
��' (
m_RandomTransform
��( 9
;
��9 :
return
�� 
to
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
�C:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Tiles\RuleTile\RuleTile.cs
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
�� 
public
�� 
void
�� 
ApplyNeighbors
�� &
(
��& '

Dictionary
��' 1
<
��1 2

Vector3Int
��2 <
,
��< =
int
��> A
>
��A B
dict
��C G
)
��G H
{
�� !
m_NeighborPositions
�� #
=
��$ %
dict
��& *
.
��* +
Keys
��+ /
.
��/ 0
ToList
��0 6
(
��6 7
)
��7 8
;
��8 9
m_Neighbors
�� 
=
�� 
dict
�� "
.
��" #
Values
��# )
.
��) *
ToList
��* 0
(
��0 1
)
��1 2
;
��2 3
}
�� 
public
�� 
	BoundsInt
�� 
	GetBounds
�� &
(
��& '
)
��' (
{
�� 
	BoundsInt
�� 
bounds
��  
=
��! "
new
��# &
	BoundsInt
��' 0
(
��0 1

Vector3Int
��1 ;
.
��; <
zero
��< @
,
��@ A

Vector3Int
��B L
.
��L M
one
��M P
)
��P Q
;
��Q R
foreach
�� 
(
�� 
var
�� 
neighbor
�� %
in
��& (
GetNeighbors
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
bounds
�� 
.
�� 
xMin
�� 
=
��  !
Mathf
��" '
.
��' (
Min
��( +
(
��+ ,
bounds
��, 2
.
��2 3
xMin
��3 7
,
��7 8
neighbor
��9 A
.
��A B
Key
��B E
.
��E F
x
��F G
)
��G H
;
��H I
bounds
�� 
.
�� 
yMin
�� 
=
��  !
Mathf
��" '
.
��' (
Min
��( +
(
��+ ,
bounds
��, 2
.
��2 3
yMin
��3 7
,
��7 8
neighbor
��9 A
.
��A B
Key
��B E
.
��E F
y
��F G
)
��G H
;
��H I
bounds
�� 
.
�� 
xMax
�� 
=
��  !
Mathf
��" '
.
��' (
Max
��( +
(
��+ ,
bounds
��, 2
.
��2 3
xMax
��3 7
,
��7 8
neighbor
��9 A
.
��A B
Key
��B E
.
��E F
x
��F G
+
��H I
$num
��J K
)
��K L
;
��L M
bounds
�� 
.
�� 
yMax
�� 
=
��  !
Mathf
��" '
.
��' (
Max
��( +
(
��+ ,
bounds
��, 2
.
��2 3
yMax
��3 7
,
��7 8
neighbor
��9 A
.
��A B
Key
��B E
.
��E F
y
��F G
+
��H I
$num
��J K
)
��K L
;
��L M
}
�� 
return
�� 
bounds
�� 
;
�� 
}
�� 
public
�� 
class
�� 
Neighbor
�� !
{
�� 
public
�� 
const
�� 
int
��  
This
��! %
=
��& '
$num
��( )
;
��) *
public
�� 
const
�� 
int
��  
NotThis
��! (
=
��) *
$num
��+ ,
;
��, -
}
�� 
public
�� 
enum
�� 
	Transform
�� !
{
�� 
Fixed
�� 
,
�� 
Rotated
�� 
,
�� 
MirrorX
�� 
,
�� 
MirrorY
�� 
,
�� 
MirrorXY
�� 
}
�� 
public
�� 
enum
�� 
OutputSprite
�� $
{
�� 
Single
�� 
,
�� 
Random
�� 
,
�� 
	Animation
�� 
}
�� 
}
�� 	
[
�� 	
HideInInspector
��	 
]
�� 
public
��  
List
��! %
<
��% &

TilingRule
��& 0
>
��0 1
m_TilingRules
��2 ?
=
��@ A
new
��B E
List
��F J
<
��J K
RuleTile
��K S
.
��S T

TilingRule
��T ^
>
��^ _
(
��_ `
)
��` a
;
��a b
public
�� 
HashSet
�� 
<
�� 

Vector3Int
�� !
>
��! "
neighborPositions
��# 4
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� !
m_NeighborPositions
�� '
.
��' (
Count
��( -
==
��. 0
$num
��1 2
)
��2 3%
UpdateNeighborPositions
�� +
(
��+ ,
)
��, -
;
��- .
return
�� !
m_NeighborPositions
�� *
;
��* +
}
�� 
}
�� 	
private
�� 
HashSet
�� 
<
�� 

Vector3Int
�� "
>
��" #!
m_NeighborPositions
��$ 7
=
��8 9
new
��: =
HashSet
��> E
<
��E F

Vector3Int
��F P
>
��P Q
(
��Q R
)
��R S
;
��S T
public
�� 
void
�� %
UpdateNeighborPositions
�� +
(
��+ ,
)
��, -
{
�� 	.
 m_CacheTilemapsNeighborPositions
�� ,
.
��, -
Clear
��- 2
(
��2 3
)
��3 4
;
��4 5
HashSet
�� 
<
�� 

Vector3Int
�� 
>
�� 
	positions
��  )
=
��* +!
m_NeighborPositions
��, ?
;
��? @
	positions
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
foreach
�� 
(
�� 

TilingRule
�� 
rule
��  $
in
��% '
m_TilingRules
��( 5
)
��5 6
{
�� 
foreach
�� 
(
�� 
var
�� 
neighbor
�� %
in
��& (
rule
��) -
.
��- .
GetNeighbors
��. :
(
��: ;
)
��; <
)
��< =
{
�� 

Vector3Int
�� 
position
�� '
=
��( )
neighbor
��* 2
.
��2 3
Key
��3 6
;
��6 7
	positions
�� 
.
�� 
Add
�� !
(
��! "
position
��" *
)
��* +
;
��+ ,
if
�� 
(
�� 
rule
�� 
.
�� 
m_RuleTransform
�� ,
==
��- /

TilingRule
��0 :
.
��: ;
	Transform
��; D
.
��D E
Rotated
��E L
)
��L M
{
�� 
for
�� 
(
�� 
int
��  
angle
��! &
=
��' (
m_RotationAngle
��) 8
;
��8 9
angle
��: ?
<
��@ A
$num
��B E
;
��E F
angle
��G L
+=
��M O
m_RotationAngle
��P _
)
��_ `
{
�� 
	positions
�� %
.
��% &
Add
��& )
(
��) * 
GetRotatedPosition
��* <
(
��< =
position
��= E
,
��E F
angle
��G L
)
��L M
)
��M N
;
��N O
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
rule
�� !
.
��! "
m_RuleTransform
��" 1
==
��2 4

TilingRule
��5 ?
.
��? @
	Transform
��@ I
.
��I J
MirrorXY
��J R
)
��R S
{
�� 
	positions
�� !
.
��! "
Add
��" %
(
��% &!
GetMirroredPosition
��& 9
(
��9 :
position
��: B
,
��B C
true
��D H
,
��H I
true
��J N
)
��N O
)
��O P
;
��P Q
	positions
�� !
.
��! "
Add
��" %
(
��% &!
GetMirroredPosition
��& 9
(
��9 :
position
��: B
,
��B C
true
��D H
,
��H I
false
��J O
)
��O P
)
��P Q
;
��Q R
	positions
�� !
.
��! "
Add
��" %
(
��% &!
GetMirroredPosition
��& 9
(
��9 :
position
��: B
,
��B C
false
��D I
,
��I J
true
��K O
)
��O P
)
��P Q
;
��Q R
}
�� 
else
�� 
if
�� 
(
�� 
rule
�� !
.
��! "
m_RuleTransform
��" 1
==
��2 4

TilingRule
��5 ?
.
��? @
	Transform
��@ I
.
��I J
MirrorX
��J Q
)
��Q R
{
�� 
	positions
�� !
.
��! "
Add
��" %
(
��% &!
GetMirroredPosition
��& 9
(
��9 :
position
��: B
,
��B C
true
��D H
,
��H I
false
��J O
)
��O P
)
��P Q
;
��Q R
}
�� 
else
�� 
if
�� 
(
�� 
rule
�� !
.
��! "
m_RuleTransform
��" 1
==
��2 4

TilingRule
��5 ?
.
��? @
	Transform
��@ I
.
��I J
MirrorY
��J Q
)
��Q R
{
�� 
	positions
�� !
.
��! "
Add
��" %
(
��% &!
GetMirroredPosition
��& 9
(
��9 :
position
��: B
,
��B C
false
��D I
,
��I J
true
��K O
)
��O P
)
��P Q
;
��Q R
}
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
bool
�� 
StartUp
�� $
(
��$ %

Vector3Int
��% /
location
��0 8
,
��8 9
ITilemap
��: B
tilemap
��C J
,
��J K

GameObject
��L V$
instantiatedGameObject
��W m
)
��m n
{
�� 	
if
�� 
(
�� $
instantiatedGameObject
�� &
!=
��' )
null
��* .
)
��. /
{
�� 
var
�� 
iden
�� 
=
�� 
	Matrix4x4
�� $
.
��$ %
identity
��% -
;
��- .

Quaternion
�� "
gameObjectQuaternion
�� /
=
��0 1
new
��2 5

Quaternion
��6 @
(
��@ A
)
��A B
;
��B C
foreach
�� 
(
�� 

TilingRule
�� #
rule
��$ (
in
��) +
m_TilingRules
��, 9
)
��9 :
{
�� 
	Matrix4x4
�� 
	transform
�� '
=
��( )
iden
��* .
;
��. /
if
�� 
(
�� 
RuleMatches
�� #
(
��# $
rule
��$ (
,
��( )
location
��* 2
,
��2 3
tilemap
��4 ;
,
��; <
ref
��= @
	transform
��A J
)
��J K
)
��K L
{
�� "
gameObjectQuaternion
�� ,
=
��- .

Quaternion
��/ 9
.
��9 :
LookRotation
��: F
(
��F G
new
��G J
Vector3
��K R
(
��R S
	transform
��S \
.
��\ ]
m02
��] `
,
��` a
	transform
��b k
.
��k l
m12
��l o
,
��o p
	transform
��q z
.
��z {
m22
��{ ~
)
��~ 
,�� �
new��� �
Vector3��� �
(��� �
	transform��� �
.��� �
m01��� �
,��� �
	transform��� �
.��� �
m11��� �
,��� �
	transform��� �
.��� �
m21��� �
)��� �
)��� �
;��� �
break
�� 
;
�� 
}
�� 
}
�� 
Tilemap
�� 
tmpMap
�� 
=
��  
tilemap
��! (
.
��( )
GetComponent
��) 5
<
��5 6
Tilemap
��6 =
>
��= >
(
��> ?
)
��? @
;
��@ A$
instantiatedGameObject
�� &
.
��& '
	transform
��' 0
.
��0 1
position
��1 9
=
��: ;
tmpMap
��< B
.
��B C
LocalToWorld
��C O
(
��O P
tmpMap
��P V
.
��V W%
CellToLocalInterpolated
��W n
(
��n o
location
��o w
+
��x y
tmpMap��z �
.��� �

tileAnchor��� �
)��� �
)��� �
;��� �$
instantiatedGameObject
�� &
.
��& '
	transform
��' 0
.
��0 1
rotation
��1 9
=
��: ;"
gameObjectQuaternion
��< P
;
��P Q
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
GetTileData
�� (
(
��( )

Vector3Int
��) 3
position
��4 <
,
��< =
ITilemap
��> F
tilemap
��G N
,
��N O
ref
��P S
TileData
��T \
tileData
��] e
)
��e f
{
�� 	
var
�� 
iden
�� 
=
�� 
	Matrix4x4
��  
.
��  !
identity
��! )
;
��) *
tileData
�� 
.
�� 
sprite
�� 
=
�� 
m_DefaultSprite
�� -
;
��- .
tileData
�� 
.
�� 

gameObject
�� 
=
��  !!
m_DefaultGameObject
��" 5
;
��5 6
tileData
�� 
.
�� 
colliderType
�� !
=
��" ##
m_DefaultColliderType
��$ 9
;
��9 :
tileData
�� 
.
�� 
flags
�� 
=
�� 
	TileFlags
�� &
.
��& '
LockTransform
��' 4
;
��4 5
tileData
�� 
.
�� 
	transform
�� 
=
��  
iden
��! %
;
��% &
foreach
�� 
(
�� 

TilingRule
�� 
rule
��  $
in
��% '
m_TilingRules
��( 5
)
��5 6
{
�� 
	Matrix4x4
�� 
	transform
�� #
=
��$ %
iden
��& *
;
��* +
if
�� 
(
�� 
RuleMatches
�� 
(
��  
rule
��  $
,
��$ %
position
��& .
,
��. /
tilemap
��0 7
,
��7 8
ref
��9 <
	transform
��= F
)
��F G
)
��G H
{
�� 
switch
�� 
(
�� 
rule
��  
.
��  !
m_Output
��! )
)
��) *
{
�� 
case
�� 

TilingRule
�� '
.
��' (
OutputSprite
��( 4
.
��4 5
Single
��5 ;
:
��; <
case
�� 

TilingRule
�� '
.
��' (
OutputSprite
��( 4
.
��4 5
	Animation
��5 >
:
��> ?
tileData
�� $
.
��$ %
sprite
��% +
=
��, -
rule
��. 2
.
��2 3
	m_Sprites
��3 <
[
��< =
$num
��= >
]
��> ?
;
��? @
break
�� !
;
��! "
case
�� 

TilingRule
�� '
.
��' (
OutputSprite
��( 4
.
��4 5
Random
��5 ;
:
��; <
int
�� 
index
��  %
=
��& '
Mathf
��( -
.
��- .
Clamp
��. 3
(
��3 4
Mathf
��4 9
.
��9 :

FloorToInt
��: D
(
��D E
GetPerlinValue
��E S
(
��S T
position
��T \
,
��\ ]
rule
��^ b
.
��b c
m_PerlinScale
��c p
,
��p q
$num
��r y
)
��y z
*
��{ |
rule��} �
.��� �
	m_Sprites��� �
.��� �
Length��� �
)��� �
,��� �
$num��� �
,��� �
rule��� �
.��� �
	m_Sprites��� �
.��� �
Length��� �
-��� �
$num��� �
)��� �
;��� �
tileData
�� $
.
��$ %
sprite
��% +
=
��, -
rule
��. 2
.
��2 3
	m_Sprites
��3 <
[
��< =
index
��= B
]
��B C
;
��C D
if
�� 
(
��  
rule
��  $
.
��$ %
m_RandomTransform
��% 6
!=
��7 9

TilingRule
��: D
.
��D E
	Transform
��E N
.
��N O
Fixed
��O T
)
��T U
	transform
��  )
=
��* +"
ApplyRandomTransform
��, @
(
��@ A
rule
��A E
.
��E F
m_RandomTransform
��F W
,
��W X
	transform
��Y b
,
��b c
rule
��d h
.
��h i
m_PerlinScale
��i v
,
��v w
position��x �
)��� �
;��� �
break
�� !
;
��! "
}
�� 
tileData
�� 
.
�� 
	transform
�� &
=
��' (
	transform
��) 2
;
��2 3
tileData
�� 
.
�� 

gameObject
�� '
=
��( )
rule
��* .
.
��. /
m_GameObject
��/ ;
;
��; <
tileData
�� 
.
�� 
colliderType
�� )
=
��* +
rule
��, 0
.
��0 1
m_ColliderType
��1 ?
;
��? @
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
	protected
�� 
static
�� 
float
�� 
GetPerlinValue
�� -
(
��- .

Vector3Int
��. 8
position
��9 A
,
��A B
float
��C H
scale
��I N
,
��N O
float
��P U
offset
��V \
)
��\ ]
{
�� 	
return
�� 
Mathf
�� 
.
�� 
PerlinNoise
�� $
(
��$ %
(
��% &
position
��& .
.
��. /
x
��/ 0
+
��1 2
offset
��3 9
)
��9 :
*
��; <
scale
��= B
,
��B C
(
��D E
position
��E M
.
��M N
y
��N O
+
��P Q
offset
��R X
)
��X Y
*
��Z [
scale
��\ a
)
��a b
;
��b c
}
�� 	
static
�� 

Dictionary
�� 
<
�� 
Tilemap
�� !
,
��! "
KeyValuePair
��# /
<
��/ 0
HashSet
��0 7
<
��7 8
TileBase
��8 @
>
��@ A
,
��A B
HashSet
��C J
<
��J K

Vector3Int
��K U
>
��U V
>
��V W
>
��W X.
 m_CacheTilemapsNeighborPositions
��Y y
=
��z {
new
��| 

Dictionary��� �
<��� �
Tilemap��� �
,��� �
KeyValuePair��� �
<��� �
HashSet��� �
<��� �
TileBase��� �
>��� �
,��� �
HashSet��� �
<��� �

Vector3Int��� �
>��� �
>��� �
>��� �
(��� �
)��� �
;��� �
static
�� 
TileBase
�� 
[
�� 
]
�� $
m_AllocatedUsedTileArr
�� 0
=
��1 2
new
��3 6
TileBase
��7 ?
[
��? @
$num
��@ A
]
��A B
;
��B C
static
�� 
bool
�� &
IsTilemapUsedTilesChange
�� ,
(
��, -
Tilemap
��- 4
tilemap
��5 <
)
��< =
{
�� 	
if
�� 
(
�� 
!
�� .
 m_CacheTilemapsNeighborPositions
�� 1
.
��1 2
ContainsKey
��2 =
(
��= >
tilemap
��> E
)
��E F
)
��F G
return
�� 
true
�� 
;
�� 
var
�� 
oldUsedTiles
�� 
=
�� .
 m_CacheTilemapsNeighborPositions
�� ?
[
��? @
tilemap
��@ G
]
��G H
.
��H I
Key
��I L
;
��L M
int
�� 
newUsedTilesCount
�� !
=
��" #
tilemap
��$ +
.
��+ ,
GetUsedTilesCount
��, =
(
��= >
)
��> ?
;
��? @
if
�� 
(
�� 
newUsedTilesCount
�� !
!=
��" $
oldUsedTiles
��% 1
.
��1 2
Count
��2 7
)
��7 8
return
�� 
true
�� 
;
�� 
if
�� 
(
�� $
m_AllocatedUsedTileArr
�� &
.
��& '
Length
��' -
<
��. /
newUsedTilesCount
��0 A
)
��A B$
m_AllocatedUsedTileArr
�� &
=
��' (
new
��) ,
TileBase
��- 5
[
��5 6
newUsedTilesCount
��6 G
]
��G H
;
��H I
tilemap
�� 
.
�� "
GetUsedTilesNonAlloc
�� (
(
��( )$
m_AllocatedUsedTileArr
��) ?
)
��? @
;
��@ A
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
newUsedTilesCount
��  1
;
��1 2
i
��3 4
++
��4 6
)
��6 7
{
�� 
TileBase
�� 
newUsedTile
�� $
=
��% &$
m_AllocatedUsedTileArr
��' =
[
��= >
i
��> ?
]
��? @
;
��@ A
if
�� 
(
�� 
!
�� 
oldUsedTiles
�� !
.
��! "
Contains
��" *
(
��* +
newUsedTile
��+ 6
)
��6 7
)
��7 8
return
�� 
true
�� 
;
��  
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
static
�� 
void
�� -
CachingTilemapNeighborPositions
�� 3
(
��3 4
Tilemap
��4 ;
tilemap
��< C
)
��C D
{
�� 	
int
�� 
usedTileCount
�� 
=
�� 
tilemap
��  '
.
��' (
GetUsedTilesCount
��( 9
(
��9 :
)
��: ;
;
��; <
HashSet
�� 
<
�� 
TileBase
�� 
>
�� 
	usedTiles
�� '
=
��( )
new
��* -
HashSet
��. 5
<
��5 6
TileBase
��6 >
>
��> ?
(
��? @
)
��@ A
;
��A B
HashSet
�� 
<
�� 

Vector3Int
�� 
>
�� 
neighborPositions
��  1
=
��2 3
new
��4 7
HashSet
��8 ?
<
��? @

Vector3Int
��@ J
>
��J K
(
��K L
)
��L M
;
��M N
if
�� 
(
�� $
m_AllocatedUsedTileArr
�� &
.
��& '
Length
��' -
<
��. /
usedTileCount
��0 =
)
��= >$
m_AllocatedUsedTileArr
�� &
=
��' (
new
��) ,
TileBase
��- 5
[
��5 6
usedTileCount
��6 C
]
��C D
;
��D E
tilemap
�� 
.
�� "
GetUsedTilesNonAlloc
�� (
(
��( )$
m_AllocatedUsedTileArr
��) ?
)
��? @
;
��@ A
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
usedTileCount
��  -
;
��- .
i
��/ 0
++
��0 2
)
��2 3
{
�� 
TileBase
�� 
tile
�� 
=
�� $
m_AllocatedUsedTileArr
��  6
[
��6 7
i
��7 8
]
��8 9
;
��9 :
	usedTiles
�� 
.
�� 
Add
�� 
(
�� 
tile
�� "
)
��" #
;
��# $
RuleTile
�� 
ruleTile
�� !
=
��" #
null
��$ (
;
��( )
if
�� 
(
�� 
tile
�� 
is
�� 
RuleTile
�� $
)
��$ %
ruleTile
�� 
=
�� 
tile
�� #
as
��$ &
RuleTile
��' /
;
��/ 0
else
�� 
if
�� 
(
�� 
tile
�� 
is
��  
RuleOverrideTile
��! 1
)
��1 2
ruleTile
�� 
=
�� 
(
��  
tile
��  $
as
��% '
RuleOverrideTile
��( 8
)
��8 9
.
��9 :
m_Tile
��: @
;
��@ A
if
�� 
(
�� 
ruleTile
�� 
)
�� 
foreach
�� 
(
�� 

Vector3Int
�� '
neighborPosition
��( 8
in
��9 ;
ruleTile
��< D
.
��D E
neighborPositions
��E V
)
��V W
neighborPositions
�� )
.
��) *
Add
��* -
(
��- .
neighborPosition
��. >
)
��> ?
;
��? @
}
�� .
 m_CacheTilemapsNeighborPositions
�� ,
[
��, -
tilemap
��- 4
]
��4 5
=
��6 7
new
��8 ;
KeyValuePair
��< H
<
��H I
HashSet
��I P
<
��P Q
TileBase
��Q Y
>
��Y Z
,
��Z [
HashSet
��\ c
<
��c d

Vector3Int
��d n
>
��n o
>
��o p
(
��p q
	usedTiles
��q z
,
��z { 
neighborPositions��| �
)��� �
;��� �
}
�� 	
static
�� 
void
�� .
 ReleaseDestroyedTilemapCacheData
�� 4
(
��4 5
)
��5 6
{
�� 	.
 m_CacheTilemapsNeighborPositions
�� ,
=
��- ..
 m_CacheTilemapsNeighborPositions
��/ O
.
�� 
Where
�� 
(
�� 
data
�� 
=>
�� 
data
�� #
.
��# $
Key
��$ '
!=
��( *
null
��+ /
)
��/ 0
.
�� 
ToDictionary
�� 
(
�� 
data
�� "
=>
��# %
data
��& *
.
��* +
Key
��+ .
,
��. /
data
��0 4
=>
��5 7
data
��8 <
.
��< =
Value
��= B
)
��B C
;
��C D
}
�� 	
public
�� 
override
�� 
bool
�� "
GetTileAnimationData
�� 1
(
��1 2

Vector3Int
��2 <
position
��= E
,
��E F
ITilemap
��G O
tilemap
��P W
,
��W X
ref
��Y \
TileAnimationData
��] n 
tileAnimationData��o �
)��� �
{
�� 	
var
�� 
iden
�� 
=
�� 
	Matrix4x4
��  
.
��  !
identity
��! )
;
��) *
foreach
�� 
(
�� 

TilingRule
�� 
rule
��  $
in
��% '
m_TilingRules
��( 5
)
��5 6
{
�� 
if
�� 
(
�� 
rule
�� 
.
�� 
m_Output
�� !
==
��" $

TilingRule
��% /
.
��/ 0
OutputSprite
��0 <
.
��< =
	Animation
��= F
)
��F G
{
�� 
	Matrix4x4
�� 
	transform
�� '
=
��( )
iden
��* .
;
��. /
if
�� 
(
�� 
RuleMatches
�� #
(
��# $
rule
��$ (
,
��( )
position
��* 2
,
��2 3
tilemap
��4 ;
,
��; <
ref
��= @
	transform
��A J
)
��J K
)
��K L
{
�� 
tileAnimationData
�� )
.
��) *
animatedSprites
��* 9
=
��: ;
rule
��< @
.
��@ A
	m_Sprites
��A J
;
��J K
tileAnimationData
�� )
.
��) *
animationSpeed
��* 8
=
��9 :
rule
��; ?
.
��? @
m_AnimationSpeed
��@ P
;
��P Q
return
�� 
true
�� #
;
��# $
}
�� 
}
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
RefreshTile
�� (
(
��( )

Vector3Int
��) 3
location
��4 <
,
��< =
ITilemap
��> F
tilemap
��G N
)
��N O
{
�� 	
base
�� 
.
�� 
RefreshTile
�� 
(
�� 
location
�� %
,
��% &
tilemap
��' .
)
��. /
;
��/ 0
Tilemap
�� 
	tilemap_2
�� 
=
�� 
tilemap
��  '
.
��' (
GetComponent
��( 4
<
��4 5
Tilemap
��5 <
>
��< =
(
��= >
)
��> ?
;
��? @.
 ReleaseDestroyedTilemapCacheData
�� ,
(
��, -
)
��- .
;
��. /
if
�� 
(
�� &
IsTilemapUsedTilesChange
�� (
(
��( )
	tilemap_2
��) 2
)
��2 3
)
��3 4-
CachingTilemapNeighborPositions
�� /
(
��/ 0
	tilemap_2
��0 9
)
��9 :
;
��: ;
HashSet
�� 
<
�� 

Vector3Int
�� 
>
�� 
neighborPositions
��  1
=
��2 3.
 m_CacheTilemapsNeighborPositions
��4 T
[
��T U
	tilemap_2
��U ^
]
��^ _
.
��_ `
Value
��` e
;
��e f
foreach
�� 
(
�� 

Vector3Int
�� 
offset
��  &
in
��' )
neighborPositions
��* ;
)
��; <
{
�� 

Vector3Int
�� 
position
�� #
=
��$ %&
GetOffsetPositionReverse
��& >
(
��> ?
location
��? G
,
��G H
offset
��I O
)
��O P
;
��P Q
TileBase
�� 
tile
�� 
=
�� 
	tilemap_2
��  )
.
��) *
GetTile
��* 1
(
��1 2
position
��2 :
)
��: ;
;
��; <
RuleTile
�� 
ruleTile
�� !
=
��" #
null
��$ (
;
��( )
if
�� 
(
�� 
tile
�� 
is
�� 
RuleTile
�� $
)
��$ %
ruleTile
�� 
=
�� 
tile
�� #
as
��$ &
RuleTile
��' /
;
��/ 0
else
�� 
if
�� 
(
�� 
tile
�� 
is
��  
RuleOverrideTile
��! 1
)
��1 2
ruleTile
�� 
=
�� 
(
��  
tile
��  $
as
��% '
RuleOverrideTile
��( 8
)
��8 9
.
��9 :
m_Tile
��: @
;
��@ A
if
�� 
(
�� 
ruleTile
�� 
)
�� 
if
�� 
(
�� 
ruleTile
��  
.
��  !
neighborPositions
��! 2
.
��2 3
Contains
��3 ;
(
��; <
offset
��< B
)
��B C
)
��C D
base
�� 
.
�� 
RefreshTile
�� (
(
��( )
position
��) 1
,
��1 2
tilemap
��3 :
)
��: ;
;
��; <
}
�� 
}
�� 	
	protected
�� 
virtual
�� 
bool
�� 
RuleMatches
�� *
(
��* +

TilingRule
��+ 5
rule
��6 :
,
��: ;

Vector3Int
��< F
position
��G O
,
��O P
ITilemap
��Q Y
tilemap
��Z a
,
��a b
ref
��c f
	Matrix4x4
��g p
	transform
��q z
)
��z {
{
�� 	
if
�� 
(
�� 
RuleMatches
�� 
(
�� 
rule
��  
,
��  !
position
��" *
,
��* +
tilemap
��, 3
,
��3 4
$num
��5 6
)
��6 7
)
��7 8
{
�� 
	transform
�� 
=
�� 
	Matrix4x4
�� %
.
��% &
TRS
��& )
(
��) *
Vector3
��* 1
.
��1 2
zero
��2 6
,
��6 7

Quaternion
��8 B
.
��B C
Euler
��C H
(
��H I
$num
��I K
,
��K L
$num
��M O
,
��O P
$num
��Q S
)
��S T
,
��T U
Vector3
��V ]
.
��] ^
one
��^ a
)
��a b
;
��b c
return
�� 
true
�� 
;
�� 
}
�� 
if
�� 
(
�� 
rule
�� 
.
�� 
m_RuleTransform
�� $
==
��% '

TilingRule
��( 2
.
��2 3
	Transform
��3 <
.
��< =
Rotated
��= D
)
��D E
{
�� 
for
�� 
(
�� 
int
�� 
angle
�� 
=
��  
m_RotationAngle
��! 0
;
��0 1
angle
��2 7
<
��8 9
$num
��: =
;
��= >
angle
��? D
+=
��E G
m_RotationAngle
��H W
)
��W X
{
�� 
if
�� 
(
�� 
RuleMatches
�� #
(
��# $
rule
��$ (
,
��( )
position
��* 2
,
��2 3
tilemap
��4 ;
,
��; <
angle
��= B
)
��B C
)
��C D
{
�� 
	transform
�� !
=
��" #
	Matrix4x4
��$ -
.
��- .
TRS
��. 1
(
��1 2
Vector3
��2 9
.
��9 :
zero
��: >
,
��> ?

Quaternion
��@ J
.
��J K
Euler
��K P
(
��P Q
$num
��Q S
,
��S T
$num
��U W
,
��W X
-
��Y Z
angle
��Z _
)
��_ `
,
��` a
Vector3
��b i
.
��i j
one
��j m
)
��m n
;
��n o
return
�� 
true
�� #
;
��# $
}
�� 
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
rule
�� 
.
�� 
m_RuleTransform
�� )
==
��* ,

TilingRule
��- 7
.
��7 8
	Transform
��8 A
.
��A B
MirrorXY
��B J
)
��J K
{
�� 
if
�� 
(
�� 
RuleMatches
�� 
(
��  
rule
��  $
,
��$ %
position
��& .
,
��. /
tilemap
��0 7
,
��7 8
true
��9 =
,
��= >
true
��? C
)
��C D
)
��D E
{
�� 
	transform
�� 
=
�� 
	Matrix4x4
��  )
.
��) *
TRS
��* -
(
��- .
Vector3
��. 5
.
��5 6
zero
��6 :
,
��: ;

Quaternion
��< F
.
��F G
identity
��G O
,
��O P
new
��Q T
Vector3
��U \
(
��\ ]
-
��] ^
$num
��^ `
,
��` a
-
��b c
$num
��c e
,
��e f
$num
��g i
)
��i j
)
��j k
;
��k l
return
�� 
true
�� 
;
��  
}
�� 
if
�� 
(
�� 
RuleMatches
�� 
(
��  
rule
��  $
,
��$ %
position
��& .
,
��. /
tilemap
��0 7
,
��7 8
true
��9 =
,
��= >
false
��? D
)
��D E
)
��E F
{
�� 
	transform
�� 
=
�� 
	Matrix4x4
��  )
.
��) *
TRS
��* -
(
��- .
Vector3
��. 5
.
��5 6
zero
��6 :
,
��: ;

Quaternion
��< F
.
��F G
identity
��G O
,
��O P
new
��Q T
Vector3
��U \
(
��\ ]
-
��] ^
$num
��^ `
,
��` a
$num
��b d
,
��d e
$num
��f h
)
��h i
)
��i j
;
��j k
return
�� 
true
�� 
;
��  
}
�� 
if
�� 
(
�� 
RuleMatches
�� 
(
��  
rule
��  $
,
��$ %
position
��& .
,
��. /
tilemap
��0 7
,
��7 8
false
��9 >
,
��> ?
true
��@ D
)
��D E
)
��E F
{
�� 
	transform
�� 
=
�� 
	Matrix4x4
��  )
.
��) *
TRS
��* -
(
��- .
Vector3
��. 5
.
��5 6
zero
��6 :
,
��: ;

Quaternion
��< F
.
��F G
identity
��G O
,
��O P
new
��Q T
Vector3
��U \
(
��\ ]
$num
��] _
,
��_ `
-
��a b
$num
��b d
,
��d e
$num
��f h
)
��h i
)
��i j
;
��j k
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
rule
�� 
.
�� 
m_RuleTransform
�� )
==
��* ,

TilingRule
��- 7
.
��7 8
	Transform
��8 A
.
��A B
MirrorX
��B I
)
��I J
{
�� 
if
�� 
(
�� 
RuleMatches
�� 
(
��  
rule
��  $
,
��$ %
position
��& .
,
��. /
tilemap
��0 7
,
��7 8
true
��9 =
,
��= >
false
��? D
)
��D E
)
��E F
{
�� 
	transform
�� 
=
�� 
	Matrix4x4
��  )
.
��) *
TRS
��* -
(
��- .
Vector3
��. 5
.
��5 6
zero
��6 :
,
��: ;

Quaternion
��< F
.
��F G
identity
��G O
,
��O P
new
��Q T
Vector3
��U \
(
��\ ]
-
��] ^
$num
��^ `
,
��` a
$num
��b d
,
��d e
$num
��f h
)
��h i
)
��i j
;
��j k
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
rule
�� 
.
�� 
m_RuleTransform
�� )
==
��* ,

TilingRule
��- 7
.
��7 8
	Transform
��8 A
.
��A B
MirrorY
��B I
)
��I J
{
�� 
if
�� 
(
�� 
RuleMatches
�� 
(
��  
rule
��  $
,
��$ %
position
��& .
,
��. /
tilemap
��0 7
,
��7 8
false
��9 >
,
��> ?
true
��@ D
)
��D E
)
��E F
{
�� 
	transform
�� 
=
�� 
	Matrix4x4
��  )
.
��) *
TRS
��* -
(
��- .
Vector3
��. 5
.
��5 6
zero
��6 :
,
��: ;

Quaternion
��< F
.
��F G
identity
��G O
,
��O P
new
��Q T
Vector3
��U \
(
��\ ]
$num
��] _
,
��_ `
-
��a b
$num
��b d
,
��d e
$num
��f h
)
��h i
)
��i j
;
��j k
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
	protected
�� 
virtual
�� 
	Matrix4x4
�� #"
ApplyRandomTransform
��$ 8
(
��8 9

TilingRule
��9 C
.
��C D
	Transform
��D M
type
��N R
,
��R S
	Matrix4x4
��T ]
original
��^ f
,
��f g
float
��h m
perlinScale
��n y
,
��y z

Vector3Int��{ �
position��� �
)��� �
{
�� 	
float
�� 
perlin
�� 
=
�� 
GetPerlinValue
�� )
(
��) *
position
��* 2
,
��2 3
perlinScale
��4 ?
,
��? @
$num
��A H
)
��H I
;
��I J
switch
�� 
(
�� 
type
�� 
)
�� 
{
�� 
case
�� 

TilingRule
�� 
.
��  
	Transform
��  )
.
��) *
MirrorXY
��* 2
:
��2 3
return
�� 
original
�� #
*
��$ %
	Matrix4x4
��& /
.
��/ 0
TRS
��0 3
(
��3 4
Vector3
��4 ;
.
��; <
zero
��< @
,
��@ A

Quaternion
��B L
.
��L M
identity
��M U
,
��U V
new
��W Z
Vector3
��[ b
(
��b c
Math
��c g
.
��g h
Abs
��h k
(
��k l
perlin
��l r
-
��s t
$num
��u x
)
��x y
>
��z {
$num��| �
?��� �
$num��� �
:��� �
-��� �
$num��� �
,��� �
perlin��� �
<��� �
$num��� �
?��� �
$num��� �
:��� �
-��� �
$num��� �
,��� �
$num��� �
)��� �
)��� �
;��� �
case
�� 

TilingRule
�� 
.
��  
	Transform
��  )
.
��) *
MirrorX
��* 1
:
��1 2
return
�� 
original
�� #
*
��$ %
	Matrix4x4
��& /
.
��/ 0
TRS
��0 3
(
��3 4
Vector3
��4 ;
.
��; <
zero
��< @
,
��@ A

Quaternion
��B L
.
��L M
identity
��M U
,
��U V
new
��W Z
Vector3
��[ b
(
��b c
perlin
��c i
<
��j k
$num
��l o
?
��p q
$num
��r t
:
��u v
-
��w x
$num
��x z
,
��z {
$num
��| ~
,
��~ 
$num��� �
)��� �
)��� �
;��� �
case
�� 

TilingRule
�� 
.
��  
	Transform
��  )
.
��) *
MirrorY
��* 1
:
��1 2
return
�� 
original
�� #
*
��$ %
	Matrix4x4
��& /
.
��/ 0
TRS
��0 3
(
��3 4
Vector3
��4 ;
.
��; <
zero
��< @
,
��@ A

Quaternion
��B L
.
��L M
identity
��M U
,
��U V
new
��W Z
Vector3
��[ b
(
��b c
$num
��c e
,
��e f
perlin
��g m
<
��n o
$num
��p s
?
��t u
$num
��v x
:
��y z
-
��{ |
$num
��| ~
,
��~ 
$num��� �
)��� �
)��� �
;��� �
case
�� 

TilingRule
�� 
.
��  
	Transform
��  )
.
��) *
Rotated
��* 1
:
��1 2
int
�� 
angle
�� 
=
�� 
Mathf
��  %
.
��% &
Clamp
��& +
(
��+ ,
Mathf
��, 1
.
��1 2

FloorToInt
��2 <
(
��< =
perlin
��= C
*
��D E
m_RotationCount
��F U
)
��U V
,
��V W
$num
��X Y
,
��Y Z
m_RotationCount
��[ j
-
��k l
$num
��m n
)
��n o
*
��p q
m_RotationAngle��r �
;��� �
return
�� 
	Matrix4x4
�� $
.
��$ %
TRS
��% (
(
��( )
Vector3
��) 0
.
��0 1
zero
��1 5
,
��5 6

Quaternion
��7 A
.
��A B
Euler
��B G
(
��G H
$num
��H J
,
��J K
$num
��L N
,
��N O
-
��P Q
angle
��Q V
)
��V W
,
��W X
Vector3
��Y `
.
��` a
one
��a d
)
��d e
;
��e f
}
�� 
return
�� 
original
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
bool
�� 
	RuleMatch
�� %
(
��% &
int
��& )
neighbor
��* 2
,
��2 3
TileBase
��4 <
other
��= B
)
��B C
{
�� 	
if
�� 
(
�� 
other
�� 
is
�� 
RuleOverrideTile
�� )
)
��) *
other
�� 
=
�� 
(
�� 
other
�� 
as
�� !
RuleOverrideTile
��" 2
)
��2 3
.
��3 4
m_InstanceTile
��4 B
;
��B C
switch
�� 
(
�� 
neighbor
�� 
)
�� 
{
�� 
case
�� 

TilingRule
�� 
.
��  
Neighbor
��  (
.
��( )
This
��) -
:
��- .
return
��/ 5
other
��6 ;
==
��< >
this
��? C
;
��C D
case
�� 

TilingRule
�� 
.
��  
Neighbor
��  (
.
��( )
NotThis
��) 0
:
��0 1
return
��2 8
other
��9 >
!=
��? A
this
��B F
;
��F G
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
	protected
�� 
bool
�� 
RuleMatches
�� "
(
��" #

TilingRule
��# -
rule
��. 2
,
��2 3

Vector3Int
��4 >
position
��? G
,
��G H
ITilemap
��I Q
tilemap
��R Y
,
��Y Z
int
��[ ^
angle
��_ d
)
��d e
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
rule
��  $
.
��$ %
m_Neighbors
��% 0
.
��0 1
Count
��1 6
&&
��7 9
i
��: ;
<
��< =
rule
��> B
.
��B C!
m_NeighborPositions
��C V
.
��V W
Count
��W \
;
��\ ]
i
��^ _
++
��_ a
)
��a b
{
�� 
int
�� 
neighbor
�� 
=
�� 
rule
�� #
.
��# $
m_Neighbors
��$ /
[
��/ 0
i
��0 1
]
��1 2
;
��2 3

Vector3Int
�� 
positionOffset
�� )
=
��* + 
GetRotatedPosition
��, >
(
��> ?
rule
��? C
.
��C D!
m_NeighborPositions
��D W
[
��W X
i
��X Y
]
��Y Z
,
��Z [
angle
��\ a
)
��a b
;
��b c
TileBase
�� 
other
�� 
=
��  
tilemap
��! (
.
��( )
GetTile
��) 0
(
��0 1
GetOffsetPosition
��1 B
(
��B C
position
��C K
,
��K L
positionOffset
��M [
)
��[ \
)
��\ ]
;
��] ^
if
�� 
(
�� 
!
�� 
	RuleMatch
�� 
(
�� 
neighbor
�� '
,
��' (
other
��) .
)
��. /
)
��/ 0
{
�� 
return
�� 
false
��  
;
��  !
}
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
	protected
�� 
bool
�� 
RuleMatches
�� "
(
��" #

TilingRule
��# -
rule
��. 2
,
��2 3

Vector3Int
��4 >
position
��? G
,
��G H
ITilemap
��I Q
tilemap
��R Y
,
��Y Z
bool
��[ _
mirrorX
��` g
,
��g h
bool
��i m
mirrorY
��n u
)
��u v
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
rule
��  $
.
��$ %
m_Neighbors
��% 0
.
��0 1
Count
��1 6
&&
��7 9
i
��: ;
<
��< =
rule
��> B
.
��B C!
m_NeighborPositions
��C V
.
��V W
Count
��W \
;
��\ ]
i
��^ _
++
��_ a
)
��a b
{
�� 
int
�� 
neighbor
�� 
=
�� 
rule
�� #
.
��# $
m_Neighbors
��$ /
[
��/ 0
i
��0 1
]
��1 2
;
��2 3

Vector3Int
�� 
positionOffset
�� )
=
��* +!
GetMirroredPosition
��, ?
(
��? @
rule
��@ D
.
��D E!
m_NeighborPositions
��E X
[
��X Y
i
��Y Z
]
��Z [
,
��[ \
mirrorX
��] d
,
��d e
mirrorY
��f m
)
��m n
;
��n o
TileBase
�� 
other
�� 
=
��  
tilemap
��! (
.
��( )
GetTile
��) 0
(
��0 1
GetOffsetPosition
��1 B
(
��B C
position
��C K
,
��K L
positionOffset
��M [
)
��[ \
)
��\ ]
;
��] ^
if
�� 
(
�� 
!
�� 
	RuleMatch
�� 
(
�� 
neighbor
�� '
,
��' (
other
��) .
)
��. /
)
��/ 0
{
�� 
return
�� 
false
��  
;
��  !
}
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
	protected
�� 
virtual
�� 

Vector3Int
�� $ 
GetRotatedPosition
��% 7
(
��7 8

Vector3Int
��8 B
position
��C K
,
��K L
int
��M P
rotation
��Q Y
)
��Y Z
{
�� 	
switch
�� 
(
�� 
rotation
�� 
)
�� 
{
�� 
case
�� 
$num
�� 
:
�� 
return
�� 
position
�� #
;
��# $
case
�� 
$num
�� 
:
�� 
return
�� 
new
�� 

Vector3Int
�� )
(
��) *
position
��* 2
.
��2 3
y
��3 4
,
��4 5
-
��6 7
position
��7 ?
.
��? @
x
��@ A
,
��A B
$num
��C D
)
��D E
;
��E F
case
�� 
$num
�� 
:
�� 
return
�� 
new
�� 

Vector3Int
�� )
(
��) *
-
��* +
position
��+ 3
.
��3 4
x
��4 5
,
��5 6
-
��7 8
position
��8 @
.
��@ A
y
��A B
,
��B C
$num
��D E
)
��E F
;
��F G
case
�� 
$num
�� 
:
�� 
return
�� 
new
�� 

Vector3Int
�� )
(
��) *
-
��* +
position
��+ 3
.
��3 4
y
��4 5
,
��5 6
position
��7 ?
.
��? @
x
��@ A
,
��A B
$num
��C D
)
��D E
;
��E F
}
�� 
return
�� 
position
�� 
;
�� 
}
�� 	
	protected
�� 
virtual
�� 

Vector3Int
�� $!
GetMirroredPosition
��% 8
(
��8 9

Vector3Int
��9 C
position
��D L
,
��L M
bool
��N R
mirrorX
��S Z
,
��Z [
bool
��\ `
mirrorY
��a h
)
��h i
{
�� 	
if
�� 
(
�� 
mirrorX
�� 
)
�� 
position
�� 
.
�� 
x
�� 
*=
�� 
-
�� 
$num
��  
;
��  !
if
�� 
(
�� 
mirrorY
�� 
)
�� 
position
�� 
.
�� 
y
�� 
*=
�� 
-
�� 
$num
��  
;
��  !
return
�� 
position
�� 
;
�� 
}
�� 	
	protected
�� 
virtual
�� 

Vector3Int
�� $
GetOffsetPosition
��% 6
(
��6 7

Vector3Int
��7 A
location
��B J
,
��J K

Vector3Int
��L V
offset
��W ]
)
��] ^
{
�� 	
return
�� 
location
�� 
+
�� 
offset
�� $
;
��$ %
}
�� 	
	protected
�� 
virtual
�� 

Vector3Int
�� $&
GetOffsetPositionReverse
��% =
(
��= >

Vector3Int
��> H
position
��I Q
,
��Q R

Vector3Int
��S ]
offset
��^ d
)
��d e
{
�� 	
return
�� 
position
�� 
-
�� 
offset
�� $
;
��$ %
}
�� 	
}
�� 
}�� ��
�C:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Tiles\TerrainTile\TerrainTile.cs
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
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
return
��  
$num
��! #
;
��# $
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
return
��  
$num
��! #
;
��# $
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
return
��  
$num
��! #
;
��# $
case
�� 
$num
�� 
:
�� 
return
��  
$num
��! #
;
��# $
}
�� 
return
�� 
-
�� 
$num
�� 
;
�� 
}
�� 	
private
�� 
	Matrix4x4
�� 
GetTransform
�� &
(
��& '
byte
��' +
mask
��, 0
)
��0 1
{
�� 	
switch
�� 
(
�� 
mask
�� 
)
�� 
{
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
return
�� 
	Matrix4x4
�� $
.
��$ %
TRS
��% (
(
��( )
Vector3
��) 0
.
��0 1
zero
��1 5
,
��5 6

Quaternion
��7 A
.
��A B
Euler
��B G
(
��G H
$num
��H J
,
��J K
$num
��L N
,
��N O
-
��P Q
$num
��Q T
)
��T U
,
��U V
Vector3
��W ^
.
��^ _
one
��_ b
)
��b c
;
��c d
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
return
�� 
	Matrix4x4
�� $
.
��$ %
TRS
��% (
(
��( )
Vector3
��) 0
.
��0 1
zero
��1 5
,
��5 6

Quaternion
��7 A
.
��A B
Euler
��B G
(
��G H
$num
��H J
,
��J K
$num
��L N
,
��N O
-
��P Q
$num
��Q U
)
��U V
,
��V W
Vector3
��X _
.
��_ `
one
��` c
)
��c d
;
��d e
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
case
�� 
$num
�� 
:
�� 
return
�� 
	Matrix4x4
�� $
.
��$ %
TRS
��% (
(
��( )
Vector3
��) 0
.
��0 1
zero
��1 5
,
��5 6

Quaternion
��7 A
.
��A B
Euler
��B G
(
��G H
$num
��H J
,
��J K
$num
��L N
,
��N O
-
��P Q
$num
��Q U
)
��U V
,
��V W
Vector3
��X _
.
��_ `
one
��` c
)
��c d
;
��d e
}
�� 
return
�� 
	Matrix4x4
�� 
.
�� 
identity
�� %
;
��% &
}
�� 	
}
�� 
[
�� 
CustomEditor
�� 
(
�� 
typeof
�� 
(
�� 
TerrainTile
�� $
)
��$ %
)
��% &
]
��& '
public
�� 

class
�� 
TerrainTileEditor
�� "
:
��# $
Editor
��% +
{
�� 
private
�� 
TerrainTile
�� 
tile
��  
{
��! "
get
��# &
{
��' (
return
��) /
(
��0 1
target
��1 7
as
��8 :
TerrainTile
��; F
)
��F G
;
��G H
}
��I J
}
��K L
public
�� 
void
�� 
OnEnable
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
tile
�� 
.
�� 
	m_Sprites
�� 
==
�� !
null
��" &
||
��' )
tile
��* .
.
��. /
	m_Sprites
��/ 8
.
��8 9
Length
��9 ?
!=
��@ B
$num
��C E
)
��E F
{
�� 
tile
�� 
.
�� 
	m_Sprites
�� 
=
��  
new
��! $
Sprite
��% +
[
��+ ,
$num
��, .
]
��. /
;
��/ 0
EditorUtility
�� 
.
�� 
SetDirty
�� &
(
��& '
tile
��' +
)
��+ ,
;
��, -
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
OnInspectorGUI
�� +
(
��+ ,
)
��, -
{
�� 	
EditorGUILayout
�� 
.
�� 

LabelField
�� &
(
��& '
$str
��' a
)
��a b
;
��b c
EditorGUILayout
�� 
.
�� 
Space
�� !
(
��! "
)
��" #
;
��# $
float
�� 
oldLabelWidth
�� 
=
��  !
EditorGUIUtility
��" 2
.
��2 3

labelWidth
��3 =
;
��= >
EditorGUIUtility
�� 
.
�� 

labelWidth
�� '
=
��( )
$num
��* -
;
��- .
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� &
(
��& '
)
��' (
;
��( )
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
(
��  !
Sprite
��! '
)
��' (
EditorGUILayout
��) 8
.
��8 9
ObjectField
��9 D
(
��D E
$str
��E M
,
��M N
tile
��O S
.
��S T
	m_Sprites
��T ]
[
��] ^
$num
��^ _
]
��_ `
,
��` a
typeof
��b h
(
��h i
Sprite
��i o
)
��o p
,
��p q
false
��r w
,
��w x
null
��y }
)
��} ~
;
��~ 
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
(
��  !
Sprite
��! '
)
��' (
EditorGUILayout
��) 8
.
��8 9
ObjectField
��9 D
(
��D E
$str
��E R
,
��R S
tile
��T X
.
��X Y
	m_Sprites
��Y b
[
��b c
$num
��c d
]
��d e
,
��e f
typeof
��g m
(
��m n
Sprite
��n t
)
��t u
,
��u v
false
��w |
,
��| }
null��~ �
)��� �
;��� �
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
(
��  !
Sprite
��! '
)
��' (
EditorGUILayout
��) 8
.
��8 9
ObjectField
��9 D
(
��D E
$str
��E _
,
��_ `
tile
��a e
.
��e f
	m_Sprites
��f o
[
��o p
$num
��p q
]
��q r
,
��r s
typeof
��t z
(
��z {
Sprite��{ �
)��� �
,��� �
false��� �
,��� �
null��� �
)��� �
;��� �
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
(
��  !
Sprite
��! '
)
��' (
EditorGUILayout
��) 8
.
��8 9
ObjectField
��9 D
(
��D E
$str
��E Y
,
��Y Z
tile
��[ _
.
��_ `
	m_Sprites
��` i
[
��i j
$num
��j k
]
��k l
,
��l m
typeof
��n t
(
��t u
Sprite
��u {
)
��{ |
,
��| }
false��~ �
,��� �
null��� �
)��� �
;��� �
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
(
��  !
Sprite
��! '
)
��' (
EditorGUILayout
��) 8
.
��8 9
ObjectField
��9 D
(
��D E
$str
��E Y
,
��Y Z
tile
��[ _
.
��_ `
	m_Sprites
��` i
[
��i j
$num
��j k
]
��k l
,
��l m
typeof
��n t
(
��t u
Sprite
��u {
)
��{ |
,
��| }
false��~ �
,��� �
null��� �
)��� �
;��� �
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
(
��  !
Sprite
��! '
)
��' (
EditorGUILayout
��) 8
.
��8 9
ObjectField
��9 D
(
��D E
$str
��E _
,
��_ `
tile
��a e
.
��e f
	m_Sprites
��f o
[
��o p
$num
��p q
]
��q r
,
��r s
typeof
��t z
(
��z {
Sprite��{ �
)��� �
,��� �
false��� �
,��� �
null��� �
)��� �
;��� �
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
(
��  !
Sprite
��! '
)
��' (
EditorGUILayout
��) 8
.
��8 9
ObjectField
��9 D
(
��D E
$str
��E d
,
��d e
tile
��f j
.
��j k
	m_Sprites
��k t
[
��t u
$num
��u v
]
��v w
,
��w x
typeof
��y 
(�� �
Sprite��� �
)��� �
,��� �
false��� �
,��� �
null��� �
)��� �
;��� �
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
(
��  !
Sprite
��! '
)
��' (
EditorGUILayout
��) 8
.
��8 9
ObjectField
��9 D
(
��D E
$str
��E d
,
��d e
tile
��f j
.
��j k
	m_Sprites
��k t
[
��t u
$num
��u v
]
��v w
,
��w x
typeof
��y 
(�� �
Sprite��� �
)��� �
,��� �
false��� �
,��� �
null��� �
)��� �
;��� �
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
(
��  !
Sprite
��! '
)
��' (
EditorGUILayout
��) 8
.
��8 9
ObjectField
��9 D
(
��D E
$str
��E O
,
��O P
tile
��Q U
.
��U V
	m_Sprites
��V _
[
��_ `
$num
��` a
]
��a b
,
��b c
typeof
��d j
(
��j k
Sprite
��k q
)
��q r
,
��r s
false
��t y
,
��y z
null
��{ 
)�� �
;��� �
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
(
��  !
Sprite
��! '
)
��' (
EditorGUILayout
��) 8
.
��8 9
ObjectField
��9 D
(
��D E
$str
��E S
,
��S T
tile
��U Y
.
��Y Z
	m_Sprites
��Z c
[
��c d
$num
��d e
]
��e f
,
��f g
typeof
��h n
(
��n o
Sprite
��o u
)
��u v
,
��v w
false
��x }
,
��} ~
null�� �
)��� �
;��� �
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
Sprite
��" (
)
��( )
EditorGUILayout
��* 9
.
��9 :
ObjectField
��: E
(
��E F
$str
��F U
,
��U V
tile
��W [
.
��[ \
	m_Sprites
��\ e
[
��e f
$num
��f h
]
��h i
,
��i j
typeof
��k q
(
��q r
Sprite
��r x
)
��x y
,
��y z
false��{ �
,��� �
null��� �
)��� �
;��� �
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
Sprite
��" (
)
��( )
EditorGUILayout
��* 9
.
��9 :
ObjectField
��: E
(
��E F
$str
��F \
,
��\ ]
tile
��^ b
.
��b c
	m_Sprites
��c l
[
��l m
$num
��m o
]
��o p
,
��p q
typeof
��r x
(
��x y
Sprite
��y 
)�� �
,��� �
false��� �
,��� �
null��� �
)��� �
;��� �
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
Sprite
��" (
)
��( )
EditorGUILayout
��* 9
.
��9 :
ObjectField
��: E
(
��E F
$str
��F \
,
��\ ]
tile
��^ b
.
��b c
	m_Sprites
��c l
[
��l m
$num
��m o
]
��o p
,
��p q
typeof
��r x
(
��x y
Sprite
��y 
)�� �
,��� �
false��� �
,��� �
null��� �
)��� �
;��� �
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
Sprite
��" (
)
��( )
EditorGUILayout
��* 9
.
��9 :
ObjectField
��: E
(
��E F
$str
��F R
,
��R S
tile
��T X
.
��X Y
	m_Sprites
��Y b
[
��b c
$num
��c e
]
��e f
,
��f g
typeof
��h n
(
��n o
Sprite
��o u
)
��u v
,
��v w
false
��x }
,
��} ~
null�� �
)��� �
;��� �
tile
�� 
.
�� 
	m_Sprites
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
Sprite
��" (
)
��( )
EditorGUILayout
��* 9
.
��9 :
ObjectField
��: E
(
��E F
$str
��F M
,
��M N
tile
��O S
.
��S T
	m_Sprites
��T ]
[
��] ^
$num
��^ `
]
��` a
,
��a b
typeof
��c i
(
��i j
Sprite
��j p
)
��p q
,
��q r
false
��s x
,
��x y
null
��z ~
)
��~ 
;�� �
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� (
(
��( )
)
��) *
)
��* +
EditorUtility
�� 
.
�� 
SetDirty
�� &
(
��& '
tile
��' +
)
��+ ,
;
��, -
EditorGUIUtility
�� 
.
�� 

labelWidth
�� '
=
��( )
oldLabelWidth
��* 7
;
��7 8
}
�� 	
}
�� 
}�� �K
�C:\Users\Davis\Desktop\Facultad\5to Periodo\Tecnologias\Pacman\ClientePacman\Packages\com.unity.2d.tilemap.extras\Runtime\Tiles\WeightedRandomTile\WeightedRandomTile.cs
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
typeof	rr{ �
(
rr� �
Sprite
rr� �
)
rr� �
,
rr� �
false
rr� �
,
rr� �
null
rr� �
)
rr� �
;
rr� �
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
�� 	
}
�� 
}�� 