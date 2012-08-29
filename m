Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T6djk-0000R3-AZ
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 08:34:57 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 82753DC4A13
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2012 10:40:01 +0200 (CEST)
Date: Wed, 29 Aug 2012 10:35:07 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120829083507.GD18708@game.jcrosoft.org>
References: <20120829042727.GA18708@game.jcrosoft.org>
 <1346216778-14100-1-git-send-email-plagnioj@jcrosoft.com>
 <1346216778-14100-7-git-send-email-plagnioj@jcrosoft.com>
 <20120829065348.GN26594@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120829065348.GN26594@pengutronix.de>
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
Subject: Re: [PATCH 7/7] smm911x: check if the device is ready before using it
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:53 Wed 29 Aug     , Sascha Hauer wrote:
> On Wed, Aug 29, 2012 at 07:06:18AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > poll the READY bit in PMT_CTRL. Any other access to the device is
> > forbidden while this bit isn't set. Try for 100ms
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/net/smc911x.c |   12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
> > index cfcd83f..3695d32 100644
> > --- a/drivers/net/smc911x.c
> > +++ b/drivers/net/smc911x.c
> > @@ -422,6 +422,7 @@ static int smc911x_probe(struct device_d *dev)
> >  	uint32_t val;
> >  	int is_32bit;
> >  	struct smc911x_plat *pdata = dev->platform_data;
> > +	unsigned int to = 100;
> >  
> >  	priv = xzalloc(sizeof(*priv));
> >  	is_32bit = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
> > @@ -452,6 +453,17 @@ static int smc911x_probe(struct device_d *dev)
> >  		}
> >  	}
> >  
> > +	/*
> > +	 * poll the READY bit in PMT_CTRL. Any other access to the device is
> > +	 * forbidden while this bit isn't set. Try for 100ms
> > +	 */
> > +	while (!(smc911x_reg_read(priv, PMT_CTRL) & PMT_CTRL_READY) && --to)
> > +		udelay(1000);
> 
> please use a regular timeout loop
code from the kernel I prefer to keep it as it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
