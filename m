Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ePkde-000293-Mq
 for barebox@lists.infradead.org; Fri, 15 Dec 2017 07:42:36 +0000
Date: Fri, 15 Dec 2017 08:42:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171215074212.fzickezmnvktq6fp@pengutronix.de>
References: <20171214151422.11233-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171214151422.11233-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] net: phy: scan PHYs referenced by phandle
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 14, 2017 at 04:14:22PM +0100, Lucas Stach wrote:
> If we point to a PHY node by phandle, that PHY might well be on a MDIO
> bus that hasn't been scanned when we look for the PHY. Fortunately we
> know exactly where to look for the PHY, so make sure to scan the bus
> at the right address.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/net/phy/phy.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 35a9ce7ea823..9993fe5c30fd 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -319,6 +319,8 @@ static struct phy_device *of_mdio_find_phy(struct eth_device *edev)
>  {
>  	struct device_d *dev;
>  	struct device_node *phy_node;
> +	struct mii_bus *bus;
> +	int addr = -1;
>  
>  	if (!IS_ENABLED(CONFIG_OFDEVICE))
>  		return NULL;
> @@ -340,6 +342,18 @@ static struct phy_device *of_mdio_find_phy(struct eth_device *edev)
>  	if (!phy_node)
>  		return NULL;
>  
> +	of_property_read_u32(phy_node, "reg", &addr);
> +	for_each_mii_bus(bus) {
> +		if (addr < 0)
> +			break;

I think it would be better readable if you just do not enter the loop
when of_property_read_u32() fails.

Otherwise looks good.

Sascha

> +
> +		if (bus->parent->device_node == phy_node->parent) {
> +			struct phy_device *phy = mdiobus_scan(bus, addr);
> +			if (!IS_ERR(phy))
> +				return phy;
> +		}
> +	}
> +
>  	bus_for_each_device(&mdio_bus_type, dev) {
>  		if (dev->device_node == phy_node)
>  			return container_of(dev, struct phy_device, dev);
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
