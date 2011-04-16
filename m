Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod7og109.obsmtp.com ([64.18.2.171])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1QBA75-0008Fq-Av
	for barebox@lists.infradead.org; Sat, 16 Apr 2011 18:20:56 +0000
From: Greg Topmiller <Greg.Topmiller@jdsu.com>
Date: Sat, 16 Apr 2011 11:14:13 -0700
Message-ID: <F384D1288827C547A75DEBA2647D64BA172BA39F6B@MILEXCH1.ds.jdsu.net>
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
Content-Type: multipart/mixed; boundary="===============0667830116=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Imx51 processor hangs when we do an md 0xf0000000 (memory display)
	in u-boot
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--===============0667830116==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F384D1288827C547A75DEBA2647D64BA172BA39F6BMILEXCH1dsjds_"

--_000_F384D1288827C547A75DEBA2647D64BA172BA39F6BMILEXCH1dsjds_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We're are using the Freescale release L2.6.31_MX51_SDK_0912_Image and it wi=
ll do this on a Freescale Babbage board and our design.  It also does the s=
ame thing in Linux when we mmap the address 0xf0000000 and try to read from=
 it.  It does not hang on the Redboot.bin image supplied with the Freescale=
 SDK.  The Redboot dump command displays some data.  On the Freescale 3Stac=
k board we get an illegal address error in Redboot, but it will hang in u-b=
oot.  We realize this is a reserved physical address but would hope that an=
 error of some kind would occur rather than locking up the CPU.  Could it b=
e some sort of MMU initialization difference between Redboot and u-boot?

Thanks in advance.

Greg


--_000_F384D1288827C547A75DEBA2647D64BA172BA39F6BMILEXCH1dsjds_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{color:#606420;
	text-decoration:underline;}
span.EmailStyle17
	{font-family:Arial;
	color:windowtext;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.Section1
	{page:Section1;}
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3D"#606420">

<div class=3DSection1>

<p class=3DMsoNormal><font size=3D2 color=3Dblack face=3DTahoma><span style=
=3D'font-size:
10.0pt;font-family:Tahoma;color:black'>We're are using the Freescale releas=
e
L2.6.31_MX51_SDK_0912_Image and it will do this on a Freescale Babbage boar=
d
and our design. &nbsp;It also does the same thing in Linux when we mmap the
address 0xf0000000 and try to read from it. &nbsp;It does not hang on the
Redboot.bin image supplied with the Freescale SDK.&nbsp; The Redboot dump
command displays some data. &nbsp;On the Freescale 3Stack board we get an
illegal address error in Redboot, but it will hang in u-boot. &nbsp;We real=
ize
this is a reserved physical address but would hope that an error of some ki=
nd
would occur rather than locking up the CPU.&nbsp; Could it be some sort of =
MMU
initialization difference between Redboot and u-boot?</span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dblack face=3DTahoma><span style=
=3D'font-size:
10.0pt;font-family:Tahoma;color:black'>&nbsp;</span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dblack face=3DTahoma><span style=
=3D'font-size:
10.0pt;font-family:Tahoma;color:black'>Thanks in advance.</span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span style=3D'font-size:1=
0.0pt;
font-family:Arial'>&nbsp;</span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span style=3D'font-size:1=
0.0pt;
font-family:Arial'>Greg</span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span style=3D=
'font-size:
12.0pt'>&nbsp;</span></font></p>

</div>

</body>

</html>

--_000_F384D1288827C547A75DEBA2647D64BA172BA39F6BMILEXCH1dsjds_--


--===============0667830116==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0667830116==--
