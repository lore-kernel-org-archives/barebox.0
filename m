Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XOO03-0001uv-0O
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 09:34:11 +0000
Date: Mon, 1 Sep 2014 11:33:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140901093342.GN5352@pengutronix.de>
References: <1408825163-6135-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <1408825163-6135-2-git-send-email-ezequiel.garcia@free-electrons.com>
 <20140826142811.GA12155@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140826142811.GA12155@omega>
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
Subject: Re: [PATCH 1/2] nand: Add Marvell Orion NAND driver
To: Alexander Aring <alex.aring@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Tue, Aug 26, 2014 at 04:28:13PM +0200, Alexander Aring wrote:
> Hi,
> 
> On Sat, Aug 23, 2014 at 05:19:22PM -0300, Ezequiel Garcia wrote:
> > This commit adds NAND support for the controller present in Kirkwood SoCs.
> > 
> 
> cool! I will test it on my DNS-325 platform, if I find some free time.
> 
> Thanks for doing this.
> 
> > Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> > ---
> >  drivers/mtd/nand/Kconfig      |   7 ++
> >  drivers/mtd/nand/Makefile     |   1 +
> >  drivers/mtd/nand/nand_orion.c | 162 ++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 170 insertions(+)
> >  create mode 100644 drivers/mtd/nand/nand_orion.c
> > 
> > diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
> > index 04fe3c8..ccf1f9c 100644
> > --- a/drivers/mtd/nand/Kconfig
> > +++ b/drivers/mtd/nand/Kconfig
> > @@ -90,6 +90,13 @@ config NAND_OMAP_GPMC
> >  	  Support for NAND flash using GPMC. GPMC is a common memory
> >  	  interface found on Texas Instrument's OMAP platforms
> >  
> > +config NAND_ORION
> > +	bool
> > +	prompt "Orion NAND driver"
> > +	depends on ARCH_MVEBU
> > +	help
> > +	  Support for the Orion NAND controller, present in Kirkwood SoCs.
> > +
> >  config NAND_ATMEL
> >  	bool
> >  	prompt "Atmel (AT91SAM9xxx) NAND driver"
> ...
> > +
> > +static int orion_nand_probe(struct device_d *dev)
> > +{
> > +	struct device_node *dev_node = dev->device_node;
> > +	struct orion_nand *priv;
> > +	struct mtd_info *mtd;
> > +	struct nand_chip *chip;
> > +	struct clk *clk;
> > +	void __iomem *io_base;
> > +	int width, ret;
> > +	u32 val = 0;
> > +
> > +	priv = xzalloc(sizeof(struct orion_nand));
> > +	if (!priv) {
> > +		ret = -ENOMEM;
> > +		goto no_res;
> > +	}
> 
> checking on null with xzalloc isn't needed, if fails we run into panic.

removed the check while applying.

> 
> > +	mtd = &priv->mtd;
> > +	chip = &priv->chip;
> > +
> > +	io_base = dev_request_mem_region(dev, 0);
> > +
> 
> here we should check the return value. I don't know what's now the
> behaviour on dev_request_mem_region if fail returns NULL or ERR_PTR.
> There was some discussion on the list.

It still returns NULL. I have a series converting it to return ERR_PTR,
but this isn't mainlined yet. I'll have to rebase it on current master.

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
