Delivery-date: Mon, 07 Jun 2021 18:07:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqHmb-0001s6-4V
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 18:07:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqHmW-0002Up-VF
	for lore@pengutronix.de; Mon, 07 Jun 2021 18:07:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/H459uhb4AGajqoHCt5L5qJ/lLd4xUSAXlaZ/ufzKtY=; b=RRbWditl6OJ7ltEQhkFTZN40VM
	8BSFWhJ4AJeODXgAA1+PWIbp9pfrJRVLsurjLOOEUMDrbarqGxPrwxhMewY+kqvZ/iTjR6o43uK0r
	pF+JoJkBaSJmVcdy7yzH6g5zRMkz8xnulwc5m9Jjw90Z493TDFghXxffFT27hOmOcgxBRTc4WvEsS
	+9pmKlCKZ9ARZZ+Rlgn3MZUvlA9ITfEBx6uHgQXAHWGgM8G1Ymb1NZOV8LRq8j6p21B1/7DJIbKyL
	EF6xckfKru2rwL3Y8i45Qwg0gak1fSbN7lPuOb/MmV2JYj821e2pZfrFCAmnvtxvwtW7hvNLEQ5eI
	1M736y8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqHkw-004MVC-82; Mon, 07 Jun 2021 16:05:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqHkf-004MSo-PG
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 16:05:26 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lqHke-0002Cg-7H; Mon, 07 Jun 2021 18:05:20 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210607141057.23255-1-s.hauer@pengutronix.de>
 <20210607141057.23255-2-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c4a4c5ba-6b7a-78b8-4718-ef1d7d4e9247@pengutronix.de>
