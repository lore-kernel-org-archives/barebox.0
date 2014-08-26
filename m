Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XMN1J-0007mL-64
 for barebox@lists.infradead.org; Tue, 26 Aug 2014 20:07:10 +0000
Received: by mail-wi0-f174.google.com with SMTP id d1so4798138wiv.7
 for <barebox@lists.infradead.org>; Tue, 26 Aug 2014 13:06:47 -0700 (PDT)
Message-ID: <53FCE8D2.80808@gmail.com>
Date: Tue, 26 Aug 2014 22:06:42 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1408834420-899-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <1408834420-899-5-git-send-email-ezequiel.garcia@free-electrons.com>
In-Reply-To: <1408834420-899-5-git-send-email-ezequiel.garcia@free-electrons.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/5] net: Add driver for Armada 370/XP 10/100/1000 Mbps
 network controller
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

On 08/24/2014 12:53 AM, Ezequiel Garcia wrote:
> This patch introduces the mvneta driver to support the network controller
> found in Armada 370/XP SoCs.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> ---
[...]
> diff --git a/drivers/net/mvneta.c b/drivers/net/mvneta.c
> new file mode 100644
> index 0000000..8768b0d
> --- /dev/null
> +++ b/drivers/net/mvneta.c
> @@ -0,0 +1,758 @@
[...]
> +static void mvneta_adjust_link(struct eth_device *edev)
> +{
> +	struct mvneta_port *priv = edev->priv;
> +	struct phy_device *phy = edev->phydev;
> +	u32 val;
> +
> +	if (!phy->link)
> +		return;
> +
> +	val = readl(priv->reg + MVNETA_GMAC_AUTONEG_CONFIG);
> +	val &= ~(MVNETA_GMAC_CONFIG_MII_SPEED |
> +		 MVNETA_GMAC_CONFIG_GMII_SPEED |
> +		 MVNETA_GMAC_CONFIG_FULL_DUPLEX |

You should also clear AN_FLOWCTRL and ...

> +		 MVNETA_GMAC_AN_SPEED_EN |
> +		 MVNETA_GMAC_AN_DUPLEX_EN);
> +
> +	if (phy->speed == SPEED_1000)
> +		val |= MVNETA_GMAC_CONFIG_GMII_SPEED;
> +	else if (phy->speed == SPEED_100)
> +		val |= MVNETA_GMAC_CONFIG_MII_SPEED;
> +
> +	if (phy->duplex)
> +		val |= MVNETA_GMAC_CONFIG_FULL_DUPLEX;

set it from what SW aneg requests

if (phy->pause)
	val |= MVNETA_GMAC_CONFIG_PAUSESTUFF

> +
> +	val |= MVNETA_GMAC_FORCE_LINK_PASS | MVNETA_GMAC_FORCE_LINK_DOWN;
> +
> +	writel(val, priv->reg + MVNETA_GMAC_AUTONEG_CONFIG);
> +
> +	mvneta_mib_counters_clear(priv);
> +
> +	/* Enable first Tx and first Rx queues */
> +	writel(BIT(0), priv->reg + MVNETA_TXQ_CMD);
> +	writel(BIT(0), priv->reg + MVNETA_RXQ_CMD);
> +}
[...]
> +static int mvneta_port_config(struct mvneta_port *priv)
> +{
> +	int queue;
> +	u32 val;
> +
> +	/* Enable MBUS Retry bit16 */
> +	writel(0x20, priv->reg + MVNETA_MBUS_RETRY);
> +
> +	/* Map the first Tx queue and first Rx queue to CPU0 */
> +	writel(BIT(0) | (BIT(0) << 8), priv->reg + MVNETA_CPU_MAP(0));
> +
> +	/* Reset Tx/Rx DMA */
> +	writel(BIT(0), priv->reg + MVNETA_PORT_TX_RESET);
> +	writel(BIT(0), priv->reg + MVNETA_PORT_RX_RESET);
> +
> +	/* Disable Legacy WRR, Disable EJP, Release from reset */
> +	writel(0, priv->reg + MVNETA_TXQ_CMD_1);
> +
> +	/* Set maximum bandwidth for the first TX queue */
> +	writel(0x3ffffff, priv->reg + MVETH_TXQ_TOKEN_CFG_REG(0));
> +	writel(0x3ffffff, priv->reg + MVETH_TXQ_TOKEN_COUNT_REG(0));
> +
> +	/* Minimum bandwidth on the rest of them */
> +	for (queue = 1; queue < TXQ_NUM; queue++) {
> +		writel(0, priv->reg + MVETH_TXQ_TOKEN_COUNT_REG(queue));
> +		writel(0, priv->reg + MVETH_TXQ_TOKEN_CFG_REG(queue));
> +	}
> +
> +	writel(0, priv->reg + MVNETA_PORT_RX_RESET);
> +	writel(0, priv->reg + MVNETA_PORT_TX_RESET);
> +
> +	/* Disable hardware PHY polling */
> +	val = readl(priv->reg + MVNETA_UNIT_CONTROL);
> +	writel(val & ~BIT(1), priv->reg + MVNETA_UNIT_CONTROL);
> +
> +	/* Port Acceleration Mode */
> +	writel(0x1, priv->reg + MVNETA_ACC_MODE);
> +
> +	/* Port default configuration for the first Rx queue */
> +	val = MVNETA_PORT_CONFIG_DEFL_VALUE(0);
> +	writel(val, priv->reg + MVNETA_PORT_CONFIG);
> +	writel(0, priv->reg + MVNETA_PORT_CONFIG_EXTEND);
> +	writel(64, priv->reg + MVNETA_RX_MIN_FRAME_SIZE);
> +
> +	/* Default burst size */
> +	val = 0;
> +	val |= MVNETA_TX_BRST_SZ_MASK(MVNETA_SDMA_BRST_SIZE_16);
> +	val |= MVNETA_RX_BRST_SZ_MASK(MVNETA_SDMA_BRST_SIZE_16);
> +	val |= MVNETA_RX_NO_DATA_SWAP | MVNETA_TX_NO_DATA_SWAP;
> +	writel(val, priv->reg + MVNETA_SDMA_CONFIG);
> +
> +	mvneta_clear_mcast_table(priv);
> +	mvneta_rx_unicast_promisc_clear(priv);
> +
> +	/* Configure maximum MTU and token size */
> +	writel(0x0003ffff, priv->reg + MVNETA_TX_MTU);
> +	writel(0xffffffff, priv->reg + MVNETA_TX_TOKEN_SIZE);
> +	writel(0x7fffffff, priv->reg + MVNETA_TXQ_TOKEN_SIZE_REG(0));
> +
> +	val = readl(priv->reg + MVNETA_GMAC_CTRL_2);
> +
> +	/* Even though it might look weird, when we're configured in
> +	 * SGMII or QSGMII mode, the RGMII bit needs to be set.
> +	 */
> +	switch (priv->intf) {
> +	case PHY_INTERFACE_MODE_QSGMII:
> +		writel(MVNETA_QSGMII_SERDES, priv->reg + MVNETA_SERDES_CFG);
> +		val |= MVNETA_GMAC2_PCS_ENABLE | MVNETA_GMAC2_PORT_RGMII;
> +		break;
> +	case PHY_INTERFACE_MODE_SGMII:
> +		writel(MVNETA_SGMII_SERDES, priv->reg + MVNETA_SERDES_CFG);
> +		val |= MVNETA_GMAC2_PCS_ENABLE | MVNETA_GMAC2_PORT_RGMII;
> +		break;
> +	case PHY_INTERFACE_MODE_RGMII:
> +	case PHY_INTERFACE_MODE_RGMII_ID:

Please also add

case PHY_INTERFACE_MODE_RGMII_TXID:
case PHY_INTERFACE_MODE_RGMII_RXID:

> +		val |= MVNETA_GMAC2_PORT_RGMII;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	/* Cancel Port Reset */
> +	val &= ~MVNETA_GMAC2_PORT_RESET;
> +	writel(val, priv->reg + MVNETA_GMAC_CTRL_2);
> +	while (readl(priv->reg + MVNETA_GMAC_CTRL_2) & MVNETA_GMAC2_PORT_RESET)
> +		continue;
> +
> +	return 0;
> +}

Besides dts ge0/1 pinctrl settings that have not been tickled through to
barebox yet and missing Marvell PHY init

Tested-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

on Globalscale Mirabox, Armada 370.

I'll prepare a patch for 88e1318s and 88e1510 PHYs.

Sebastian



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
