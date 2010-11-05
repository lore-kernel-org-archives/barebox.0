Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.telit.com ([88.37.127.140])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PEQIW-0005yc-3r
	for barebox@lists.infradead.org; Fri, 05 Nov 2010 17:41:58 +0000
From: Fabio Porcedda <Fabio.Porcedda@telit.com>
Date: Fri, 5 Nov 2010 18:26:43 +0100
Message-ID: <24A9345B397CD24AA76A4E82E237956544B9560AE5@XCHTS.tmt.telital.com>
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
Content-Type: multipart/mixed; boundary="===============0133366213=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: AT91SAM9260-EK NAND Driver error
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--===============0133366213==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_24A9345B397CD24AA76A4E82E237956544B9560AE5XCHTStmttelit_"

--_000_24A9345B397CD24AA76A4E82E237956544B9560AE5XCHTStmttelit_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,
I have trouble reading from the nand device driver.
I'm using the Atmel AT91SAM9260-EK board with barebox v2010.11.0,
I'm using the at91sam9260ek default config with the "Atmel (AT91SAM9xxx) NA=
ND driver" enabled .

When I try to access the nand device I have an error:

barebox:/ md -s /dev/nand0
err -74
read: error 74

I'm making some mistake?
It's a know issue of the nand driver on the AT91SAM9260-EK?

Thanks in advance for any help
Fabio Porcedda


Barebox starup log:

U-Boot> go 0x22000000
## Starting application at 0x22000000 ...


barebox 2010.11.0-00182-g3d4f24e (Nov  5 2010 - 17:20:12)

Board: Atmel 91SAM9260-EK
Clocks: CPU 198 MHz, master 99 MHz, main 18.432 MHz
NAND device: Manufacturer ID: 0xec, Chip ID: 0xda (Samsung NAND 256MiB 3,3V=
 8-bi
t)
Scanning device for bad blocks
Bad eraseblock 256 at 0x02000000
Bad eraseblock 257 at 0x02020000
Bad eraseblock 258 at 0x02040000
Bad eraseblock 259 at 0x02060000
Bad eraseblock 260 at 0x02080000
Bad eraseblock 282 at 0x02340000
Bad eraseblock 283 at 0x02360000
Bad eraseblock 284 at 0x02380000
Bad eraseblock 285 at 0x023a0000
Bad eraseblock 286 at 0x023c0000
Bad eraseblock 287 at 0x023e0000
Bad eraseblock 288 at 0x02400000
Bad eraseblock 289 at 0x02420000
Bad eraseblock 290 at 0x02440000
Bad eraseblock 291 at 0x02460000
Bad eraseblock 292 at 0x02480000
Bad eraseblock 293 at 0x024a0000
Bad eraseblock 294 at 0x024c0000
Bad eraseblock 295 at 0x024e0000
Bad eraseblock 296 at 0x02500000
Bad eraseblock 297 at 0x02520000
Bad eraseblock 298 at 0x02540000
Bad eraseblock 299 at 0x02560000
Bad eraseblock 300 at 0x02580000
Bad eraseblock 301 at 0x025a0000
Bad eraseblock 302 at 0x025c0000
Bad eraseblock 303 at 0x025e0000
Bad eraseblock 304 at 0x02600000
Bad eraseblock 305 at 0x02620000
Bad eraseblock 306 at 0x02640000
Bad eraseblock 307 at 0x02660000
Bad eraseblock 308 at 0x02680000
Bad eraseblock 309 at 0x026a0000
Bad eraseblock 310 at 0x026c0000
Bad eraseblock 311 at 0x026e0000
Bad eraseblock 312 at 0x02700000
Bad eraseblock 313 at 0x02720000
Bad eraseblock 314 at 0x02740000
Bad eraseblock 315 at 0x02760000
Bad eraseblock 316 at 0x02780000
Bad eraseblock 317 at 0x027a0000
Bad eraseblock 318 at 0x027c0000
Bad eraseblock 319 at 0x027e0000
Malloc space: 0x23b00000 -> 0x23f00000 (size  4 MB)
Stack space : 0x23af8000 -> 0x23b00000 (size 32 kB)
err -74
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...

Hit any key to stop autoboot:  1

type update_kernel [<imagename>] to update kernel into flash
type udate_root [<imagename>] to update rootfs into flash

barebox:/

--_000_24A9345B397CD24AA76A4E82E237956544B9560AE5XCHTStmttelit_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DWordSection1>

