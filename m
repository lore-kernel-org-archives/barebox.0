Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gt7G9-0003QJ-TA
 for barebox@lists.infradead.org; Mon, 11 Feb 2019 08:48:16 +0000
Date: Mon, 11 Feb 2019 09:48:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190211084811.eistdcv73tt5edxo@pengutronix.de>
References: <05f625c3-e8ab-157c-2c48-d82d5fc5953a@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <05f625c3-e8ab-157c-2c48-d82d5fc5953a@kalray.eu>
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
Subject: Re: mci: SDHC generic driver? refactor dove-sdhci?
To: Yann Sionneau <ysionneau@kalray.eu>
Cc: barebox@lists.infradead.org

Hi Yann,

On Fri, Feb 08, 2019 at 04:49:09PM +0100, Yann Sionneau wrote:
> Hello,
> 
> I've written a driver for snps,dw-mshc, which is compatible with SDHC spec.

Are you sure? "snps,dw-mshc" is not compatible to SDHCI and has a
separate driver in Linux. We also have this driver in barebox, not with
the "snps,dw-mshc" compatible, but with "altr,socfpga-dw-mshc". The
register layout looks quite different from SDHCI.

> 
> Basically I've just copy pasted the dove-sdhci.c one and modified a few
> lines to add:
> 
> * support for host_v4 mode
> 
> * 64 bit addressing
> 
> * 64-bit SDMA
> 
> * PIO mode
> 
> * Support for 10-bit clock divider (max divider of 2046 instead of 256)
> 
> Chosing between SDMA and PIO is done with Kconfig defines at compile time.
> It's either one or the other.
> 
> Since snps,dw-mshc and dove-sdhci share the same code, because both respect
> SDHC spec I would propose to rename dove-sdhci.c into sdhci.c and remove all
> dove mentions inside.
> 
> Then write a dove-sdhci.c which registers via the sdhci generic layer and
> same thing for dw-mshc.
> 
> This allows lot of code sharing between SDHC compatible devices and also
> eases a lot the writing of new drivers.
> 
> Would that be OK?

We have several other SDHCI like drivers in barebox: bcm2835, tegra,
imx-esdhc. They are all slightly different and the Linux SDHCI driver is
a horrible thing. Instead of trying to write one driver for all of these
I'd rather suggest we keep our separate drivers and that we create a
common SHDCI file in which we add some library functions which we can
use from the more specific drivers.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
28Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
