Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmOFK-0002CP-Lh
 for barebox@lists.infradead.org; Wed, 04 Jul 2012 11:59:53 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Wed, 4 Jul 2012 13:53:39 +0200
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9019FCE5B1DAE@SRV-VS06.TELEVIC.COM>
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
Content-Type: multipart/mixed; boundary="===============1420034425605346260=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: starting ethernet switch in SMI mode
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--===============1420034425605346260==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_6EE7D1502C48E44E92DCADF9DD3E0DB9019FCE5B1DAESRVVS06TELE_";
	type="multipart/alternative"

--_004_6EE7D1502C48E44E92DCADF9DD3E0DB9019FCE5B1DAESRVVS06TELE_
Content-Type: multipart/alternative;
	boundary="_000_6EE7D1502C48E44E92DCADF9DD3E0DB9019FCE5B1DAESRVVS06TELE_"

--_000_6EE7D1502C48E44E92DCADF9DD3E0DB9019FCE5B1DAESRVVS06TELE_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

On our board with i.MX27 processor, we have a Micrel 5-port Managed Etherne=
t switch (ksz8895mq). When starting in normal MII mode, from the Barebox pr=
ompt, I can get an IP address by executing the dhcp command.
When I change the switch's mode to SPI (via hardware strapping), I'm not ab=
le to get an IP address anymore via DHCP. In this mode, one has to write to=
 a register in the switch to make the switch start. So, within our startup =
code, I added some code to start the switch. Reading back the register, I s=
ee that the bit is set, so I assume the switch sould be running at that mom=
ent. However, when executing the dhcp command, I get "phy0: Autonegotiation=
 timeout".
That's strange, because, when I boot to Linux kernel, the kernel starts up =
without any problem and gets an IP address via DHCP. So in Linux, it's doin=
g OK.
Because it is working in Linux, I'm quite sure the switch was started in a =
correct way.
I don't understand why Barebox is unable to contact the switch while there'=
s no problem in Linux to do the same. Anyone any idea on this problem ?

Thanks in advance !

Filip

[cid:image003.png@01CD59EC.6A109D00]

Filip Vanalme

Senior Development Engineer





Tel. +32 51 30.30.45

Fax +32 51 33.18.86

www.televic.com





Televic NV * Leo Bekaertlaan 1 * 8870 Izegem * Belgium
Company number 0402.757.955 * RPR Kortrijk




--_000_6EE7D1502C48E44E92DCADF9DD3E0DB9019FCE5B1DAESRVVS06TELE_
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
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>On our board=
 with i.MX27 processor, we have a Micrel 5-port Managed Ethernet switch (ks=
z8895mq). When starting in normal MII mode, from the Barebox prompt, I can =
get an IP address by executing the dhcp command.<o:p></o:p></span></p><p cl=
ass=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif"'>When I change the switch&#8217;s mode to SPI (via hardw=
are strapping), I&#8217;m not able to get an IP address anymore via DHCP. I=
n this mode, one has to write to a register in the switch to make the switc=
h start. So, within our startup code, I added some code to start the switch=
. Reading back the register, I see that the bit is set, so I assume the swi=
tch sould be running at that moment. However, when executing the dhcp comma=
nd, I get &#8220;<i>phy0: Autonegotiation timeout</i>&#8221;. <o:p></o:p></=
span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif"'>That&#8217;s strange, because, when I boo=
t to Linux kernel, the kernel starts up without any problem and <u>gets an =
IP address via DHCP</u>. So in Linux, it&#8217;s doing OK. <o:p></o:p></spa=
n></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif"'>Because it is working in Linux, I&#8217;m qu=
ite sure the switch was started in a correct way. <o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif"'>I don&#8217;t understand why Barebox is unable to con=
tact the switch while there&#8217;s no problem in Linux to do the same. Any=
one any idea on this problem ?<o:p></o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Thanks in advance !<=
o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><=
p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif"'>Filip<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:=
12.0pt;font-family:"Times New Roman","serif"'><img width=3D261 height=3D66 =
id=3D"Picture_x0020_1" src=3D"cid:image003.png@01CD59EC.6A109D00" alt=3D"te=
levic healthcare"><o:p></o:p></span></p><table class=3DMsoNormalTable borde=
r=3D0 cellspacing=3D0 cellpadding=3D0 width=3D500 style=3D'width:375.0pt'><=
tr><td colspan=3D2 style=3D'padding:0cm 0cm 0cm 0cm'><p class=3DMsoNormal><=
b><span style=3D'font-size:8.0pt;font-family:"Arial","sans-serif"'><o:p>&nb=
sp;</o:p></span></b></p><p class=3DMsoNormal><b><span style=3D'font-size:8.=
0pt;font-family:"Arial","sans-serif"'>Filip Vanalme</span></b><span style=
=3D'font-size:12.0pt;font-family:"Times New Roman","serif"'><o:p></o:p></sp=
an></p></td></tr><tr><td colspan=3D2 style=3D'padding:0cm 0cm 0cm 0cm'><p c=
lass=3DMsoNormal><span style=3D'font-size:8.0pt;font-family:"Arial","sans-s=
erif"'>Senior Development Engineer</span><span style=3D'font-size:12.0pt;fo=
nt-family:"Times New Roman","serif"'><o:p></o:p></span></p></td></tr><tr st=
yle=3D'height:9.0pt'><td width=3D150 style=3D'width:112.5pt;padding:0cm 0cm=
 0cm 0cm;height:9.0pt'><p class=3DMsoNormal><span style=3D'font-size:9.0pt;=
