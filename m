Delivery-date: Mon, 04 Nov 2024 12:25:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7vCk-004ivJ-1H
	for lore@lore.pengutronix.de;
	Mon, 04 Nov 2024 12:25:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7vCk-0002y0-I1
	for lore@pengutronix.de; Mon, 04 Nov 2024 12:25:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sxMExdlhuL8M24TwCvOvTD22XaUM7OwBplMf0gPrpSU=; b=w5HecSMdvdoGgZ4S5V/szmj6Yx
	A2UTJpnKQ42hYPbJkTu+EPe6BJSoZ3VQU2FnOJciRZecTIu5cJ5liRJs4Tdzs74BXZugQGdXodLpj
	WmEHLT2IcK7MQv5QlF++Mn61QEjNhm5UA9SkClhyLPLeO6OAKnBUJ51eLY3rwfj+kFuC7kXNjcmIY
	x9/QiYGzFO4cVbHDNl+EPmlfdRwaoBvcMMmThUKFPtBkXJjDTgpZQctHBE3nGmv4uOiCnzFywr3oY
	90XKJK5H7DHRmzXzLTbMuzAb3qNBXGfZWlaTykdhvRgGjVqjowu9WX9tkSfOjxqWzV18K7Wb2bk/v
	fvDyWwXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7vC8-0000000DVA1-0FFm;
	Mon, 04 Nov 2024 11:24:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7v2v-0000000DSkW-3Ows
	for barebox@bombadil.infradead.org;
	Mon, 04 Nov 2024 11:14:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=sxMExdlhuL8M24TwCvOvTD22XaUM7OwBplMf0gPrpSU=; b=k1Kn0fLJGkXUUzMxTDWPTiu4kS
	/uPDir+TqMY4YZVpjpiZgupfTrmLNq+IChILkOIpOn7F+jE0eUMTHj09443iXAO22UplWrFybt2z+
	WoyowbKgFpY4f7TbZ9ZFDMj1yja8PfkXyZXrX++IFSez2dF/+ipZ2LWcdvA5V+j5iNY1KWP6eOdsx
	YziU3K4Q2YbHde6YzEJ6AzXPtB1HicSeWijJpzkaHstOJ8tXUIp9RxfzE/KbjlcVgCs7o6vJUdLoM
	hRb2ndbtWZFaOmru3GNNTrhLMzD60n681k0WkKEGf2OxLul01UT0qh+QO0JFli7MNQl+LCQseIfik
	vrpxkidw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7v2s-0000000BJ85-2h2c
	for barebox@lists.infradead.org;
	Mon, 04 Nov 2024 11:14:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t7v2o-0001r7-Tw; Mon, 04 Nov 2024 12:14:50 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t7v2o-001yBG-2M;
	Mon, 04 Nov 2024 12:14:50 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t7v2o-00DSLs-24;
	Mon, 04 Nov 2024 12:14:50 +0100
Date: Mon, 4 Nov 2024 12:14:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZyisqoVwDIUO6bJj@pengutronix.de>
References: <20241029-v2024-10-0-topic-socfpga-agilex5-v1-0-96df2d7dadf4@pengutronix.de>
 <20241029-v2024-10-0-topic-socfpga-agilex5-v1-6-96df2d7dadf4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241029-v2024-10-0-topic-socfpga-agilex5-v1-6-96df2d7dadf4@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_111454_891627_82FCFBA0 
X-CRM114-Status: GOOD (  27.34  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/10] net: add support for Designware XGMAC (10gb)
 ethernet
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 29, 2024 at 09:42:36AM +0100, Steffen Trumtrar wrote:
> +static int xgmac_mdio_read(struct mii_bus *bus, int mdio_addr, int mdio_reg)
> +{
> +	struct xgmac_priv *xgmac = bus->priv;
> +	u32 val;
> +	u32 hw_addr;
> +	u32 idle;
> +	int ret;
> +
> +	ret = readl_poll_timeout(&xgmac->mac_regs->mdio_data, idle,
> +				 !(idle & XGMAC_MAC_MDIO_ADDRESS_SBUSY),
> +				 XGMAC_TIMEOUT_100MS);
> +	if (ret) {
> +		pr_err("MDIO not idle at entry: %d\n", ret);

dev_err() please. Same for other pr_ style functions in this file.

> +		return ret;
> +	}
> +
> +	/* Set clause 22 format */
> +	val = BIT(mdio_addr);
> +	writel(val, &xgmac->mac_regs->mdio_clause_22_port);
> +
> +	hw_addr = (mdio_addr << XGMAC_MAC_MDIO_ADDRESS_PA_SHIFT) |
> +		   (mdio_reg & XGMAC_MAC_MDIO_REG_ADDR_C22P_MASK);
> +
> +	val = xgmac->config->config_mac_mdio <<
> +	      XGMAC_MAC_MDIO_ADDRESS_CR_SHIFT;
> +
> +	val |= XGMAC_MAC_MDIO_ADDRESS_SADDR |
> +	       XGMAC_MDIO_SINGLE_CMD_ADDR_CMD_READ |
> +	       XGMAC_MAC_MDIO_ADDRESS_SBUSY;
> +
> +	ret = readl_poll_timeout(&xgmac->mac_regs->mdio_data, idle,
> +				 !(idle & XGMAC_MAC_MDIO_ADDRESS_SBUSY),
> +				 XGMAC_TIMEOUT_100MS);
> +	if (ret) {
> +		pr_err("MDIO not idle at entry: %d\n", ret);
> +		return ret;
> +	}
> +
> +	writel(hw_addr, &xgmac->mac_regs->mdio_address);
> +	writel(val, &xgmac->mac_regs->mdio_data);
> +
> +	ret = readl_poll_timeout(&xgmac->mac_regs->mdio_data, idle,
> +				 !(idle & XGMAC_MAC_MDIO_ADDRESS_SBUSY),
> +				 XGMAC_TIMEOUT_100MS);
> +	if (ret) {
> +		pr_err("MDIO read didn't complete: %d\n", ret);
> +		return ret;
> +	}
> +
> +	val = readl(&xgmac->mac_regs->mdio_data);
> +	val &= XGMAC_MAC_MDIO_DATA_GD_MASK;
> +
> +	return val;
> +}
> +
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
> +	tx_desc->des0 = dma;

