Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8oip-0002L6-VY
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 08:43:02 +0000
Date: Tue, 4 Sep 2012 10:42:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120904084258.GR26594@pengutronix.de>
References: <1346672765-16162-1-git-send-email-jlu@pengutronix.de>
 <1346672765-16162-9-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346672765-16162-9-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 08/10] drivers/net: add driver for the EMAC device found
 in some TI SoCs
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 03, 2012 at 01:46:03PM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  arch/arm/mach-omap/include/mach/emac_defs.h |   53 +++
>  drivers/net/Kconfig                         |    5 +
>  drivers/net/Makefile                        |    1 +
>  drivers/net/davinci_emac.c                  |  619 +++++++++++++++++++++++++++
>  drivers/net/davinci_emac.h                  |  331 ++++++++++++++
>  5 files changed, 1009 insertions(+)
>  create mode 100644 arch/arm/mach-omap/include/mach/emac_defs.h
>  create mode 100644 drivers/net/davinci_emac.c
>  create mode 100644 drivers/net/davinci_emac.h
> 
> diff --git a/arch/arm/mach-omap/include/mach/emac_defs.h b/arch/arm/mach-omap/include/mach/emac_defs.h
> new file mode 100644
> index 0000000..ef930fc
> --- /dev/null
> +++ b/arch/arm/mach-omap/include/mach/emac_defs.h
> +struct davinci_emac_priv {
> +	struct device_d *dev;
> +	struct eth_device edev;
> +	struct mii_device miidev;
> +	void __iomem *regs;

This seems to be filled in in probe(), but otherwise unused.

> +
> +	/* EMAC Addresses */
> +	emac_regs	*adap_emac; /* = (emac_regs *)EMAC_BASE_ADDR; */
> +	ewrap_regs	*adap_ewrap; /* = (ewrap_regs *)EMAC_WRAPPER_BASE_ADDR; */
> +	mdio_regs	*adap_mdio; /* = (mdio_regs *)EMAC_MDIO_BASE_ADDR; */

These should be filled in by resources, not hardcoded addresses.

> +};
> +
> +/* davinci_eth_mac_addr[0] goes out on the wire first */
> +
> +static u_int8_t davinci_eth_mac_addr[] = { 0x00, 0xff, 0xff, 0xff, 0xff, 0x00 };

Add this to struct davinci_emac_priv

> +
> +/*
> + * This function must be called before emac_open() if you want to override
> + * the default mac address.
> + */
> +void davinci_eth_set_mac_addr(const u_int8_t *addr)

static please. If you intend to call this from somewhere else than this
file there is something wrong.

> +}
> +
> +/* Read a PHY register via MDIO inteface. Returns 1 on success, 0 otherwise */
> +int davinci_eth_phy_read(struct davinci_emac_priv *priv, u_int8_t phy_addr, u_int8_t reg_num, u_int16_t *data)

static

> +{
> +	int	tmp;
> +
> +	while (readl(&priv->adap_mdio->USERACCESS0) & MDIO_USERACCESS0_GO);
> +
> +	writel(MDIO_USERACCESS0_GO |
> +		MDIO_USERACCESS0_WRITE_READ |
> +		((reg_num & 0x1f) << 21) |
> +		((phy_addr & 0x1f) << 16),
> +		&priv->adap_mdio->USERACCESS0);
> +
> +	/* Wait for command to complete */
> +	while ((tmp = readl(&priv->adap_mdio->USERACCESS0)) & MDIO_USERACCESS0_GO);
> +
> +	if (tmp & MDIO_USERACCESS0_ACK) {
> +		*data = tmp & 0xffff;
> +		dev_dbg(priv->dev, "emac_phy_read: addr=0x%02x reg=0x%02x data=0x%04x\n",
> +			   phy_addr, reg_num, *data);
> +		return 1;
> +	}
> +
> +	*data = -1;
> +	return 0;
> +}
> +
> +/* Write to a PHY register via MDIO inteface. Blocks until operation is complete. */
> +int davinci_eth_phy_write(struct davinci_emac_priv *priv, u_int8_t phy_addr, u_int8_t reg_num, u_int16_t data)