Date: Mon, 7 Jun 2021 18:05:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210607141057.23255-2-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_090522_177407_D38D8281 
X-CRM114-Status: GOOD (  32.05  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] net: eqos: Rockchip support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 07.06.21 16:10, Sascha Hauer wrote:
> A variant of the designware eqos core is used on Rockchip SoCs. Add
> support for it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/net/Kconfig               |   6 +
>  drivers/net/Makefile              |   1 +
>  drivers/net/designware_rockchip.c | 311 ++++++++++++++++++++++++++++++
>  3 files changed, 318 insertions(+)
>  create mode 100644 drivers/net/designware_rockchip.c
> 
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index 0d55ea7a3b..18931211b5 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -108,6 +108,12 @@ config DRIVER_NET_DESIGNWARE_TEGRA186
>  	help
>  	  This option enables support for the ethernet MAC on the Tegra186 & 194.
>  
> +config DRIVER_NET_DESIGNWARE_ROCKCHIP
> +	bool "Designware Universal MAC ethernet driver for Rockchip platforms"
> +	select MFD_SYSCON
> +	help
> +	  This option enables support for the ethernet MAC on different Rockchip SoCs
> +
>  endif
>  
>  config DRIVER_NET_DM9K
> diff --git a/drivers/net/Makefile b/drivers/net/Makefile
> index 656d45a868..1674d53dff 100644
> --- a/drivers/net/Makefile
> +++ b/drivers/net/Makefile
> @@ -14,6 +14,7 @@ obj-$(CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA) += designware_socfpga.o
>  obj-$(CONFIG_DRIVER_NET_DESIGNWARE_EQOS) += designware_eqos.o
>  obj-$(CONFIG_DRIVER_NET_DESIGNWARE_STM32) += designware_stm32.o
>  obj-$(CONFIG_DRIVER_NET_DESIGNWARE_TEGRA186) += designware_tegra186.o
> +obj-$(CONFIG_DRIVER_NET_DESIGNWARE_ROCKCHIP) += designware_rockchip.o
>  obj-$(CONFIG_DRIVER_NET_DM9K)		+= dm9k.o
>  obj-$(CONFIG_DRIVER_NET_E1000)		+= e1000/regio.o e1000/main.o e1000/eeprom.o
>  obj-$(CONFIG_DRIVER_NET_ENC28J60)	+= enc28j60.o
> diff --git a/drivers/net/designware_rockchip.c b/drivers/net/designware_rockchip.c
> new file mode 100644
> index 0000000000..883c1d806d
> --- /dev/null
> +++ b/drivers/net/designware_rockchip.c
> @@ -0,0 +1,311 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <common.h>
> +#include <init.h>
> +#include <dma.h>
> +#include <net.h>
> +#include <regmap.h>
> +#include <of_net.h>
> +#include <mfd/syscon.h>
> +#include <linux/iopoll.h>
> +#include <linux/sizes.h>
> +#include <linux/time.h>
> +#include <linux/clk.h>
> +
> +#include "designware_eqos.h"
> +
> +struct rk_gmac_ops {
> +	void (*set_to_rgmii)(struct eqos *eqos,
> +			     int tx_delay, int rx_delay);
> +	void (*set_to_rmii)(struct eqos *eqos);
> +	void (*set_speed)(struct eqos *eqos, int speed);
> +	void (*integrated_phy_powerup)(struct eqos *eqos);
> +};
> +
> +struct eqos_rk_gmac {
> +	struct clk_bulk_data *clks;
> +	int num_clks;
> +	bool clock_input;
> +	const struct rk_gmac_ops *ops;
> +	struct regmap *grf;
> +	int bus_id;
> +	u32 tx_delay;
> +	u32 rx_delay;
> +	struct device_d *dev;
> +};
> +
> +enum {
> +	CLK_STMMACETH,
> +	CLK_MAC_RX,
> +	CLK_MAC_TX,
> +	CLK_MAC_REFOUT,
> +	CLK_MAC_ACLK,
> +	CLK_MAC_PCLK,
> +	CLK_MAC_SPEED,
> +	CLK_PTP_REF,
> +	CLK_XPCS_PCLK,
> +};
> +
> +static const struct clk_bulk_data rk_gmac_clks[] = {
> +	[CLK_STMMACETH]   = { .id = "stmmaceth" },
> +	[CLK_MAC_RX]      = { .id = "mac_clk_rx" },
> +	[CLK_MAC_TX]      = { .id = "mac_clk_tx" },
> +	[CLK_MAC_REFOUT]  = { .id = "clk_mac_refout" },
> +	[CLK_MAC_ACLK]    = { .id = "aclk_mac" },
> +	[CLK_MAC_PCLK]    = { .id = "pclk_mac" },
> +	[CLK_MAC_SPEED]   = { .id = "clk_mac_speed" },
> +	[CLK_PTP_REF]     = { .id = "ptp_ref" },
> +	[CLK_XPCS_PCLK]   = { .id = "pclk_xpcs" },
> +};
> +
> +static inline struct eqos_rk_gmac *to_rk_gmac(struct eqos *eqos)
> +{
> +	return eqos->priv;
> +}
> +
> +#define HIWORD_UPDATE(val, mask, shift) \
> +		((val) << (shift) | (mask) << ((shift) + 16))
> +
> +#define GRF_BIT(nr)	(BIT(nr) | BIT((nr) + 16))
> +#define GRF_CLR_BIT(nr)	(BIT((nr) + 16))
> +
> +#define RK3568_GRF_GMAC0_CON0		0X0380
> +#define RK3568_GRF_GMAC0_CON1		0X0384
> +#define RK3568_GRF_GMAC1_CON0		0X0388
> +#define RK3568_GRF_GMAC1_CON1		0X038c
> +
> +/* RK3568_GRF_GMAC0_CON1 && RK3568_GRF_GMAC1_CON1 */
> +#define RK3568_GMAC_PHY_INTF_SEL_RGMII	\
> +		(GRF_BIT(4) | GRF_CLR_BIT(5) | GRF_CLR_BIT(6))
> +#define RK3568_GMAC_PHY_INTF_SEL_RMII	\
> +		(GRF_CLR_BIT(4) | GRF_CLR_BIT(5) | GRF_BIT(6))
> +#define RK3568_GMAC_FLOW_CTRL			GRF_BIT(3)
> +#define RK3568_GMAC_FLOW_CTRL_CLR		GRF_CLR_BIT(3)
> +#define RK3568_GMAC_RXCLK_DLY_ENABLE		GRF_BIT(1)
> +#define RK3568_GMAC_RXCLK_DLY_DISABLE		GRF_CLR_BIT(1)
> +#define RK3568_GMAC_TXCLK_DLY_ENABLE		GRF_BIT(0)
> +#define RK3568_GMAC_TXCLK_DLY_DISABLE		GRF_CLR_BIT(0)
> +
> +/* RK3568_GRF_GMAC0_CON0 && RK3568_GRF_GMAC1_CON0 */
> +#define RK3568_GMAC_CLK_RX_DL_CFG(val)	HIWORD_UPDATE(val, 0x7F, 8)
> +#define RK3568_GMAC_CLK_TX_DL_CFG(val)	HIWORD_UPDATE(val, 0x7F, 0)
> +
> +static unsigned long eqos_get_csr_clk_rate_rk_gmac(struct eqos *eqos)
> +{
> +	struct eqos_rk_gmac *priv = to_rk_gmac(eqos);
> +
> +	return clk_get_rate(priv->clks[CLK_STMMACETH].clk);
> +}
> +
> +static void rk3568_set_to_rgmii(struct eqos *eqos,
> +				int tx_delay, int rx_delay)
> +{
> +	struct eqos_rk_gmac *priv = to_rk_gmac(eqos);
> +	struct device_d *dev = priv->dev;
> +	u32 offset_con0, offset_con1;
> +
> +	if (IS_ERR(priv->grf)) {
> +		dev_err(dev, "Missing rockchip,grf property\n");
> +		return;
> +	}
> +
> +	offset_con0 = (priv->bus_id == 1)
> +		      ? RK3568_GRF_GMAC1_CON0 : RK3568_GRF_GMAC0_CON0;
> +	offset_con1 = (priv->bus_id == 1)
> +		      ? RK3568_GRF_GMAC1_CON1 : RK3568_GRF_GMAC0_CON1;
> +
> +	regmap_write(priv->grf, offset_con1,
> +		     RK3568_GMAC_PHY_INTF_SEL_RGMII |
> +		     RK3568_GMAC_RXCLK_DLY_ENABLE |
> +		     RK3568_GMAC_TXCLK_DLY_ENABLE);
> +
> +	regmap_write(priv->grf, offset_con0,
> +		     RK3568_GMAC_CLK_RX_DL_CFG(rx_delay) |
> +		     RK3568_GMAC_CLK_TX_DL_CFG(tx_delay));
> +}
> +
> +static void rk3568_set_to_rmii(struct eqos *eqos)
> +{
> +	struct eqos_rk_gmac *priv = to_rk_gmac(eqos);
> +	struct device_d *dev = priv->dev;
> +	u32 offset_con1;
> +
> +	if (IS_ERR(priv->grf)) {
> +		dev_err(dev, "%s: Missing rockchip,grf property\n", __func__);
> +		return;
> +	}
> +
> +	offset_con1 = (priv->bus_id == 1)
> +		      ? RK3568_GRF_GMAC1_CON1 : RK3568_GRF_GMAC0_CON1;
> +
> +	regmap_write(priv->grf, offset_con1,
> +		     RK3568_GMAC_PHY_INTF_SEL_RMII);
> +}
> +
> +static void rk3568_set_gmac_speed(struct eqos *eqos, int speed)
> +{
> +	struct eqos_rk_gmac *priv = to_rk_gmac(eqos);
> +	struct device_d *dev = priv->dev;
> +	unsigned long rate;
> +	int ret;
> +
> +	switch (speed) {
> +	case SPEED_10:
> +		rate = 2500000;
> +		break;
> +	case SPEED_100:
> +		rate = 25000000;
> +		break;
> +	case SPEED_1000:
> +		rate = 125000000;
> +		break;
> +	default:
> +		dev_err(dev, "unknown speed value for GMAC speed=%d", speed);
> +		return;
> +	}
> +
> +	ret = clk_set_rate(priv->clks[CLK_MAC_SPEED].clk, rate);
> +	if (ret)
> +		dev_err(dev, "%s: set clk_mac_speed rate %ld failed %d\n",
> +			__func__, rate, ret);
> +}
> +
> +static const struct rk_gmac_ops rk3568_ops = {
> +	.set_to_rgmii = rk3568_set_to_rgmii,
> +	.set_to_rmii = rk3568_set_to_rmii,
> +	.set_speed = rk3568_set_gmac_speed,
> +};
> +
> +static int rk_gmac_powerup(struct eqos *eqos)
> +{
> +	struct eqos_rk_gmac *priv = to_rk_gmac(eqos);
> +	struct device_d *dev = priv->dev;
> +
> +	/*rmii or rgmii*/
> +	switch (eqos->interface) {
> +	case PHY_INTERFACE_MODE_RGMII:
> +		dev_dbg(dev, "init for RGMII\n");
> +		priv->ops->set_to_rgmii(eqos, priv->tx_delay,
> +					    priv->rx_delay);
> +		break;
> +	case PHY_INTERFACE_MODE_RGMII_ID:
> +		dev_dbg(dev, "init for RGMII_ID\n");
> +		priv->ops->set_to_rgmii(eqos, 0, 0);
> +		break;
> +	case PHY_INTERFACE_MODE_RGMII_RXID:
> +		dev_dbg(dev, "init for RGMII_RXID\n");
> +		priv->ops->set_to_rgmii(eqos, priv->tx_delay, 0);
> +		break;
> +	case PHY_INTERFACE_MODE_RGMII_TXID:
> +		dev_dbg(dev, "init for RGMII_TXID\n");
> +		priv->ops->set_to_rgmii(eqos, 0, priv->rx_delay);
> +		break;
> +	case PHY_INTERFACE_MODE_RMII:
> +		dev_dbg(dev, "init for RMII\n");
> +		priv->ops->set_to_rmii(eqos);
> +		break;
> +	default:
> +		dev_err(dev, "NO interface defined!\n");
> +	}
> +
> +	return 0;
> +}
> +
> +static void eqos_rk_adjust_link(struct eth_device *edev)
> +{
> +	struct eqos *eqos = edev->priv;
> +	struct eqos_rk_gmac *priv = to_rk_gmac(eqos);
> +
> +	priv->ops->set_speed(eqos, edev->phydev->speed);
> +
> +	eqos_adjust_link(edev);
> +}
> +
> +static int eqos_init_rk_gmac(struct device_d *dev, struct eqos *eqos)
> +{
> +	struct device_node *np = dev->device_node;
> +	struct eqos_rk_gmac *priv = to_rk_gmac(eqos);
> +	int ret;
> +	const char *strings;
> +
> +	priv->dev = dev;
> +
> +	ret = of_property_read_string(np, "clock_in_out", &strings);
> +	if (ret) {
> +                dev_err(dev, "Can not read property: clock_in_out.\n");
> +                priv->clock_input = true;
> +	} else {
> +		dev_dbg(dev, "clock is %s\n", strings);
> +		if (!strcmp(strings, "input"))
> +			priv->clock_input = true;
> +		else
> +			priv->clock_input = false;
> +	}
> +
> +	priv->ops = device_get_match_data(dev);
> +
> +	priv->bus_id = of_alias_get_id(np, "ethernet");
> +
> +	priv->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
> +	if (IS_ERR(priv->grf)) {
> +		dev_err(dev, "unable to get grf");
> +		return PTR_ERR(priv->grf);
> +	}
> +
> +	priv->tx_delay = 0x30;
> +	of_property_read_u32(np, "tx_delay", &priv->tx_delay);
> +	priv->rx_delay = 0x10;
> +	of_property_read_u32(np, "rx_delay", &priv->rx_delay);
> +
> +	priv->num_clks = ARRAY_SIZE(rk_gmac_clks);
> +	priv->clks = xmalloc(priv->num_clks * sizeof(*priv->clks));
> +	memcpy(priv->clks, rk_gmac_clks, sizeof rk_gmac_clks);
> +
> +	ret = clk_bulk_get(dev, priv->num_clks, priv->clks);
> +	if (ret) {
> +		dev_err(dev, "Failed to get clks: %s\n", strerror(-ret));
> +		return ret;
> +	}
> +
> +	ret = clk_bulk_enable(priv->num_clks, priv->clks);
> +	if (ret) {
> +		dev_err(dev, "Failed to enable clks: %s\n", strerror(-ret));
> +		return ret;
> +	}
> +
> +	rk_gmac_powerup(eqos);
> +
> +	return 0;
> +}
> +
> +static struct eqos_ops rk_gmac_ops = {
> +	.init = eqos_init_rk_gmac,
> +	.get_ethaddr = eqos_get_ethaddr,
> +	.set_ethaddr = eqos_set_ethaddr,
> +	.adjust_link = eqos_rk_adjust_link,
> +	.get_csr_clk_rate = eqos_get_csr_clk_rate_rk_gmac,
> +
> +	.clk_csr = EQOS_MDIO_ADDR_CR_250_300,
> +	.config_mac = EQOS_MAC_RXQ_CTRL0_RXQ0EN_ENABLED_AV,
> +};
> +
> +static int dwc_ether_probe(struct device_d *dev)
> +{
> +	return eqos_probe(dev, &rk_gmac_ops, xzalloc(sizeof(struct eqos_rk_gmac)));
> +}
> +
> +static __maybe_unused struct of_device_id dwc_ether_compatible[] = {
> +	{
> +		.compatible = "rockchip,rk3568-gmac",
> +		.data = &rk3568_ops,
> +	}, {
> +		/* sentinel */
> +	}
> +};
> +
> +static struct driver_d dwc_ether_driver = {
> +	.name = "designware_eqos",
> +	.probe = dwc_ether_probe,

STM32MP1 and Tegra186 both have a .remove calling eqos_remove here.
I think that's required, because net core doesn't ->halt network
drivers otherwise.

> +	.of_compatible = DRV_OF_COMPAT(dwc_ether_compatible),
> +};
> +device_platform_driver(dwc_ether_driver);

With the above addressed:
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

