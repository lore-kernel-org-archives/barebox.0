Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBCpu-00028G-OK
 for barebox@lists.infradead.org; Mon, 09 Mar 2020 07:28:28 +0000
Date: Mon, 9 Mar 2020 08:28:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200309072825.GD3335@pengutronix.de>
References: <20200303174616.4476-1-m.felsch@pengutronix.de>
 <20200303174616.4476-2-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303174616.4476-2-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH 2/3] net: phy: micrel: backport finding PHY properties
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 03, 2020 at 06:46:15PM +0100, Marco Felsch wrote:
> This backports linux commit 651df2183543 ("phy: micrel: Fix finding PHY
> properties in MAC node."):
> 
> 8<---------------------------------------------------------------------
> 
>     phy: micrel: Fix finding PHY properties in MAC node.
> 
>     commit 8b63ec1837fa ("phylib: Make PHYs children of their MDIO bus,
>     not the bus' parent.")  changed the parenting of PHY devices, making
>     them a child of the MDIO bus, instead of the MAC device. This broken
>     the Micrel PHY driver which has a deprecated feature of allowing PHY
>     properties to be placed into the MAC node.
> 
>     In order to find the MAC node, we need to walk up the tree of devices
>     until we find one with an OF node attached.
> 
>     Reported-by: Dinh Nguyen <dinguyen@opensource.altera.com>
>     Suggested-by: David Daney <david.daney@cavium.com>
>     Acked-by: David Daney <david.daney@cavium.com>
>     Fixes: 8b63ec1837fa ("phylib: Make PHYs children of their MDIO bus, not the bus' parent.")
>     Signed-off-by: Andrew Lunn <andrew@lunn.ch>
>     Tested-by: Dinh Nguyen <dinguyen@opensource.altera.com>
>     Acked-by: Florian Fainelli <f.fainelli@gmail.com>
>     Signed-off-by: David S. Miller <davem@davemloft.net>
> 
> 8<---------------------------------------------------------------------
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/net/phy/micrel.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
> index 8f0b81d8fa..b18db0a751 100644
> --- a/drivers/net/phy/micrel.c
> +++ b/drivers/net/phy/micrel.c
> @@ -115,6 +115,7 @@ static int ksz9021_config_init(struct phy_device *phydev)
>  {
>  	const struct device_d *dev = &phydev->dev;
>  	const struct device_node *of_node = dev->device_node;
> +	const struct device_d *dev_walker;
>  	const char *clk_pad_skew_names[] = {
>  		"txen-skew-ps", "txc-skew-ps",
>  		"rxdv-skew-ps", "rxc-skew-ps"
> @@ -128,8 +129,15 @@ static int ksz9021_config_init(struct phy_device *phydev)
>  		"txd2-skew-ps", "txd3-skew-ps"
>  	};
>  
> -	if (!of_node && dev->parent->device_node)
> -		of_node = dev->parent->device_node;
> +	/* The Micrel driver has a deprecated option to place phy OF
> +	 * properties in the MAC node. Walk up the tree of devices to
> +	 * find a device with an OF node.
> +	 */
> +	dev_walker = &phydev->dev;
> +	do {
> +		of_node = dev_walker->device_node;
> +		dev_walker = dev_walker->parent;
> +	} while (!of_node && dev_walker);

If that's deprecated that would be a good opportunity to fix it in the
upstream device trees and also to be more noisy here.

Unlike the Kernel we don't have to deal with deprecated device trees in
barebox.

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
