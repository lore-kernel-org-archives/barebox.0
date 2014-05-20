Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wmcun-0005g1-3W
 for barebox@lists.infradead.org; Tue, 20 May 2014 05:48:42 +0000
Date: Tue, 20 May 2014 07:48:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140520054818.GG5858@pengutronix.de>
References: <1400531700-24248-1-git-send-email-b.galvani@gmail.com>
 <1400531700-24248-2-git-send-email-b.galvani@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1400531700-24248-2-git-send-email-b.galvani@gmail.com>
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
Subject: Re: [PATCH 2/2] net: arc_emac: disable interrupts
To: Beniamino Galvani <b.galvani@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, May 19, 2014 at 10:35:00PM +0200, Beniamino Galvani wrote:
> The driver doesn't use interrupts and Linux driver crashes when emac
> interrupts are enabled at boot: keep them disabled.

This is the right thing to do in barebox, so applied.

However, the Linux driver should not crash in this case.

Sascha

> 
> Signed-off-by: Beniamino Galvani <b.galvani@gmail.com>
> ---
>  drivers/net/arc_emac.c |    9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
> index 23df3fd..8b74ea5 100644
> --- a/drivers/net/arc_emac.c
> +++ b/drivers/net/arc_emac.c
> @@ -210,9 +210,6 @@ static int arc_emac_open(struct eth_device *edev)
>  	arc_reg_set(priv, R_RX_RING, (unsigned int)priv->rxbd);
>  	arc_reg_set(priv, R_TX_RING, (unsigned int)priv->txbd);
>  
> -	/* Enable interrupts */
> -	arc_reg_set(priv, R_ENABLE, RXINT_MASK | ERR_MASK);
> -
>  	/* Set CONTROL */
>  	arc_reg_set(priv, R_CTRL,
>  		     (RX_BD_NUM << 24) |	/* RX BD table length */
> @@ -317,9 +314,6 @@ static void arc_emac_halt(struct eth_device *edev)
>  {
>  	struct arc_emac_priv *priv = edev->priv;
>  
> -	/* Disable interrupts */
> -	arc_reg_clr(priv, R_ENABLE, RXINT_MASK | ERR_MASK);
> -
>  	/* Disable EMAC */
>  	arc_reg_clr(priv, R_CTRL, EN_MASK);
>  }
> @@ -440,6 +434,9 @@ static int arc_emac_probe(struct device_d *dev)
>  	/* Set poll rate so that it polls every 1 ms */
>  	arc_reg_set(priv, R_POLLRATE, clock_frequency / 1000000);
>  
> +	/* Disable interrupts */
> +	arc_reg_set(priv, R_ENABLE, 0);
> +
>  	mdiobus_register(miibus);
>  	eth_register(edev);
>  
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
