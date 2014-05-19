Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WmJEy-0002be-Ub
 for barebox@lists.infradead.org; Mon, 19 May 2014 08:48:13 +0000
Date: Mon, 19 May 2014 10:47:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140519084750.GG5918@pengutronix.de>
References: <1399534299-27051-1-git-send-email-s.hauer@pengutronix.de>
 <1399834166.925793804@f410.i.mail.ru>
 <20140512103850.GF5858@pengutronix.de>
 <1400090277.899030332@f387.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1400090277.899030332@f387.i.mail.ru>
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
Subject: Re: [PATCH 2/5] spi: i.MX: Move to coredevice_initcall
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Wed, May 14, 2014 at 09:57:57PM +0400, Alexander Shiyan wrote:
> > 
> > - put the drivers private data into dev->priv
> > - when returning an error from probe, instead of freeing the data
> >   keep it.
> > - when probing again re-use the data.
> > 
> > With this drivers could be written like:
> > 
> > 	priv = dev->priv;
> > 	if (!priv) {
> > 		priv = xzalloc(sizeof(priv));
> > 		dev->priv = priv;
> > 	}
> > 
> > 	if (!priv->clk) {
> > 		clk = clk_get(dev, NULL);
> > 		if (IS_ERR(clk))
> > 			return PTR_ERR(clk);
> > 		priv->clk = clk;
> > 		clk_enable(priv->clk);
> > 	}
> > 
> > 	if (!priv->regulator) {
> > 		regulator = regulator_get(dev, "vmmc");
> > 		if (IS_ERR(regulator))
> > 			return PTR_ERR(regulator);
> > 		priv->regulator = regulator;
> > 	}
> > 
> > This way drivers could allocate the missing resources as needed without
> > freeing them between different calls to probe().
> 
> The idea is good, but I think that it will not be so easy to do.

Where do you expect problems?

> In addition, we obtain additional incompatibility with the kernel code.

I think this is not a problem in this case. The probe pathes of the
device drivers contain nearly the same elements, but are quite different
in the details anyway.

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