static

> +{
> +
> +	while (readl(&priv->adap_mdio->USERACCESS0) & MDIO_USERACCESS0_GO);
> +
> +	dev_dbg(priv->dev, "emac_phy_write: addr=0x%02x reg=0x%02x data=0x%04x\n",
> +		   phy_addr, reg_num, data);
> +	writel(MDIO_USERACCESS0_GO |
> +				MDIO_USERACCESS0_WRITE_WRITE |
> +				((reg_num & 0x1f) << 21) |
> +				((phy_addr & 0x1f) << 16) |
> +				(data & 0xffff),
> +		&priv->adap_mdio->USERACCESS0);
> +
> +	/* Wait for command to complete */
> +	while (readl(&priv->adap_mdio->USERACCESS0) & MDIO_USERACCESS0_GO);
> +
> +	return 1;
> +}
> +
> +static int davinci_miidev_read(struct mii_device *dev, int addr, int reg)
> +{
> +	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)dev->edev->priv;
> +	uint16_t value = 0;
> +	return davinci_eth_phy_read(priv, addr, reg, &value) ? value : -1;
> +}
> +
> +static int davinci_miidev_write(struct mii_device *dev, int addr, int reg, int value)
> +{
> +	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)dev->edev->priv;
> +	return davinci_eth_phy_write(priv, addr, reg, value) ? 0 : -1;
> +}
> +
> +static int davinci_emac_get_ethaddr(struct eth_device *edev, unsigned char *adr)
> +{
> +	return -1;
> +}
> +
> +static int davinci_emac_set_ethaddr(struct eth_device *edev, unsigned char *adr)
> +{
> +	davinci_eth_set_mac_addr(adr);
> +	return 0;
> +}
> +
> +static int davinci_emac_init(struct eth_device *edev)
> +{
> +	dev_dbg(&edev->dev, "* emac_init\n");
> +	return 0;
> +}
> +
> +static int davinci_emac_open(struct eth_device *edev)
> +{
> +	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)edev->priv;
> +
> +	dv_reg_p	addr;
> +	u_int32_t	clkdiv, cnt;
> +	emac_desc	*rx_desc;
> +	unsigned long mac_hi, mac_lo;
> +	int ret;
> +
> +	dev_dbg(priv->dev, "+ emac_open\n");
> +
> +	dev_dbg(priv->dev, "emac->TXIDVER: 0x%08x\n", priv->adap_emac->TXIDVER);
> +	dev_dbg(priv->dev, "emac->RXIDVER: 0x%08x\n", priv->adap_emac->RXIDVER);
> +
> +	/* Reset EMAC module and disable interrupts in wrapper */
> +	writel(1, &priv->adap_emac->SOFTRESET);
> +	while (readl(&priv->adap_emac->SOFTRESET) != 0);
> +	writel(1, &priv->adap_ewrap->softrst);
> +	while (readl(&priv->adap_ewrap->softrst) != 0);
> +
> +	writel(0, &priv->adap_ewrap->c0rxen);
> +	writel(0, &priv->adap_ewrap->c1rxen);
> +	writel(0, &priv->adap_ewrap->c2rxen);
> +	writel(0, &priv->adap_ewrap->c0txen);
> +	writel(0, &priv->adap_ewrap->c1txen);
> +	writel(0, &priv->adap_ewrap->c2txen);
> +	writel(0, &priv->adap_ewrap->c0miscen);
> +	writel(0, &priv->adap_ewrap->c1miscen);
> +	writel(0, &priv->adap_ewrap->c2miscen);
> +
> +	rx_desc = priv->emac_rx_desc;
> +
> +	/*
> +	 * Set MAC Addresses & Init multicast Hash to 0 (disable any multicast
> +	 * receive)
> +	 * Use channel 0 only - other channels are disabled
> +	 */
> +	writel(0, &priv->adap_emac->MACINDEX);
> +	mac_hi = (davinci_eth_mac_addr[3] << 24) |
> +		 (davinci_eth_mac_addr[2] << 16) |
> +		 (davinci_eth_mac_addr[1] << 8)  |
> +		 (davinci_eth_mac_addr[0]);
> +	mac_lo = (davinci_eth_mac_addr[5] << 8) |
> +		 (davinci_eth_mac_addr[4]);
> +
> +	writel(mac_hi, &priv->adap_emac->MACADDRHI);
> +	writel(mac_lo | EMAC_MAC_ADDR_IS_VALID | EMAC_MAC_ADDR_MATCH,
> +	       &priv->adap_emac->MACADDRLO);
> +
> +	/* Set source MAC address - REQUIRED */
> +	writel(mac_hi, &priv->adap_emac->MACSRCADDRHI);
> +	writel(mac_lo, &priv->adap_emac->MACSRCADDRLO);
> +
> +	/* Set DMA 8 TX / 8 RX Head pointers to 0 */
> +	addr = &priv->adap_emac->TX0HDP;
> +	for(cnt = 0; cnt < 16; cnt++)
> +		*addr++ = 0;
> +
> +	addr = &priv->adap_emac->RX0HDP;
> +	for(cnt = 0; cnt < 16; cnt++)
> +		*addr++ = 0;
> +
> +	/* Clear Statistics (do this before setting MacControl register) */
> +	addr = &priv->adap_emac->RXGOODFRAMES;
> +	for(cnt = 0; cnt < EMAC_NUM_STATS; cnt++)
> +		*addr++ = 0;
> +
> +	/* No multicast addressing */
> +	writel(0, &priv->adap_emac->MACHASH1);
> +	writel(0, &priv->adap_emac->MACHASH2);
> +
> +	writel(0x01, &priv->adap_emac->TXCONTROL);
> +	writel(0x01, &priv->adap_emac->RXCONTROL);
> +
> +	/* Create RX queue and set receive process in place */
> +	priv->emac_rx_active_head = priv->emac_rx_desc;
> +	for (cnt = 0; cnt < EMAC_MAX_RX_BUFFERS; cnt++) {
> +		rx_desc->next = BD_TO_HW(rx_desc + 1);
> +		rx_desc->buffer = &priv->emac_rx_buffers[cnt * (EMAC_MAX_ETHERNET_PKT_SIZE + EMAC_PKT_ALIGN)];
> +		rx_desc->buff_off_len = EMAC_MAX_ETHERNET_PKT_SIZE;
> +		rx_desc->pkt_flag_len = EMAC_CPPI_OWNERSHIP_BIT;
> +		rx_desc++;
> +	}
> +
> +	/* Set the last descriptor's "next" parameter to 0 to end the RX desc list */
> +	rx_desc--;
> +	rx_desc->next = 0;
> +	priv->emac_rx_active_tail = rx_desc;
> +	priv->emac_rx_queue_active = 1;
> +
> +	/* Enable TX/RX */
> +	writel(EMAC_MAX_ETHERNET_PKT_SIZE, &priv->adap_emac->RXMAXLEN);
> +	writel(0, &priv->adap_emac->RXBUFFEROFFSET);
> +
> +	/* No fancy configs - Use this for promiscous for debug - EMAC_RXMBPENABLE_RXCAFEN_ENABLE */
> +	writel(EMAC_RXMBPENABLE_RXBROADEN, &priv->adap_emac->RXMBPENABLE);
> +
> +	/* Enable ch 0 only */
> +	writel(0x01, &priv->adap_emac->RXUNICASTSET);
> +
> +	/* Enable MII interface and full duplex mode (using RMMI) */
> +	writel((EMAC_MACCONTROL_MIIEN_ENABLE |
> +		EMAC_MACCONTROL_FULLDUPLEX_ENABLE |
> +		EMAC_MACCONTROL_RMIISPEED_100),
> +	       &priv->adap_emac->MACCONTROL);
> +
> +	/* Init MDIO & get link state */
> +	clkdiv = (EMAC_MDIO_BUS_FREQ / EMAC_MDIO_CLOCK_FREQ) - 1;
> +	writel((clkdiv & 0xff) | MDIO_CONTROL_ENABLE | MDIO_CONTROL_FAULT,
> +		&priv->adap_mdio->CONTROL);
> +
> +	/* Start receive process */
> +	writel(BD_TO_HW(priv->emac_rx_desc), &priv->adap_emac->RX0HDP);
> +
> +	ret = miidev_wait_aneg(&priv->miidev);
> +	if (ret)
> +		return ret;
> +
> +	ret = miidev_get_status(&priv->miidev);
> +	if (ret < 0)
> +		return ret;
> +
> +	miidev_print_status(&priv->miidev);
> +
> +	dev_dbg(priv->dev, "- emac_open\n");
> +
> +	return 0;
> +}
> +
> +/* EMAC Channel Teardown */
> +static void davinci_eth_ch_teardown(struct davinci_emac_priv *priv, int ch)
> +{
> +	dv_reg		dly = 0xff;
> +	dv_reg		cnt;
> +
> +	dev_dbg(priv->dev, "+ emac_ch_teardown\n");
> +
> +	if (ch == EMAC_CH_TX) {
> +		/* Init TX channel teardown */
> +		writel(0, &priv->adap_emac->TXTEARDOWN);
> +		for(cnt = 0; cnt != 0xfffffffc; cnt = readl(&priv->adap_emac->TX0CP)) {
> +			/* Wait here for Tx teardown completion interrupt to occur
> +			 * Note: A task delay can be called here to pend rather than
> +			 * occupying CPU cycles - anyway it has been found that teardown
> +			 * takes very few cpu cycles and does not affect functionality */
> +			 dly--;
> +			 udelay(1);
> +			 if (dly == 0)
> +				break;
> +		}
> +		writel(cnt, &priv->adap_emac->TX0CP);
> +		writel(0, &priv->adap_emac->TX0HDP);
> +	} else {
> +		/* Init RX channel teardown */
> +		writel(0, &priv->adap_emac->RXTEARDOWN);
> +		for(cnt = 0; cnt != 0xfffffffc; cnt = readl(&priv->adap_emac->RX0CP)) {
> +			/* Wait here for Rx teardown completion interrupt to occur
> +			 * Note: A task delay can be called here to pend rather than
> +			 * occupying CPU cycles - anyway it has been found that teardown
> +			 * takes very few cpu cycles and does not affect functionality */
> +			 dly--;
> +			 udelay(1);
> +			 if (dly == 0)
> +				break;
> +		}
> +		writel(cnt, &priv->adap_emac->RX0CP);
> +		writel(0, &priv->adap_emac->RX0HDP);
> +	}
> +
> +	dev_dbg(priv->dev, "- emac_ch_teardown\n");
> +}
> +
> +static void davinci_emac_halt(struct eth_device *edev)
> +{
> +	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)edev->priv;
> +
> +	dev_dbg(priv->dev, "+ emac_halt\n");
> +
> +	davinci_eth_ch_teardown(priv, EMAC_CH_TX);	/* TX Channel teardown */
> +	davinci_eth_ch_teardown(priv, EMAC_CH_RX);	/* RX Channel teardown */
> +
> +	/* Reset EMAC module and disable interrupts in wrapper */
> +	writel(1, &priv->adap_emac->SOFTRESET);
> +	writel(1, &priv->adap_ewrap->softrst);
> +
> +	writel(0, &priv->adap_ewrap->c0rxen);
> +	writel(0, &priv->adap_ewrap->c1rxen);
> +	writel(0, &priv->adap_ewrap->c2rxen);
> +	writel(0, &priv->adap_ewrap->c0txen);
> +	writel(0, &priv->adap_ewrap->c1txen);
> +	writel(0, &priv->adap_ewrap->c2txen);
> +	writel(0, &priv->adap_ewrap->c0miscen);
> +	writel(0, &priv->adap_ewrap->c1miscen);
> +	writel(0, &priv->adap_ewrap->c2miscen);
> +
> +	dev_dbg(priv->dev, "- emac_halt\n");
> +}
> +
> +/*
> + * This function sends a single packet on the network and returns
> + * positive number (number of bytes transmitted) or negative for error
> + */
> +static int davinci_emac_send(struct eth_device *edev, void *packet, int length)
> +{
> +	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)edev->priv;
> +	uint64_t start = 0;
> +	int ret_status = -1;
> +
> +	dev_dbg(priv->dev, "+ emac_send (length %d)\n", length);
> +
> +	/* Check packet size and if < EMAC_MIN_ETHERNET_PKT_SIZE, pad it up */
> +	if (length < EMAC_MIN_ETHERNET_PKT_SIZE) {
> +		length = EMAC_MIN_ETHERNET_PKT_SIZE;
> +	}
> +
> +	/* Populate the TX descriptor */
> +	writel(0, &priv->emac_tx_desc->next);
> +	writel((u_int8_t *) packet, &priv->emac_tx_desc->buffer);
> +	writel((length & 0xffff), &priv->emac_tx_desc->buff_off_len);
> +	writel(((length & 0xffff) | EMAC_CPPI_SOP_BIT |
> +				    EMAC_CPPI_OWNERSHIP_BIT |
> +				    EMAC_CPPI_EOP_BIT),
> +		&priv->emac_tx_desc->pkt_flag_len);
> +	dma_flush_range((ulong) packet, (ulong)packet + length);
> +	/* Send the packet */
> +	writel(BD_TO_HW(priv->emac_tx_desc), &priv->adap_emac->TX0HDP);
> +
> +	/* Wait for packet to complete or link down */
> +	start = get_time_ns();

