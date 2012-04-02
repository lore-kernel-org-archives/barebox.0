Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 89-97-197-40.ip19.fastwebnet.it ([89.97.197.40]
 helo=srv-exc.techimp.com)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SEiF8-0007Ob-GA
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 14:28:27 +0000
From: Martino Ruppi <mruppi@techimp.com>
Date: Mon, 2 Apr 2012 16:28:22 +0200
Message-ID: <63954CAD61AA2440BC0B16A69EAE2BBC630E110855@srv-exc.techimp.com>
References: <63954CAD61AA2440BC0B16A69EAE2BBC630E110778@srv-exc.techimp.com>
In-Reply-To: <63954CAD61AA2440BC0B16A69EAE2BBC630E110778@srv-exc.techimp.com>
Content-Language: it-IT
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5446919784886291845=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: R: filling string variables in script
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--===============5446919784886291845==
Content-Language: it-IT
Content-Type: multipart/alternative;
	boundary="_000_63954CAD61AA2440BC0B16A69EAE2BBC630E110855srvexctechimp_"

--_000_63954CAD61AA2440BC0B16A69EAE2BBC630E110855srvexctechimp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm sorry, I renovate my previous question.
Or maybe it wasn't arrived to the list.
I appreciate if someone could put me on right trace.
Thanks. Marty

Da: barebox-bounces@lists.infradead.org [mailto:barebox-bounces@lists.infra=
dead.org] Per conto di Martino Ruppi
Inviato: gioved=EC 29 marzo 2012 15.36
A: barebox@lists.infradead.org
Oggetto: filling string variables in script

Dear all,
I would ask a question as barebox user.
I mind to set a variable as result of memory reading but I understand it do=
esn't implemented redirection.
I'd like to do something of this:

myvar=3D""
memcpy -s  /dev/nor0.switch -d $myvar 0x0 0x0 4

or

myvar=3D"$(cat /dev/nor0.switch)"

I think, I use one of last releases (version command?).
Thanks to everyone can help me.
Marty

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Martino Ruppi, FW engineer developer, PhD
mruppi@techimp.com<mailto:mruppi@techimp.com>

Techimp HQ srl
Via Toscana 11/C
40069 Zola Predosa (BO)
Tel.   051 19986050
Fax.   051 19986099
Cell.  349 4677660



--_000_63954CAD61AA2440BC0B16A69EAE2BBC630E110855srvexctechimp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Diso-8859-1"><meta name=3DGenerator content=3D"Micr=
osoft Word 12 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
span.StileMessaggioDiPostaElettronica17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.StileMessaggioDiPostaElettronica18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 2.0cm 2.0cm 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DIT link=3Dblue vlink=
=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-US=
 style=3D'color:#1F497D'>I&#8217;m sorry, I renovate my previous question.<=
o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color=
:#1F497D'>Or maybe it wasn&#8217;t arrived to the list.<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>I appreci=
ate if someone could put me on right trace.<o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Thanks. Marty<o:p><=
/o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F4=
97D'><o:p>&nbsp;</o:p></span></p><div><div style=3D'border:none;border-top:=
solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3DMsoNormal><b><spa=
n style=3D'font-size:10.0pt;font-family:"Segoe UI","sans-serif"'>Da:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Segoe UI","sans-serif"'> b=
arebox-bounces@lists.infradead.org [mailto:barebox-bounces@lists.infradead.=
org] <b>Per conto di </b>Martino Ruppi<br><b>Inviato:</b> gioved=EC 29 marz=
o 2012 15.36<br><b>A:</b> barebox@lists.infradead.org<br><b>Oggetto:</b> fi=
lling string variables in script<o:p></o:p></span></p></div></div><p class=
=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span lang=3DEN-US>D=
ear all,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I wou=
ld ask a question as barebox user. <o:p></o:p></span></p><p class=3DMsoNorm=
al><span lang=3DEN-US>I mind to set a variable as result of memory reading =
but I understand it doesn&#8217;t implemented redirection.<o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US>I&#8217;d like to do something=
 of this:<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p=
>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>myvar=3D&#8=
221;&#8221;<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>me=
mcpy &#8211;s &nbsp;/dev/nor0.switch &#8211;d $myvar 0x0 0x0 4<o:p></o:p></=
span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US>or <o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US>myvar=3D&#8221;$(cat /dev/nor0.switch)&#8221;<o:p>=
</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p><=
/span></p><p class=3DMsoNormal><span lang=3DEN-US>I think, I use one of las=
t releases (version command?). <o:p></o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US>Thanks to everyone can help me.<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US>Marty<o:p></o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNorma=
l><span style=3D'font-size:9.0pt;font-family:Consolas;color:#1F497D'>~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<o:p></o:p></span></p><p class=3DMsoNormal>=
<span style=3D'font-size:9.0pt;font-family:Consolas;color:#1F497D'>Martino =
Ruppi, FW engineer developer, PhD<o:p></o:p></span></p><p class=3DMsoNormal=
><span style=3D'font-size:9.0pt;font-family:Consolas;color:#1F497D'><a href=
=3D"mailto:mruppi@techimp.com"><span lang=3DEN-US style=3D'color:#1F497D;te=
xt-decoration:none'>mruppi@techimp.com</span></a></span><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:Consolas;color:#1F497D'><o:p></o:p></s=
pan></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;fo=
nt-family:Consolas;color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:Consolas;co=
lor:#1F497D'>Techimp HQ srl<o:p></o:p></span></p><p class=3DMsoNormal><span=
 style=3D'font-size:9.0pt;font-family:Consolas;color:#1F497D'>Via Toscana 1=
1/C<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:9.0p=
t;font-family:Consolas;color:#1F497D'>40069 Zola Predosa (BO)<o:p></o:p></s=
pan></p><p class=3DMsoNormal><span style=3D'font-size:9.0pt;font-family:Con=
solas;color:#1F497D'>Tel.&nbsp;&nbsp; 051 19986050<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:9.0pt;font-family:Consolas;color=
:#1F497D'>Fax.&nbsp;&nbsp; 051 19986099<o:p></o:p></span></p><p class=3DMso=
Normal><span style=3D'font-size:9.0pt;font-family:Consolas;color:#1F497D'>C=
ell.&nbsp; 349 4677660<o:p></o:p></span></p><p class=3DMsoNormal><span styl=
e=3D'font-size:9.0pt;font-family:Consolas;color:#1F497D'><o:p>&nbsp;</o:p><=
/span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>=

--_000_63954CAD61AA2440BC0B16A69EAE2BBC630E110855srvexctechimp_--


--===============5446919784886291845==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5446919784886291845==--
