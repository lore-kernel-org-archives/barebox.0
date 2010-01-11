Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NUHGT-00013Q-TK
	for barebox@lists.infradead.org; Mon, 11 Jan 2010 10:12:51 +0000
Date: Mon, 11 Jan 2010 11:12:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100111101243.GS6923@pengutronix.de>
References: <20100109232852.GD14051@darwin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100109232852.GD14051@darwin>
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
Subject: Re: [PATCH 2/5] Add EP93xx ethernet driver
To: Matthias Kaehlcke <matthias@kaehlcke.net>
Cc: barebox@lists.infradead.org

On Sun, Jan 10, 2010 at 12:28:52AM +0100, Matthias Kaehlcke wrote:
> Added ethernet driver for EP93xx SoCs
> 
> Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>
> ---
>  drivers/net/Kconfig  |    5 +
>  drivers/net/Makefile |    1 +
>  drivers/net/ep93xx.c |  686 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/net/ep93xx.h |  155 ++++++++++++
>  include/common.h     |    1 +
>  5 files changed, 848 insertions(+), 0 deletions(-)
>  create mode 100644 drivers/net/ep93xx.c
>  create mode 100644 drivers/net/ep93xx.h
> 
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index ed7656e..0955562 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -64,6 +64,11 @@ config DRIVER_NET_FEC_IMX
>  	depends on ARCH_HAS_FEC_IMX
>  	select MIIPHY
>  
> +config DRIVER_NET_EP93XX
> +	bool "EP93xx Ethernet driver"
> +	depends on ARCH_EP93XX
> +	select MIIPHY
> +
>  config DRIVER_NET_MACB
>  	bool "macb Ethernet driver"
>  	depends on ARCH_AT91
> diff --git a/drivers/net/Makefile b/drivers/net/Makefile
> index 6751920..1b6f104 100644
> --- a/drivers/net/Makefile
> +++ b/drivers/net/Makefile
> @@ -6,6 +6,7 @@ obj-$(CONFIG_DRIVER_NET_NETX)		+= netx_eth.o
>  obj-$(CONFIG_DRIVER_NET_AT91_ETHER)	+= at91_ether.o
>  obj-$(CONFIG_DRIVER_NET_MPC5200)	+= fec_mpc5200.o
>  obj-$(CONFIG_DRIVER_NET_FEC_IMX)	+= fec_imx.o
> +obj-$(CONFIG_DRIVER_NET_EP93XX)		+= ep93xx.o
>  obj-$(CONFIG_DRIVER_NET_MACB)		+= macb.o
>  obj-$(CONFIG_DRIVER_NET_TAP)		+= tap.o
>  obj-$(CONFIG_MIIPHY)			+= miiphy.o
> diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
> new file mode 100644
> index 0000000..63a0d1b
> --- /dev/null
> +++ b/drivers/net/ep93xx.c

[snip]

> +
> +/**
> + * Copy a frame of data from the MAC into the protocol layer for further
> + * processing.
> + *
> + * TODO: Enhance this to deal with as many packets as are available at
> + * the MAC at one time? */

Probably not. I do not know what the network stack does when NetReceive
is called multiple times. Even if it does handle it I do not expect any
performance gains.

> +static int ep93xx_eth_rcv_packet(struct eth_device *edev)
> +{
> +	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
> +	struct mac_regs *regs = ep93xx_get_regs(edev);
> +	int ret = ETH_STATUS_FAILURE;
> +
> +	pr_debug("+ep93xx_eth_rcv_packet\n");
> +
> +	if (RX_STATUS_RFP(priv->rx_sq.current)) {
> +		if (RX_STATUS_RWE(priv->rx_sq.current)) {
> +			/*
> +			 * We have a good frame. Extract the frame's length
> +			 * from the current rx_status_queue entry, and copy
> +			 * the frame's data into NetRxPackets[] of the
> +			 * protocol stack. We track the total number of
> +			 * bytes in the frame (nbytes_frame) which will be
> +			 * used when we pass the data off to the protocol
> +			 * layer via NetReceive().
> +			 */
> +			NetReceive((uchar *)priv->rx_dq.current->word1,
> +				RX_STATUS_FRAME_LEN(priv->rx_sq.current));
> +			pr_debug("reporting %d bytes...\n",
> +				RX_STATUS_FRAME_LEN(priv->rx_sq.current));
> +
> +			ret = ETH_STATUS_SUCCESS;
> +
> +		} else {
> +			/* Do we have an erroneous packet? */
> +			pr_err("packet rx error, status %08X %08X\n",
> +				priv->rx_sq.current->word1,
> +				priv->rx_sq.current->word2);
> +			dump_rx_descriptor_queue();
> +			dump_rx_status_queue();
> +		}
> +
> +		/*
> +		 * Clear the associated status queue entry, and
> +		 * increment our current pointers to the next RX
> +		 * descriptor and status queue entries (making sure
> +		 * we wrap properly).
> +		 */
> +		memset((void *)priv->rx_sq.current, 0,
> +			sizeof(struct rx_status));
> +
> +		priv->rx_sq.current++;
> +		if (priv->rx_sq.current >= priv->rx_sq.end)
> +			priv->rx_sq.current = priv->rx_sq.base;
> +
> +		priv->rx_dq.current++;
> +		if (priv->rx_dq.current >= priv->rx_dq.end)
> +			priv->rx_dq.current = priv->rx_dq.base;
> +
> +		/*
> +		 * Finally, return the RX descriptor and status entries
> +		 * back to the MAC engine, and loop again, checking for
> +		 * more descriptors to process.
> +		 */
> +		writel(1, &regs->rxdqenq);
> +		writel(1, &regs->rxstsqenq);
> +	} else {
> +		ret = ETH_STATUS_SUCCESS;
> +	}
> +
> +	pr_debug("-ep93xx_eth_rcv_packet %d\n", ret);
> +
> +	return ret;
> +}
> +
> +/**
> + * Send a block of data via ethernet.
> + *
> + * TODO: Enhance this to deal with as much data as are available at one time? */