You initialize a timeout value. That's good.

> +	while (1) {
> +		if (readl(&priv->adap_emac->TXINTSTATRAW) & 0x01) {
> +			/* Acknowledge the TX descriptor */
> +			writel(BD_TO_HW(priv->emac_tx_desc), &priv->adap_emac->TX0CP);
> +			ret_status = length;
> +			break;
> +		}
> +	}

Unfortunately it's unused.

> +
> +	dev_dbg(priv->dev, "- emac_send (ret_status %i)\n", ret_status);
> +	return ret_status;
> +}
> +
> +/*
> + * This function handles receipt of a packet from the network
> + */
> +static int davinci_emac_recv(struct eth_device *edev)
> +{
> +	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)edev->priv;
> +	emac_desc *rx_curr_desc;
> +	emac_desc *curr_desc;
> +	emac_desc *tail_desc;
> +	unsigned char *pkt;
> +	int status, len, ret = -1;
> +
> +	dev_dbg(priv->dev, "+ emac_recv\n");
> +
> +	rx_curr_desc = priv->emac_rx_active_head;
> +	status = readl(&rx_curr_desc->pkt_flag_len);
> +	if ((rx_curr_desc) && ((status & EMAC_CPPI_OWNERSHIP_BIT) == 0)) {

The code would be easier to read if you just invert the 'if' above and
return here.

> +		if (status & EMAC_CPPI_RX_ERROR_FRAME) {
> +			/* Error in packet - discard it and requeue desc */
> +			dev_warn(priv->dev, "WARN: emac_rcv_pkt: Error in packet\n");
> +		} else {
> +			pkt = (unsigned char *)readl(&rx_curr_desc->buffer);
> +			len = readl(&rx_curr_desc->buff_off_len) & 0xffff;
> +			dev_dbg(priv->dev, "| emac_recv got packet (length %i)\n", len);
> +			dma_inv_range((ulong)pkt,
> +					(ulong)rx_curr_desc->buffer + len);
> +			net_receive(pkt, len);
> +			ret = len;
> +		}
> +
> +		/* Ack received packet descriptor */
> +		writel(BD_TO_HW(rx_curr_desc), &priv->adap_emac->RX0CP);
> +		curr_desc = rx_curr_desc;
> +		priv->emac_rx_active_head = HW_TO_BD(readl(&rx_curr_desc->next));
> +
> +		if (status & EMAC_CPPI_EOQ_BIT) {
> +			if (priv->emac_rx_active_head) {
> +				writel(BD_TO_HW(priv->emac_rx_active_head),
> +					&priv->adap_emac->RX0HDP);
> +			} else {
> +				priv->emac_rx_queue_active = 0;
> +				dev_info(priv->dev, "INFO:emac_rcv_packet: RX Queue not active\n");
> +			}
> +		}
> +
> +		/* Recycle RX descriptor */
> +		writel(EMAC_MAX_ETHERNET_PKT_SIZE, &rx_curr_desc->buff_off_len);
> +		writel(EMAC_CPPI_OWNERSHIP_BIT, &rx_curr_desc->pkt_flag_len);
> +		writel(0, &rx_curr_desc->next);
> +
> +		if (priv->emac_rx_active_head == 0) {
> +			dev_info(priv->dev, "INFO: emac_rcv_pkt: active queue head = 0\n");
> +			priv->emac_rx_active_head = curr_desc;
> +			priv->emac_rx_active_tail = curr_desc;
> +			if (priv->emac_rx_queue_active != 0) {
> +				writel(BD_TO_HW(priv->emac_rx_active_head), &priv->adap_emac->RX0HDP);
> +				dev_info(priv->dev, "INFO: emac_rcv_pkt: active queue head = 0, HDP fired\n");
> +				priv->emac_rx_queue_active = 1;
> +			}
> +		} else {
> +			tail_desc = priv->emac_rx_active_tail;
> +			priv->emac_rx_active_tail = curr_desc;
> +			writel(BD_TO_HW(curr_desc), &tail_desc->next);
> +			status = readl(&tail_desc->pkt_flag_len);
> +			if (status & EMAC_CPPI_EOQ_BIT) {
> +				writel(BD_TO_HW(curr_desc), &priv->adap_emac->RX0HDP);
> +				status &= ~EMAC_CPPI_EOQ_BIT;
> +				writel(status, &tail_desc->pkt_flag_len);
> +			}
> +		}
> +		return ret;
> +	}
> +
> +	dev_dbg(priv->dev, "- emac_recv\n");
> +
> +	return 0;
> +}
> +
> +static int davinci_emac_probe(struct device_d *dev)
> +{
> +	struct davinci_emac_priv *priv;
> +	int		i;
> +
> +	dev_dbg(dev, "+ emac_probe\n");
> +
> +	priv = xzalloc(sizeof(*priv));
> +	dev->priv = priv;
> +
> +	priv->dev = dev;
> +
> +	priv->adap_emac = (emac_regs *)EMAC_BASE_ADDR;
> +	priv->adap_ewrap = (ewrap_regs *)EMAC_WRAPPER_BASE_ADDR;
> +	priv->adap_mdio = (mdio_regs *)EMAC_MDIO_BASE_ADDR;
> +
> +	/* EMAC descriptors */
> +	priv->emac_rx_desc = (emac_desc *)(EMAC_WRAPPER_RAM_ADDR + EMAC_RX_DESC_BASE);
> +	priv->emac_tx_desc = (emac_desc *)(EMAC_WRAPPER_RAM_ADDR + EMAC_TX_DESC_BASE);
> +	priv->emac_rx_active_head = 0;
> +	priv->emac_rx_active_tail = 0;
> +	priv->emac_rx_queue_active = 0;
> +
> +	/* Receive packet buffers */
> +	priv->emac_rx_buffers = xmemalign(4096, EMAC_MAX_RX_BUFFERS * (EMAC_MAX_ETHERNET_PKT_SIZE + EMAC_PKT_ALIGN));
> +
> +	/* PHY address for a discovered PHY (0xff - not found) */
> +	priv->active_phy_addr = 0xff;
> +
> +	priv->edev.priv = priv;
> +	priv->edev.init = davinci_emac_init;
> +	priv->edev.open = davinci_emac_open;
> +	priv->edev.halt = davinci_emac_halt;
> +	priv->edev.send = davinci_emac_send;
> +	priv->edev.recv = davinci_emac_recv;
> +	priv->edev.get_ethaddr = davinci_emac_get_ethaddr;
> +	priv->edev.set_ethaddr = davinci_emac_set_ethaddr;
> +	priv->edev.parent = dev;
> +
> +	priv->regs = dev_request_mem_region(dev, 0);
> +
> +	davinci_eth_mdio_enable(priv);
> +
> +	for (i = 0; i < 256; i++) {
> +		if (priv->adap_mdio->ALIVE)

readl

Also, use a regular is_timout() loop.

> +			break;
> +		udelay(1000);
> +	}
> +
> +	if (i >= 256) {
> +		dev_err(dev, "No ETH PHY detected!\n");
> +	}
> +
> +	priv->miidev.read = davinci_miidev_read;
> +	priv->miidev.write = davinci_miidev_write;
> +	priv->miidev.address = 0x01;
> +	priv->miidev.flags = MIIDEV_FORCE_LINK;
> +	priv->miidev.edev = &priv->edev;
> +	priv->miidev.parent = dev;
> +
> +	mii_register(&priv->miidev);
> +
> +	eth_register(&priv->edev);
> +
> +	dev_dbg(dev, "- emac_probe\n");
> +	return 0;
> +}
> +
> +static void davinci_emac_remove(struct device_d *dev)
> +{
> +	struct davinci_emac_priv *priv = dev->priv;
> +
> +	davinci_emac_halt(&priv->edev);
> +}
> +
> +static struct driver_d davinci_emac_driver = {
> +	.name   = "davinci_emac",
> +	.probe  = davinci_emac_probe,
> +	.remove = davinci_emac_remove,
> +};
> +
> +static int davinci_emac_register(void)
> +{
> +	register_driver(&davinci_emac_driver);
> +	return 0;
> +}
> +
> +device_initcall(davinci_emac_register);
> diff --git a/drivers/net/davinci_emac.h b/drivers/net/davinci_emac.h
> new file mode 100644
> index 0000000..4e97ce5
> --- /dev/null
> +++ b/drivers/net/davinci_emac.h
> @@ -0,0 +1,331 @@
> +/*
> + * Copyright (C) 2007 Sergey Kubushyn <ksi@koi8.net>
> + *
> + * Based on:
> + *
> + * ----------------------------------------------------------------------------
> + *
> + * dm644x_emac.h
> + *
> + * TI DaVinci (DM644X) EMAC peripheral driver header for DV-EVM
> + *
> + * Copyright (C) 2005 Texas Instruments.
> + *
> + * ----------------------------------------------------------------------------
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + *  You should have received a copy of the GNU General Public License
> + *  along with this program; if not, write to the Free Software
> + *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
> + * ----------------------------------------------------------------------------
> +
> + * Modifications:
> + * ver. 1.0: Sep 2005, TI PSP Team - Created EMAC version for uBoot.
> + *
> + */
> +
> +#ifndef _DAVINCI_EMAC_H_
> +#define _DAVINCI_EMAC_H_
> +
> +/* PHY mask - set only those phy number bits where phy is/can be connected */
> +#define EMAC_MDIO_PHY_NUM           1
> +#define EMAC_MDIO_PHY_MASK          (1 << EMAC_MDIO_PHY_NUM)
> +
> +/* Ethernet Min/Max packet size */
> +#define EMAC_MIN_ETHERNET_PKT_SIZE	60
> +#define EMAC_MAX_ETHERNET_PKT_SIZE	1518
> +#define EMAC_PKT_ALIGN			18	/* 1518 + 18 = 1536 (packet aligned on 32 byte boundry) */
> +
> +/* Number of RX packet buffers
> + * NOTE: Only 1 buffer supported as of now
> + */
> +#define EMAC_MAX_RX_BUFFERS		10
> +
> +typedef unsigned int	dv_reg;
> +typedef unsigned int	*dv_reg_p;
> +
> +/***********************************************
> + ******** Internally used macros ***************
> + ***********************************************/
> +
> +#define EMAC_CH_TX			1
> +#define EMAC_CH_RX			0
> +
> +/* Each descriptor occupies 4 words, lets start RX desc's at 0 and
> + * reserve space for 64 descriptors max
> + */
> +#define EMAC_RX_DESC_BASE		0x0
> +#define EMAC_TX_DESC_BASE		0x1000
> +
> +/* EMAC Teardown value */
> +#define EMAC_TEARDOWN_VALUE		0xfffffffc
> +
> +/* MII Status Register */
> +#define MII_STATUS_REG			1
> +
> +/* Number of statistics registers */
> +#define EMAC_NUM_STATS			36
> +
> +
> +/* EMAC Descriptor */
> +typedef struct
> +{
> +	u_int32_t	next;		/* Pointer to next descriptor in chain */
> +	u_int8_t	*buffer;	/* Pointer to data buffer */
> +	u_int32_t	buff_off_len;	/* Buffer Offset(MSW) and Length(LSW) */
> +	u_int32_t	pkt_flag_len;	/* Packet Flags(MSW) and Length(LSW) */
> +} emac_desc;
> +
> +/* CPPI bit positions */
> +#define EMAC_CPPI_SOP_BIT		(0x80000000)
> +#define EMAC_CPPI_EOP_BIT		(0x40000000)
> +#define EMAC_CPPI_OWNERSHIP_BIT		(0x20000000)
> +#define EMAC_CPPI_EOQ_BIT		(0x10000000)
> +#define EMAC_CPPI_TEARDOWN_COMPLETE_BIT	(0x08000000)
> +#define EMAC_CPPI_PASS_CRC_BIT		(0x04000000)
> +
> +#define EMAC_CPPI_RX_ERROR_FRAME	(0x03fc0000)
> +
> +#define EMAC_MACCONTROL_MIIEN_ENABLE		(0x20)
> +#define EMAC_MACCONTROL_FULLDUPLEX_ENABLE	(0x1)
> +#define EMAC_MACCONTROL_GIGABIT_ENABLE		(1 << 7)
> +#define EMAC_MACCONTROL_GIGFORCE		(1 << 17)
> +#define EMAC_MACCONTROL_RMIISPEED_100		(1 << 15)
> +
> +#define EMAC_MAC_ADDR_MATCH		(1 << 19)
> +#define EMAC_MAC_ADDR_IS_VALID		(1 << 20)
> +
> +#define EMAC_RXMBPENABLE_RXCAFEN_ENABLE	(0x200000)
> +#define EMAC_RXMBPENABLE_RXBROADEN	(0x2000)
> +
> +
> +#define MDIO_CONTROL_IDLE		(0x80000000)
> +#define MDIO_CONTROL_ENABLE		(0x40000000)
> +#define MDIO_CONTROL_FAULT_ENABLE	(0x40000)
> +#define MDIO_CONTROL_FAULT		(0x80000)
> +#define MDIO_USERACCESS0_GO		(0x80000000)
> +#define MDIO_USERACCESS0_WRITE_READ	(0x0)
> +#define MDIO_USERACCESS0_WRITE_WRITE	(0x40000000)
> +#define MDIO_USERACCESS0_ACK		(0x20000000)
> +
> +/* Ethernet MAC Registers Structure */
> +typedef struct  {

No typedef for structs please.

> +	dv_reg		TXIDVER;

Or better, no typedefs at all ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
