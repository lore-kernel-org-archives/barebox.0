Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQ3XL-0001qv-R2
 for barebox@lists.infradead.org; Wed, 07 Oct 2020 07:06:56 +0000
Date: Wed, 7 Oct 2020 09:06:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201007070653.GH11648@pengutronix.de>
References: <20201005095346.27957-1-s.hauer@pengutronix.de>
 <20201005095346.27957-2-s.hauer@pengutronix.de>
 <d4a9e876afaf38b2aaab6647ec8c26e2ebb12043.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d4a9e876afaf38b2aaab6647ec8c26e2ebb12043.camel@pengutronix.de>
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
Subject: Re: [PATCH 1/7] remoteproc: imx: Fix off-by-one error
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Oct 05, 2020 at 02:23:59PM +0200, Lucas Stach wrote:
> Am Montag, den 05.10.2020, 11:53 +0200 schrieb Sascha Hauer:
> > size is actually end - start + 1, fix size passed to
> > request_sdram_region().
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/remoteproc/imx_rproc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
> > index 370bebe6e2..74a8d8ff2e 100644
> > --- a/drivers/remoteproc/imx_rproc.c
> > +++ b/drivers/remoteproc/imx_rproc.c
> > @@ -305,7 +305,7 @@ static int imx_rproc_addr_init(struct imx_rproc *priv,
> >  			break;
> >  
> >  		res_cpu = request_sdram_region(dev_name(dev), res.start,
> > -					       res.end - res.start);
> > +					       res.end - res.start + 1);
> 
> That's a hand rolled version of resource_size(), I think it's better to
> use this function instead.

Right, fixed.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
