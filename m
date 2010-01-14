Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vms173009pub.verizon.net ([206.46.173.9])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NVUy3-000684-45
	for barebox@lists.infradead.org; Thu, 14 Jan 2010 19:02:55 +0000
Received: from vms064.mailsrvcs.net ([unknown] [192.168.1.2])
	by vms173009.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0KW9009AT3KFVCH2@vms173009.mailsrvcs.net> for
	barebox@lists.infradead.org; Thu, 14 Jan 2010 13:02:39 -0600 (CST)
Date: Thu, 14 Jan 2010 13:02:39 -0600 (CST)
From: pgmspam20101@verizon.net
Message-id: <31940835.15183.1263495759571.JavaMail.root@vms064.mailsrvcs.net>
MIME-version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0036221937=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: compiling barebox/u-boot-v2 for beagleboard
To: barebox@lists.infradead.org

--===============0036221937==
Content-type: text/html; charset=UTF-8
Content-transfer-encoding: quoted-printable

<html><HEAD><LINK media=3Dall href=3D"/webmail/static/deg/css/wysiwyg-39332=
89048.css" type=3Dtext/css rel=3Dstylesheet>
<META content=3D"MSHTML 6.00.2900.3640" name=3DGENERATOR></HEAD>
<BODY>
<DIV>Hello,</DIV>
<DIV>&nbsp;</DIV>
<DIV>I am trying to do the next stage of my build: i.e. building xloader(u-=
boot-v2) that I can load over USB using Nishant Menon's utilities (pusb).</=
DIV>
<DIV>&nbsp;</DIV>
<DIV>I went and downloaded the beagleboard version of uboot-v2 from:</DIV>
<DIV>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; <A href=3D"http://www.pengutronix.de/software/u-boot/v2/download/"=
 target=3Dblank>http://www.pengutronix.de/software/u-boot/v2/download/</A><=
/DIV>
<DIV>&nbsp;</DIV>
<DIV>I try to build using the following sequence of commands on my machine:=
</DIV>
<DIV>&nbsp;</DIV>
<DIV><BR>export ARCH=3Darm<BR>export CROSS_COMPILE=3Darm-wrs-linux-gnueabi-=
<BR>export PATH=3D/opt/WindRiver/wrlinux-3.0/layers/wrll-toolchain-4.3-85/a=
rm/toolchain/x86-linux2/bin:$PATH</DIV>
<DIV>&nbsp;</DIV>
<DIV><BR>cd&nbsp; projs/u-boot-2.0.0-rc10</DIV>
<DIV>make distclean</DIV>
<DIV>make mrproper</DIV>
<DIV>make omap3530_beagle_per_uart_defconfig<BR>make -f Makefile ARCH=3Darm=
 CROSS_COMPILE=3D/opt/WindRiver/wrlinux-3.0/layers/wrll-toolchain-4.3-85/ar=
m/toolchain/x86-linux2/bin/arm-wrs-linux-gnueabi-</DIV>
<DIV><BR>However when I do the last step I get the following error, which I=
 do not clearly understand the cause.</DIV>
<DIV>&nbsp;</DIV>
<DIV>I got similar results when I tried using the ELDK tools</DIV>
<DIV>&nbsp;</DIV>
<DIV><BR>[pgmutasi@ u-boot-2.0.0-rc10]$ make -f Makefile ARCH=3Darm CROSS_C=
OMPILE=3D/opt/WindRiver/wrlinux-3.0/layers/wrll-toolchain-4.3-85/arm/toolch=
ain/x86-linux2/bin/arm-wrs-linux-gnueabi-<BR>scripts/kconfig/conf -s arch/a=
rm/Kconfig<BR>&nbsp; SYMLINK include/asm-arm/arch -&gt; include/asm-arm/arc=
h-omap<BR>&nbsp; SYMLINK include/asm-arm/proc -&gt; include/asm-arm/proc-ar=
mv<BR>&nbsp; CHK&nbsp;&nbsp;&nbsp;&nbsp; include/linux/version.h<BR>&nbsp; =
UPD&nbsp;&nbsp;&nbsp;&nbsp; include/linux/version.h<BR>&nbsp; CHK&nbsp;&nbs=
p;&nbsp;&nbsp; include/linux/utsrelease.h<BR>&nbsp; UPD&nbsp;&nbsp;&nbsp;&n=
bsp; include/linux/utsrelease.h<BR>&nbsp; SYMLINK include/asm -&gt; include=
/asm-arm<BR>&nbsp; SYMLINK include/config.h -&gt; board/omap/config.h<BR>&n=
bsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; scripts/mod/empty.o<BR>scripts/mod/em=
pty.c:1: error: bad value (armv7a) for -march=3D switch<BR>make[2]: *** [sc=
ripts/mod/empty.o] Error 1<BR>make[1]: *** [scripts/mod] Error 2<BR>make: *=
** [scripts] Error 2<BR></DIV>
<DIV>&nbsp;</DIV>
<DIV>The full log of what happens is also attached below.&nbsp; Do you know=
 what I am doing wrong with this build procedure ?</DIV>
<DIV>&nbsp;</DIV>
<DIV>Thanks,</DIV>
<DIV>&nbsp;</DIV>
<DIV>Primus</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV></BODY></html>


--===============0036221937==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0036221937==--
