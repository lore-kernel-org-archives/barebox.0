Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from llsa987-a03.servidoresdns.net ([82.223.190.28])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SdzML-0001UV-Od
 for barebox@lists.infradead.org; Mon, 11 Jun 2012 07:48:22 +0000
From: "FQ | Joan Carles Abelaira" <joancarles@fqingenieria.es>
Date: Mon, 11 Jun 2012 09:48:16 +0200
Message-ID: <001c01cd47a6$917e01f0$b47a05d0$@fqingenieria.es>
MIME-Version: 1.0
Content-Language: es
Reply-To: joancarles@fqingenieria.es
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4768487584313250622=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: make fails with barebox
To: 'Alexander Shiyan' <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

This is a multipart message in MIME format.

--===============4768487584313250622==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_001D_01CD47B7.5506D1F0"
Content-Language: es

This is a multipart message in MIME format.

------=_NextPart_000_001D_01CD47B7.5506D1F0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Mensaje original-----

> De: Alexander Shiyan [mailto:shc_work@mail.ru]

> Enviado el: lunes, 11 de junio de 2012 9:38

> Para: joancarles@fqingenieria.es

> CC: barebox@lists.infradead.org

> Asunto: Re[2]: make fails with barebox

>=20

> Hello.

>=20

> Mon, 11 Jun 2012 09:32:02 +0200 =D0=BE=D1=82 "FQ | Joan Carles =
Abelaira"

> < <mailto:joancarles@fqingenieria.es> joancarles@fqingenieria.es>:

> ...

> > > Can you post your .config file? I think it is the best way to

> > > resolve your problem.

> > Here it is, but the problem I think it's solved in the menuconfig.

> ...

>=20

> Hmm, for me this config is compiled fine. On my opinion you have a

> problem in your custom code in arch/arm/boards/fq-sid1-mx25-noah/

=20

For me too, this config is compiled fine, so I had a problem.


------=_NextPart_000_001D_01CD47B7.5506D1F0
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 14 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Texto sin formato Car";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
span.TextosinformatoCar
	{mso-style-name:"Texto sin formato Car";
	mso-style-priority:99;
	mso-style-link:"Texto sin formato";
	font-family:"Calibri","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 129.75pt 70.85pt 129.7pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DES-TRAD =
link=3Dblue vlink=3Dpurple><div class=3DWordSection1><p =
class=3DMsoPlainText>&gt; <span lang=3DES =
style=3D'mso-fareast-language:ES-TRAD'>-----Mensaje =
original-----</span></p><p class=3DMsoPlainText>&gt; <span lang=3DES =
style=3D'mso-fareast-language:ES-TRAD'>De: Alexander Shiyan =
[mailto:shc_work@mail.ru]</span></p><p class=3DMsoPlainText>&gt; <span =
lang=3DES style=3D'mso-fareast-language:ES-TRAD'>Enviado el: lunes, 11 =
de junio de 2012 9:38</span></p><p class=3DMsoPlainText>&gt; <span =
lang=3DES style=3D'mso-fareast-language:ES-TRAD'>Para: =
joancarles@fqingenieria.es</span></p><p class=3DMsoPlainText>&gt; <span =
lang=3DES style=3D'mso-fareast-language:ES-TRAD'>CC: =
barebox@lists.infradead.org</span></p><p class=3DMsoPlainText>&gt; <span =
lang=3DES style=3D'mso-fareast-language:ES-TRAD'>Asunto: Re[2]: make =
fails with barebox</span></p><p class=3DMsoPlainText>&gt; </p><p =
class=3DMsoPlainText>&gt; Hello.</p><p class=3DMsoPlainText>&gt; </p><p =
class=3DMsoPlainText>&gt; Mon, 11 Jun 2012 09:32:02 +0200 =D0=BE=D1=82 =
&quot;FQ | Joan Carles Abelaira&quot;</p><p class=3DMsoPlainText>&gt; =
&lt;<a href=3D"mailto:joancarles@fqingenieria.es"><span =
style=3D'color:windowtext;text-decoration:none'>joancarles@fqingenieria.e=
s</span></a>&gt;:</p><p class=3DMsoPlainText>&gt; ...</p><p =
class=3DMsoPlainText>&gt; &gt; &gt; Can you post your .config file? I =
think it is the best way to</p><p class=3DMsoPlainText>&gt; &gt; &gt; =
resolve your problem.</p><p class=3DMsoPlainText>&gt; &gt; Here it is, =
but the problem I think it's solved in the menuconfig.</p><p =
class=3DMsoPlainText>&gt; ...</p><p class=3DMsoPlainText>&gt; </p><p =
class=3DMsoPlainText>&gt; Hmm, for me this config is compiled fine. On =
my opinion you have a</p><p class=3DMsoPlainText>&gt; problem in your =
custom code in arch/arm/boards/fq-sid1-mx25-noah/</p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText><span =
lang=3DEN-GB style=3D'color:black'>For me too, this config is compiled =
fine, so I <b>had</b> a =
problem.<o:p></o:p></span></p></div></body></html>
------=_NextPart_000_001D_01CD47B7.5506D1F0--



--===============4768487584313250622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4768487584313250622==--
