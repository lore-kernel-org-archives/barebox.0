Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZYKD-0006lC-6Z
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 08:35:03 +0000
Date: Thu, 11 Jan 2018 09:34:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180111083447.afei3ebbcrohvqwk@pengutronix.de>
References: <20180110081420.10722-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180110081420.10722-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 1/4] net: designware: move probe to generic driver
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 10, 2018 at 09:14:17AM +0100, Steffen Trumtrar wrote:
> The designware ethernet core is used on multiple different SoCs.
> The linux kernel has a generic driver and SoC-specific drivers.
> Do the same here.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/net/Kconfig              | 12 +++++++-
>  drivers/net/Makefile             |  1 +
>  drivers/net/designware.c         | 60 ++++------------------------------------
>  drivers/net/designware.h         | 33 ++++++++++++++++++++++
>  drivers/net/designware_generic.c | 59 +++++++++++++++++++++++++++++++++++++++
>  5 files changed, 110 insertions(+), 55 deletions(-)
>  create mode 100644 drivers/net/designware_generic.c

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index 9d69b6aeb09c..36b257f43e8a 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -64,13 +64,23 @@ config DRIVER_NET_DAVINCI_EMAC
>  	select PHYLIB
>  
>  config DRIVER_NET_DESIGNWARE
> -	bool "Designware Universal MAC ethernet driver"
> +	bool "Designware Universal MAC ethernet platform support"
>  	depends on HAS_DMA
>  	select PHYLIB
>  	help
>  	  This option enables support for the Synopsys
>  	  Designware Core Univesal MAC 10M/100M/1G ethernet IP.
>  
> +if DRIVER_NET_DESIGNWARE
> +
> +config DRIVER_NET_DESIGNWARE_GENERIC
> +	bool "Designware Universal MAC ethernet generic driver"
> +	help
> +	  This option enables support for the Synopsys
> +	  Designware Core Univesal MAC 10M/100M/1G ethernet IP on SoCFPGA.
> +
> +endif
> +
>  config DRIVER_NET_DM9K
>  	bool "Davicom dm9k[E|A|B] ethernet driver"
>  	depends on HAS_DM9000
> diff --git a/drivers/net/Makefile b/drivers/net/Makefile
> index 86c8ac32f93e..eb07434ab42c 100644
> --- a/drivers/net/Makefile
> +++ b/drivers/net/Makefile
> @@ -9,6 +9,7 @@ obj-$(CONFIG_DRIVER_NET_CS8900)		+= cs8900.o
>  obj-$(CONFIG_DRIVER_NET_CPSW)		+= cpsw.o
>  obj-$(CONFIG_DRIVER_NET_DAVINCI_EMAC)	+= davinci_emac.o
>  obj-$(CONFIG_DRIVER_NET_DESIGNWARE)	+= designware.o
> +obj-$(CONFIG_DRIVER_NET_DESIGNWARE_GENERIC) += designware_generic.o
>  obj-$(CONFIG_DRIVER_NET_DM9K)		+= dm9k.o
>  obj-$(CONFIG_DRIVER_NET_E1000)		+= e1000/regio.o e1000/main.o e1000/eeprom.o
>  obj-$(CONFIG_DRIVER_NET_ENC28J60)	+= enc28j60.o
> diff --git a/drivers/net/designware.c b/drivers/net/designware.c
> index 1d3a68384edb..ec20da09b388 100644
> --- a/drivers/net/designware.c
> +++ b/drivers/net/designware.c
> @@ -32,36 +32,6 @@
>  #include <linux/err.h>
>  #include "designware.h"
>  
> -struct dw_eth_dev {
> -	struct eth_device netdev;
> -	struct mii_bus miibus;
> -
> -	void (*fix_mac_speed)(int speed);
> -	u8 macaddr[6];
> -	u32 tx_currdescnum;
> -	u32 rx_currdescnum;
> -
> -	struct dmamacdescr *tx_mac_descrtable;
> -	struct dmamacdescr *rx_mac_descrtable;
> -
> -	u8 *txbuffs;
> -	u8 *rxbuffs;
> -
> -	struct eth_mac_regs *mac_regs_p;
> -	struct eth_dma_regs *dma_regs_p;
> -	int phy_addr;
> -	phy_interface_t interface;
> -	int enh_desc;
> -};
> -
> -struct dw_eth_drvdata {
> -	bool enh_desc;
> -};
> -
> -static struct dw_eth_drvdata dwmac_370a_drvdata = {
> -	.enh_desc = 1,
> -};
> -
>  /* Speed specific definitions */
>  #define SPEED_10M		1
>  #define SPEED_100M		2
> @@ -447,7 +417,7 @@ static int dwc_probe_dt(struct device_d *dev, struct dw_eth_dev *priv)
>  	return 0;
>  }
>  
> -static int dwc_ether_probe(struct device_d *dev)
> +struct dw_eth_dev *dwc_drv_probe(struct device_d *dev)
>  {
>  	struct resource *iores;
>  	struct dw_eth_dev *priv;
> @@ -462,7 +432,7 @@ static int dwc_ether_probe(struct device_d *dev)
>  
>  	ret = dev_get_drvdata(dev, (const void **)&drvdata);
>  	if (ret)
> -		return ret;
> +		return ERR_PTR(ret);
>  
>  	priv->enh_desc = drvdata->enh_desc;
>  
> @@ -473,12 +443,12 @@ static int dwc_ether_probe(struct device_d *dev)
>  	} else {
>  		ret = dwc_probe_dt(dev, priv);
>  		if (ret)
> -			return ret;
> +			return ERR_PTR(ret);
>  	}
>  
>  	iores = dev_request_mem_resource(dev, 0);
>  	if (IS_ERR(iores))
> -		return PTR_ERR(iores);
> +		return ERR_CAST(iores);
>  	base = IOMEM(iores->start);
>  
>  	priv->mac_regs_p = base;
> @@ -512,24 +482,6 @@ static int dwc_ether_probe(struct device_d *dev)
>  
>  	mdiobus_register(miibus);
>  	eth_register(edev);
> -	return 0;
> -}
>  
> -static __maybe_unused struct of_device_id dwc_ether_compatible[] = {
> -	{
> -		.compatible = "snps,dwmac-3.70a",
> -		.data = &dwmac_370a_drvdata,
> -	}, {
> -		.compatible = "snps,dwmac-3.72a",
> -		.data = &dwmac_370a_drvdata,
> -	}, {
> -		/* sentinel */
> -	}
> -};
> -
> -static struct driver_d dwc_ether_driver = {
> -	.name = "designware_eth",
> -	.probe = dwc_ether_probe,
> -	.of_compatible = DRV_OF_COMPAT(dwc_ether_compatible),
> -};
> -device_platform_driver(dwc_ether_driver);
> +	return priv;
> +}
> diff --git a/drivers/net/designware.h b/drivers/net/designware.h
> index c36ba787790b..c9dc27a59474 100644
> --- a/drivers/net/designware.h
> +++ b/drivers/net/designware.h
> @@ -20,6 +20,39 @@
>  #ifndef __DESIGNWARE_ETH_H
>  #define __DESIGNWARE_ETH_H
>  
> +struct eth_device;
> +struct mii_bus;
> +
> +struct dw_eth_dev {
> +	struct eth_device netdev;
> +	struct mii_bus miibus;
> +
> +	void (*fix_mac_speed)(int speed);
> +	u8 macaddr[6];
> +	u32 tx_currdescnum;
> +	u32 rx_currdescnum;
> +
> +	struct dmamacdescr *tx_mac_descrtable;
> +	struct dmamacdescr *rx_mac_descrtable;
> +
> +	u8 *txbuffs;
> +	u8 *rxbuffs;
> +
> +	struct eth_mac_regs *mac_regs_p;
> +	struct eth_dma_regs *dma_regs_p;
> +	int phy_addr;
> +	phy_interface_t interface;
> +	int enh_desc;
> +
> +	struct reset_control	*rst;
> +};
> +
> +struct dw_eth_drvdata {
> +	bool enh_desc;
> +};
> +
> +struct dw_eth_dev *dwc_drv_probe(struct device_d *dev);
> +
>  #define CONFIG_TX_DESCR_NUM	16
>  #define CONFIG_RX_DESCR_NUM	16
>  #define CONFIG_ETH_BUFSIZE	2048
> diff --git a/drivers/net/designware_generic.c b/drivers/net/designware_generic.c
> new file mode 100644
> index 000000000000..0e5b9c067b6b
> --- /dev/null
> +++ b/drivers/net/designware_generic.c
> @@ -0,0 +1,59 @@
> +/*
> + * (C) Copyright 2010
> + * Vipin Kumar, ST Micoelectronics, vipin.kumar@st.com.
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +/*
> + * Designware ethernet IP driver for u-boot
> + */
> +
> +#include <common.h>
> +#include "designware.h"
> +
> +static struct dw_eth_drvdata dwmac_370a_drvdata = {
> +	.enh_desc = 1,
> +};
> +
> +static int dwc_ether_probe(struct device_d *dev)
> +{
> +	struct dw_eth_dev *dwc;
> +
> +	dwc = dwc_drv_probe(dev);
> +	if (IS_ERR(dwc))
> +		return PTR_ERR(dwc);
> +
> +	return 0;
> +}
> +
> +static __maybe_unused struct of_device_id dwc_ether_compatible[] = {
> +	{
> +		.compatible = "snps,dwmac-3.70a",
> +		.data = &dwmac_370a_drvdata,
> +	}, {
> +		.compatible = "snps,dwmac-3.72a",
> +		.data = &dwmac_370a_drvdata,
> +	}, {
> +		/* sentinel */
> +	}
> +};
> +
> +static struct driver_d dwc_ether_driver = {
> +	.name = "designware_eth",
> +	.probe = dwc_ether_probe,
> +	.of_compatible = DRV_OF_COMPAT(dwc_ether_compatible),
> +};
> +device_platform_driver(dwc_ether_driver);
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
