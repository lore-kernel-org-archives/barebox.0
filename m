Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fallback7.mail.ru ([94.100.176.135])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UT6Ov-0007sp-5Z
 for barebox@lists.infradead.org; Fri, 19 Apr 2013 08:10:34 +0000
Received: from f396.i.mail.ru (f396.i.mail.ru [185.5.136.67])
 by fallback7.mail.ru (mPOP.Fallback_MX) with ESMTP id 2DA5BCAB60D1
 for <barebox@lists.infradead.org>; Fri, 19 Apr 2013 12:10:28 +0400 (MSK)
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Fri, 19 Apr 2013 12:10:09 +0400
Message-ID: <1366359009.642016664@f396.i.mail.ru>
In-Reply-To: <20130418182317.GJ1906@pengutronix.de>
References: <1366188021.710900767@f16.mail.ru>
 <1366304572.52315039@f26.mail.ru>
 <20130418182317.GJ1906@pengutronix.de>
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
Subject: =?UTF-8?B?UmVbMl06IEJvb3QgZnJvbSBTRCBmYWlsIGFmdGVyIDIwMTMuMDI=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> > > On Thu, Apr 18, 2013 at 03:06:26PM +0400, Alexander Shiyan wrote:
> > > > 
> > > > So. OK, I temporary patch my board and it working now.
> > > > Please forget about correct memory size, it is not true.
> > > > Size is incorrect. Both banks are enabled and size detected as 512M.
> > > > I think this size is programmed by flash_header:
> > > >   { .ptr_type = 4, .addr = 0x83fd9000, .val = 0xb2a20000, },
> > > >   { .ptr_type = 4, .addr = 0x83fd9008, .val = 0xb2a20000, },
> > > > 
> > > > After program NAND and start from NAND, size is still wrong...
> > > > So, what we can do it this case for proper operation? Disable second bank?
> > > 
> > > When writing the autodetection code I assumed that all boards correctly
> > > setup the SDRAM controller. Appearently I was wrong.
> > > 
> > > I suggest disabling the second chip select since it's not used on your
> > > board. However, I begin doubting that it was the right decision to
> > > depend on ram size detection.
> > 
> > Yes, disabling second bank is helps.
> > So, I repair my second board (same as first, but with real 512M of SDRAM).
> > Works, but of course memory is fixed at 256M. Tomorrow I will test current
> > 2013.04 on this board since probably problem appears only on 256M-version.
> > Currently I think about return fixed table of memory in the board file or get
> > memory size by testing memory. In both cases we need to disable ESDCTL
> > module and now I do not know how make it better rather than simple remove
> > this module from Makefile.
> 
> I wonder if it's possible to detect whether there actually is memory on
> the seconf bank. I remember trying it (probably on some other i.MX), but
> all I got was a locked up system when I tried to access non present
> SDRAM.

OK, here is my today test case with 512M version of module.
Barebox form current master tree. Boot from MMC.

barebox 2013.04.0-00189-g59dbb4f #2 Fri Apr 19 11:35:57 MSK 2013
Board: ConnectCore i.MX51
detected i.MX51 revision 3.0
Module Variant: i.MX515@600MHz, Wireless, PHY, Ext. Eth, Accel (0x04)
Module HW Rev : 04
Module Serial : W121789680
mc13xxx-spi mc13xxx-spi0: Found MC13892 ID: 0x0045d0 [Rev: 2.0a]
nand: Manufacturer ID: 0xec, Chip ID: 0xdc (Samsung NAND 512MiB 3,3V 8-bit), page size: 2048, OOB size: 64
mdio_bus: miibus0: probed
eth0: got preset MAC address: 04:03:47:42:5C:F0
smc911x smc911x1: LAN911x identified, idrev: 0x92210000, generation: 4
mdio_bus: miibus1: probed
imx-usb imx-usb0: USB EHCI 1.00
malloc space: 0x95f02000 -> 0x97f01fff (size 32 MiB)
imx-esdhc imx-esdhc0: registered as imx-esdhc0
imx-esdhc imx-esdhc2: registered as imx-esdhc2
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...
Hit any key to stop autoboot:  2

barebox@ConnectCore i.MX51:/ echo $bootsource
mmc

barebox@ConnectCore i.MX51:/ md 0x83fd9000-0x83fd9010
83fd9000: b2a20000 3f3584ab b2a20000 3f3584ab                ......5?......5?

barebox@ConnectCore i.MX51:/ iomem
0x00000000 - 0xffffffff (size 0x00000000) iomem
  0x70004000 - 0x70004fff (size 0x00001000) imx-esdhc0
  0x7000c000 - 0x7000cfff (size 0x00001000) imx21-uart2
  0x70010000 - 0x70010fff (size 0x00001000) imx_spi0
  0x70020000 - 0x70020fff (size 0x00001000) imx-esdhc2
  0x73f80000 - 0x73f801ff (size 0x00000200) imx-usb0
  0x73f80800 - 0x73f808ff (size 0x00000100) imx51-usb-misc0
  0x73f84000 - 0x73f84fff (size 0x00001000) imx31-gpio0
  0x73f88000 - 0x73f88fff (size 0x00001000) imx31-gpio1
  0x73f8c000 - 0x73f8cfff (size 0x00001000) imx31-gpio2
  0x73f90000 - 0x73f90fff (size 0x00001000) imx31-gpio3
  0x73f98000 - 0x73f98fff (size 0x00001000) imx21-wdt0
  0x73fa0000 - 0x73fa0fff (size 0x00001000) imx31-gpt0
  0x73fa8000 - 0x73fa8fff (size 0x00001000) imx-iomuxv30
  0x73fbc000 - 0x73fbcfff (size 0x00001000) imx21-uart0
  0x73fc0000 - 0x73fc0fff (size 0x00001000) imx21-uart1
  0x73fd4000 - 0x73fd4fff (size 0x00001000) imx51-ccm0
  0x83f98000 - 0x83f98fff (size 0x00001000) imx_iim0
  0x83fc4000 - 0x83fc4fff (size 0x00001000) i2c-fsl1
  0x83fd9000 - 0x83fd9fff (size 0x00001000) imx51-esdctl0
  0x83fdb000 - 0x83fdbfff (size 0x00001000) imx_nand0
  0x83fec000 - 0x83fecfff (size 0x00001000) imx27-fec
  0x90000000 - 0xafffffff (size 0x20000000) ram0
    0x95f02000 - 0x97f01fff (size 0x02000000) malloc space
    0x97f02000 - 0x97f40dac (size 0x0003edad) barebox
    0x97f40dad - 0x97f4549f (size 0x000046f3) barebox data
    0x97f454a0 - 0x97f4ab3f (size 0x000056a0) bss
    0xafff4000 - 0xafff7fff (size 0x00004000) ttb
    0xafff8000 - 0xafffffff (size 0x00008000) stack
  0xce000000 - 0xce000fff (size 0x00001000) smc911x1
  0xcfff0000 - 0xcfff0fff (size 0x00001000) imx_nand0

It looks mostly OK. 512M is readed from ESDCTL, since we directly
program these registers from DCD data. Next, I program this
binary into NAND and boot. The results is same except bootsource.
Even dump ESDCTL registers have same data. So, for resolve my
issue with module with 256M (or less) I should know how DCD
data is programmed into ESDCTL when we boot from NAND.
Early, I think this data is needs for other boot sources only.
Is not it?
Additionally, how we should get ram size properly from ESDCTL?
AFAIK we not have any fuses for memory size (at least on mx51)...
Fixme please. Thanks.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
