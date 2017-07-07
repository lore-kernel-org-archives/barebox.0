Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dTSbO-00035e-Rv
 for barebox@lists.infradead.org; Fri, 07 Jul 2017 12:43:21 +0000
Message-ID: <1499431371.23968.7.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 07 Jul 2017 14:42:51 +0200
In-Reply-To: <alpine.DEB.2.00.1707062233390.12561@blala.de>
References: <20170705182747.GB13920@ravnborg.org>
 <20170705183315.GB17038@ravnborg.org>
 <1499345180.22075.58.camel@pengutronix.de>
 <alpine.DEB.2.00.1707062233390.12561@blala.de>
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
Subject: Re: [PATCH 2/3] gpio: fix null pointer exception when there is no
 oftree
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>, Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

Am Donnerstag, den 06.07.2017, 22:53 +0200 schrieb Alexander Kurz:
> 
> On Thu, 6 Jul 2017, Lucas Stach wrote:
> 
> > Am Mittwoch, den 05.07.2017, 20:33 +0200 schrieb Sam Ravnborg:
> > > From d10f426e1b8cec7de257dabf59e7fe53a591b3c1 Mon Sep 17 00:00:00 2001
> > > From: Sam Ravnborg <srn@skov.dk>
> > > Date: Mon, 3 Jul 2017 22:07:41 +0200
> > > Subject: [PATCH 2/3] gpio: fix null pointer exception when there is no oftree
> > > 
> > > In a system with oftree support enabled but with no oftree the
> > > of_gpiochip_scan_hogs() would fail due to device_node equals NULL.
> > > 
> > > Check device_node and return with 0 in this situation, as this
> > > mirrors what would have happened before we added support for gpio-hogs.
> > > 
> > > Use IS_ENABLED(CONFIG_OFDEVICE) to teach compiler to leave
> > > out the of_* specific functions if not needed.
> > > 
> > > Fixes: 37e6bee7 ("gpiolib: Add support for GPIO "hog" nodes")
> > > Signed-off-by: Alexander Kurz <akurz@blala.de>
> > > Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> > > ---
> > >  drivers/gpio/gpiolib.c | 8 +++++++-
> > >  1 file changed, 7 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> > > index a3e17ada0..2bd8ef2a8 100644
> > > --- a/drivers/gpio/gpiolib.c
> > > +++ b/drivers/gpio/gpiolib.c
> > > @@ -379,6 +379,9 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
> > >  	struct device_node *np;
> > >  	int ret, i;
> > >  
> > > +	if (!chip->dev->device_node)
> > > +		return 0;
> > > +
> > >  	for_each_available_child_of_node(chip->dev->device_node, np) {
> > >  		if (!of_property_read_bool(np, "gpio-hog"))
> > >  			continue;
> > > @@ -416,7 +419,10 @@ int gpiochip_add(struct gpio_chip *chip)
> > >  	for (i = chip->base; i < chip->base + chip->ngpio; i++)
> > >  		gpio_desc[i].chip = chip;
> > >  
> > > -	return of_gpiochip_scan_hogs(chip);
> > > +	if (IS_ENABLED(CONFIG_OFDEVICE))
> > > +		return of_gpiochip_scan_hogs(chip);
> > > +	else
> > > +		return 0;
> > >  }
> > >  
> > >  void gpiochip_remove(struct gpio_chip *chip)
> > 
> > I think this can be simplified to:
> > 
> > diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> > index a3e17ada0d39..1a373ef149a5 100644
> > --- a/drivers/gpio/gpiolib.c
> > +++ b/drivers/gpio/gpiolib.c
> > @@ -379,6 +379,9 @@ static int of_gpiochip_scan_hogs(struct gpio_chip
> > *chip)
> >         struct device_node *np;
> >         int ret, i;
> > 
> > +       if (!IS_ENABLED(CONFIG_OFDEVICE) || !chip->dev->device_node)
> > +               return 0;
> > +
> >         for_each_available_child_of_node(chip->dev->device_node, np) {
> >                 if (!of_property_read_bool(np, "gpio-hog"))
> >                         continue;
> > 
> > The optimizer should be able to work this out. Can you check that this
> > works for you? No need to resend, if it works I'll just commit this.
> This works perfecty fine with gcc-5.2 and gcc-4.6
> (although gcc-4.6 compatibilty broke with commit 4ef026c3048)

Thanks, all. I've pushed the reworked patch together with 1/3 to master.
Patch 3/3 is applied for -next.

Regards,
Lucas



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
