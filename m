Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RDuEz-00040O-5I
	for barebox@lists.infradead.org; Wed, 12 Oct 2011 08:32:41 +0000
Received: by iarr31 with SMTP id r31so668616iar.36
	for <barebox@lists.infradead.org>; Wed, 12 Oct 2011 01:32:34 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 12 Oct 2011 10:32:34 +0200
Message-ID: <CAGiJk9cnibz1M-FEyxo956b4PF0e3V06FH-vTxbZ=FogADSogQ@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Pandaboard boot problems persist (was: [PATCH] Fixed unaligned access)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,
today I built the latest Barebox version for Pandaboard, which
includes the 'Fixed unaligned access' patch, but I still won't get it
to boot.

Maybe I'm missing some configurations that differ from the defaults,
anyone had success booting Barebox on the Pandaboard?


At power on I get the following message:

-
Texas Instruments X-Loader 1.5.1 (Sep  6 2011 - 13:37:48)
Reading boot sector
Loading u-boot.bin from mmc


barebox 2011.10.0-00092-gc3d7a97 (Oct 12 2011 - 09:55:05)

Board: Texas Instrument's Panda
PandaBoard Revision: 003
unable to handle NULL pointer dereference at address 0x00000000
pc : [<8f018044>]    lr : [<8f018020>]
sp : 8cffff38  ip : 8d006158  fp : 00100103
r10: 00000000  r9 : 12345678  r8 : 00000001
r7 : 8d006170  r6 : 8f03d07c  r5 : 8d006170  r4 : 8d0061e8
r3 : 00000000  r2 : 00000000  r1 : 00000000  r0 : 8d0061e8
Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
[<8f018044>] (omap_mmc_probe+0x6c/0x94) from [<8f005708>]
(platform_probe+0x10/0x14)
[<8f005708>] (platform_probe+0x10/0x14) from [<8f004f80>] (match+0x54/0x98)
[<8f004f80>] (match+0x54/0x98) from [<8f005460>] (register_device+0xc0/0xf4)
[<8f005460>] (register_device+0xc0/0xf4) from [<8f005778>]
(add_generic_device_res+0x44/0x4c)
[<8f005778>] (add_generic_device_res+0x44/0x4c) from [<8f029a08>]
(panda_devices_init+0xf4/0x1e4)
[<8f029a08>] (panda_devices_init+0xf4/0x1e4) from [<8f004bc4>]
(start_barebox+0x1c/0x118)
[<8f004bc4>] (start_barebox+0x1c/0x118) from [<80e80084>] (0x80e80084)
-

Is this error directly related to the current issues with Barebox on
the Pandaboard?

--
Regards
Samuel

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
