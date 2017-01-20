Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cUUJP-0003JT-IG
 for barebox@lists.infradead.org; Fri, 20 Jan 2017 08:12:49 +0000
Date: Fri, 20 Jan 2017 09:10:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170120081010.3qcr23j26x23w4jn@pengutronix.de>
References: <20170119150352.5421-1-s.hauer@pengutronix.de>
 <20170120053903.GA25134@ravnborg.org>
 <20170120054400.GA3542@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170120054400.GA3542@ravnborg.org>
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
Subject: Re: [PATCH 1/2] watchdog: i.MX: add soc_reset operation
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sam,

On Fri, Jan 20, 2017 at 06:44:00AM +0100, Sam Ravnborg wrote:
> On Fri, Jan 20, 2017 at 06:39:03AM +0100, Sam Ravnborg wrote:
> > On Thu, Jan 19, 2017 at 04:03:51PM +0100, Sascha Hauer wrote:
> > > On i.MX21 watchdog type the reset operation is really different
> > > from the watchdog enable/set timeout operation, so create an
> > > extra callback for this instead of folding both things together.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  drivers/watchdog/imxwd.c | 32 +++++++++++++++++++++-----------
> > >  1 file changed, 21 insertions(+), 11 deletions(-)
> > > 
> > > diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
> > > index 03e116ea2..c736fdaa3 100644
> > > --- a/drivers/watchdog/imxwd.c
> > > +++ b/drivers/watchdog/imxwd.c
> > > @@ -26,6 +26,7 @@ struct imx_wd;
> > >  
> > >  struct imx_wd_ops {
> > >  	int (*set_timeout)(struct imx_wd *, int);
> > 
> > With this change the timeout argument could be unsigned int.
> > 
> > > +	void (*soc_reset)(struct imx_wd *);
> > >  	int (*init)(struct imx_wd *);
> > >  };
> > >  
> > > @@ -76,10 +77,7 @@ static int imx1_watchdog_set_timeout(struct imx_wd *priv, int timeout)
> > >  		return 0;
> > >  	}
> > >  
> > > -	if (timeout > 0)
> > > -		val = (timeout * 2 - 1) << 8;
> > > -	else
> > > -		val = 0;
> > > +	val = (timeout * 2 - 1) << 8;
> > >  
> > >  	writew(val, priv->base + IMX1_WDOG_WCR);
> > >  	writew(IMX1_WDOG_WCR_WDE | val, priv->base + IMX1_WDOG_WCR);
> > 
> > Otherwise the timeout < 0 should somehow be handled here.
> 
> Unless we do not bother because this is all local to the file
> and we know the two call sites.

I changed it to unsigned and also removed another check for negative
values.

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
