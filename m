Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVpYy-0005Bq-7o
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 20:48:13 +0000
Date: Fri, 26 Apr 2013 22:48:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130426204805.GV32299@pengutronix.de>
References: <1366994474-21325-1-git-send-email-shc_work@mail.ru>
 <1366994474-21325-2-git-send-email-shc_work@mail.ru>
 <20130426165946.GI13393@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130426165946.GI13393@game.jcrosoft.org>
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
Subject: Re: [PATCH 2/9] ARM: at91 gpio: Fix possible null pointer dereference
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 26, 2013 at 06:59:46PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 20:41 Fri 26 Apr     , Alexander Shiyan wrote:
> > 
> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > ---
> >  arch/arm/mach-at91/gpio.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
> > index c2618c7..0e39a52 100644
> > --- a/arch/arm/mach-at91/gpio.c
> > +++ b/arch/arm/mach-at91/gpio.c
> > @@ -185,10 +185,10 @@ static struct at91_pinctrl_mux_ops at91sam9x5_ops = {
> >  int at91_mux_pin(unsigned pin, enum at91_mux mux, int use_pullup)
> >  {
> >  	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
> > -	void __iomem *pio = at91_gpio->regbase;
> > +	void __iomem *pio;
> > +	struct device_d *dev;
> >  	unsigned mask = pin_to_mask(pin);
> >  	int bank = pin_to_bank(pin);
> > -	struct device_d *dev = at91_gpio->chip.dev;
> so crash

means what? the original code derefences at91_gpio...

> >  
> >  	if (!at91_gpio)
> >  		return -EINVAL;

...and then checks if at91_gpio is valid which makes no sense.

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
