Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-mw2nam10on2103.outbound.protection.outlook.com
 ([40.107.94.103] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jytFV-0000iS-Ty
 for barebox@lists.infradead.org; Fri, 24 Jul 2020 08:40:15 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
Date: Fri, 24 Jul 2020 08:40:07 +0000
Message-ID: <MN2PR16MB313567A878F515D9A7ECF86991770@MN2PR16MB3135.namprd16.prod.outlook.com>
References: <MN2PR16MB313535B92C50776EC02EBD6191760@MN2PR16MB3135.namprd16.prod.outlook.com>
 <795d7b96dea1b9f6ab60020f9725c185d9f0822c.camel@pengutronix.de>
In-Reply-To: <795d7b96dea1b9f6ab60020f9725c185d9f0822c.camel@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: gpio generic driver
To: Lucas Stach <l.stach@pengutronix.de>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Of course. Preparing a patch

> -----Original Message-----
> From: Lucas Stach [mailto:l.stach@pengutronix.de]
> Sent: 24 July 2020 09:20
> To: Barbier, Renaud <renaud.barbier@abaco.com>;
> barebox@lists.infradead.org
> Subject: Re: gpio generic driver
> 
> 
> 
> [**EXTERNAL SOURCE**]:Please verify the source before clicking link or
> opening attachment.
> 
> Am Donnerstag, den 23.07.2020, 19:51 +0000 schrieb Barbier, Renaud:
> > Question regarding the function below:
> >
> > static int bgpio_get(struct gpio_chip *gc, unsigned int gpio)
> >   {
> >           struct bgpio_chip *bgc = to_bgpio_chip(gc);
> >
> > ~         return bgc->read_reg(bgc->reg_dat) & bgc->pin2mask(bgc, gpio);
> >   }
> >
> > This returns the value from the register i.e the value as in 0x01000000 for
> bit 3BE or 28LE. This is what I see using the drivers/gpio/gpio-mpc8xxx.c
> driver.
> >
> > Is it not supposed to return just 0 or 1?
> >
> > Linux has
> >
> > return !!(gc->read_reg(gc->reg_dat) & bgpio_line2mask(gc, gpio));
> 
> This shouldn't make a difference when the return value is just used in
> a condition, but it may confuse other uses which expect the normalized
> 1/0 form.
> 
> Care to send a patch to change this to the more correct Linux version?
> 
> Regards,
> Lucas

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
