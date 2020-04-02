Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJw67-00086B-4B
 for barebox@lists.infradead.org; Thu, 02 Apr 2020 09:25:16 +0000
Date: Thu, 2 Apr 2020 11:25:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200402092510.GH27288@pengutronix.de>
References: <1833400.Y7EmvgfLYE@allan-home> <2790507.TRZ85U3XWg@allan-home>
 <20200402074154.GF27288@pengutronix.de>
 <52873740.qfR1zLsytf@allan-home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52873740.qfR1zLsytf@allan-home>
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
Subject: Re: bug report: fail to boot barebox in marvell 6281 board
To: you xiaojie <84640926@qq.com>
Cc: barebox@lists.infradead.org, Uwe Kleine-Koenig <ukl@pengutronix.de>

+Cc Marvell expert <ukl@pengutronix.de>

On Thu, Apr 02, 2020 at 04:02:57PM +0800, you xiaojie wrote:
> On Thursday, April 2, 2020 3:41:54 PM CST Sascha Hauer wrote:
> > On Thu, Apr 02, 2020 at 03:03:41PM +0800, you xiaojie wrote:
> > > the debugging message.
> > > 
> > > allan@allan-home:/media/allan/c6293bbf-6fa1-49ca-9b01-24855a810e0e/barebox
> > > -
> > > test/barebox$ ./scripts/kwboot -b ./images/barebox-huanshuo-hs50a.img -n
> > > 15 -B 115200 -t /dev/ttyUSB0
> > > Sending boot message. Please reboot the target...
> > > Got expected NAKs
> > > Sending boot image...
> > > 
> > >  86 %
> > >  [......................................................................]
> > >  89 %
> > >  [......................................................................]
> > >  91 %
> > >  [......................................................................]
> > >  93 %
> > >  [......................................................................]
> > >  96 %
> > >  [......................................................................]
> > >  98 % [.............................................]
> > > 
> > > [Type Ctrl-\ + c to quit]
> > > uncompress.c: memory at 0x00000000, size 0x20000000
> > > uncompress.c: enabling MMU, ttb @ 0x1ffe4000
> > > uncompress.c: uncompressing barebox binary at 0x010053e0 (size 0x00057dfe)
> > > to 0x1fe00000 (uncompressed size: 0x000a4ee0)
> > > uncompress.c: jumping to uncompressed image at 0x1fe00000
> > > start.c: memory at 0x00000000, size 0x20000000
> > > start.c: found DTB in boarddata, copying to 0x1fdfcc40
> > > start.c: initializing malloc pool at 0x0fefe620 (size 0x0fefe620)
> > > start.c: starting barebox...
> > > initcall-> globalvar_init+0x0/0x48
> > 
> > This looks all perfectly fine until here. I have no idea what goes wrong
> > here. You need a binary.0 file for this board, right? Are you sure that
> > works? Did you extract it from some working U-Boot?
> > It might also be a toolchain related issue. Which toolchain are you
> > using?
> > 
> > Sascha
> binary.0? no I don't think so.for armada 370, need. for kirkwood,kwbimage.cfg 
> complete such memory initialisation work. so there is no need binary.0 file. 
> that is to see in images/Makefile. 
> this is kwbimage from uboot setting registry  for mem init. also in 6281 
> datasheet (publicly available on internet)

Ok, I am not very familiar with these SoCs. I thought there generally is
a binary.0 file necessary.

> DATA 0xFFD01514 0x00000000	# CS[2]n Size, window disabled
> DATA 0xFFD0151C 0x00000000	# CS[3]n Size, window disabled
> 
> DATA 0xFFD01494 0x00030000	#  DDR ODT Control (Low)
> DATA 0xFFD01498 0x00000000	#  DDR ODT Control (High)
> # bit1-0:  00, ODT0 controlled by ODT Control (low) register above
> # bit3-2:  01, ODT1 active NEVER!
> # bit31-4: zero, required
> 
> DATA 0xFFD0149C 0x0000E803	# CPU ODT Control
> DATA 0xFFD01480 0x00000001	# DDR Initialization Control
> #bit0=1, enable DDR init upon this register write
> 
> 
> what is the register's base mem address for uboot or barebox?
> where to define 0xffd00000 base address?

I am a bit confused. In arch/arm/mach-mvebu/common.c we have:

/*
 * All MVEBU SoCs start with internal registers at 0xd0000000.
 * To get more contiguous address space and as Linux expects them
 * there, we remap them early to 0xf1000000.
 */

It seems this is not true for Kirkwood??

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
