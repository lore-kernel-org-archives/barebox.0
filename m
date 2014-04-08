Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22d.google.com ([2607:f8b0:4002:c07::22d])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXPtn-00056D-GK
 for barebox@lists.infradead.org; Tue, 08 Apr 2014 06:52:48 +0000
Received: by mail-yk0-f173.google.com with SMTP id 10so442699ykt.4
 for <barebox@lists.infradead.org>; Mon, 07 Apr 2014 23:51:48 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 8 Apr 2014 08:51:45 +0200
Message-ID: <CAOpc7mEpS4sSB0f8uYhJZDRVyJFL8BYWccBOPsN-N82Jc6iB1w@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Confusion about memory layout
To: barebox@lists.infradead.org

Hi,

I'm trying to get barebox running via usb-download. Unfortunately, the
verify step failed (see log below). This made me think about my memory
layout, but I'm a bit helpless here.

If I look at arch/arm/mach-imx/Kconfig, I see that several i.MX boards
define different CONFIG_ARCH_TEXT_BASE. Why?

default 0x4fc00000 if MACH_MX6Q_ARM2
default 0x4fc00000 if MACH_SABRELITE
... some other also, but look at this:
default 0x17800000 if MACH_SABRESD

And why specify most x4fc0_0000 ?  Doesn't the physical memory map of
DDR3 start at x1000_0000 or 0x8000_0000, depending on mapping ?


Similarly: the "loadaddr" statement in various *.imxcfg files are also
different:

loadaddr 0x00907000
loadaddr 0x10000000
loadaddr 0x20000000

I'd have expected that all will be loaded at 0x1000_0000, the start of DDR RAM?



That made me think about my memory map is the "00000400:" vs.
"10000400:" prefix in the following compare:

barebox/scripts/imx/imx-usb-loader -c -v barebox/barebox.imx
found i.MX6q USB device [15a2:0054]
main dcd length 308
sub dcd length 304
loading binary file(barebox/barebox.imx) to 10000000, skip=0x0,
fsize=249800 type=170...
binary file successfully loaded
verifying file...
!!!!mismatch
00000400: 402000d1 10001000 00000000 00000000  00000000 10000400
00000000 00000000
10000400: 400000d1 10000000 00000000 00000000  00040000 10001000
00ff0000 00000000

00000420: 10000000 0003d000 00000000 400803d2  040403cc 68400c02
ffffffff 6c400c02
10000420: 10200000 00030400 00000000 40080000  040003cc 6840d000
ff00ffff 6c4003d2

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
