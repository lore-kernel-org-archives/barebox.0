Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V8mEq-0008Rq-GI
 for barebox@lists.infradead.org; Mon, 12 Aug 2013 07:08:25 +0000
Date: Mon, 12 Aug 2013 09:07:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130812070759.GL26614@pengutronix.de>
References: <1376107853.217410060@f319.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1376107853.217410060@f319.i.mail.ru>
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
Subject: Re: PCM038 USB is broken again
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Aug 10, 2013 at 08:10:53AM +0400, Alexander Shiyan wrote:
> Hello.
> 
> USB functionality on PCM038 (PCM970) is broken again due
> patch "Revert usb: chipidea-imx: Fix usb initialization".
> 
> Board: Phytec phyCORE-i.MX27
> detected i.MX27 revision 2.1
> netconsole: registered as cs1
> mc13xxx-spi mc137830: Found MC13783 ID: 0x00009b [Rev: 3.1]
> cfi_flash cfi_flash0: found cfi flash at c0000000, size 33554432
> nand: NAND device: Manufacturer ID: 0x20, Chip ID: 0x36 (ST Micro NAND 64MiB 1,8V 8-bit), 64MiB, page size: 512, OOB size: 16
> Bad block table found at page 131040, version 0x01
> Bad block table found at page 131008, version 0x01
> imxfb imxfb: i.MX Framebuffer driver
> mdio_bus: miibus0: probed
> No ULPI found. vid: 0x0000 pid: 0x0000
> pcm038: Using environment in NOR Flash
> No ULPI found. vid: 0x0000 pid: 0x0000
> imx-usb imx-usb2: USB EHCI 1.00
> imx-mmc imx-mmc1: registered as imx-mmc1
> running /env/bin/init...
> 
> After remove this patch, all works fine.

Have you verified it really doesn't work? I get the 'No ULPI found'
message aswell, but the ULPI phys are probed again during the 'usb'
command and it then works here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