font-family:"Times New Roman","serif"'><o:p>&nbsp;</o:p></span></p></td><td=
 style=3D'padding:0cm 0cm 0cm 0cm;height:9.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:"Times New Roman","serif"'><o:p>&nbsp;=
</o:p></span></p></td></tr><tr><td width=3D144 style=3D'width:108.0pt;paddi=
ng:0cm 0cm 0cm 0cm'><p class=3DMsoNormal><span style=3D'font-size:8.0pt;fon=
t-family:"Arial","sans-serif"'>Tel. +32 51 30.30.45</span><span style=3D'fo=
nt-size:12.0pt;font-family:"Times New Roman","serif"'><o:p></o:p></span></p=
></td><td width=3D356 style=3D'width:267.0pt;padding:0cm 0cm 0cm 0cm'><p cl=
ass=3DMsoNormal><span style=3D'font-size:8.0pt;font-family:"Arial","sans-se=
rif"'>Fax +32 51 33.18.86</span><span style=3D'font-size:12.0pt;font-family=
:"Times New Roman","serif"'><o:p></o:p></span></p></td></tr><tr><td width=
=3D144 style=3D'width:108.0pt;padding:0cm 0cm 0cm 0cm'><p class=3DMsoNormal=
><span style=3D'font-size:8.0pt;font-family:"Arial","sans-serif"'><a href=
=3D"www.televic.com"><span style=3D'color:blue'>www.televic.com</span></a><=
/span><span style=3D'font-size:12.0pt;font-family:"Times New Roman","serif"=
'><o:p></o:p></span></p></td><td width=3D356 style=3D'width:267.0pt;padding=
:0cm 0cm 0cm 0cm'></td></tr><tr style=3D'height:9.0pt'><td width=3D144 styl=
e=3D'width:108.0pt;padding:0cm 0cm 0cm 0cm;height:9.0pt'><p class=3DMsoNorm=
al><span style=3D'font-size:9.0pt;font-family:"Times New Roman","serif"'><o=
:p>&nbsp;</o:p></span></p></td><td style=3D'padding:0cm 0cm 0cm 0cm;height:=
9.0pt'><p class=3DMsoNormal><span style=3D'font-size:9.0pt;font-family:"Tim=
es New Roman","serif"'><o:p>&nbsp;</o:p></span></p></td></tr><tr><td colspa=
n=3D2 style=3D'padding:0cm 0cm 0cm 0cm'><p class=3DMsoNormal><span style=3D=
'font-size:8.0pt;font-family:"Arial","sans-serif"'>Televic NV &#8226; Leo B=
ekaertlaan 1 &#8226; 8870 Izegem &#8226; Belgium<br></span><span lang=3DEN-=
GB style=3D'font-size:8.0pt;font-family:"Arial","sans-serif"'>Company numbe=
r 0402.757.955 &#8226; RPR Kortrijk</span><span style=3D'font-size:12.0pt;f=
ont-family:"Times New Roman","serif"'><o:p></o:p></span></p></td></tr></tab=
le><p class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times =
New Roman","serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><o:p>&=
nbsp;</o:p></p></div></body></html>=

--_000_6EE7D1502C48E44E92DCADF9DD3E0DB9019FCE5B1DAESRVVS06TELE_--

--_004_6EE7D1502C48E44E92DCADF9DD3E0DB9019FCE5B1DAESRVVS06TELE_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=2780;
	creation-date="Wed, 04 Jul 2012 13:53:39 GMT";
	modification-date="Wed, 04 Jul 2012 13:53:39 GMT"
Content-ID: <image003.png@01CD59EC.6A109D00>
Content-Transfer-Encoding: base64

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

--_004_6EE7D1502C48E44E92DCADF9DD3E0DB9019FCE5B1DAESRVVS06TELE_--


--===============1420034425605346260==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1420034425605346260==--
