Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo5.mail-out.ovh.net ([178.32.124.100]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGsBL-0005Rh-7t
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 14:01:44 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 86CDF10000AF
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 16:07:40 +0200 (CEST)
Date: Wed, 26 Sep 2012 15:59:08 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120926135908.GT26553@game.jcrosoft.org>
References: <1348665475-21338-1-git-send-email-jlu@pengutronix.de>
 <1348665475-21338-2-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348665475-21338-2-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 2/3] davinci_emac: adjust to new phylib framework
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:17 Wed 26 Sep     , Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  drivers/net/Kconfig        |    2 +-
>  drivers/net/davinci_emac.c |   45 ++++++++++++++++++++++----------------------
>  2 files changed, 24 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index b0da2c5..b3e5a83 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -48,7 +48,7 @@ config DRIVER_NET_SMC91111
>  config DRIVER_NET_DAVINCI_EMAC
>  	bool "TI Davinci/OMAP EMAC ethernet driver"
>  	depends on ARCH_DAVINCI || ARCH_OMAP3
> -	select MIIDEV
> +	select PHYLIB
>  
>  config DRIVER_NET_DM9K
>  	bool "Davicom dm9k[E|A|B] ethernet driver"
> diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
> index 7f39972..a8b4b36 100644
> --- a/drivers/net/davinci_emac.c
> +++ b/drivers/net/davinci_emac.c
> @@ -43,18 +43,18 @@
>  #include <io.h>
>  #include <clock.h>
>  #include <net.h>
> -#include <miidev.h>
>  #include <malloc.h>
>  #include <init.h>
>  #include <asm/mmu.h>
>  #include <asm/system.h>
> +#include <linux/phy.h>
>  #include <mach/emac_defs.h>
>  #include "davinci_emac.h"
>  
>  struct davinci_emac_priv {
>  	struct device_d *dev;
>  	struct eth_device edev;
> -	struct mii_device miidev;
> +	struct mii_bus miibus;
>  
>  	/* EMAC Addresses */
>  	void __iomem *adap_emac; /* = EMAC_BASE_ADDR */
> @@ -167,16 +167,16 @@ static int davinci_eth_phy_write(struct davinci_emac_priv *priv, uint8_t phy_add
>  	return 1;
>  }
>  
> -static int davinci_miidev_read(struct mii_device *dev, int addr, int reg)
> +static int davinci_miibus_read(struct mii_bus *bus, int addr, int reg)
>  {
> -	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)dev->edev->priv;
> +	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)bus->priv;
you can drop the cast priv is a void*
>  	uint16_t value = 0;
>  	return davinci_eth_phy_read(priv, addr, reg, &value) ? value : -1;
>  }
>  
> -static int davinci_miidev_write(struct mii_device *dev, int addr, int reg, int value)
> +static int davinci_miibus_write(struct mii_bus *bus, int addr, int reg, u16 value)
>  {
> -	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)dev->edev->priv;
> +	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)bus->priv;
>  	return davinci_eth_phy_write(priv, addr, reg, value) ? 0 : -1;
>  }
>  
> @@ -318,16 +318,12 @@ static int davinci_emac_open(struct eth_device *edev)
>  	/* Start receive process */
>  	writel(BD_TO_HW(priv->emac_rx_desc), priv->adap_emac + EMAC_RX0HDP);
>  
> -	ret = miidev_wait_aneg(&priv->miidev);
> +	ret = phy_device_connect(edev, &priv->miibus, priv->active_phy_addr, NULL,
> +	                         PHYLIB_FORCE_LINK,
> +	                         PHY_INTERFACE_MODE_NA);
why FORCE_LINK in the driver make no sense this board config

Best Regards,
J.
>  	if (ret)
>  		return ret;
>  
> -	ret = miidev_get_status(&priv->miidev);
> -	if (ret < 0)
> -		return ret;
> -
> -	miidev_print_status(&priv->miidev);
> -
>  	dev_dbg(priv->dev, "- emac_open\n");
>  
>  	return 0;
> @@ -533,6 +529,7 @@ static int davinci_emac_probe(struct device_d *dev)
>  {
>  	struct davinci_emac_priv *priv;
>  	uint64_t start;
> +	uint32_t phy_mask;
>  
>  	dev_dbg(dev, "+ emac_probe\n");
>  
> @@ -573,22 +570,26 @@ static int davinci_emac_probe(struct device_d *dev)
>  
>  	start = get_time_ns();
>  	while (1) {
> -		if (readl(priv->adap_mdio + EMAC_MDIO_ALIVE))
> +		phy_mask = readl(priv->adap_mdio + EMAC_MDIO_ALIVE);
> +		if (phy_mask) {
> +			dev_info(dev, "detected phy mask 0x%x\n", phy_mask);
> +			phy_mask = ~phy_mask;
>  			break;
> +		}
>  		if (is_timeout(start, 256 * MSECOND)) {
> -			dev_err(dev, "No ETH PHY detected!\n");
> +			dev_err(dev, "no live phy, scanning all\n");
> +			phy_mask = 0;
>  			break;
>  		}
>  	}
>  
> -	priv->miidev.read = davinci_miidev_read;
> -	priv->miidev.write = davinci_miidev_write;
> -	priv->miidev.address = 0x01;
> -	priv->miidev.flags = MIIDEV_FORCE_LINK;
> -	priv->miidev.edev = &priv->edev;
> -	priv->miidev.parent = dev;
> +	priv->miibus.read = davinci_miibus_read;
> +	priv->miibus.write = davinci_miibus_write;
> +	priv->miibus.priv = priv;
> +	priv->miibus.parent = dev;
> +	priv->miibus.phy_mask = phy_mask;
>  
> -	mii_register(&priv->miidev);
> +	mdiobus_register(&priv->miibus);
>  
>  	eth_register(&priv->edev);
>  
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
