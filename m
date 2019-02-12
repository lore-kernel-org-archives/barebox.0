Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtY40-0004wm-Rv
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 13:25:30 +0000
Message-ID: <380fc05b1f52953237c7aac2873e7c2c001e38fe.camel@phytec.de>
From: Teresa Remmet <t.remmet@phytec.de>
Date: Tue, 12 Feb 2019 14:25:27 +0100
In-Reply-To: <20190212081043.viptqq7sge5zjtdg@pengutronix.de>
References: <1549898200-32688-1-git-send-email-t.remmet@phytec.de>
 <1549898200-32688-2-git-send-email-t.remmet@phytec.de>
 <20190212081043.viptqq7sge5zjtdg@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 1/7] drivers: bus: Add ti-sysc bus driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

Am Dienstag, den 12.02.2019, 09:10 +0100 schrieb Sascha Hauer:
> On Mon, Feb 11, 2019 at 04:16:34PM +0100, Teresa Remmet wrote:
> > Adds minimal support for the sysc interconnect target module found
> > on many TI SoCs. With this device tree includes have been
> > rearagned.
> > We need the driver to probe the child devices of the bus.
> > 
> > Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> > ---
> >  drivers/bus/Kconfig   |  7 +++++++
> >  drivers/bus/Makefile  |  1 +
> >  drivers/bus/ti-sysc.c | 45
> > +++++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 53 insertions(+)
> >  create mode 100644 drivers/bus/ti-sysc.c
> > 
> > diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
> > index 202df59762e8..7d35a663fdb5 100644
> > --- a/drivers/bus/Kconfig
> > +++ b/drivers/bus/Kconfig
> > @@ -6,6 +6,13 @@ config BUS_OMAP_GPMC
> >  	depends on OMAP_GPMC
> >  	bool "TI OMAP/AM33xx GPMC support"
> >  
> > +config TI_SYSC
> > +	depends on ARCH_OMAP
> > +	bool "TI sysc interconnect target module driver"
> > +	help
> > +          Generic driver for Texas Instruments interconnect target
> > module
> > +          found on many TI SoCs.
> 
> Can we default 'y' this option or select it from the SoCs that need
> it?

yes, this would be better. As barebox will not start without it. I will
update it.

Teresa

> 
> Sascha
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
