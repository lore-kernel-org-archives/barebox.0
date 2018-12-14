Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXtCd-0003Q4-PE
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 19:32:53 +0000
Date: Fri, 14 Dec 2018 20:32:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181214193239.mtxrzarszquoixxp@pengutronix.de>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
 <20181214162249.GA19868@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181214162249.GA19868@lenoch>
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
Subject: Re: [PATCH 00/23] AM3517 support
To: Ladislav Michl <ladis@linux-mips.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Dec 14, 2018 at 05:22:49PM +0100, Ladislav Michl wrote:
> Hello Sascha,
> 
> On Fri, Dec 14, 2018 at 03:17:07PM +0100, Sascha Hauer wrote:
> > This series adds support for the TI AM3517 SoC along with Wago PFC-200
> > board support. Also in this series some TI related driver patches. Most
> > notably some significant chages to the GPMC Nand driver which was not
> > really working anymore.
> > 
> > Sascha
> > 
> > Heinrich Toews (3):
> >   net: davinci-emac: fix buggy channel tear down
> >   net: davinci-emac: switch to device tree support
> >   ARM: omap: AM3517: Change default clock rate for AM3517
> > 
> > Oleg Karfich (1):
> >   ARM: omap3: Add support for reset reason detection
> > 
> > Sascha Hauer (19):
> >   net: davinci-emac: Add timeout to polling loop
> >   mci: omap: Improve error handling
> >   mci: omap: use IS_ENABLED() rather than #ifdef
> 
> >   mtd: nand: omap: Use dev_dbg when a struct device * is available
> >   mtd: nand: omap: Fix hamming correct return values
> >   mtd: nand: omap: Disable subpage reads in hardware ecc mode
> >   mtd: nand: omap: remove unused function argument
> >   mtd: nand: omap: fix bch8_hw_romcode ecc layout
> >   mtd: nand: omap: set eccbytes correctly
> >   mtd: nand: omap: unbreak BCH8 support
> 
> may I point there is a MTD update pending on mailing list which,
> once applied, would make merging with upstream drivers easier?
> Yes, that upstream, which already fixed those bugs...

Hm, somehow I assumed you would send a v2. I applied the series now
along with the fixup you sent.

However, the barebox OMAP nand driver has the special feature that we
can switch the ECC mode during runtime, so even with a uptodate NAND
stack we would still have to make adjustments to the Linux driver.

You are right, a nand stack better in sync with Linux would make things
easier, your series is a start.

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
