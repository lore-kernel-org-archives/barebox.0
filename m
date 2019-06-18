Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDxI-0001Qn-5y
 for barebox@lists.infradead.org; Tue, 18 Jun 2019 13:15:26 +0000
Date: Tue, 18 Jun 2019 15:15:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190618131516.6ipcgijgyn4phefd@pengutronix.de>
References: <20190617100056.25331-1-m.felsch@pengutronix.de>
 <20190617100056.25331-5-m.felsch@pengutronix.de>
 <20190618135050.a689b99d8d35383d6f155c2d@gmail.com>
 <20190618123952.h255xcm6qhxckmo4@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618123952.h255xcm6qhxckmo4@pengutronix.de>
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
Subject: Re: [PATCH 4/4] i2c: gpio: add sda/scl-gpios property support
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 18, 2019 at 02:39:52PM +0200, Marco Felsch wrote:
> Hi Antony,
> 
> On 19-06-18 13:50, Antony Pavlov wrote:
> > On Mon, 17 Jun 2019 12:00:56 +0200
> > Marco Felsch <m.felsch@pengutronix.de> wrote:
> > 
> > > The gpios property is marked as deprecated since kernel 4.15 so we
> > > should support the "new" mechanism too. The new mechanism has a higher
> > > priority than the deprecated one.
> > > 
> > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > ---
> > >  drivers/i2c/busses/i2c-gpio.c | 27 +++++++++++++++++----------
> > >  1 file changed, 17 insertions(+), 10 deletions(-)
> > > 
> > > diff --git a/drivers/i2c/busses/i2c-gpio.c b/drivers/i2c/busses/i2c-gpio.c
> > > index 708193344a..9508adab06 100644
> > > --- a/drivers/i2c/busses/i2c-gpio.c
> > > +++ b/drivers/i2c/busses/i2c-gpio.c
> > > @@ -94,18 +94,25 @@ static int of_i2c_gpio_probe(struct device_node *np,
> > >  	if (!IS_ENABLED(CONFIG_OFDEVICE))
> > >  		return -ENODEV;
> > >  
> > > -	if (of_gpio_count(np) < 2)
> > > -		return -ENODEV;
> > > +	pdata->sda_pin = of_get_named_gpio_flags(np, "sda-gpios", 0, NULL);
> > > +	pdata->scl_pin = of_get_named_gpio_flags(np, "scl-gpios", 0, NULL);
> > > +
> > > +	if ((!gpio_is_valid(pdata->sda_pin) || !gpio_is_valid(pdata->sda_pin))
> > 
> > Double check of sda_pin here.
> > 
> > Can we change this line to
> > 
> >  +	if ((!gpio_is_valid(pdata->sda_pin) || !gpio_is_valid(pdata->scl_pin))
> 
> Thanks for covering that damn copy'n'paste failure.
> @Sascha
> Is it okay to prepare a follow up patch which you can squash?

Sure.

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
