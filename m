Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIpW-0000Cl-Aw
 for barebox@lists.infradead.org; Tue, 14 Apr 2020 10:30:11 +0000
Date: Tue, 14 Apr 2020 12:30:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200414103008.GJ27288@pengutronix.de>
References: <20200325083608.15676-1-s.hauer@pengutronix.de>
 <20200325083608.15676-5-s.hauer@pengutronix.de>
 <CAHQ1cqHYd47QGKGg9NvTQZpa1bYz1bZaFyoSSa5JJ+diuMA=iA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqHYd47QGKGg9NvTQZpa1bYz1bZaFyoSSa5JJ+diuMA=iA@mail.gmail.com>
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
Subject: Re: [PATCH 4/5] spi: Add fsl-dspi driver
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Sat, Apr 04, 2020 at 12:14:33PM -0700, Andrey Smirnov wrote:
> On Wed, Mar 25, 2020 at 1:36 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > The fsl-dspi is found on Freescale Vybrid, Coldfire and Layerscape SoCs.
> > This adds the driver based on the Linux driver as of v5.5. Coldfire
> > support has been dropped as it's rather obsolete. Vybrid support has
> > been dropped because it needs the DMA engine support we do not have in
> > barebox. What's left is support for Layerscape where this driver has
> > been tested on.
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/spi/Kconfig        |   7 +
> >  drivers/spi/Makefile       |   1 +
> >  drivers/spi/spi-fsl-dspi.c | 655 +++++++++++++++++++++++++++++++++++++
> >  3 files changed, 663 insertions(+)
> >  create mode 100644 drivers/spi/spi-fsl-dspi.c
> >
> > diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> > index 3758a0fad9..96235a1be2 100644
> > --- a/drivers/spi/Kconfig
> > +++ b/drivers/spi/Kconfig
> > @@ -44,6 +44,13 @@ config DRIVER_SPI_FSL_QUADSPI
> >            This controller does not support generic SPI messages. It only
> >            supports the high-level SPI memory interface.
> >
> > +config SPI_FSL_DSPI
> > +       bool "Freescale DSPI controller"
> > +       depends on ARCH_LAYERSCAPE
> > +       help
> > +         This enables support for the Freescale DSPI controller in master
> > +         mode. VF610, LS1021A and ColdFire platforms uses the controller.
> 
> Sorry I didn't notice this patch earlier. Maybe we should drop the
> wording about VF610 here since there a separate DSPI driver for Vybrid
> as well:  https://git.pengutronix.de/cgit/barebox/tree/drivers/spi/Kconfig?h=next#n90

So there already is a driver for this hardware in barebox. I missed that :(

I dropped the wording about VF610 for now, but the real solution should
be to use the existing driver or at least merge them. I'll see when and
if I can find time for this.

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
