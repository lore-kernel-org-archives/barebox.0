Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f319.i.mail.ru ([128.140.169.183])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V80WN-0007LT-U5
 for barebox@lists.infradead.org; Sat, 10 Aug 2013 04:11:24 +0000
Received: from mail by f319.i.mail.ru with local (envelope-from
 <shc_work@mail.ru>) id 1V80Vy-0001mp-16
 for barebox@lists.infradead.org; Sat, 10 Aug 2013 08:10:54 +0400
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Sat, 10 Aug 2013 08:10:53 +0400
Message-ID: <1376107853.217410060@f319.i.mail.ru>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UENNMDM4IFVTQiBpcyBicm9rZW4gYWdhaW4=?=
To: barebox@lists.infradead.org

Hello.

USB functionality on PCM038 (PCM970) is broken again due
patch "Revert usb: chipidea-imx: Fix usb initialization".

Board: Phytec phyCORE-i.MX27
detected i.MX27 revision 2.1
netconsole: registered as cs1
mc13xxx-spi mc137830: Found MC13783 ID: 0x00009b [Rev: 3.1]
cfi_flash cfi_flash0: found cfi flash at c0000000, size 33554432
nand: NAND device: Manufacturer ID: 0x20, Chip ID: 0x36 (ST Micro NAND 64MiB 1,8V 8-bit), 64MiB, page size: 512, OOB size: 16
Bad block table found at page 131040, version 0x01
Bad block table found at page 131008, version 0x01
imxfb imxfb: i.MX Framebuffer driver
mdio_bus: miibus0: probed
No ULPI found. vid: 0x0000 pid: 0x0000
pcm038: Using environment in NOR Flash
No ULPI found. vid: 0x0000 pid: 0x0000
imx-usb imx-usb2: USB EHCI 1.00
imx-mmc imx-mmc1: registered as imx-mmc1
running /env/bin/init...

After remove this patch, all works fine.

Board: Phytec phyCORE-i.MX27
detected i.MX27 revision 2.1
netconsole: registered as cs1
mc13xxx-spi mc137830: Found MC13783 ID: 0x00009b [Rev: 3.1]
cfi_flash cfi_flash0: found cfi flash at c0000000, size 33554432
nand: NAND device: Manufacturer ID: 0x20, Chip ID: 0x36 (ST Micro NAND 64MiB 1,8V 8-bit), 64MiB, page size: 512, OOB size: 16
Bad block table found at page 131040, version 0x01
Bad block table found at page 131008, version 0x01
imxfb imxfb: i.MX Framebuffer driver
mdio_bus: miibus0: probed
Found NXP ISP150x ULPI transceiver (0x04cc:0x1504).
pcm038: Using environment in NOR Flash
Found NXP ISP150x ULPI transceiver (0x04cc:0x1504).
imx-usb imx-usb2: USB EHCI 1.00
imx-mmc imx-mmc1: registered as imx-mmc1
running /env/bin/init...

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
