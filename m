Delivery-date: Tue, 24 Jun 2025 11:58:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU0Pk-00AYx6-1Q
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 11:58:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU0Pj-0006eX-HW
	for lore@pengutronix.de; Tue, 24 Jun 2025 11:58:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y0nIDcdroIsLyOWy3GY40skXGOdUOnOxzlKR1Mhvrks=; b=N8kgMWq88+P6UlH6C1L4EC75iv
	MVlAREeAI2cekBFS6FXaRlni5ZKQa+ysCDikFj/215RRknIu2pbQ5+9qu7j8u25uWQVdgSyfpbS8r
	TqzqTxR6GIFN/kzzZ/U7qV0nGJtf9xu/5FH2iU2vNEvowSB0ZgAWmq7e1AJSVs2KuASWcE+ZxGyb6
	SxThMBkILH5AAM2MKEK5qLy7D2wwOhhYfGKEDd86DYyE2MpmYb/dDKgcbpQsYPfd//mJf/d/3ZsLC
	T8D9b/SiDqacWTXTpH/+zkYnbaw9e3Q17Api20Wi9Jce8EuNTaMCkKCv1dCf78KifacjY4fWPaorA
	Nne2xQ5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU0P5-00000005EyY-1bAX;
	Tue, 24 Jun 2025 09:57:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU0P2-00000005ExX-0bI9
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 09:57:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uU0P0-0005lB-RG; Tue, 24 Jun 2025 11:57:18 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uU0P0-0055jT-27;
	Tue, 24 Jun 2025 11:57:18 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uU0P0-00F8Kl-1i;
	Tue, 24 Jun 2025 11:57:18 +0200
Date: Tue, 24 Jun 2025 11:57:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aFp2fkj9sBURaH3M@pengutronix.de>
References: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-0-e9de9e31b2c1@pengutronix.de>
 <20250623-v2024-10-0-topic-socfpga-agilex5-v3-9-e9de9e31b2c1@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-9-e9de9e31b2c1@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_025720_338167_59880D70 
X-CRM114-Status: GOOD (  28.83  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 09/10] net: add support for Designware XGMAC (10gb)
 ethernet
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jun 23, 2025 at 03:57:54PM +0200, Steffen Trumtrar wrote:
>  
> +config DRIVER_NET_DESIGNWARE_XGMAC
> +	bool "Designware XGMAC Ethernet driver support" if COMPILE_TEST

Does it make sense to make this option visible?

