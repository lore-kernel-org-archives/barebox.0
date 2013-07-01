Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a01:e0c:1:1599::18] (helo=smtpfb1-g21.free.fr)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Utgse-0001jS-OT
 for barebox@lists.infradead.org; Mon, 01 Jul 2013 16:23:10 +0000
Received: from smtp3-g21.free.fr (smtp3-g21.free.fr [212.27.42.3])
 by smtpfb1-g21.free.fr (Postfix) with ESMTP id 0F8717AFA17
 for <barebox@lists.infradead.org>; Mon,  1 Jul 2013 18:22:43 +0200 (CEST)
Received: from e6520eb (pac33-3-88-170-243-169.fbx.proxad.net [88.170.243.169])
 (Authenticated sender: eukrea)
 by smtp3-g21.free.fr (Postfix) with ESMTPSA id 49130A62CF
 for <barebox@lists.infradead.org>; Mon,  1 Jul 2013 18:12:36 +0200 (CEST)
Date: Mon, 1 Jul 2013 18:12:34 +0200
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
Message-ID: <20130701181234.15305e43@e6520eb>
Mime-Version: 1.0
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
Subject: iMX nand BBT problem
To: barebox@lists.infradead.org

Hi,

when upgrading from 2013.05.1 to 2013.06 on an i.MX35 I get the
following log :

- initial log :
barebox 2013.05.1-00001-ga8e8785 #25 Mon Jul 1 17:12:14 CEST 2013
Board: Eukrea CPUIMX35
detected i.MX35 revision 2.1
netconsole: registered as cs1
nand: Manufacturer ID: 0x2c, Chip ID: 0xda (Micron NAND 256MiB 3,3V
8-bit), page size: 2048, OOB size: 64
mdio_bus: miibus0: probed
imx-ipu-fb imx-ipu-fb: i.MX Framebuffer driver
imx-esdhc imx-esdhc0: registered as imx-esdhc0
ehci ehci0: USB EHCI 1.00
malloc space: 0x87700000 -> 0x87efffff (size 8 MiB)
running /env/bin/init...

--> upgrade barebox :
barebox 2013.06.0-00001-gf355cf4 #26 Mon Jul 1 17:57:52 CEST 2013
Board: Eukrea CPUIMX35
detected i.MX35 revision 2.1
netconsole: registered as cs1
nand: Manufacturer ID: 0x2c, Chip ID: 0xda (Micron NAND 256MiB 3,3V
8-bit), page size: 2048, OOB size: 64 
nand: Bad block table not found for chip 0
nand: Bad block table not found for chip 0 
imx_nand imx_nand: no BBT found. create one using the imx_nand_bbm
command
mdio_bus: miibus0: probed
imx-ipu-fb imx-ipu-fb: i.MX Framebuffer driver
imx-esdhc imx-esdhc0: registered as imx-esdhc0
ehci ehci0: USB EHCI 1.00
malloc space: 0x87700000 -> 0x87efffff (size 8 MiB)
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...
no MAC address set for eth0. please enter the one found on your board:
00:12:34:56:78:90 saving environment

Once I reset the board I can see that the env was not saved and I get
prompted again for the MAC address.

Any idea of what can be wrong there ?

This board is configured in external boot from a 2k NAND (and was
already using flash BBT), and the kernel and rootfs still run without
any visible problem.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
