Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SufEr-0003z1-Jr
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 07:45:36 +0000
Date: Fri, 27 Jul 2012 09:43:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120727074349.GS30009@pengutronix.de>
References: <1343232061-1789-1-git-send-email-renaud.barbier@ge.com>
 <1343232061-1789-3-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343232061-1789-3-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 2/3] net: GIANFAR driver
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

comments inline.


> + * those we don't care about (unless zero is bad, in which case,
> + * choose a more appropriate value)
> + */
> +static void init_registers(void __iomem *regs)

Not really important, but could you add a gfar_ prefix consistently to
all functions?

> +{
> +	out_be32(regs + GFAR_IEVENT_OFFSET, GFAR_IEVENT_INIT_CLEAR);
> +
> +	out_be32(regs + GFAR_IMASK_OFFSET, GFAR_IMASK_INIT_CLEAR);
> +
> +	out_be32(regs + GFAR_IADDR(0), 0);
> +	out_be32(regs + GFAR_IADDR(1), 0);
> +	out_be32(regs + GFAR_IADDR(2), 0);
> +	out_be32(regs + GFAR_IADDR(3), 0);
> +	out_be32(regs + GFAR_IADDR(4), 0);
> +	out_be32(regs + GFAR_IADDR(5), 0);
> +	out_be32(regs + GFAR_IADDR(6), 0);
> +	out_be32(regs + GFAR_IADDR(7), 0);
> +
> +	out_be32(regs + GFAR_GADDR(0), 0);
> +	out_be32(regs + GFAR_GADDR(1), 0);
> +	out_be32(regs + GFAR_GADDR(2), 0);
> +	out_be32(regs + GFAR_GADDR(3), 0);
> +	out_be32(regs + GFAR_GADDR(4), 0);
> +	out_be32(regs + GFAR_GADDR(5), 0);
> +	out_be32(regs + GFAR_GADDR(6), 0);
> +	out_be32(regs + GFAR_GADDR(7), 0);
> +
> +	out_be32(regs + GFAR_RCTRL_OFFSET, 0x00000000);
> +
> +	memset((void *)(regs + GFAR_TR64_OFFSET), 0,
> +			GFAR_CAM2_OFFSET - GFAR_TR64_OFFSET);
> +
> +	out_be32(regs + GFAR_CAM1_OFFSET, 0xffffffff);
> +	out_be32(regs + GFAR_CAM2_OFFSET, 0xffffffff);
> +
> +	out_be32(regs + GFAR_MRBLR_OFFSET, MRBLR_INIT_SETTINGS);
> +
> +	out_be32(regs + GFAR_MINFLR_OFFSET, MINFLR_INIT_SETTINGS);
> +
> +	out_be32(regs + GFAR_ATTR_OFFSET, ATTR_INIT_SETTINGS);
> +	out_be32(regs + GFAR_ATTRELI_OFFSET, ATTRELI_INIT_SETTINGS);
> +}
> +
> +/*
> + * Configure maccfg2 based on negotiated speed and duplex
> + * reported by PHY handling code
> + */
> +static void adjust_link(struct eth_device *dev)
> +{
> +	struct gfar_private *priv = (struct gfar_private *)dev->priv;
> +	void __iomem *regs = priv->regs;
> +	u32 ecntrl, maccfg2;
> +	uint32_t status;
> +
> +	status = miidev_get_status(&priv->miidev);
> +
> +	priv->link = status & MIIDEV_STATUS_IS_UP;
> +	if (status & MIIDEV_STATUS_IS_FULL_DUPLEX)
> +		priv->duplexity = 1;
> +	else
> +		priv->duplexity = 0;
> +
> +	if (status & MIIDEV_STATUS_IS_1000MBIT)
> +		priv->speed = 1000;
> +	else if (status & MIIDEV_STATUS_IS_100MBIT)
> +		priv->speed = 100;
> +	else
> +		priv->speed = 10;
> +
> +	if (priv->link) {
> +		/* clear all bits relative with interface mode */
> +		ecntrl = in_be32(regs + GFAR_ECNTRL_OFFSET);
> +		ecntrl &= ~GFAR_ECNTRL_R100;
> +
> +		maccfg2 = in_be32(regs + GFAR_MACCFG2_OFFSET);
> +		maccfg2 &= ~(GFAR_MACCFG2_IF | GFAR_MACCFG2_FULL_DUPLEX);
> +
> +		if (priv->duplexity != 0)
> +			maccfg2 |= GFAR_MACCFG2_FULL_DUPLEX;
> +		else
> +			maccfg2 &= ~(GFAR_MACCFG2_FULL_DUPLEX);
> +
> +		switch (priv->speed) {
> +		case 1000:
> +			maccfg2 |= GFAR_MACCFG2_GMII;
> +			break;
> +		case 100:
> +		case 10:
> +			maccfg2 |= GFAR_MACCFG2_MII;
> +			/*
> +			 * Set R100 bit in all modes although
> +			 * it is only used in RGMII mode
> +			 */
> +			if (priv->speed == 100)
> +				ecntrl |= GFAR_ECNTRL_R100;
> +			break;
> +		default:
> +			printf("%s: Speed was bad\n", dev->dev.name);
> +			break;
> +		}
> +
> +		out_be32(regs + GFAR_ECNTRL_OFFSET, ecntrl);
> +		out_be32(regs + GFAR_MACCFG2_OFFSET, maccfg2);
> +
> +		printf("Speed: %d, %s duplex\n", priv->speed,
> +		       (priv->duplexity) ? "full" : "half");
> +
> +	} else {
> +		printf("%s: No link.\n", dev->dev.name);
> +	}
> +}
> +
> +/* Stop the interface */
> +static void gfar_halt(struct eth_device *dev)
> +{
> +	struct gfar_private *priv = (struct gfar_private *)dev->priv;
> +	void __iomem *regs = priv->regs;
> +	int value;
> +
> +	clrbits_be32(regs + GFAR_DMACTRL_OFFSET, GFAR_DMACTRL_GRS |
> +			GFAR_DMACTRL_GTS);
> +	setbits_be32(regs + GFAR_DMACTRL_OFFSET, GFAR_DMACTRL_GRS |
> +			GFAR_DMACTRL_GTS);
> +
> +	value = in_be32(regs + GFAR_IEVENT_OFFSET);
> +	value &= (GFAR_IEVENT_GRSC | GFAR_IEVENT_GTSC);
> +
> +	while (value != (GFAR_IEVENT_GRSC | GFAR_IEVENT_GTSC)) {
> +		value = in_be32(regs + GFAR_IEVENT_OFFSET);
> +		value &= (GFAR_IEVENT_GRSC | GFAR_IEVENT_GTSC);
> +	}
> +
> +	clrbits_be32(regs + GFAR_MACCFG1_OFFSET,
> +			GFAR_MACCFG1_TX_EN | GFAR_MACCFG1_RX_EN);
> +}
> +
> +/* Initializes registers for the controller. */
> +static int gfar_init(struct eth_device *dev)
> +{
> +	struct gfar_private *priv = (struct gfar_private *)dev->priv;
> +	void __iomem *regs = priv->regs;
> +
> +	gfar_halt(dev);
> +
> +	/* Init MACCFG2. Default to GMII */
> +	out_be32(regs + GFAR_MACCFG2_OFFSET, MACCFG2_INIT_SETTINGS);
> +	out_be32(regs + GFAR_ECNTRL_OFFSET, ECNTRL_INIT_SETTINGS);
> +
> +	priv->rxIdx = 0;
> +	priv->txIdx = 0;

No camel case variable names please.

> +
> +	init_registers(regs);
> +
> +	miidev_restart_aneg(&priv->miidev);
> +
> +	return  0;
> +}
> +
> +static int gfar_open(struct eth_device *dev)
> +{
> +	int ix;
> +	struct gfar_private *priv = (struct gfar_private *)dev->priv;

unnecessary cast.

> +	void __iomem *regs = priv->regs;
> +
> +	/* Point to the buffer descriptors */
> +	out_be32(regs + GFAR_TBASE0_OFFSET, (unsigned int)priv->txbd);
> +	out_be32(regs + GFAR_RBASE0_OFFSET, (unsigned int)priv->rxbd);
> +
> +	/* Initialize the Rx Buffer descriptors */
> +	for (ix = 0; ix < RX_BUF_CNT; ix++) {
> +		priv->rxbd[ix].status = RXBD_EMPTY;
> +		priv->rxbd[ix].length = 0;
> +		priv->rxbd[ix].bufPtr = (uint) NetRxPackets[ix];
> +	}
> +	priv->rxbd[RX_BUF_CNT - 1].status |= RXBD_WRAP;
> +
> +	/* Initialize the TX Buffer Descriptors */
> +	for (ix = 0; ix < TX_BUF_CNT; ix++) {
> +		priv->txbd[ix].status = 0;
> +		priv->txbd[ix].length = 0;
> +		priv->txbd[ix].bufPtr = 0;
> +	}
> +	priv->txbd[TX_BUF_CNT - 1].status |= TXBD_WRAP;
> +
> +	miidev_wait_aneg(&priv->miidev);
> +	adjust_link(dev);
> +
> +	/* Enable Transmit and Receive */
> +	setbits_be32(regs + GFAR_MACCFG1_OFFSET, GFAR_MACCFG1_RX_EN |
> +			GFAR_MACCFG1_TX_EN);
> +
> +	/* Tell the DMA it is clear to go */
> +	setbits_be32(regs + GFAR_DMACTRL_OFFSET, DMACTRL_INIT_SETTINGS);
> +	out_be32(regs + GFAR_TSTAT_OFFSET, GFAR_TSTAT_CLEAR_THALT);
> +	out_be32(regs + GFAR_RSTAT_OFFSET, GFAR_RSTAT_CLEAR_RHALT);
> +	clrbits_be32(regs + GFAR_DMACTRL_OFFSET, GFAR_DMACTRL_GRS |
> +			GFAR_DMACTRL_GTS);
> +
> +	return 0;
> +}
> +
> +static int gfar_get_ethaddr(struct eth_device *dev, unsigned char *mac)
> +{
> +	struct device_d *edev = dev->parent;
> +	struct gfar_info_struct *gfar_info =
> +		(struct gfar_info_struct *)edev->platform_data;
> +	int (*get_mac)(struct gfar_info_struct *, unsigned char *) =
> +		gfar_info->get_mac;
> +
> +	if (get_mac)
> +		get_mac(gfar_info, mac);
> +	else
> +		return -ENODEV;
> +
> +	return 0;
> +}
> +
> +static int gfar_set_ethaddr(struct eth_device *dev, unsigned char *mac)
> +{
> +	struct gfar_private *priv = (struct gfar_private *)dev->priv;
> +	void __iomem *regs = priv->regs;
> +	char tmpbuf[MAC_ADDR_LEN];
> +	uint tempval;
> +	int ix;
> +
> +	for (ix = 0; ix < MAC_ADDR_LEN; ix++)
> +		tmpbuf[MAC_ADDR_LEN - 1 - ix] = mac[ix];
> +
> +	tempval = (tmpbuf[0] << 24) | (tmpbuf[1] << 16) | (tmpbuf[2] << 8) |
> +		  tmpbuf[3];
> +
> +	out_be32(regs + GFAR_MACSTRADDR1_OFFSET, tempval);
> +
> +	tempval = *((uint *)(tmpbuf + 4));
> +
> +	out_be32(regs + GFAR_MACSTRADDR2_OFFSET, tempval);
> +
> +	return 0;
> +}
> +
> +/* Writes the given phy's reg with value, using the specified MDIO regs */
> +static int gfar_local_mdio_write(void __iomem *phyregs, uint addr, uint reg,
> +				uint value)
> +{
> +	uint64_t start;
> +
> +	out_be32(phyregs + GFAR_MIIMADD_OFFSET, (addr << 8) | (reg & 0x1f));
> +	out_be32(phyregs + GFAR_MIIMCON_OFFSET, value);
> +
> +	start = get_time_ns();
> +
> +	while (!is_timeout(start, 10 * MSECOND)) {
> +		if (!(in_be32(phyregs + GFAR_MIIMMIND_OFFSET) &
> +					GFAR_MIIMIND_BUSY))
> +			return 0;
> +	}
> +
> +	return -EIO;
> +}
> +
> +/*
> + * Reads register regnum on the device's PHY through the
> + * specified registers. It lowers and raises the read
> + * command, and waits for the data to become valid (miimind
> + * notvalid bit cleared), and the bus to cease activity (miimind
> + * busy bit cleared), and then returns the value
> + */
> +static uint gfar_local_mdio_read(void __iomem *phyregs, uint phyid, uint regnum)
> +{
> +	uint64_t start;
> +
> +	/* Put the address of the phy, and the register number into MIIMADD */
> +	out_be32(phyregs + GFAR_MIIMADD_OFFSET, (phyid << 8) | (regnum & 0x1f));
> +
> +	/* Clear the command register, and wait */
> +	out_be32(phyregs + GFAR_MIIMCOM_OFFSET, 0);
> +
> +	/* Initiate a read command, and wait */
> +	out_be32(phyregs + GFAR_MIIMCOM_OFFSET, GFAR_MIIM_READ_COMMAND);
> +
> +	start = get_time_ns();
> +
> +	while (!is_timeout(start, 10 * MSECOND)) {
> +		if (!(in_be32(phyregs + GFAR_MIIMMIND_OFFSET) &
> +			(GFAR_MIIMIND_NOTVALID | GFAR_MIIMIND_BUSY)))
> +			return in_be32(phyregs + GFAR_MIIMSTAT_OFFSET);
> +	}
> +	return -EIO;
> +}
> +
> +static void gfar_configure_serdes(struct gfar_private *priv)
> +{
> +	gfar_local_mdio_write(priv->phyregs_sgmii,
> +			in_be32(priv->regs + GFAR_TBIPA_OFFSET), GFAR_TBI_ANA,
> +			priv->tbiana);
> +	gfar_local_mdio_write(priv->phyregs_sgmii,
> +			in_be32(priv->regs + GFAR_TBIPA_OFFSET),
> +			GFAR_TBI_TBICON, GFAR_TBICON_CLK_SELECT);
> +	gfar_local_mdio_write(priv->phyregs_sgmii,
> +			in_be32(priv->regs + GFAR_TBIPA_OFFSET), GFAR_TBI_CR,
> +			priv->tbicr);
> +}
> +
> +/* Reset the internal and external PHYs. */
> +static void init_phy(struct eth_device *dev)
> +{
> +	struct gfar_private *priv = (struct gfar_private *)dev->priv;
> +	void __iomem *regs = priv->regs;
> +	uint64_t start;
> +
> +	/* Assign a Physical address to the TBI */
> +	out_be32(regs + GFAR_TBIPA_OFFSET, GFAR_TBIPA_VALUE);
> +
> +	/* Reset MII (due to new addresses) */
> +	out_be32(priv->phyregs + GFAR_MIIMCFG_OFFSET, GFAR_MIIMCFG_RESET);
> +	out_be32(priv->phyregs + GFAR_MIIMCFG_OFFSET, GFAR_MIIMCFG_INIT_VALUE);
> +
> +	start = get_time_ns();
> +	while (!is_timeout(start, 10 * MSECOND)) {
> +		if (!(in_be32(priv->phyregs + GFAR_MIIMMIND_OFFSET) &
> +			GFAR_MIIMIND_BUSY))
> +			break;
> +	}
> +
> +	gfar_local_mdio_write(priv->phyregs, priv->phyaddr, GFAR_MIIM_CR,
> +			GFAR_MIIM_CR_RST);
> +
> +	start = get_time_ns();
> +	while (!is_timeout(start, 10 * MSECOND)) {
> +		if (!(gfar_local_mdio_read(priv->phyregs, priv->phyaddr,
> +					GFAR_MIIM_CR) & GFAR_MIIM_CR_RST))
> +			break;
> +	}
> +
> +	if (in_be32(regs + GFAR_ECNTRL_OFFSET) & GFAR_ECNTRL_SGMII_MODE)
> +		gfar_configure_serdes(priv);
> +}
> +
> +static int gfar_send(struct eth_device *dev, void *packet, int length)
> +{
> +	int ix;
> +	struct gfar_private *priv = (struct gfar_private *)dev->priv;
> +	void __iomem *regs = priv->regs;
> +
> +	/* Find an empty buffer descriptor */
> +	for (ix = 0; priv->txbd[priv->txIdx].status & TXBD_READY; ix++) {
> +		if (ix >= TOUT_LOOP) {
> +			debug("gfar: tx buffers full\n");
> +			return -EBUSY;
> +		}
> +	}

This seems unnecessary. After initialization the tx buffer is ready. The
second time you get here the tx buffer is also ready, because you waited
for it to become ready below.

> +
> +	priv->txbd[priv->txIdx].bufPtr = (uint) packet;
> +	priv->txbd[priv->txIdx].length = length;
> +	priv->txbd[priv->txIdx].status |= (TXBD_READY | TXBD_LAST | TXBD_CRC);
> +
> +	/* Tell the DMA to go */
> +	out_be32(regs + GFAR_TSTAT_OFFSET, GFAR_TSTAT_CLEAR_THALT);
> +
> +	/* Wait for buffer to be transmitted */
> +	for (ix = 0; priv->txbd[priv->txIdx].status & TXBD_READY; ix++) {
> +		if (ix >= TOUT_LOOP) {
> +			debug("gfar: tx error: 0x%x\n",
> +				priv->txbd[priv->txIdx].status);
> +			return -EBUSY;
> +		}

Add a proper timeout loop here.

> +	}
> +
> +	if (priv->txbd[priv->txIdx].status & TXBD_STATS) {
> +		printf("TX error: 0x%x\n", priv->txbd[priv->txIdx].status);
> +		return -EIO;
> +	}
> +
> +	priv->txIdx = (priv->txIdx + 1) % TX_BUF_CNT;

Remove this and use a single tx buffer only. The driver doesn't make use
of more buffers anyway, since it polls for a buffer to be ready before
queuing another one.

> +
> +	return 0;
> +}
> +
> +static int gfar_recv(struct eth_device *dev)
> +{
> +	int length;
> +	struct gfar_private *priv = (struct gfar_private *)dev->priv;
> +	void __iomem *regs = priv->regs;
> +
> +	while (!(priv->rxbd[priv->rxIdx].status & RXBD_EMPTY)) {
> +		length = priv->rxbd[priv->rxIdx].length;
> +
> +		/* Send the packet up if there were no errors */
> +		if (!(priv->rxbd[priv->rxIdx].status & RXBD_STATS)) {
> +			net_receive(NetRxPackets[priv->rxIdx], length - 4);
> +		} else {
> +			printf("Got error %x\n",
> +			       (priv->rxbd[priv->rxIdx].status & RXBD_STATS));

Please use dev_dbg/dev_info and friends inside drivers.

> +		}
> +
> +		priv->rxbd[priv->rxIdx].length = 0;
> +
> +		/* Set the wrap bit if this is the last element in the list */
> +		if ((priv->rxIdx + 1) == RX_BUF_CNT)
> +			priv->rxbd[priv->rxIdx].status = RXBD_WRAP;
> +		else
> +			priv->rxbd[priv->rxIdx].status = 0;
> +
> +		priv->rxbd[priv->rxIdx].status |= RXBD_EMPTY;
> +		priv->rxIdx = (priv->rxIdx + 1) % RX_BUF_CNT;
> +	}

Don't loop here until you receive packets. The caller will do this for
you (which also handles the ctrl-c case).

> +
> +	if (in_be32(regs + GFAR_IEVENT_OFFSET) & GFAR_IEVENT_BSY) {
> +		out_be32(regs + GFAR_IEVENT_OFFSET, GFAR_IEVENT_BSY);
> +		out_be32(regs + GFAR_RSTAT_OFFSET, GFAR_RSTAT_CLEAR_RHALT);
> +	}
> +
> +	return 0;
> +}
> +
> +/* Read a MII PHY register. */
> +static int gfar_miiphy_read(struct mii_device *mdev, int addr, int reg)
> +{
> +	unsigned short ret;
> +	struct eth_device *edev = mdev->edev;
> +	struct gfar_private *priv = (struct gfar_private *)edev->priv;
> +
> +	if (NULL == priv) {
> +		printf("Can't read PHY at address %d\n", addr);
> +		return -1;
> +	}

This should never happen. You can drop this test.

> +
> +	return gfar_local_mdio_read(priv->phyregs, addr, reg);
> +}
> +
> +/* Write a MII PHY register.  */
> +static int gfar_miiphy_write(struct mii_device *mdev, int addr,
> +			     int reg, int value)
> +{
> +	struct eth_device *edev = mdev->edev;
> +	struct gfar_private *priv = (struct gfar_private *)edev->priv;
> +	unsigned short val = value;
> +
> +	if (NULL == priv) {
> +		printf("Can't write PHY at address %d\n", addr);
> +		return -1;
> +	}
> +
> +	gfar_local_mdio_write(priv->phyregs, addr, reg, val);
> +
> +	return 0;
> +}
> +
> +/*
> + * Initialize device structure. Returns success if
> + * initialization succeeded.
> + */
> +static int gfar_probe(struct device_d *dev)
> +{
> +	struct gfar_info_struct *gfar_info =
> +		(struct gfar_info_struct *)dev->platform_data;
> +	struct eth_device *edev;
> +	struct gfar_private *priv;
> +	size_t size;
> +	char *p;
> +
> +	edev = (struct eth_device *)xzalloc(sizeof(struct eth_device) +
> +					    sizeof(struct gfar_private));
> +
> +	if (NULL == edev)
> +		return -ENODEV;
> +
> +	priv = (struct gfar_private *)(edev + 1);

You should embed a struct eth_device in struct gfar_private instead,
it's cleaner.

> +
> +	priv->regs = dev_request_mem_region(dev, 0);
> +	priv->phyregs = dev_request_mem_region(dev, 1);
> +	priv->phyregs_sgmii = dev_request_mem_region(dev, 2);
> +
> +	priv->phyaddr = gfar_info->phyaddr;
> +	priv->flags = gfar_info->flags;
> +	priv->tbicr = gfar_info->tbicr;
> +	priv->tbiana = gfar_info->tbiana;
> +
> +	/* Allocate descriptors. 64-byte aligned. */
> +	size = (TX_BUF_CNT * (sizeof(struct txbd8) +
> +		(RX_BUF_CNT * sizeof(struct rxbd8)))) + BUF_ALIGN;
> +	p = (char *)xzalloc(size);
> +	p += BUF_ALIGN;
> +	p = (char *)((ulong)p & (~(BUF_ALIGN - 1)));

Use memalign instead.

> +
> +	priv->txbd = (struct txbd8 *)p;
> +	priv->rxbd = (struct rxbd8 *)(p +
> +			(TX_BUF_CNT * sizeof(struct txbd8)));
> +
> +	edev->priv = priv;
> +	edev->init = gfar_init;
> +	edev->open = gfar_open;
> +	edev->halt = gfar_halt;
> +	edev->send = gfar_send;
> +	edev->recv = gfar_recv;
> +	edev->get_ethaddr = gfar_get_ethaddr;
> +	edev->set_ethaddr = gfar_set_ethaddr;
> +	edev->parent = dev;
> +
> +	setbits_be32(priv->regs + GFAR_MACCFG1_OFFSET, GFAR_MACCFG1_SOFT_RESET);
> +	udelay(2);
> +	clrbits_be32(priv->regs + GFAR_MACCFG1_OFFSET, GFAR_MACCFG1_SOFT_RESET);
> +
> +	priv->miidev.read = gfar_miiphy_read;
> +	priv->miidev.write = gfar_miiphy_write;
> +	priv->miidev.address = priv->phyaddr;
> +	priv->miidev.flags = 0;
> +	priv->miidev.edev = edev;
> +	priv->miidev.parent = dev;
> +
> +	init_phy(edev);
> +
> +	mii_register(&priv->miidev);
> +
> +	return eth_register(edev);
> +}
> +
> +static struct driver_d gfar_eth_driver = {
> +	.name  = "gfar",
> +	.probe = gfar_probe,
> +};
> +
> +static int gfar_eth_init(void)
> +{
> +	register_driver(&gfar_eth_driver);
> +	return 0;
> +}
> +
> +device_initcall(gfar_eth_init);
> diff --git a/drivers/net/gianfar.h b/drivers/net/gianfar.h
> new file mode 100644
> index 0000000..9edbd12
> --- /dev/null
> +++ b/drivers/net/gianfar.h
> @@ -0,0 +1,288 @@
> +/*
> + *  gianfar.h
> + *
> + *  Driver for the Motorola Triple Speed Ethernet Controller
> + *
> + *  This software may be used and distributed according to the
> + *  terms of the GNU Public License, Version 2, incorporated
> + *  herein by reference.
> + *
> + * Copyright 2012 GE Intelligent Platforms, Inc.
> + * Copyright 2004, 2007, 2009  Freescale Semiconductor, Inc.
> + * (C) Copyright 2003, Motorola, Inc.
> + * based on tsec.h by Xianghua Xiao and Andy Fleming 2003-2009
> + */
> +
> +#ifndef __GIANFAR_H
> +#define __GIANFAR_H
> +
> +#include <net.h>
> +#include <config.h>
> +#include <mach/gianfar.h>
> +
> +#define MAC_ADDR_LEN 6
> +
> +#define TOUT_LOOP	1000000
> +
> +#define PHY_AUTONEGOTIATE_TIMEOUT	5000 /* in ms */

Unused define

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
