Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mut-gw.mut-group.com ([212.144.235.26]
	helo=mut-fw.mut-group.com)
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qhcgc-0001va-1w
	for barebox@lists.infradead.org; Fri, 15 Jul 2011 07:19:47 +0000
Received: from [192.168.20.11] (port=24268 helo=zcom02.mut-group.com)
	by mut-fw.mut-group.com with esmtp (Exim 4.69)
	(envelope-from <msuthe@mut-group.com>) id 1QhcPN-00020B-1G
	for barebox@lists.infradead.org; Fri, 15 Jul 2011 09:01:57 +0200
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Fri, 15 Jul 2011 09:13:41 +0200
Message-ID: <D08CBAE0A98EB548B293DA79621E27110425C059@zcom02.mut-group.com>
From: "Matthias Suthe" <msuthe@mut-group.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1390773394=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Sandbox Segfault
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.

--===============1390773394==
Content-class: urn:content-classes:message
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CC42BE.B9D59C27"

This is a multi-part message in MIME format.

------_=_NextPart_001_01CC42BE.B9D59C27
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

=20

I'm trying to start barebox is described in the First Steps chapter of
the barebox documentation, but I get a segfault.

=20

I followed the User's Manual step by step and now I try to run=20
./barebox -e env.bin -i cramfs.bin
=20
Did I maybe miss something when creating the cramfs.bin? Do I need to
put files into somedir?
I'm using barebox-2011.05.0
OS: Debian 6.0.1 (squeeze)=20
Kernel: Linux 2.6.32-5-686-bigmem
=20

Neither this patch:

--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -107,7 +107,8 @@ int barebox_register_filedev(struct hf_platform_data
*hf)
=20
        dev->platform_data =3D hf;
=20
-       strcpy(dev->name, "hostfile");
+       /* Registering 2 devices with same name creates problem? */
+       strcpy(dev->name, hf->filename);
        dev->size =3D hf->size;
        dev->map_base =3D hf->map_base;

Nor this patch:

--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -109,6 +109,7 @@ int barebox_register_filedev(struct hf_platform_data
*hf)
=20
        strcpy(dev->name, "hostfile");
        dev->size =3D hf->size;
+       dev->id =3D -1;
        dev->map_base =3D hf->map_base;
=20
        return register_device(dev);

help.

=20

I would be grateful for any help.

=20

=20

With kind regards

=20

Matthias Suthe

=20


------_=_NextPart_001_01CC42BE.B9D59C27
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 12 =
(filtered medium)"><style><!--
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
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.HTMLVorformatiertZchn
	{mso-style-name:"HTML Vorformatiert Zchn";
	mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert";
	font-family:"Courier New";}
span.preprocessor
	{mso-style-name:preprocessor;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DDE link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p =
class=3DMsoNormal>Hi,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>I&#8217;m trying to start barebox is described in the First =
Steps chapter of the barebox documentation, but I get a =
segfault.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><pre><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif"'>I followed =
the User&#8217;s Manual step by step and now I try to run =
<o:p></o:p></span></pre><pre>./barebox -e env.bin -i =
cramfs.bin<o:p></o:p></pre><pre><span =
style=3D'font-size:11.0pt'><o:p>&nbsp;</o:p></span></pre><pre><span =
lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif"'>Did I =
maybe miss something when creating the cramfs.bin? Do I need to put =
files into somedir?<o:p></o:p></span></pre><pre><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif"'>I&#8217;m =
using barebox-2011.05.0<o:p></o:p></span></pre><pre><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif"'>OS: Debian =
6.0.1 (squeeze) <o:p></o:p></span></pre><pre><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif"'>Kernel: =
Linux 2.6.32-5-686-bigmem<o:p></o:p></span></pre><pre><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif"'><o:p>&nbsp;=
</o:p></span></pre><p class=3DMsoNormal><span lang=3DEN-US>Neither this =
patch:<o:p></o:p></span></p><pre><span lang=3DEN-US>--- =
a/arch/sandbox/board/hostfile.c<o:p></o:p></span></pre><pre><span =
lang=3DEN-US>+++ =
b/arch/sandbox/board/hostfile.c<o:p></o:p></span></pre><pre><span =
lang=3DEN-US>@@ -107,7 +107,8 @@ int barebox_register_filedev(struct =
hf_platform_data *hf)<o:p></o:p></span></pre><pre><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></pre><pre><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
dev-&gt;platform_data =3D hf;<o:p></o:p></span></pre><pre><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></pre><pre><span =
lang=3DEN-US>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; strcpy(dev-&gt;name, =
&quot;hostfile&quot;);<o:p></o:p></span></pre><pre><span =
lang=3DEN-US>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Registering 2 =
devices with same name creates problem? =
*/<o:p></o:p></span></pre><pre><span =
lang=3DEN-US>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; strcpy(dev-&gt;name, =
hf-&gt;filename);<o:p></o:p></span></pre><pre><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dev-&gt;size =3D =
hf-&gt;size;<o:p></o:p></span></pre><pre><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dev-&gt;map_base =
=3D hf-&gt;map_base;<o:p></o:p></span></pre><p class=3DMsoNormal><span =
lang=3DEN-US>Nor this patch:<o:p></o:p></span></p><pre><span =
lang=3DEN-US>--- =
a/arch/sandbox/board/hostfile.c<o:p></o:p></span></pre><pre><span =
lang=3DEN-US>+++ =
b/arch/sandbox/board/hostfile.c<o:p></o:p></span></pre><pre><span =
lang=3DEN-US>@@ -109,6 +109,7 @@ int barebox_register_filedev(struct =
hf_platform_data *hf)<o:p></o:p></span></pre><pre><span lang=3DEN-US> =
<o:p></o:p></span></pre><pre><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
strcpy(dev-&gt;name, =
&quot;hostfile&quot;);<o:p></o:p></span></pre><pre><span lang=3DEN-US> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dev-&gt;size =3D =
hf-&gt;size;<o:p></o:p></span></pre><pre><span =
lang=3DEN-US>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dev-&gt;id =3D =
-1;<o:p></o:p></span></pre><pre><span lang=3DEN-US> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dev-&gt;map_base =3D =
hf-&gt;map_base;<o:p></o:p></span></pre><pre><span lang=3DEN-US> =
<o:p></o:p></span></pre><pre><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return =
register_device(dev);<o:p></o:p></span></pre><p class=3DMsoNormal><span =
lang=3DEN-US>help.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I would be grateful for any help.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>With kind =
regards<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</=
o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Matthias =
Suthe</span><span =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p></o:p></=
span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------_=_NextPart_001_01CC42BE.B9D59C27--


--===============1390773394==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1390773394==--
