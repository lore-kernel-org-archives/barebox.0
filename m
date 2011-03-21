Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q1gsu-0006U7-Dd
	for barebox@lists.infradead.org; Mon, 21 Mar 2011 15:19:11 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Mon, 21 Mar 2011 16:19:03 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3BF5211@SRV-VS06.TELEVIC.COM>
Content-Language: en-US
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1624321153=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: NAND flash
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--===============1624321153==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3BF5211SRVVS06TELE_";
	type="multipart/alternative"

--_004_6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3BF5211SRVVS06TELE_
Content-Type: multipart/alternative;
	boundary="_000_6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3BF5211SRVVS06TELE_"

--_000_6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3BF5211SRVVS06TELE_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

On our own i.MX27 based boards, we have Micron NAND flash memory (MT29F2G08=
ABBEAH4). Besides the BI-swapping problem for 2K NAND flashes, I can see th=
at this chip needs an initial reset command before it becomes operational. =
This is something that has to be done in the early boot code, so before loa=
ding the first page of bootloader code (the reset should be sent before the=
 first page of code can be read from flash).
From Freescale doc, I found that we have to blow certain fuses to make the =
i.MX27 boot from internal ROM. According to the document, the ROM code take=
s care about the initial reset before loading the first page of code from t=
he NAND flash.
I'm however a little concerned about this figure in the document :

[cid:image002.png@01CBE7E3.B1A2CCA0]

If I understand well, this should be the structure of the 2K NFC buffer whe=
n booting from internal ROM. I don't think this will be the structure when =
loading the first page of Barebox code, correct ?
Anyone familiar with this Micron specific flash problem ? And the consequen=
ces for Barebox ? Do we have to make modifications in the Barebox code to t=
ackle this ?

(because the Freescale document is rather WinCE related, I'm not sure this =
also applies to Barebox/Linux based systems...)

I hope we didn't make a bad choice of NAND flash in combination with i.MX27=
... ? ;-)


Best Regards,

Filip


(Btw : anyone can tell me what CSF and DCD stand for... ? Did not find any =
explanations in the i.MX27 reference manual yet)

--_000_6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3BF5211SRVVS06TELE_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 12 (filtered medium)"><!--[if !mso]><style>v\:* {behavior:url(#def=
ault#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Arial","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"2050" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DNL link=3Dblue vlink=
=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif"'>Hi,<o:p></o:p></span></p><p=
 class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>On our own i=
.MX27 based boards, we have Micron NAND flash memory (MT29F2G08ABBEAH4). Be=
sides the BI-swapping problem for 2K NAND flashes, I can see that this chip=
 needs an initial reset command before it becomes operational. This is some=
thing that has to be done in the early boot code, so before loading the fir=
st page of bootloader code (the reset should be sent before the first page =
of code can be read from flash).<o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f"'>From Freescale doc, I found that we have to blow certain fuses to make =
the i.MX27 boot from internal ROM. According to the document, the ROM code =
takes care about the initial reset before loading the first page of code fr=
om the NAND flash.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>I&#8217;m =
however a little concerned about this figure in the document :<o:p></o:p></=
span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMs=
oNormal><span style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><=
img width=3D494 height=3D458 id=3D"Picture_x0020_1" src=3D"cid:image002.png=
@01CBE7E3.B1A2CCA0"></span><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif"'><o:p></o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>If I understand wel=
l, this should be the structure of the 2K NFC buffer when booting from inte=
rnal ROM. I don&#8217;t think this will be the structure when loading the f=
irst page of Barebox code, correct ?<o:p></o:p></span></p><p class=3DMsoNor=
mal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-=
serif"'>Anyone familiar with this Micron specific flash problem ? And the c=
onsequences for Barebox ? Do we have to make modifications in the Barebox c=
ode to tackle this ?<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&=
nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif"'>(because the Freescale docum=
ent is rather WinCE related, I&#8217;m not sure this also applies to Barebo=
x/Linux based systems&#8230;)<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>I hope we didn&#8217=
;t make a bad choice of NAND flash in combination with i.MX27&#8230; ? ;-)<=
o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><=
p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
'>Best Regards,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</=
o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif"'>Filip<o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>=
&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif"'>(Btw : anyone can tell me w=
hat CSF and DCD stand for&#8230; ? Did not find any explanations in the i.M=
X27 reference manual yet)<o:p></o:p></span></p></div></body></html>=

--_000_6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3BF5211SRVVS06TELE_--

--_004_6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3BF5211SRVVS06TELE_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=51367;
	creation-date="Mon, 21 Mar 2011 16:19:03 GMT";
	modification-date="Mon, 21 Mar 2011 16:19:03 GMT"
