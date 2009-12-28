Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from arroyo.ext.ti.com ([192.94.94.40])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NPGWU-0002RJ-JF
	for barebox@lists.infradead.org; Mon, 28 Dec 2009 14:24:43 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
	by arroyo.ext.ti.com (8.13.7/8.13.7) with ESMTP id nBSEOXSH025671
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Mon, 28 Dec 2009 08:24:35 -0600
Received: from dbde70.ent.ti.com (localhost [127.0.0.1])
	by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id nBSEOVtn025166
	for <barebox@lists.infradead.org>; Mon, 28 Dec 2009 19:54:32 +0530 (IST)
From: "Premi, Sanjeev" <premi@ti.com>
Date: Mon, 28 Dec 2009 19:54:30 +0530
Message-ID: <B85A65D85D7EB246BE421B3FB0FBB59301E1C30908@dbde02.ent.ti.com>
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
Content-Type: multipart/mixed; boundary="===============0822182779=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Query on default environment
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--===============0822182779==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_B85A65D85D7EB246BE421B3FB0FBB59301E1C30908dbde02enttico_"

--_000_B85A65D85D7EB246BE421B3FB0FBB59301E1C30908dbde02enttico_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I was trying to create a default environment for the OMAP3EVM to contain
basic settings and a 'hello world' script before I could do/add something
useful. My changes were:

-# CONFIG_PARTITION is not set
-# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_PARTITION=3Dy
+CONFIG_DEFAULT_ENVIRONMENT=3D"board/omap/omap3evm/env"

But, I did come across this error:

premi # make
scripts/kconfig/conf -s arch/arm/Kconfig
Makefile:1261: *** default environment path empty.  Stop.
make distclean did not help as well. Somehow, the value of
CONFIG_DEFAULT_ENVIRONMENT in the defconfig seem to take
precedence over .config. Though, i can;t be sure as I
was tinkering all over. But finally when the defconfig
and .config were same, build was successful.

Will try to see if i can create a reproducible scenario;
but, if it give hints, may be a problem to look at. Or
simple ignore as user error.


Now, I have "barebox_default_env" built alongside barebox.bin
How do I get this envronment on the EVM?

