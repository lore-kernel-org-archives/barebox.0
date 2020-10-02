Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOCRM-0000DE-Tf
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 04:13:05 +0000
Date: Fri, 2 Oct 2020 06:13:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201002041303.GP11648@pengutronix.de>
References: <20200820194547.3738-1-l.stach@pengutronix.de>
 <0ae4ff9734730d318fc6a62301deafe5d300441c.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ae4ff9734730d318fc6a62301deafe5d300441c.camel@pengutronix.de>
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
Subject: Re: [PATCH 1/2] clk: imx: remove leftover debug printk's from pll14xx
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 30, 2020 at 02:40:34PM +0200, Lucas Stach wrote:
> Hi Sascha,
> 
> seems like this patch fell though the cracks (but 2/2 has been applied).

I had created this patch myself just before you sent it, so I didn't
apply this one but my own version. This really didn't make it into
2020.09.0 as it should, but it's on current master.

Sascha

> 
> Regards,
> Lucas
> 
> On Do, 2020-08-20 at 21:45 +0200, Lucas Stach wrote:
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  drivers/clk/imx/clk-pll14xx.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
> > index 91e9624a606d..6ba519516b9f 100644
> > --- a/drivers/clk/imx/clk-pll14xx.c
> > +++ b/drivers/clk/imx/clk-pll14xx.c
> > @@ -358,8 +358,7 @@ static void clk_pll14xx_unprepare(struct clk *clk)
> >  {
> >  	struct clk_pll14xx *pll = to_clk_pll14xx(clk);
> >  	u32 val;
> > -printf("%s %p\n", __func__, pll);
> > -printf("%s %p\n", __func__, pll->base);
> > +
> >  	/*
> >  	 * Set RST to 0, power down mode is enabled and
> >  	 * every digital block is reset
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
