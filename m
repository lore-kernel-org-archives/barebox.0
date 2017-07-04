Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSUIL-0007Dr-HA
 for barebox@lists.infradead.org; Tue, 04 Jul 2017 20:19:42 +0000
Date: Tue, 4 Jul 2017 22:17:39 +0200 (CEST)
From: Alexander Kurz <akurz@blala.de>
In-Reply-To: <1499075760.2308.14.camel@pengutronix.de>
Message-ID: <alpine.DEB.2.00.1707042212240.19314@blala.de>
References: <1499027092-2522-1-git-send-email-akurz@blala.de>
 <1499075760.2308.14.camel@pengutronix.de>
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
Subject: Re: [PATCH] gpiolib: fix: do not access oftree on non-OFDEVICE boards
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>

Hi Lucas,

On Mon, 3 Jul 2017, Lucas Stach wrote:

> Am Sonntag, den 02.07.2017, 22:24 +0200 schrieb Alexander Kurz:
> > Non-OFDEVICE boards may have OFTREE=y set, e.g. by BOOTM_OFTREE.
> > Attempts to browse the oftree will crash barebox on those boards.
> > 
> > Signed-off-by: Alexander Kurz <akurz@blala.de>
> > ---
> >  drivers/gpio/gpiolib.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> > index a3e17ad..a1ff965 100644
> > --- a/drivers/gpio/gpiolib.c
> > +++ b/drivers/gpio/gpiolib.c
> > @@ -416,7 +416,10 @@ int gpiochip_add(struct gpio_chip *chip)
> >  	for (i = chip->base; i < chip->base + chip->ngpio; i++)
> >  		gpio_desc[i].chip = chip;
> >  
> > -	return of_gpiochip_scan_hogs(chip);
> > +	if (IS_ENABLED(CONFIG_OFDEVICE))
> > +		return of_gpiochip_scan_hogs(chip);
> > +	else
> > +		return 0;
> 
> This may also crash in mixed oftree/board file based systems (however
> unlikely that is). I think an early return from of_gpiochip_scan_hogs ()
> if chip->dev->device_node is NULL would be more robust.
IS_ENABLED(...) is evaluated at compile time.
Checking CONFIG_OFDEVICE even before calling the OF-function gives the 
compiler the chance to omit the integration of the unneeded function.
A quick test on with kindle3_defconfig resulted in half a kilobyte
image size difference.

Sure, a further check on the device node presence might be usefull, e.g.
git grep 'IS_ENABLED(CONFIG_OFDEVICE)' drivers/
but I have not reviewed the code in this direction.
At least, the code does not crash due to this reason.

Regards, Alexander


> Regards,
> Lucas
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
