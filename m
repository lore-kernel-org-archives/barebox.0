Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gqzDL-0007iA-ID
 for barebox@lists.infradead.org; Tue, 05 Feb 2019 11:48:33 +0000
Date: Tue, 5 Feb 2019 12:48:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190205114829.wffdhincplpsn6rs@pengutronix.de>
References: <20190201130241.26620-1-l.stach@pengutronix.de>
 <20190201133108.GA14385@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190201133108.GA14385@ravnborg.org>
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
Subject: Re: [PATCH] net: fec_imx: skip fec_halt if the FEC wasn't started
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

On Fri, Feb 01, 2019 at 02:31:08PM +0100, Sam Ravnborg wrote:
> Hi Lucas.
> 
> On Fri, Feb 01, 2019 at 02:02:41PM +0100, Lucas Stach wrote:
> > If the FEC driver is enabled, but the ethernet device was never
> > opened due to booting from another source the wait for graceful
> > transmit stop will always fail. This introduces an unnecessary
> > boot delay and prints a distracting warning.
> > 
> > As there is no point in trying to shut down the FEC if it was
> > never started, just skip all of fec_halt in that case.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  drivers/net/fec_imx.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> > index 4823b08340c6..36505c529c84 100644
> > --- a/drivers/net/fec_imx.c
> > +++ b/drivers/net/fec_imx.c
> > @@ -395,6 +395,9 @@ static void fec_halt(struct eth_device *dev)
> >  	struct fec_priv *fec = (struct fec_priv *)dev->priv;
> >  	uint32_t reg;
> >  
> > +	if (!(readl(fec->regs + FEC_ECNTRL) & FEC_ECNTRL_ETHER_EN))
> > +		return;
> > +
> It would be nice with a small comment in the code that explain why
> it is OK to return here, so one does not have to go digging in git
> to find out why.

Added such a comment and applied.

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