Did go thru docs (http://barebox.org/documentation/barebox-2009.12.0/)
but did not find the next step.

Best regards,
Sanjeev


--_000_B85A65D85D7EB246BE421B3FB0FBB59301E1C30908dbde02enttico_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=3DContent-Type content=3D"text/html; charset=3Dus-ascii">
<META content=3D"MSHTML 6.00.2900.3640" name=3DGENERATOR></HEAD>
<BODY>
<DIV><SPAN class=3D207411014-28122009><FONT face=3D"Courier New"=20
size=3D2>Hi,</FONT></SPAN></DIV>
<DIV><SPAN class=3D207411014-28122009><FONT face=3D"Courier New"=20
size=3D2></FONT></SPAN>&nbsp;</DIV>
<DIV><SPAN class=3D207411014-28122009><FONT face=3D"Courier New" size=3D2>I=
 was trying=20
to create a default environment for the OMAP3EVM to contain</FONT></SPAN></=
DIV>
<DIV><SPAN class=3D207411014-28122009><FONT face=3D"Courier New" size=3D2>b=
asic=20
settings </FONT></SPAN><SPAN class=3D207411014-28122009><FONT face=3D"Couri=
er New"=20
size=3D2>and a 'hello world' script before I could do/add=20
something</FONT></SPAN></DIV>
<DIV><SPAN class=3D207411014-28122009><FONT face=3D"Courier New" size=3D2>u=
seful.=20
</FONT></SPAN><SPAN class=3D207411014-28122009><FONT face=3D"Courier New" s=
ize=3D2>My=20
changes were:</FONT></SPAN></DIV>
<DIV><SPAN class=3D207411014-28122009><FONT face=3D"Courier New"=20
size=3D2></FONT></SPAN>&nbsp;</DIV>
<DIV><SPAN class=3D207411014-28122009><FONT face=3D"Courier New" size=3D2>-=
#=20
CONFIG_PARTITION is not set<BR>-# CONFIG_DEFAULT_ENVIRONMENT is not=20
set<BR>+CONFIG_PARTITION=3Dy<BR>+CONFIG_DEFAULT_ENVIRONMENT=3D"board/omap/o=
map3evm/env"</FONT></SPAN></DIV>
<DIV><SPAN class=3D207411014-28122009><FONT face=3D"Courier New"=20
size=3D2></FONT></SPAN>&nbsp;</DIV>
<DIV><SPAN class=3D207411014-28122009><FONT face=3D"Courier New" size=3D2>B=
ut, I did=20
come across&nbsp;this error:</FONT></SPAN></DIV>
<DIV><SPAN class=3D207411014-28122009><FONT face=3D"Courier New"=20
size=3D2></FONT></SPAN>&nbsp;</DIV>
<DIV><SPAN class=3D207411014-28122009><FONT face=3D"Courier New" size=3D2>p=
remi #=20
make<BR>scripts/kconfig/conf -s arch/arm/Kconfig<BR>Makefile:1261: *** defa=
ult=20
environment path empty.&nbsp; Stop.<BR></FONT></SPAN></DIV>
<DIV><SPAN class=3D207411014-28122009><FONT face=3D"Courier New" size=3D2>m=
ake=20
distclean did not help as well. Somehow, the value of</FONT></SPAN></DIV>
<DIV><SPAN class=3D207411014-28122009><FONT face=3D"Courier New"=20
size=3D2>CONFIG_DEFAULT_ENVIRONMENT in the defconfig seem to=20
take</FONT></SPAN></DIV>
<DIV><SPAN class=3D207411014-28122009><FONT face=3D"Courier New" size=3D2>p=
recedence=20
over .config. Though, i can;t be sure as I</FONT></SPAN></DIV>
<DIV><SPAN class=3D207411014-28122009><FONT face=3D"Courier New" size=3D2>w=
as=20
tinkering all over. But finally when the defconfig</FONT></SPAN></DIV>
<DIV><FONT face=3D"Courier New"><FONT size=3D2><SPAN class=3D207411014-2812=
2009>and=20
.config were same, build was successful.</SPAN></FONT></FONT></DIV>
<DIV><FONT face=3D"Courier New"><FONT size=3D2><SPAN=20
class=3D207411014-28122009></SPAN></FONT></FONT>&nbsp;</DIV>
<DIV><FONT face=3D"Courier New"><FONT size=3D2><SPAN class=3D207411014-2812=
2009>Will=20
try to see if i can create a reproducible scenario;</SPAN></FONT></FONT></D=
IV>
<DIV><FONT face=3D"Courier New"><FONT size=3D2><SPAN class=3D207411014-2812=
2009>but,=20
if it give hints, may be a problem to look at. Or</SPAN></FONT></FONT></DIV=
>
<DIV><FONT face=3D"Courier New"><FONT size=3D2><SPAN class=3D207411014-2812=
2009>simple=20
ignore as user error.</SPAN></FONT></FONT></DIV>
<DIV><FONT face=3D"Courier New"><FONT size=3D2><SPAN=20
class=3D207411014-28122009></SPAN></FONT></FONT>&nbsp;</DIV>
<DIV><FONT face=3D"Courier New"><FONT size=3D2><SPAN=20
class=3D207411014-28122009></SPAN></FONT></FONT>&nbsp;</DIV>
<DIV><FONT face=3D"Courier New"><FONT size=3D2><SPAN class=3D207411014-2812=
2009>Now, I=20
have "barebox_default_env" built alongside=20
barebox.bin</SPAN></FONT></FONT></DIV>
<DIV><FONT face=3D"Courier New"><FONT size=3D2><SPAN class=3D207411014-2812=
2009>How do=20
I get this envronment on the EVM?</SPAN></FONT></FONT></DIV>
<DIV><FONT face=3D"Courier New"><FONT size=3D2><SPAN=20
class=3D207411014-28122009></SPAN></FONT></FONT>&nbsp;</DIV>
<DIV><FONT face=3D"Courier New"><FONT size=3D2><SPAN class=3D207411014-2812=
2009>Did go=20
thru docs (<FONT face=3D"Courier New"><FONT size=3D2><SPAN=20
class=3D207411014-28122009><A=20
href=3D"http://barebox.org/documentation/barebox-2009.12.0/">http://barebox=
.org/documentation/barebox-2009.12.0/</A>)</SPAN></FONT></FONT></SPAN></FON=
T></FONT></DIV>
<DIV><FONT face=3D"Courier New"><FONT size=3D2><SPAN class=3D207411014-2812=
2009>but=20
did not find the next </SPAN></FONT></FONT><FONT face=3D"Courier New"><FONT=
=20
size=3D2><SPAN class=3D207411014-28122009>step.</SPAN></FONT></FONT><FONT=20
face=3D"Courier New"><FONT size=3D2><SPAN=20
class=3D207411014-28122009></DIV></SPAN></FONT></FONT>
<DIV><SPAN class=3D207411014-28122009><FONT face=3D"Courier New"=20
size=3D2></FONT></SPAN>&nbsp;</DIV>
<DIV><SPAN class=3D207411014-28122009><FONT face=3D"Courier New" size=3D2>B=
est=20
regards,<BR>Sanjeev</FONT></SPAN></DIV>
<DIV><SPAN class=3D207411014-28122009><FONT face=3D"Courier New"=20
size=3D2></FONT></SPAN>&nbsp;</DIV></BODY></HTML>

--_000_B85A65D85D7EB246BE421B3FB0FBB59301E1C30908dbde02enttico_--


--===============0822182779==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0822182779==--
