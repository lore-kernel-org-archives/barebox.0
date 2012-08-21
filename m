Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo1.mail-out.ovh.net ([178.33.110.239]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T3nLi-00033G-IG
 for barebox@lists.infradead.org; Tue, 21 Aug 2012 12:14:23 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 74CDFFF8E20
 for <barebox@lists.infradead.org>; Tue, 21 Aug 2012 14:21:21 +0200 (CEST)
Date: Tue, 21 Aug 2012 14:14:30 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120821121430.GE6271@game.jcrosoft.org>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
 <1345472428-17417-9-git-send-email-jlu@pengutronix.de>
 <20120820145831.GA6271@game.jcrosoft.org>
 <20120821071623.GE15318@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120821071623.GE15318@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 08/13] drivers/spi: add driver for the Multichannel SPI
 controller found in TI SoCs
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:16 Tue 21 Aug     , Jan Luebbe wrote:
> On Mon, Aug 20, 2012 at 04:58:31PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 16:20 Mon 20 Aug     , Jan Luebbe wrote:
> > > +int mcspi_devices_init()
> > > +{
> > > +	add_generic_device("omap3_spi", 1, NULL, OMAP3_MCSPI1_BASE, SZ_4K,
> > > +			   IORESOURCE_MEM, NULL);
> > > +	add_generic_device("omap3_spi", 2, NULL, OMAP3_MCSPI2_BASE, SZ_4K,
> > > +			   IORESOURCE_MEM, NULL);
> > > +	add_generic_device("omap3_spi", 3, NULL, OMAP3_MCSPI3_BASE, SZ_4K,
> > > +			   IORESOURCE_MEM, NULL);
> > > +	add_generic_device("omap3_spi", 4, NULL, OMAP3_MCSPI4_BASE, SZ_4K,
> > > +			   IORESOURCE_MEM, NULL);
> > why do you register all of them??
> > 
> > you need to register only what the board need
> 
> Would you prefer having separeate mcspc1-4_device_init functions? Or simply
> call add_generic_device in the board code?
as on imx an inluine for each
> 
> > > +
> > > +	return 0;
> > > +}
> > > diff --git a/arch/arm/mach-omap/include/mach/mcspi.h b/arch/arm/mach-omap/include/mach/mcspi.h
> > > new file mode 100644
> > > index 0000000..40ee622
> > > --- /dev/null
> > > +++ b/arch/arm/mach-omap/include/mach/mcspi.h
> > > @@ -0,0 +1,11 @@
> > > +#ifndef __OMAP_MCSPI_H
> > > +#define  __OMAP_MCSPI_H
> > > +
> > > +#define OMAP3_MCSPI1_BASE       0x48098000
> > > +#define OMAP3_MCSPI2_BASE       0x4809A000
> > > +#define OMAP3_MCSPI3_BASE       0x480B8000
> > > +#define OMAP3_MCSPI4_BASE       0x480BA000
please use tab for indent

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