<p class=3DMsoNormal>Hi all,<o:p></o:p></p>

<p class=3DMsoNormal>I have trouble reading from the nand device driver.<o:=
p></o:p></p>

<p class=3DMsoNormal>I&#8217;m using the Atmel AT91SAM9260-EK board with ba=
rebox
v2010.11.0,<o:p></o:p></p>

<p class=3DMsoNormal>I&#8217;m using the at91sam9260ek default config with =
the &#8220;Atmel
(AT91SAM9xxx) NAND driver&#8221; enabled .<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>When I try to access the nand device I have an error:<=
o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>barebox:/ md -s /dev/nand0<o:p></o:p></p>

<p class=3DMsoNormal>err -74<o:p></o:p></p>

<p class=3DMsoNormal>read: error 74<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>I&#8217;m making some mistake?<o:p></o:p></p>

<p class=3DMsoNormal>It&#8217;s a know issue of the nand driver on the AT91=
SAM9260-EK?<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Thanks in advance for any help<o:p></o:p></p>

<p class=3DMsoNormal>Fabio Porcedda<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Barebox starup log:<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>U-Boot&gt; go 0x22000000<o:p></o:p></p>

<p class=3DMsoNormal>## Starting application at 0x22000000 ...<o:p></o:p></=
p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>barebox 2010.11.0-00182-g3d4f24e (Nov&nbsp; 5 2010 -
17:20:12)<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Board: Atmel 91SAM9260-EK<o:p></o:p></p>

<p class=3DMsoNormal>Clocks: CPU 198 MHz, master 99 MHz, main 18.432 MHz<o:=
p></o:p></p>

<p class=3DMsoNormal>NAND device: Manufacturer ID: 0xec, Chip ID: 0xda (Sam=
sung
NAND 256MiB 3,3V 8-bi<o:p></o:p></p>

<p class=3DMsoNormal>t)<o:p></o:p></p>

<p class=3DMsoNormal>Scanning device for bad blocks<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 256 at 0x02000000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 257 at 0x02020000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 258 at 0x02040000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 259 at 0x02060000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 260 at 0x02080000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 282 at 0x02340000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 283 at 0x02360000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 284 at 0x02380000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 285 at 0x023a0000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 286 at 0x023c0000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 287 at 0x023e0000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 288 at 0x02400000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 289 at 0x02420000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 290 at 0x02440000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 291 at 0x02460000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 292 at 0x02480000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 293 at 0x024a0000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 294 at 0x024c0000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 295 at 0x024e0000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 296 at 0x02500000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 297 at 0x02520000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 298 at 0x02540000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 299 at 0x02560000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 300 at 0x02580000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 301 at 0x025a0000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 302 at 0x025c0000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 303 at 0x025e0000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 304 at 0x02600000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 305 at 0x02620000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 306 at 0x02640000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 307 at 0x02660000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 308 at 0x02680000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 309 at 0x026a0000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 310 at 0x026c0000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 311 at 0x026e0000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 312 at 0x02700000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 313 at 0x02720000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 314 at 0x02740000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 315 at 0x02760000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 316 at 0x02780000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 317 at 0x027a0000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 318 at 0x027c0000<o:p></o:p></p>

<p class=3DMsoNormal>Bad eraseblock 319 at 0x027e0000<o:p></o:p></p>

<p class=3DMsoNormal>Malloc space: 0x23b00000 -&gt; 0x23f00000 (size&nbsp; =
4 MB)<o:p></o:p></p>

<p class=3DMsoNormal>Stack space : 0x23af8000 -&gt; 0x23b00000 (size 32 kB)=
<o:p></o:p></p>

<p class=3DMsoNormal>err -74<o:p></o:p></p>

<p class=3DMsoNormal>envfs: wrong magic on /dev/env0<o:p></o:p></p>

<p class=3DMsoNormal>no valid environment found on /dev/env0. Using default
environment<o:p></o:p></p>

<p class=3DMsoNormal>running /env/bin/init...<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Hit any key to stop autoboot:&nbsp; 1<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>type update_kernel [&lt;imagename&gt;] to update kerne=
l into
flash<o:p></o:p></p>

<p class=3DMsoNormal>type udate_root [&lt;imagename&gt;] to update rootfs i=
nto
flash<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>barebox:/<o:p></o:p></p>

</div>

</body>

</html>

--_000_24A9345B397CD24AA76A4E82E237956544B9560AE5XCHTStmttelit_--


--===============0133366213==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0133366213==--
