Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.z9.com ([64.142.101.243])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SKl45-0006Ou-3w
 for barebox@lists.infradead.org; Thu, 19 Apr 2012 06:42:05 +0000
Received: from GPontisPC by z9.com (MDaemon PRO v12.5.4)
 with ESMTP id md50000201896.msg
 for <barebox@lists.infradead.org>; Wed, 18 Apr 2012 23:32:49 -0700
From: "George Pontis" <GPontis@z9.com>
Date: Wed, 18 Apr 2012 23:32:41 -0700
Message-ID: <036401cd1df6$38a4b0d0$a9ee1270$@com>
MIME-Version: 1.0
Content-Language: en-us
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2635917597313424705=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: New user - having a few issues with MMC
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.

--===============2635917597313424705==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0365_01CD1DBB.8C45FFE0"
Content-Language: en-us

This is a multi-part message in MIME format.

------=_NextPart_000_0365_01CD1DBB.8C45FFE0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi fellow barebox users. What a great loader, thanks to all of you for
sharing your work on this.

 

I've brought barebox up on a custom at91sam9g45 board that has both NOR and
NAND flash, and one SD card connected to the MMC interface. I was previously
using all these with an older version of u-boot and in Linux, so I am pretty
sure that the hardware is working properly. 

 

For some reason, I can't access any files on a 4G SD card. After booting
into barebox, there is a /dev/disk0. I can mount it without error, for
example mount /dev/disk0 fat /mmc. But ls /mmc does not show any content,
and I know that there are many files there. The card is not partitioned.
Have I overlooked something ? If not, any suggestions where to look for the
cause of the problem ?

 

George


------=_NextPart_000_0365_01CD1DBB.8C45FFE0
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
	{margin:0in;
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
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>Hi fellow =
barebox users. What a great loader, thanks to all of you for sharing =
your work on this.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I&#8217;ve =
brought barebox up on a custom at91sam9g45 board that has both NOR and =
NAND flash, and one SD card connected to the MMC interface. I was =
previously using all these with an older version of u-boot and in Linux, =
so I am pretty sure that the hardware is working properly. =
<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>For some reason, I can&#8217;t access any files on a =
4G SD card. After booting into barebox, there is a /dev/disk0. I can =
mount it without error, for example mount /dev/disk0 fat /mmc. But ls =
/mmc does not show any content, and I know that there are many files =
there. The card is not partitioned. Have I overlooked something ? If =
not, any suggestions where to look for the cause of the problem =
?<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>George<o:p></o:p></p></div></body></html>
------=_NextPart_000_0365_01CD1DBB.8C45FFE0--



--===============2635917597313424705==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2635917597313424705==--
