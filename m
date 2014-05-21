Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x235.google.com ([2a00:1450:4013:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wn5dQ-0003DM-3k
 for barebox@lists.infradead.org; Wed, 21 May 2014 12:28:40 +0000
Received: by mail-ee0-f53.google.com with SMTP id c13so1514373eek.40
 for <barebox@lists.infradead.org>; Wed, 21 May 2014 05:28:17 -0700 (PDT)
Message-ID: <537C9BDD.2030300@gmail.com>
Date: Wed, 21 May 2014 14:28:13 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1400674740-6467-1-git-send-email-s.hauer@pengutronix.de>
 <1400674740-6467-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400674740-6467-6-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 05/10] net: phy: Support limiting phy speed in the
 devicetree
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org

On 05/21/2014 02:18 PM, Sascha Hauer wrote:
> Even when both the ethernet controller and the phy support certain
> features a board may have additional limitations. Allow specifying
> it in the devicetree.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   drivers/net/phy/mdio_bus.c | 36 +++++++++++++++++++++++++++++++++++-
>   include/linux/phy.h        | 22 +++++++++++++++-------
>   2 files changed, 50 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
> index ca01673..3adc944 100644
> --- a/drivers/net/phy/mdio_bus.c
> +++ b/drivers/net/phy/mdio_bus.c
> @@ -242,6 +242,39 @@ static struct file_operations phydev_ops = {
>   	.lseek = dev_lseek_default,
>   };
>
> +static void of_set_phy_supported(struct phy_device *phydev)
> +{
> +	struct device_node *node = phydev->dev.device_node;
> +	u32 max_speed;
> +
> +	if (!IS_ENABLED(CONFIG_OFDEVICE))
> +		return;
> +
> +	if (!node)
> +		return;
> +
> +	if (!of_property_read_u32(node, "max-speed", &max_speed)) {
> +		/*
> +		 * The default values for phydev->supported are provided by the PHY
> +		 * driver "features" member, we want to reset to sane defaults fist

nit: s/fist/first/

Sebastian

> +		 * before supporting higher speeds.
> +		 */
> +		phydev->supported &= PHY_DEFAULT_FEATURES;
> +
> +		switch (max_speed) {
> +		default:
> +			return;
> +
> +		case SPEED_1000:
> +			phydev->supported |= PHY_1000BT_FEATURES;
> +		case SPEED_100:
> +			phydev->supported |= PHY_100BT_FEATURES;
> +		case SPEED_10:
> +			phydev->supported |= PHY_10BT_FEATURES;
> +		}
> +	}
> +}
> +
>   static int mdio_bus_probe(struct device_d *_dev)
>   {
>   	struct phy_device *dev = to_phy_device(_dev);
> @@ -275,7 +308,8 @@ static int mdio_bus_probe(struct device_d *_dev)
>   	 * a controller will attach, and may modify one
>   	 * or both of these values */
>   	dev->supported = drv->features;
> -	dev->advertising = drv->features;
> +	of_set_phy_supported(dev);
> +	dev->advertising = dev->supported;
>
>   	dev_add_param_int_ro(&dev->dev, "phy_addr", dev->addr, "%d");
>   	dev_add_param_int_ro(&dev->dev, "phy_id", dev->phy_id, "0x%08x");
> diff --git a/include/linux/phy.h b/include/linux/phy.h
> index 9567c43..3cdbc6e 100644
> --- a/include/linux/phy.h
> +++ b/include/linux/phy.h
> @@ -20,18 +20,26 @@
>   #include <linux/ethtool.h>
>   #include <linux/mii.h>
>
> -#define PHY_BASIC_FEATURES	(SUPPORTED_10baseT_Half | \
> -				 SUPPORTED_10baseT_Full | \
> -				 SUPPORTED_100baseT_Half | \
> -				 SUPPORTED_100baseT_Full | \
> -				 SUPPORTED_Autoneg | \
> +#define PHY_DEFAULT_FEATURES    (SUPPORTED_Autoneg | \
>   				 SUPPORTED_TP | \
>   				 SUPPORTED_MII)
>
> -#define PHY_GBIT_FEATURES	(PHY_BASIC_FEATURES | \
> -				 SUPPORTED_1000baseT_Half | \
> +#define PHY_10BT_FEATURES       (SUPPORTED_10baseT_Half | \
> +				 SUPPORTED_10baseT_Full)
> +
> +#define PHY_100BT_FEATURES      (SUPPORTED_100baseT_Half | \
> +				 SUPPORTED_100baseT_Full)
> +
> +#define PHY_1000BT_FEATURES     (SUPPORTED_1000baseT_Half | \
>   				 SUPPORTED_1000baseT_Full)
>
> +#define PHY_BASIC_FEATURES      (PHY_10BT_FEATURES | \
> +				 PHY_100BT_FEATURES | \
> +				 PHY_DEFAULT_FEATURES)
> +
> +#define PHY_GBIT_FEATURES       (PHY_BASIC_FEATURES | \
> +				 PHY_1000BT_FEATURES)
> +
>   /* Interface Mode definitions */
>   typedef enum {
>   	PHY_INTERFACE_MODE_NA,
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