You are only given one packet, so you can't send more here.

> +static int ep93xx_eth_send_packet(struct eth_device *edev,
> +				void *packet, int length)
> +{
> +	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
> +	struct mac_regs *regs = ep93xx_get_regs(edev);
> +	int ret = ETH_STATUS_FAILURE;
> +
> +	pr_debug("+ep93xx_eth_send_packet\n");
> +
> +	/*
> +	 * Initialize the TX descriptor queue with the new packet's info.
> +	 * Clear the associated status queue entry. Enqueue the packet
> +	 * to the MAC for transmission.
> +	 */
> +
> +	/* set buffer address */
> +	priv->tx_dq.current->word1 = (uint32_t)packet;
> +
> +	/* set buffer length and EOF bit */
> +	priv->tx_dq.current->word2 = length | TX_DESC_EOF;
> +
> +	/* clear tx status */
> +	priv->tx_sq.current->word1 = 0;
> +
> +	/* enqueue the TX descriptor */
> +	writel(1, &regs->txdqenq);
> +
> +	/* wait for the frame to become processed */
> +	while (!TX_STATUS_TXFP(priv->tx_sq.current))
> +		; /* noop */
> +
> +	if (!TX_STATUS_TXWE(priv->tx_sq.current)) {
> +		pr_err("packet tx error, status %08X\n",
> +			priv->tx_sq.current->word1);
> +		dump_tx_descriptor_queue();
> +		dump_tx_status_queue();
> +
> +		/* TODO: Add better error handling? */
> +		goto eth_send_failed_0;
> +	}
> +
> +	ret = ETH_STATUS_SUCCESS;
> +	/* Fall through */
> +
> +eth_send_failed_0:
> +	pr_debug("-ep93xx_eth_send_packet %d\n", ret);
> +	return ret;
> +}
> +
> +/* -----------------------------------------------------------------------------
> + * EP93xx ethernet MII functionality.
> + */
> +
> +/**
> + * Maximum MII address we support
> + */
> +#define MII_ADDRESS_MAX			(31)
> +
> +/**
> + * Maximum MII register address we support
> + */
> +#define MII_REGISTER_MAX		(31)
> +
> +/**
> + * Ethernet MII interface return values for public functions.
> + */
> +enum mii_status {
> +	MII_STATUS_SUCCESS = 0,
> +	MII_STATUS_FAILURE = 1,
> +};
> +
> +/**
> + * Read a 16-bit value from an MII register.
> + */
> +static int ep93xx_phy_read(struct miiphy_device *mdev, uint8_t phy_addr,
> +			uint8_t phy_reg, uint16_t *value)
> +{
> +	struct mac_regs *regs = ep93xx_get_regs(mdev->edev);
> +	int ret = MII_STATUS_FAILURE;
> +	uint32_t self_ctl;
> +
> +	pr_debug("+ep93xx_phy_read\n");
> +
> +	/*
> +	 * Save the current SelfCTL register value.  Set MAC to suppress
> +	 * preamble bits.  Wait for any previous MII command to complete
> +	 * before issuing the new command.
> +	 */
> +	self_ctl = readl(&regs->selfctl);
> +#if defined(CONFIG_MII_SUPPRESS_PREAMBLE) /* TODO */
> +	writel(self_ctl & ~(1 << 8), &regs->selfctl);
> +#endif	/* defined(CONFIG_MII_SUPPRESS_PREAMBLE) */
> +
> +	while (readl(&regs->miists) & MIISTS_BUSY)
> +		; /* noop */
> +
> +	/*
> +	 * Issue the MII 'read' command.  Wait for the command to complete.
> +	 * Read the MII data value.
> +	 */
> +	writel(MIICMD_OPCODE_READ | ((uint32_t)phy_addr << 5) |
> +		(uint32_t)phy_reg, &regs->miicmd);
> +	while (readl(&regs->miists) & MIISTS_BUSY)
> +		; /* noop */
> +
> +	*value = (unsigned short)readl(&regs->miidata);
> +
> +	/* Restore the saved SelfCTL value and return. */
> +	writel(self_ctl, &regs->selfctl);
> +
> +	ret = MII_STATUS_SUCCESS;
> +	/* Fall through */
> +
> +	pr_debug("-ep93xx_phy_read\n");
> +	return ret;

You can return 0 unconditionally here, the function never returns an
error. Please remove the MII_STATUS_* and ETH_STATUS_* macros. If we
ever decide add timeouts to the while loops -ETIMEDOUT would be the
correct return value, not 1.

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
