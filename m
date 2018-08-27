Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuGLZ-0006pu-Vg
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 12:10:24 +0000
Date: Mon, 27 Aug 2018 14:10:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180827121004.hfeb3bahhyvkoiw4@pengutronix.de>
References: <20180823095820.32590-1-florian.baeuerle@allegion.com>
 <5de1c331378034ec7bdbbe58c7e8b1f65debd568.camel@allegion.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5de1c331378034ec7bdbbe58c7e8b1f65debd568.camel@allegion.com>
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
Subject: Re: [PATCH] ARM: phytec-phycard-imx27: Add debug UART support
To: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Aug 23, 2018 at 12:20:32PM +0000, Baeuerle, Florian wrote:
> Some background on that patch:
> 
> I've tried to get barebox master compiled with OSELAS 2018 running on a
> phycard-imx27. I had a few problems with that:
> 
> It turned out, that I can boot the resulting image as a seconds stage (from an
> older version of barebox), after commenting out pca100_usb_init(). I suppose
> that is not a real problem, but probably related to some clock setup that
> barebox master does somewhere during early boot (which I suppose, is skipped
> when booting it as 2nd stage).
> 
> However, when flashing the resulting image to NAND, there seems to be a bigger
> issue somewhere during early boot. This problem does not exist when compiling
> barebox master with OSELAS 2016.

I gave it a test and can confirm that the board boots when compiled with
OSELAS 2016 and no longer boots with OSELAS 2018.

It's strange and I'm out of ideas for now. In
imx27_barebox_boot_nand_external() we have a place that copies the
initial image poprtion into SDRAM. It seems the SDRAM is never written
to - at least according to the information my BDI2000 gives me.

I assume it must be something to do with the SDRAM setup, but the code
and also the resulting assembly really looks harmless, though a little
different between both toolchains.

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
