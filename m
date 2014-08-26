Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XMJI3-0005Nh-Fa
 for barebox@lists.infradead.org; Tue, 26 Aug 2014 16:08:12 +0000
Date: Tue, 26 Aug 2014 13:06:40 -0300
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Message-ID: <20140826160640.GA8789@arch.cereza>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] nand: Add Marvell Orion NAND driver
To: Alexander Aring <alex.aring@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 26 Aug 04:28 PM, Alexander Aring wrote:
> Hi,
> =

> On Sat, Aug 23, 2014 at 05:19:22PM -0300, Ezequiel Garcia wrote:
> > This commit adds NAND support for the controller present in Kirkwood So=
Cs.
> > =

> =

> cool! I will test it on my DNS-325 platform, if I find some free time.
> =

> Thanks for doing this.
> =

> > Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> > ---
> >  drivers/mtd/nand/Kconfig      |   7 ++
> >  drivers/mtd/nand/Makefile     |   1 +
> >  drivers/mtd/nand/nand_orion.c | 162 ++++++++++++++++++++++++++++++++++=
++++++++
> >  3 files changed, 170 insertions(+)
> >  create mode 100644 drivers/mtd/nand/nand_orion.c
> > =

> > diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
> > index 04fe3c8..ccf1f9c 100644
> > --- a/drivers/mtd/nand/Kconfig
> > +++ b/drivers/mtd/nand/Kconfig
> > @@ -90,6 +90,13 @@ config NAND_OMAP_GPMC
> >  	  Support for NAND flash using GPMC. GPMC is a common memory
> >  	  interface found on Texas Instrument's OMAP platforms
> >  =

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
> > +	struct device_node *dev_node =3D dev->device_node;
> > +	struct orion_nand *priv;
> > +	struct mtd_info *mtd;
> > +	struct nand_chip *chip;
> > +	struct clk *clk;
> > +	void __iomem *io_base;
> > +	int width, ret;
> > +	u32 val =3D 0;
> > +
> > +	priv =3D xzalloc(sizeof(struct orion_nand));
> > +	if (!priv) {
> > +		ret =3D -ENOMEM;
> > +		goto no_res;
> > +	}
> =

> checking on null with xzalloc isn't needed, if fails we run into panic.
> =


Ah, OK.

> > +	mtd =3D &priv->mtd;
> > +	chip =3D &priv->chip;
> > +
> > +	io_base =3D dev_request_mem_region(dev, 0);
> > +
> =

> here we should check the return value. I don't know what's now the
> behaviour on dev_request_mem_region if fail returns NULL or ERR_PTR.
> There was some discussion on the list.
> =


OK, I'll take a look.

-- =

Ezequiel Garc=EDa, Free Electrons
Embedded Linux, Kernel and Android Engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
