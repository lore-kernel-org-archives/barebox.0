Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f388.i.mail.ru ([185.5.136.59])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmbS5-0001gg-3v
 for barebox@lists.infradead.org; Thu, 24 Jan 2019 09:37:42 +0000
Received: by f388.i.mail.ru with local (envelope-from <shc_work@mail.ru>)
 id 1gmbRx-0004QD-LZ
 for barebox@lists.infradead.org; Thu, 24 Jan 2019 12:37:30 +0300
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
MIME-Version: 1.0
Date: Thu, 24 Jan 2019 12:37:29 +0300
Message-ID: <1548322649.666663534@f388.i.mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?aW5pdHJkIHByb2JsZW0=?=
To: barebox@lists.infradead.org

Hello.

I successfully use the barebox with custom board based on CC-i.MX51 module.
I am using 30MB UBI volume as initrd for root filesystem. This configuration is
works fine for me.

I decided to change the size of the UBI volume for the root file system to 60 MB.
Now I get a weird OOM error. Turning on debug information shows a conflict,
but I do not quite understand where to look for the problem.
Where is the starting point to try to solve this problem?


barebox 2018.12.0-00337-g5ff5b7b05-dirty #11 Thu Jan 24 12:17:32 MSK 2019

Board: Mega-Milas Informer i.MX51
__request_region ok: 0x73fa8000:0x73fabfff
__request_region ok: 0x73fd4000:0x73fd7fff
__request_region ok: 0x73fa0000:0x73fa3fff
__request_region ok: 0x73f84000:0x73f87fff
__request_region ok: 0x73f88000:0x73f8bfff
__request_region ok: 0x73f8c000:0x73f8ffff
__request_region ok: 0x73f90000:0x73f93fff
__request_region ok: 0x90000000:0x97ffffff
detected i.MX51 revision 3.0
i.MX reset reason POR (SRSR: 0x00000001)
__request_region ok: 0x73fd0000:0x73fd3fff
__request_region ok: 0x7000c000:0x7000ffff
__request_region ok: 0x73fbc000:0x73fbffff
__request_region ok: 0x73fc0000:0x73fc3fff
__request_region ok: 0x83fd9000:0x83fd9fff
__request_region ok: 0x97fe4000:0x97fe7fff
__request_region: 0x00000000:0x00000fff outside parent resource 0x90000000:0x97ffffff
__request_region ok: 0x95df8d40:0x97df8d3f
__request_region ok: 0x97e00000:0x97e6e517
__request_region ok: 0x97e6e518:0x97e86707
__request_region ok: 0x97e86708:0x97e897df
__request_region ok: 0x73f80800:0x73f809ff
__request_region ok: 0x70010000:0x70013fff
__request_region ok: 0x83fac000:0x83faffff
__request_region ok: 0x83fc4000:0x83fc7fff
mc13xxx-spi mc13892@00: Found MC13892 ID: 0x0045d0 [Rev: 2.0a]
__request_region ok: 0x73fb4000:0x73fb7fff
__request_region ok: 0x73fb8000:0x73fbbfff
__request_region ok: 0x83f98000:0x83f9bfff
__request_region ok: 0x97fe8000:0x97feffff
Module Variant: i.MX515@600MHz, PHY, Accel (0x0b)
Module HW Rev : 03
Module Serial : W115171467
__request_region ok: 0x98000000:0x9fffffff
MC13892 PMIC initialized.
__request_region ok: 0x83fdb000:0x83fdbfff
__request_region ok: 0xcfff0000:0xcfffffff
nand: ONFI flash detected
nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0xda (Micron MT29F2G08ABAEAWP), 256MiB, page size: 2048, OOB size: 64
Bad block table found at page 131008, version 0x01
Bad block table found at page 130944, version 0x01
__request_region ok: 0x73f80000:0x73f801ff
imx-usb 73f80000.usb@73f80000: USB EHCI 1.00
__request_region ok: 0x73f80200:0x73f803ff
imx-usb 73f80200.usb@73f80200: USB EHCI 1.00
__request_region ok: 0x70004000:0x70007fff
imx-esdhc 70004000.esdhc@70004000: registered as mmc0
__request_region ok: 0x70008000:0x7000bfff
ERROR: mmc1: Failed to get 'vmmc' regulator.
imx-esdhc 70008000.esdhc@70008000: registered as mmc1
__request_region ok: 0x40000000:0x5fffffff
imx-ipuv3 40000000.ipu@40000000: IPUv3EX probed
__request_region ok: 0x1ffe0000:0x1fffffff
__request_region ok: 0x73f98000:0x73f9bfff
__request_region ok: 0x83fda000:0x83fdafff
imx-weim 83fda000.weim@83fda000: WEIM driver registered.
__request_region ok: 0x97df8d40:0x97dfffde
malloc space: 0x95df8d40 -> 0x97df8d3f (size 32 MiB)
envfs: no envfs (magic mismatch) - envfs never written?
running /env/bin/init...
imx-ipuv3-crtc imx-ipuv3-crtc0: ipu_crtc_mode_set: mode->xres: 320
imx-ipuv3-crtc imx-ipuv3-crtc0: ipu_crtc_mode_set: mode->yres: 240
i2c_write: I/O error
i2c_write: I/O error
NOTICE: ubi0: scanning is finished
NOTICE: ubi0: registering /dev/nand0.system.ubi
NOTICE: ubi0: registering kernel as /dev/nand0.system.ubi.kernel
NOTICE: ubi0: registering root as /dev/nand0.system.ubi.root
NOTICE: ubi0: registering bbox as /dev/nand0.system.ubi.bbox
NOTICE: ubi0: attached mtd0 (name "nand0.system", size 255 MiB) to ubi0
NOTICE: ubi0: PEB size: 131072 bytes (128 KiB), LEB size: 129024 bytes
NOTICE: ubi0: min./max. I/O unit sizes: 2048/2048, sub-page size 512
NOTICE: ubi0: VID header offset: 512 (aligned 512), data offset: 2048
NOTICE: ubi0: good PEBs: 2040, bad PEBs: 2, corrupted PEBs: 0
NOTICE: ubi0: user volume: 3, internal volumes: 1, max. volumes count: 128
NOTICE: ubi0: max/mean erase counter: 30/16, WL threshold: 4096, image sequence number: 23290
NOTICE: ubi0: available PEBs: 0, total reserved PEBs: 2040, PEBs reserved for bad PEB handling: 38

Hit any key to stop autoboot:    2   1   0
booting 'nand'

Loading ARM Linux zImage '/dev/nand0.system.ubi.kernel'
__request_region ok: 0x92000000:0x922a244f
1 0xffffffff
2 0x923a3000
__request_region ok: 0x923a3000:0x923c2fff
__request_region ok: 0x923a3000:0x923e2fff
__request_region ok: 0x923a3000:0x92402fff
...
__request_region ok: 0x923a3000:0x95da2fff
__request_region ok: 0x923a3000:0x95dc2fff
__request_region ok: 0x923a3000:0x95de2fff
__request_region: 0x923a3000:0x95e02fff conflicts with 0x95df8d40:0x97df8d3f
__request_region: 0x923a3000:0x95e02fff outside parent resource 0x98000000:0x9fffffff
unable to request SDRAM 0x923a3000-0x95e02fff
ERROR: Booting 'nand' failed: Out of memory
booting 'nand' failed: Out of memory
boot: Out of memory
barebox@Mega-Milas Informer i.MX51:/


---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
