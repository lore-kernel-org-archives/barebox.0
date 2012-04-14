Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJ2ys-0000JW-DJ
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 13:25:35 +0000
Date: Sat, 14 Apr 2012 15:25:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120414132528.GY3852@pengutronix.de>
References: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
 <1334325273-1701-3-git-send-email-s.hauer@pengutronix.de>
 <20120414113412.GE2074@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120414113412.GE2074@game.jcrosoft.org>
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
Subject: Re: [PATCH 2/7] serial i.MX: i.MX6 support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Apr 14, 2012 at 01:34:12PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 15:54 Fri 13 Apr     , Sascha Hauer wrote:
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/serial/serial_imx.c |    2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
> > index 72771fc..1e1e8e3 100644
> > --- a/drivers/serial/serial_imx.c
> > +++ b/drivers/serial/serial_imx.c
> > @@ -162,7 +162,7 @@
> >  #endif
> >  #if defined CONFIG_ARCH_IMX31 || defined CONFIG_ARCH_IMX35 || \
> >  	defined CONFIG_ARCH_IMX25 || defined CONFIG_ARCH_IMX51 || \
> > -	defined CONFIG_ARCH_IMX53
> > +	defined CONFIG_ARCH_IMX53 || defined CONFIG_ARCH_IMX6
> is it possible to stop this long this?

Maybe using some kind of flag in platform data, or maybe with some
platform id based probing mechanism, but I think for now it's not worth
it.

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
