Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cURzs-0004h8-SG
 for barebox@lists.infradead.org; Fri, 20 Jan 2017 05:44:27 +0000
Date: Fri, 20 Jan 2017 06:44:00 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170120054400.GA3542@ravnborg.org>
References: <20170119150352.5421-1-s.hauer@pengutronix.de>
 <20170120053903.GA25134@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170120053903.GA25134@ravnborg.org>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Jan 20, 2017 at 06:39:03AM +0100, Sam Ravnborg wrote:
> On Thu, Jan 19, 2017 at 04:03:51PM +0100, Sascha Hauer wrote:
> > On i.MX21 watchdog type the reset operation is really different
> > from the watchdog enable/set timeout operation, so create an
> > extra callback for this instead of folding both things together.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/watchdog/imxwd.c | 32 +++++++++++++++++++++-----------
> >  1 file changed, 21 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
> > index 03e116ea2..c736fdaa3 100644
> > --- a/drivers/watchdog/imxwd.c
> > +++ b/drivers/watchdog/imxwd.c
> > @@ -26,6 +26,7 @@ struct imx_wd;
> >  
> >  struct imx_wd_ops {
> >  	int (*set_timeout)(struct imx_wd *, int);
> 
> With this change the timeout argument could be unsigned int.
> 
> > +	void (*soc_reset)(struct imx_wd *);
> >  	int (*init)(struct imx_wd *);
> >  };
> >  
> > @@ -76,10 +77,7 @@ static int imx1_watchdog_set_timeout(struct imx_wd *priv, int timeout)
> >  		return 0;
> >  	}
> >  
> > -	if (timeout > 0)
> > -		val = (timeout * 2 - 1) << 8;
> > -	else
> > -		val = 0;
> > +	val = (timeout * 2 - 1) << 8;
> >  
> >  	writew(val, priv->base + IMX1_WDOG_WCR);
> >  	writew(IMX1_WDOG_WCR_WDE | val, priv->base + IMX1_WDOG_WCR);
> 
> Otherwise the timeout < 0 should somehow be handled here.

Unless we do not bother because this is all local to the file
and we know the two call sites.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
