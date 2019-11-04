Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXp2-0004qh-8L
 for barebox@lists.infradead.org; Mon, 04 Nov 2019 08:34:49 +0000
Date: Mon, 4 Nov 2019 09:34:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20191104083445.jtympksioikrvjyx@pengutronix.de>
References: <20191030170653.5559-1-m.felsch@pengutronix.de>
 <20191030170653.5559-2-m.felsch@pengutronix.de>
 <20191104082723.uyjfis5syqfrtqr6@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104082723.uyjfis5syqfrtqr6@pengutronix.de>
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
Subject: Re: [PATCH 2/2] mfd: da9063: fix watchdog ping execution
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, enrico.scholz@sigma-chemnitz.de

On 19-11-04 09:27, Sascha Hauer wrote:
> On Wed, Oct 30, 2019 at 06:06:53PM +0100, Marco Felsch wrote:
> > The watchdog resets the system if the watchdog gets pinged to fast.
> > Between each watchdog ping must be a pause of at least 200ms.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  drivers/mfd/da9063.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
> > index 4d459c7f18..ab57885240 100644
> > --- a/drivers/mfd/da9063.c
> > +++ b/drivers/mfd/da9063.c
> > @@ -14,6 +14,7 @@
> >   */
> >  
> >  #include <common.h>
> > +#include <clock.h>
> >  #include <driver.h>
> >  #include <gpio.h>
> >  #include <restart.h>
> > @@ -33,6 +34,7 @@ struct da9063 {
> >  	struct i2c_client	*client1;
> >  	struct device_d		*dev;
> >  	unsigned int		timeout;
> > +	uint64_t		last_ping;
> >  };
> >  
> >  /* forbidden/impossible value; timeout will be set to this value initially to
> > @@ -237,6 +239,13 @@ static int da9063_watchdog_ping(struct da9063 *priv)
> >  	int ret;
> >  	u8 val;
> >  
> > +	/* We need to wait at least 200ms till we can resend a ping */
> > +	if (!is_timeout_non_interruptible(priv->last_ping, 200 * MSECOND)) {
> > +		dev_dbg(priv->dev, "active ping delay\n");
> > +		mdelay(50);
> 
> I would expect to wait the missing time to 200ms here. Maybe doing
> nothing in this case would be more appropriate here. I mean, why should
> you slow down barebox here when some code triggers the watchdog too
> often?
> 
> > +		return da9063_watchdog_ping(priv);
> 
> Drop this, just fall through.

Just prepared a v2 with a busy wait after discussed it with Lucas.
Thanks for your input too :)

Regards,
  Marco

> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
