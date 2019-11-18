Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWcD2-0007fQ-9b
 for barebox@lists.infradead.org; Mon, 18 Nov 2019 08:16:33 +0000
Date: Mon, 18 Nov 2019 09:16:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191118081627.m3x5dfu3hmqznnu6@pengutronix.de>
References: <20191115161928.12313-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115161928.12313-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH] net: cpsw: don't reset twice
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 15, 2019 at 05:19:28PM +0100, Michael Grzeschik wrote:
> The softreset was already called previously in open and other settings
> have been prepared afterwards, so don't reset it a second time.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  drivers/net/cpsw.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
> index b9a6575009..4eb2205daa 100644
> --- a/drivers/net/cpsw.c
> +++ b/drivers/net/cpsw.c
> @@ -676,8 +676,6 @@ static void cpsw_slave_init(struct cpsw_slave *slave, struct cpsw_priv *priv)
>  
>  	dev_dbg(&slave->dev, "* %s\n", __func__);
>  
> -	soft_reset(priv, &slave->sliver->soft_reset);
> -

What you remove here is the only place where soft_reset() is called with
&slave->sliver->soft_reset. If you have to remove that to fix something
then it's not because we reset something twice.

What looks really really fishy in this driver is that cpsw_open() is
called per slave, but nearly all things this function does affect the
whole cpsw and not the slave instance it is called with. This starts
with:

	soft_reset(priv, &priv->regs->soft_reset);

It looks like this can't work when multiple slaves are enabled.

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