lower_32_bits()

> +	tx_desc->des1 = 0;

upper_32_bits() go here?

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
> +	dma = xgmac->dma_rx_buf[xgmac->rx_desc_idx];
> +	pkt = phys_to_virt(dma);

You should store the virtual address somewhere in your private data and
use it here rather than converting back the dma address.

> +	length = rx_desc->des3 & XGMAC_RDES3_PKT_LENGTH_MASK;
> +
> +	dma_sync_single_for_cpu(edev->parent, (unsigned long)pkt, length,
> +				DMA_FROM_DEVICE);

Use the dma address directly here.

> +	net_receive(edev, pkt, length);
> +	dma_sync_single_for_device(edev->parent, (unsigned long)pkt,
> +				   length, DMA_FROM_DEVICE);
> +
> +	/* Read Format RX descriptor */
> +	rx_desc = &xgmac->rx_descs[xgmac->rx_desc_idx];
> +	rx_desc->des0 = dma;
> +	rx_desc->des1 = 0;
> +	rx_desc->des2 = 0;
> +	/*
> +	 * Make sure that if HW sees the _OWN write below, it will see all the
> +	 * writes to the rest of the descriptor too.
> +	 */
> +	rx_desc->des3 = XGMAC_DESC3_OWN;
> +	barrier();
> +
> +	writel((ulong)rx_desc, &xgmac->dma_regs->ch0_rxdesc_tail_pointer);

calculate the address based on xgmac->rx_descs_phys rather than assuming
a 1:1 mapping.

> +
> +	xgmac->rx_desc_idx++;
> +	xgmac->rx_desc_idx %= XGMAC_DESCRIPTORS_NUM;
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
> +	ret = dev_get_drvdata(dev, (const void **)&xgmac->config);

Use device_get_match_data() instead.

> +	if (ret < 0) {
> +		pr_err("xgmac_probe() failed to get driver data: %d\n", ret);
> +		return ret;
> +	}
> +
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	xgmac->regs = IOMEM(iores->start);
> +
> +	xgmac->mac_regs = (void *)(xgmac->regs + XGMAC_MAC_REGS_BASE);
> +	xgmac->mtl_regs = (void *)(xgmac->regs + XGMAC_MTL_REGS_BASE);
> +	xgmac->dma_regs = (void *)(xgmac->regs + XGMAC_DMA_REGS_BASE);

xgmac->regs already is of type void *, no need to cast-

> +
> +/* DMA Registers */
> +
> +#define XGMAC_DMA_REGS_BASE 0x3000
> +
> +struct xgmac_dma_regs {
> +	u32 mode;					/* 0x3000 */
> +	u32 sysbus_mode;				/* 0x3004 */
> +	u32 unused_3008[(0x3100 - 0x3008) / 4];		/* 0x3008 */
> +	u32 ch0_control;				/* 0x3100 */
> +	u32 ch0_tx_control;				/* 0x3104 */
> +	u32 ch0_rx_control;				/* 0x3108 */
> +	u32 slot_func_control_status;			/* 0x310c */
> +	u32 ch0_txdesc_list_haddress;			/* 0x3110 */
> +	u32 ch0_txdesc_list_address;			/* 0x3114 */
> +	u32 ch0_rxdesc_list_haddress;			/* 0x3118 */
> +	u32 ch0_rxdesc_list_address;			/* 0x311c */
> +	u32 unused_3120;				/* 0x3120 */

Is this really unused or should it be the upper 32 bit of
ch0_txdesc_tail_pointer?

> +	u32 ch0_txdesc_tail_pointer;			/* 0x3124 */
> +	u32 unused_3128;				/* 0x3128 */

Same for ch0_rxdesc_tail_pointer.

> +	u32 ch0_rxdesc_tail_pointer;			/* 0x312c */
> +	u32 ch0_txdesc_ring_length;			/* 0x3130 */
> +	u32 ch0_rxdesc_ring_length;			/* 0x3134 */
> +	u32 unused_3138[(0x3160 - 0x3138) / 4];		/* 0x3138 */
> +	u32 ch0_status;					/* 0x3160 */
> +};
> +

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


