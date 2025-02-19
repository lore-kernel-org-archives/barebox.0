Delivery-date: Wed, 19 Feb 2025 14:47:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkkQe-004KT8-2a
	for lore@lore.pengutronix.de;
	Wed, 19 Feb 2025 14:47:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkkQd-0007DP-6Y
	for lore@pengutronix.de; Wed, 19 Feb 2025 14:47:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fOWbDrGh23STzGA6tNak6Sgw/I2up/xOg5BgBBfJvRM=; b=IzjElEfpFEGHa01iVW1QOYXNq5
	SaVwRhwwi1wQ4Z0zNOVK0vQQ4XfSPZg+9/FX157tbS5wWAuUSdXgFef4iZgU/LKegoeDbhHJlG2NC
	oqjn7BW3iH9zN22WlqwSjgcAAMNvcesw/2ONpneC4T+xBrag6ODbb9fcwl84lceBKoXR8bEpjIPtK
	flPA2njxj/D86OWipc/w1Qvu/reaEeSPN2TSzgtGvatEgukTftbKwoXBQrXeLBD6eok3jLH3WAvyS
	6Ura35NjAiQ6pHvVwkhQyg1GRZzpHhoL0ugBG8oahgdud+V/6bjjcH1s6axVPI68N28HDoD8zzjGk
	bhK7cIhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkkPz-0000000D3O3-3Hx7;
	Wed, 19 Feb 2025 13:47:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkkPx-0000000D3Mi-2i9w
	for barebox@lists.infradead.org;
	Wed, 19 Feb 2025 13:47:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tkkPw-00075G-C3; Wed, 19 Feb 2025 14:47:12 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tkkPw-001mCT-0b;
	Wed, 19 Feb 2025 14:47:12 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tkkPw-006Gis-0G;
	Wed, 19 Feb 2025 14:47:12 +0100
Date: Wed, 19 Feb 2025 14:47:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z7Xg4AHYW1sUFlls@pengutronix.de>
References: <20250218-v2024-10-0-topic-socfpga-agilex5-v2-0-30b6f507810b@pengutronix.de>
 <20250218-v2024-10-0-topic-socfpga-agilex5-v2-9-30b6f507810b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250218-v2024-10-0-topic-socfpga-agilex5-v2-9-30b6f507810b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_054713_838307_BFCF2575 
