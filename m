Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e0JpX-00068W-VH
 for barebox@lists.infradead.org; Fri, 06 Oct 2017 04:01:46 +0000
Date: Fri, 6 Oct 2017 06:01:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171006040115.cezr4ln5vwpnkixe@pengutronix.de>
References: <20170929221057.8553-1-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170929221057.8553-1-linux@rempel-privat.de>
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
Subject: Re: [PATCH] net: ag71xx: define parent devices
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Sat, Sep 30, 2017 at 12:10:57AM +0200, Oleksij Rempel wrote:
> without it we are not able to set mac address from other driver.
> 
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  drivers/net/ag71xx.c | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks

Sascha

> diff --git a/drivers/net/ag71xx.c b/drivers/net/ag71xx.c
> index 1cec26360..a422aacdd 100644
> --- a/drivers/net/ag71xx.c
> +++ b/drivers/net/ag71xx.c
> @@ -580,6 +580,7 @@ static int ag71xx_probe(struct device_d *dev)
>  	miibus = &priv->miibus;
>  	dev->priv = edev;
>  	edev->priv = priv;
> +	edev->parent = dev;
>  
>  	edev->init = ag71xx_ether_init;
>  	edev->open = ag71xx_ether_open;
> @@ -597,6 +598,7 @@ static int ag71xx_probe(struct device_d *dev)
>  	miibus->read = ag71xx_ether_mii_read;
>  	miibus->write = ag71xx_ether_mii_write;
>  	miibus->priv = priv;
> +	miibus->parent = dev;
>  
>  	/* enable switch core */
>  	rd = ar7240_reg_rd(AR71XX_PLL_BASE + AR933X_ETHSW_CLOCK_CONTROL_REG);
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
