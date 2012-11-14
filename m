Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYXyX-0001bq-Sp
 for barebox@lists.infradead.org; Wed, 14 Nov 2012 08:05:35 +0000
Date: Wed, 14 Nov 2012 09:05:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121114080528.GF10369@pengutronix.de>
References: <1352841245-22767-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1352841245-22767-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] phy: phy_update_status wait auto neg done when enabled
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 13, 2012 at 10:14:05PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> if the autoneg was start by the hw wait it to be finished
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/net/phy/phy.c |   26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 0c2e602..43738c2 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -28,6 +28,25 @@
>  #define PHY_AN_TIMEOUT	10
>  
>  static int genphy_config_init(struct phy_device *phydev);
> +static int phy_aneg_done(struct phy_device *phydev);
> +
> +static int phy_wait_aneg_read_status(struct phy_device *dev, struct phy_driver *drv)
> +{
> +	int ret;
> +
> +	if (AUTONEG_ENABLE != dev->autoneg)
> +		return 0;
> +
> +	ret = phy_aneg_done(dev);
> +	if (ret)
> +		return ret;
> +
> +	/*
> +	 * re-read the status as the aneg may not be finished
> +	 * when we read it the first time
> +	 */
> +	return drv->read_status(dev);
> +}
>  
>  int phy_update_status(struct phy_device *dev)
>  {
> @@ -35,11 +54,18 @@ int phy_update_status(struct phy_device *dev)
>  	struct eth_device *edev = dev->attached_dev;
>  	int ret;
>  	int oldspeed = dev->speed, oldduplex = dev->duplex;
> +	int old_link = dev->link;
>  
>  	ret = drv->read_status(dev);
>  	if (ret)
>  		return ret;
>  
> +	if (dev->link && !old_link) {
> +		ret = phy_wait_aneg_read_status(dev, drv);
> +		if (ret)
> +			return ret;
> +	}

This does not help. dev->link is false after reset, so we never get into
phy_wait_aneg_read_status() which waits for a link.

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