Content-ID: <image002.png@01CBE7E3.B1A2CCA0>
Content-Transfer-Encoding: base64

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
cSsUgYMSt0IRybuoxB0zKHErFIGDErdCEcm7qMQdMyhxKxSBgxK3QhHJu6jEHTMocSsUgYMSt0IR
ybuoxB0zKHErFIGDErdCEcm7qMQdMyhxKxSBgxK3QhHJu6jEHTMocSsUgYMSt0IRybuoxB0zKHEr
FIGDErdCEcm7qMQdMyhxKxSBgxK3QhHJu6jEHTMocSsUgYMSt0IRybuoxB0zKHErFIGDErdCEcm7
qMQdMyhxKxSBgxK3QhHJu6jEHTMocSsUgYMSt0IRybuoxB0zKHErFIGDErdCEcm7qMQdMyhxKxSB
gxK3QhHJu6jEHTMocSsUgYMSt0IRybuoxB0zKHErFIGDErdCEcm7qMQdMyhxKxSBgxK3QhHJu6jE
HTMocSsUgYMSt0IRybuoxB0zKHErFIGDErdCEcm7qMQdMyhxKxSBgxJ3APHll1+ahg0byrOVKVPG
fPrpp+6x33//3fz6669RKu+nn34yf//9d6zc2/Lly02JEiXk3h599FHz22+/Rel82mr27Nk350eh
xB1jKHErFIGDEneAn+n06dPy+8cff5S/f/jhB/m7ZMmS5r333rvuso4fP24aNWpk/vjjjxjf19tv
v21uv/1289dff7l/c2/nz5+/7jK6d+9upk6denN+FErcMYYSt0IROChxBwinTp2SZ7p8+bK7D6I7
cOCA+eijj0y6dOlEG7906ZI5c+aMefPNN82AAQPM3LlzXULl98qVK82ECRPMO++8Y3LlymV69+5t
fvnlFzNv3jxX+964caP56quvpBx+r1q1yrz44otm7969kd5bhgwZzLlz53z2vf766+bzzz+X35T/
9NNPm1dffdUcPnzYlTl27JgZM2aMWbhwoenYsaOZPn267GcwwfVGjBhhPvvss7j/UShxxxhK3ApF
4KDEHUD069fPJEuWzLRu3dq8++677v5du3aZrFmzmnbt2omJGu21R48eZsqUKaZixYpm3LhxInfb
bbfJsaVLl8r5BQoUMKNHjzbbtm0zd911l2tqf+SRR8z8+fOFeNOkSWP69+9vxo8fbypXrmw+/vhj
n3v6+uuvr9mhQtqFCxc2L7zwglzrvvvuE/LGtN+mTRszdOhQM3nyZHkuCBxUr17d9OrVy0ycOFEI
b/fu3XH7o1DijjGUuBWKwEGJO8BA6x01apTJmzevPOM///wj+8uXL2/ef/99+X3hwgVXHpKGOEHu
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
rCceay/ziyw4skWJ+6qIjLhHjBhhxo4da86cOWMefvhh89133/kcx4x++vRp2fyJm8xguXPnNps0
dt68OOQF0/nJp9y/F8yf77yLWi/RhRK3QhE4BP3L6tSxg5uABVOlksjVAXHPnj3bZ1+iRIlcMub4
woULfY63bNlStHLmsZnjPnDggHsMLb169erm1KlTt3zdeuf58bZPlzKVWbxokb500YQSt0IROAT1
yxr20lDRsiFtPHnx6N3rZ8pVRACv8meffVYczLZv32569erl41V+6NAhU7ZsWTNx4kTz6aefmiFD
hphy5cqZv//+W8i5cePG5u233xby/uCDD0yZMmXMa6+9phUbjgvnz5stmzab5ImTyCBS47ijDyVu
hSJwCPp63GROu90h7QJ585kV7y3XFrkGMInXr1/f1KlTRzTl0aNHXyHDXHatWrXkOLHadqUr/h/p
1DfncrxZs2Y6t+3B9999b+4tUVKmbBhIagKWmEGJW6EIHIKegCV96jQme6bMupynIqgYP3acJF1x
E7AkS2He1QQs0YYSt0IROAT1yxoxbJhJniixWf/++9oSiqDCJmAh3WnWjJlM+zZtzC8XLmjFRBNK
3ApF4BDUL+uNiRPNbZmzym/CbxrWq2feXbJEW0VxwwFxp02ZypQqVtyUKFLUjB0zRislBlDiVigC
h5D5srp36WriOx+6hoMpggH/OG7gnwdecf1Q4lYoAoeQ+LJ6dusui42kSZ7SbNmixK248Rj64kum
9SOPuH8vW7rMfLh9u1ZMNKHErVAEDkH/sp7u08cnjnuzxnErgoCfT540f1/+W34TSpctY2azyC8m
XnH9UOJWKAKHIIeDjZKwG0j79uy3mduyZDU7dnysraIICjCN73NIm7nulEmTaThYDKDErVAEDkFf
1jNT2nRC2vly32UWLligLaIICkhQU/6+sjJlkytHTo3jjiGUuBWKwCEk4rizZcpslixarK2hCBrG
vTpWlvPUOO7YgRK3QhE4BPXLGjl8uEmZJKlZqiFgiiDDxnFD2kzZtGrRwpw5fVorJppQ4lYoAoeg
flmvvPyySRI/ofv3i0OGmGVLl2qrKG44hLjTpBXSJgnL0Bdf1EqJAZS4FYrAIahf1sU//nB/nz17
1jRu0FCzqCmCAogbh7RG9RtoZcQClLgVisAhJL6sPy9dMi0fftgkdD70zZqARREE2AQsPx4/Ln9f
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
AABJRU5ErkJggg==

--_004_6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3BF5211SRVVS06TELE_--


--===============1624321153==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1624321153==--
