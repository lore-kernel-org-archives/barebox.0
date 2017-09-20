Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1duYP8-0000GJ-P7
 for barebox@lists.infradead.org; Wed, 20 Sep 2017 06:22:41 +0000
Date: Wed, 20 Sep 2017 08:22:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170920062216.kodxbjootvhmmcu5@pengutronix.de>
References: <20170918164145.21235-1-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170918164145.21235-1-linux@rempel-privat.de>
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
Subject: Re: [PATCH v1] net: ag71xx: disable eth interface on barebox shutdown
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 18, 2017 at 06:41:45PM +0200, Oleksij Rempel wrote:
> If not disable, DMA RX engine will keep to write in to allocated
> memory area. As soon as some code or data of target OS will be placed to
> this area it will be overwritten by incoming network package.
> 
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  drivers/net/ag71xx.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/ag71xx.c b/drivers/net/ag71xx.c
> index 54f0bd9aa..1cec26360 100644
> --- a/drivers/net/ag71xx.c
> +++ b/drivers/net/ag71xx.c
> @@ -578,6 +578,7 @@ static int ag71xx_probe(struct device_d *dev)
>  	priv = xzalloc(sizeof(struct ag71xx));
>  	edev = &priv->netdev;
>  	miibus = &priv->miibus;
> +	dev->priv = edev;
>  	edev->priv = priv;
>  
>  	edev->init = ag71xx_ether_init;
> @@ -659,6 +660,13 @@ static int ag71xx_probe(struct device_d *dev)
>  	return 0;
>  }
>  
> +static void ag71xx_remove(struct device_d *dev)
> +{
> +	struct eth_device *edev = dev->priv;
> +
> +	ag71xx_ether_halt(edev);
> +}
> +
>  static __maybe_unused struct of_device_id ag71xx_dt_ids[] = {
>  	{ .compatible = "qca,ar9331-ge0", .data = &ag71xx_cfg_ar9331_ge0, },
>  	{ .compatible = "qca,ar9344-gmac0", .data = &ag71xx_cfg_ar9344_gmac0, },
> @@ -668,6 +676,7 @@ static __maybe_unused struct of_device_id ag71xx_dt_ids[] = {
>  static struct driver_d ag71xx_driver = {
>  	.name	= "ag71xx-gmac",
>  	.probe		= ag71xx_probe,
> +	.remove		= ag71xx_remove,
>  	.of_compatible = DRV_OF_COMPAT(ag71xx_dt_ids),
>  };
>  device_platform_driver(ag71xx_driver);
> -- 
> 2.11.0
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
