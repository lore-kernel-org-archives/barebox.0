Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9FhF-00051x-QA
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 11:54:23 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Mon, 11 Apr 2011 13:54:17 +0200
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB90187A40D5121@SRV-VS06.TELEVIC.COM>
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
Content-Type: multipart/mixed; boundary="===============1589520482=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: lcd clock
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--===============1589520482==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6EE7D1502C48E44E92DCADF9DD3E0DB90187A40D5121SRVVS06TELE_"

--_000_6EE7D1502C48E44E92DCADF9DD3E0DB90187A40D5121SRVVS06TELE_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Is there any specific reason why the (i.MX27) LCDC clocks are disabled in i=
mxfb_probe() (drivers\imx.c) ?

#ifdef CONFIG_ARCH_IMX27
PCCR0 &=3D ~PCCR0_LCDC_EN;
PCCR1 &=3D ~PCCR1_HCLK_LCDC;
#endif

I would have expected the clocks to be enabled in that routine.

I'm experimenting a little with Barebox's 'bmp' command. Although the comma=
nd did not return any error, I did not have any output on my lcd. Then I no=
ticed that the LCDC clocks were not enabled. If the clocks were not enabled=
 by default in the probe function, I would expect the enabling in the bmp c=
ommand code, e.g. with FBIO_ENABLE ioctl command. But, as far as I can see,=
 FBIO_ENABLE is not executed in the bmp command code.

Filip



--_000_6EE7D1502C48E44E92DCADF9DD3E0DB90187A40D5121SRVVS06TELE_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 12 (filtered medium)"><style><!--
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
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DNL link=3Dblue vlink=
=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif"'>Hi,<o:p></o:p></span></p><p=
 class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Is there any=
 specific reason why the (i.MX27) LCDC clocks are disabled in imxfb_probe()=
 (drivers\imx.c) ?<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp=
;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Courier New"'>#ifdef CONFIG_ARCH_IMX27<o:p></o:p></sp=
an></p><p class=3DMsoNormal style=3D'text-indent:35.4pt'><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Courier New"'>PCCR0 &amp;=3D ~PCCR0=
_LCDC_EN;<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-indent:35=
.4pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New=
"'>PCCR1 &amp;=3D ~PCCR1_HCLK_LCDC;<o:p></o:p></span></p><p class=3DMsoNorm=
al><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New"'>=
#endif<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></s=
pan></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif"'>I would have expected the clocks to be ena=
bled in that routine.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&=
nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif"'>I&#8217;m experimenting a li=
ttle with Barebox&#8217;s &#8216;bmp&#8217; command. Although the command d=
id not return any error, I did not have any output on my lcd. Then I notice=
d that the LCDC clocks were not enabled. If the clocks were not enabled by =
default in the probe function, I would expect the enabling in the bmp comma=
nd code, e.g. with FBIO_ENABLE ioctl command. But, as far as I can see, FBI=
O_ENABLE is not executed in the bmp command code.<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>F=
ilip<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:12.=
0pt;font-family:"Times New Roman","serif"'><o:p>&nbsp;</o:p></span></p><p c=
lass=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>=

--_000_6EE7D1502C48E44E92DCADF9DD3E0DB90187A40D5121SRVVS06TELE_--


--===============1589520482==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1589520482==--
