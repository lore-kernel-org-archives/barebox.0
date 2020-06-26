Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jogH7-0001oI-MT
 for barebox@lists.infradead.org; Fri, 26 Jun 2020 04:47:44 +0000
Date: Fri, 26 Jun 2020 06:47:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200626044739.GC19105@pengutronix.de>
References: <20200618121206.5013-1-s.hauer@pengutronix.de>
 <8ed6835fbd1cb8e35117ff87f49502ef35d455d2.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8ed6835fbd1cb8e35117ff87f49502ef35d455d2.camel@pengutronix.de>
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
Subject: Re: [PATCH] Arm: i.MX5: Do not disable L2 cache
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jun 18, 2020 at 02:21:08PM +0200, Lucas Stach wrote:
> Am Donnerstag, den 18.06.2020, 14:12 +0200 schrieb Sascha Hauer:
> > Disabling the L2 cache is not working in imx5_init_lowlevel() because
> > the necessary cache maintenance operations are missing. This often
> > results in cache corruption in a chainloaded barebox.
> > Disabling the cache is unnecessary: when we come from the ROM the L2
> > cache is disabled anyway, so disabling it is a no-op. When we get here
> > in a chainloaded barebox the L2 cache is already enabled and correctly
> > configured. So instead of initializing it again we can take an enabled
> > L2 cache as a sign to skip initialization and just return from the
> > function.
> 
> While this won't hurt much, shouldn't we also disable the L2 cache on
> Barebox shutdown, like we do on other SoCs?

Documentation/arm/booting.rst clearly states:

Data cache must be off.

So yes, to do it correctly we should disable the L2 cache.

So far I am happy that my QSB board no longer randomly crashes in a
secondary barebox.

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
