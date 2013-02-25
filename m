Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U9su3-0007iX-KT
 for barebox@lists.infradead.org; Mon, 25 Feb 2013 07:55:16 +0000
Date: Mon, 25 Feb 2013 08:55:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130225075510.GJ1906@pengutronix.de>
References: <1361698452-3167-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361698452-3167-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] phy: fix force mode
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Feb 24, 2013 at 10:34:12AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> do not try to read the status in force mode
> the link is up
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  drivers/net/phy/mdio_bus.c |    4 ++++
>  drivers/net/phy/phy.c      |    4 ++++
>  include/linux/phy.h        |    1 +
>  3 files changed, 9 insertions(+)
> 
> diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
> index d1d802b..e1bb7b1 100644
> --- a/drivers/net/phy/mdio_bus.c
> +++ b/drivers/net/phy/mdio_bus.c
> @@ -167,10 +167,14 @@ static int mdio_bus_probe(struct device_d *_dev)
>  			dev->speed = SPEED_10;
>  			dev->duplex = DUPLEX_FULL;
>  			dev->autoneg = !AUTONEG_ENABLE;
> +			dev->force = 1;
> +			dev->link = 1;
>  		} else if (dev->dev_flags & PHYLIB_FORCE_100) {
>  			dev->speed = SPEED_100;
>  			dev->duplex = DUPLEX_FULL;
>  			dev->autoneg = !AUTONEG_ENABLE;
> +			dev->force = 1;
> +			dev->link = 1;
>  		}
>  	}
>  
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 1cf2cb9..12739ff 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -549,6 +549,10 @@ int genphy_read_status(struct phy_device *phydev)
>  	int lpa;
>  	int lpagb = 0;
>  
> +	/* if force the status and link are set */
> +	if (phydev->force)
> +		return 0;
> +
>  	/* Update the link, but return if there
>  	 * was an error */
>  	err = genphy_update_link(phydev);
> diff --git a/include/linux/phy.h b/include/linux/phy.h
> index 6c9cac9..99c9639 100644
> --- a/include/linux/phy.h
> +++ b/include/linux/phy.h
> @@ -158,6 +158,7 @@ struct phy_device {
>  	u32 advertising;
>  
>  	int autoneg;
> +	int force;
>  
>  
>  	/* private data pointer */
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