X-CRM114-Status: GOOD (  39.20  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 09/10] net: add support for Designware XGMAC (10gb)
 ethernet
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Feb 18, 2025 at 10:21:34AM +0100, Steffen Trumtrar wrote:
> The Designware XGMAC is designed for 1/2.5/5/10G ethernet applications.
> It is mostly identical to the eqos driver but has a different register
> layout.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/net/Kconfig                    |  18 +
>  drivers/net/Makefile                   |   2 +
>  drivers/net/designware_xgmac.c         | 856 +++++++++++++++++++++++++++++++++
>  drivers/net/designware_xgmac.h         | 298 ++++++++++++
>  drivers/net/designware_xgmac_socfpga.c | 156 ++++++
>  5 files changed, 1330 insertions(+)
> 
> diff --git a/drivers/net/designware_xgmac.c b/drivers/net/designware_xgmac.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..ca79ab4cb4a39c053fff0df13f587cbde9c2e6e7
> --- /dev/null
> +static int xgmac_set_full_duplex(struct device *dev)
> +{
> +	struct xgmac_priv *xgmac = dev_get_priv(dev);

The edev to priv conversion is inconsistent in the driver.

Sometimes it's done like:

	struct xgmac_priv *xgmac = dev_get_priv(edev->parent);

Other places have:

	struct xgmac_priv *xgmac = edev->priv;

Please add a

static inline to_xgmac(struct eth_device *edev)
{
	return container_of(edev, struct xgmac_priv, netdev);
}

and use it everywhere.

Also, the functions purely internal to the driver should take a
struct xgmac_priv * directly instead of doing the edev to priv
conversion multiple times.


> +static void xgmac_adjust_link(struct eth_device *edev)
> +{
> +	struct device *dev = edev->parent;
> +	bool en_calibration;

en_calibration is set but not used.

> +	int ret;
> +
> +	if (edev->phydev->duplex)
> +		ret = xgmac_set_full_duplex(dev);
> +	else
> +		ret = xgmac_set_half_duplex(dev);

just return void from these functions. They do not fail.

> +	if (ret < 0) {
> +		dev_err(dev, "xgmac_set_*_duplex() failed: %d\n", ret);
> +	}
> +
> +	switch (edev->phydev->speed) {
> +	case SPEED_1000:
> +		en_calibration = true;
> +		ret = xgmac_set_gmii_speed(dev);
> +		break;
> +	case SPEED_100:
> +		en_calibration = true;
> +		ret = xgmac_set_mii_speed_100(dev);
> +		break;
> +	case SPEED_10:
> +		en_calibration = false;
> +		ret = xgmac_set_mii_speed_10(dev);
> +		break;
> +	default:
> +		dev_err(dev, "invalid speed %d\n", edev->phydev->speed);
> +	}
> +	if (ret < 0)
> +		dev_err(dev, "xgmac_set_*mii_speed*() failed: %d\n", ret);
> +}
> +
> +static int xgmac_start(struct eth_device *edev)
> +{
> +	struct xgmac_priv *xgmac = edev->priv;
> +	int ret, i;
> +	u32 val, tx_fifo_sz, rx_fifo_sz, tqs, rqs, pbl;
> +	ulong last_rx_desc;
> +	ulong desc_pad;
> +	u32 idle;
> +
> +	ret = phy_device_connect(edev, &xgmac->miibus, xgmac->phy_addr,
> +				 xgmac_adjust_link, 0, xgmac->interface);

xgmac->phy_addr is set to 0 during init and used only here. Replace with
-1 to default to scan the bus. Usually the address argument is unused
in phy_device_connect() when the phy is specified in the device tree.
When it's not, then -1 is better than hardcoding phy0.

> +static void xgmac_stop(struct eth_device *edev)
> +{
> +	struct xgmac_priv *xgmac = edev->priv;
> +	u64 start_time;
> +	u32 val;
> +	u32 trcsts;
> +	u32 txqsts;
> +	u32 prxq;
> +	u32 rxqsts;
> +
> +	debug("%s(dev=%p):\n", __func__, edev);

dev_dbg()

> +static int xgmac_send(struct eth_device *edev, void *packet, int length)
> +{
> +	struct xgmac_priv *xgmac = edev->priv;
> +	struct xgmac_desc *tx_desc;
> +	dma_addr_t dma;
> +	u32 des3_prev, des3;
> +	int ret;
> +
> +	tx_desc = &xgmac->tx_descs[xgmac->tx_desc_idx];
> +	xgmac->tx_desc_idx++;
> +	xgmac->tx_desc_idx %= XGMAC_DESCRIPTORS_NUM;
> +
> +	dma = dma_map_single(edev->parent, packet, length, DMA_TO_DEVICE);
> +	if (dma_mapping_error(edev->parent, dma))
> +		return -EFAULT;
> +
> +	tx_desc->des0 = lower_32_bits(dma);
> +	tx_desc->des1 = upper_32_bits(dma);
> +	tx_desc->des2 = length;
> +	/*
> +	 * Make sure that if HW sees the _OWN write below, it will see all the
> +	 * writes to the rest of the descriptor too.
> +	 */
> +	barrier();
> +
> +	des3_prev = XGMAC_DESC3_OWN | XGMAC_DESC3_FD | XGMAC_DESC3_LD | length;
> +	writel(des3_prev, &tx_desc->des3);
> +	writel((ulong)(tx_desc + 1), &xgmac->dma_regs->ch0_txdesc_tail_pointer); // <-- TODO
> +
> +	ret = readl_poll_timeout(&tx_desc->des3, des3,
> +				 !(des3 & XGMAC_DESC3_OWN),
> +				 100 * USEC_PER_MSEC);
> +
> +	dma_unmap_single(edev->parent, dma, length, DMA_TO_DEVICE);
> +
> +	if (ret == -ETIMEDOUT)
> +		debug("%s: TX timeout 0x%08x\n", __func__, des3);

dev_dbg()

> +
> +	return ret;
> +}
> +
> +static void xgmac_recv(struct eth_device *edev)
> +{
> +	struct xgmac_priv *xgmac = edev->priv;
> +	struct xgmac_desc *rx_desc;
> +	dma_addr_t dma;
> +	void *pkt;
> +	int length;
> +
> +	rx_desc = &xgmac->rx_descs[xgmac->rx_desc_idx];
> +
> +	if (rx_desc->des3 & XGMAC_DESC3_OWN)
> +		return;
> +
> +	dma = xgmac->dma_rx_buf_phys[xgmac->rx_desc_idx];
> +	pkt = xgmac->dma_rx_buf_virt[xgmac->rx_desc_idx];
> +	length = rx_desc->des3 & XGMAC_RDES3_PKT_LENGTH_MASK;
> +
> +	dma_sync_single_for_cpu(edev->parent, dma, length, DMA_FROM_DEVICE);
> +	net_receive(edev, pkt, length);
> +	dma_sync_single_for_device(edev->parent, dma, length, DMA_FROM_DEVICE);
> +
> +	/* Read Format RX descriptor */
> +	rx_desc = &xgmac->rx_descs[xgmac->rx_desc_idx];
> +	rx_desc->des0 = dma;

This is a 32bit variable whereas the dma address potentially has 64bit.
Does des1 take the upper 32bit? If yes you should add that, otherwise
a warning would be good.

> +	rx_desc->des1 = 0;
> +	rx_desc->des2 = 0;
> +	/*
> +	 * Make sure that if HW sees the _OWN write below, it will see all the
> +	 * writes to the rest of the descriptor too.
> +	 */
> +	rx_desc->des3 = XGMAC_DESC3_OWN;
> +	barrier();
> +
> +	writel(xgmac->rx_descs_phys + (xgmac->rx_desc_idx * XGMAC_DESCRIPTOR_SIZE),
> +	       &xgmac->dma_regs->ch0_rxdesc_tail_pointer);
> +
> +	xgmac->rx_desc_idx++;
> +	xgmac->rx_desc_idx %= XGMAC_DESCRIPTORS_NUM;
> +}
> +
> +static void xgmac_probe_dt(struct device *dev, struct xgmac_priv *xgmac)
> +{
> +	struct device_node *child;
> +	int phy_reset;
> +	int ret;
> +
> +	xgmac->interface = of_get_phy_mode(dev->of_node);
> +	xgmac->phy_addr = 0;
> +
> +	/* Set MDIO bus device node, if present. */
> +	for_each_child_of_node(dev->of_node, child) {
> +		if (of_device_is_compatible(child, "snps,dwmac-mdio") ||
> +		    (child->name && !of_node_cmp(child->name, "mdio"))) {
> +			xgmac->miibus.dev.of_node = child;
> +			break;
> +		}
> +	}
> +
> +	phy_reset = of_get_named_gpio(dev->of_node, "phy-reset-gpios", 0);
> +	if (gpio_is_valid(phy_reset)) {
> +		ret = gpio_request(phy_reset, "phy-reset");
> +		if (ret)
> +			return;
> +
> +		xgmac->phy_reset_gpio = phy_reset;
> +	}

The phy reset GPIO is optional, but used unconditionally. You'll end up
toggling GPIO 0 when no reset GPIO is given.

Also you could switch to the gpiod API.

> +
> +}
> +
> +int xgmac_probe(struct device *dev)
> +{
> +	struct device_node *np = dev->of_node;
> +	struct mii_bus *miibus;
> +	struct xgmac_priv *xgmac;
> +	struct resource *iores;
> +	struct eth_device *edev;
> +	int ret = 0;
> +
> +	xgmac = xzalloc(sizeof(*xgmac));
> +
> +	xgmac->dev = dev;
> +	xgmac->config = device_get_match_data(dev);
> +	if (ret < 0) {

if (!xgmac->config)

> +		dev_err(dev, "xgmac_probe() failed to get driver data: %d\n", ret);
> +		return ret;
> +	}
> +
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	xgmac->regs = IOMEM(iores->start);
> +
> +	xgmac->mac_regs = xgmac->regs + XGMAC_MAC_REGS_BASE;
> +	xgmac->mtl_regs = xgmac->regs + XGMAC_MTL_REGS_BASE;
> +	xgmac->dma_regs = xgmac->regs + XGMAC_DMA_REGS_BASE;
> +
> +	xgmac_probe_dt(dev, xgmac);
> +
> +	edev = &xgmac->netdev;
> +	dev->priv = edev->priv = xgmac;
> +
> +	edev->parent = dev;
> +	edev->open = xgmac_start;
> +	edev->send = xgmac_send;
> +	edev->halt = xgmac_stop;
> +	edev->recv = xgmac_recv;
> +	edev->get_ethaddr = xgmac_read_rom_hwaddr;
> +	edev->set_ethaddr = xgmac_write_hwaddr;
> +
> +	of_property_read_u32(np, "max-speed", &xgmac->max_speed);

This is unused in the driver.

> diff --git a/drivers/net/designware_xgmac_socfpga.c b/drivers/net/designware_xgmac_socfpga.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..7d8dba3c17cdb3fe7c82a6fa9315fecfdbfcc32a
> --- /dev/null
> +++ b/drivers/net/designware_xgmac_socfpga.c
> @@ -0,0 +1,156 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2023, Intel Corporation
> + */
> +#define DEBUG

Drop please

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