> +	depends on HAS_DMA && OFTREE
> +	select PHYLIB
> +	select MFD_SYSCON
> +	help
> +	  This option enables support for the Synopsys Designware Ethernet XGMAC (10G Ethernet MAC).
> +
> +config DRIVER_NET_DESIGNWARE_XGMAC_SOCFPGA
> +	bool "Designware XGMAC Ethernet driver support for SOCFPGA"
> +	select DRIVER_NET_DESIGNWARE_XGMAC
> +	depends on (ARCH_SOCFPGA_AGILEX5 || COMPILE_TEST)
> +	select RESET_CONTROLLER if ARCH_SOCFPGA
> +	select RESET_SIMPLE if ARCH_SOCFPGA_AGILEX5
> +	help
> +	  This option enables support for the Synopsys Designware Ethernet XGMAC with specific configuration
> +	  for the Intel SoC FPGA chip.
> +
>  config DRIVER_NET_DM9K
>  	bool "Davicom dm9k[E|A|B] ethernet driver"
>  	depends on HAS_DM9000 || COMPILE_TEST
> +}
> +
> +static int xgmac_read_rom_hwaddr(struct eth_device *edev, unsigned char *mac)
> +{
> +	struct xgmac_priv *xgmac = to_xgmac(edev);
> +	int ret;
> +
> +	ret = xgmac->config->ops->xgmac_get_enetaddr(edev->parent);
> +	if (ret < 0)
> +		return ret;
> +
> +	return !is_valid_ether_addr(xgmac->macaddr);

Please return a proper error code here.

> +static int xgmac_send(struct eth_device *edev, void *packet, int length)
> +{
> +	struct xgmac_priv *xgmac = to_xgmac(edev);
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

	if (upper_32_bits((ulong)(tx_desc)))
		dev_err(dev, "meeeeh\n");

To make clear what the TODO is about.

> +
> +	ret = readl_poll_timeout(&tx_desc->des3, des3,
> +				 !(des3 & XGMAC_DESC3_OWN),
> +				 100 * USEC_PER_MSEC);
> +
> +	dma_unmap_single(edev->parent, dma, length, DMA_TO_DEVICE);
> +
> +	if (ret == -ETIMEDOUT)
> +		dev_dbg(xgmac->dev, "%s: TX timeout 0x%08x\n", __func__, des3);
> +
> +	return ret;
> +}
> +
> +static void xgmac_recv(struct eth_device *edev)
> +{
> +	struct xgmac_priv *xgmac = to_xgmac(edev);
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
> +	rx_desc->des0 = lower_32_bits(dma);
> +	rx_desc->des1 = upper_32_bits(dma);

Is this necessary? I would expect the same address is still in the
descriptor ring.

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
> +static int xgmac_probe_resources_core(struct xgmac_priv *xgmac)
> +{
> +	unsigned int desc_step;
> +	int ret = 0;
> +	void *p;
> +	int i;
> +
> +	/* Maximum distance between neighboring descriptors, in Bytes. */
> +	desc_step = sizeof(struct xgmac_desc);
> +
> +	xgmac->tx_descs = dma_alloc_coherent(DMA_DEVICE_BROKEN,
> +					     XGMAC_DESCRIPTORS_SIZE,
> +					     &xgmac->tx_descs_phys);

No need to pass DMA_DEVICE_BROKEN. You should have a device available
here.

> +	if (!xgmac->tx_descs) {
> +		ret = -ENOMEM;
> +		goto err;
> +	}
> +
> +	xgmac->rx_descs = dma_alloc_coherent(DMA_DEVICE_BROKEN,
> +					     XGMAC_DESCRIPTORS_SIZE,
> +					     &xgmac->rx_descs_phys);
> +	if (!xgmac->rx_descs) {
> +		ret = -ENOMEM;
> +		goto err_free_tx_descs;
> +	}
> +
> +	p = dma_alloc(XGMAC_RX_BUFFER_SIZE);
> +	if (!p)
> +		goto err_free_descs;
> +
> +	for (i = 0; i < XGMAC_DESCRIPTORS_NUM; i++) {
> +		struct xgmac_desc *rx_desc = &xgmac->rx_descs[i];
> +		dma_addr_t dma;
> +
> +		dma = dma_map_single(xgmac->dev, p, XGMAC_MAX_PACKET_SIZE, DMA_FROM_DEVICE);
> +		if (dma_mapping_error(xgmac->dev, dma)) {
> +			ret = -EFAULT;
> +			goto err_free_dma_bufs;
> +		}
> +
> +		rx_desc->des0 = lower_32_bits(dma);
> +		rx_desc->des1 = upper_32_bits(dma);
> +		xgmac->dma_rx_buf_phys[i] = dma;
> +		xgmac->dma_rx_buf_virt[i] = p;
> +
> +		p += XGMAC_MAX_PACKET_SIZE;
> +	}
> +
> +	return 0;
> +
> +err_free_dma_bufs:
> +	dma_free(phys_to_virt(xgmac->rx_descs[0].des0));

You should unmap before freeing this. Also you have the virtual pointer
available, please use this instead of phys_to_virt().

> +err_free_descs:
> +	dma_free_coherent(DMA_DEVICE_BROKEN, xgmac->rx_descs, xgmac->rx_descs_phys,
> +			  XGMAC_DESCRIPTORS_SIZE);
> +err_free_tx_descs:
> +	dma_free_coherent(DMA_DEVICE_BROKEN, xgmac->tx_descs, xgmac->tx_descs_phys,
> +			  XGMAC_DESCRIPTORS_SIZE);
> +err:
> +
> +	return ret;
> +}
> +
> +static int xgmac_remove_resources_core(struct xgmac_priv *xgmac)
> +{
> +	dma_free(xgmac->rx_dma_buf);

Please unmap before freeing.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


