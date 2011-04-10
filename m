Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8m34-0007we-KM
	for barebox@lists.infradead.org; Sun, 10 Apr 2011 04:14:56 +0000
Date: Sun, 10 Apr 2011 06:06:49 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110410040649.GA8392@game.jcrosoft.org>
References: <1302358087-9756-1-git-send-email-franck.jullien@gmail.com>
	<1302358087-9756-2-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1302358087-9756-2-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH] [v2] Nios2: Add Altera TSE MAC driver
To: franck.jullien@gmail.com
Cc: barebox@lists.infradead.org

On 16:08 Sat 09 Apr     , franck.jullien@gmail.com wrote:
> From: Franck JULLIEN <franck.jullien@gmail.com>
> 
> Add Altera Triple Speed Ethernet driver
> 
> Signed-off-by: Franck JULLIEN <franck.jullien@gmail.com>
> ---
>  drivers/net/Kconfig      |   16 ++
>  drivers/net/Makefile     |    5 +-
>  drivers/net/altera_tse.c |  620 ++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/net/altera_tse.h |  313 +++++++++++++++++++++++
>  4 files changed, 952 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/net/altera_tse.c
>  create mode 100644 drivers/net/altera_tse.h
> 
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index 6479417..19e35db 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -84,6 +84,22 @@ config DRIVER_NET_TAP
>  	bool "tap Ethernet driver"
>  	depends on LINUX
>  
> +config DRIVER_NET_TSE
> +	depends on NIOS2
> +	bool "Altera TSE ethernet driver"
> +	select MIIDEV
> +	help
> +	  This option enables support for the Altera TSE MAC.
> +
> +config TSE_USE_DEDICATED_DESC_MEM
> +	depends on DRIVER_NET_TSE
> +	bool "Altera TSE uses dedicated descriptor memory"
> +	help
> +	  This option tells the TSE driver to use an onchip memory
> +	  to store SGDMA descriptors. Descriptor memory is not
> +	  reserved with a malloc but directly mapped to the memory
> +	  address (defined in config.h)
> +
>  source "drivers/net/usb/Kconfig"
>  
>  endmenu
> diff --git a/drivers/net/Makefile b/drivers/net/Makefile
> index 96d3d32..f02618b 100644
> --- a/drivers/net/Makefile
> +++ b/drivers/net/Makefile
> @@ -1,7 +1,7 @@
> -obj-$(CONFIG_DRIVER_NET_CS8900)	        += cs8900.o
> +obj-$(CONFIG_DRIVER_NET_CS8900)		+= cs8900.o
>  obj-$(CONFIG_DRIVER_NET_SMC911X)	+= smc911x.o
>  obj-$(CONFIG_DRIVER_NET_SMC91111)	+= smc91111.o
> -obj-$(CONFIG_DRIVER_NET_DM9000)	        += dm9000.o
> +obj-$(CONFIG_DRIVER_NET_DM9000)		+= dm9000.o
why do you touch this two?

if you want to fix the whitespace please do it in an other commit
>  obj-$(CONFIG_DRIVER_NET_NETX)		+= netx_eth.o
>  obj-$(CONFIG_DRIVER_NET_AT91_ETHER)	+= at91_ether.o
>  obj-$(CONFIG_DRIVER_NET_MPC5200)	+= fec_mpc5200.o
> @@ -11,3 +11,4 @@ obj-$(CONFIG_DRIVER_NET_MACB)		+= macb.o
>  obj-$(CONFIG_DRIVER_NET_TAP)		+= tap.o
>  obj-$(CONFIG_MIIDEV)			+= miidev.o
>  obj-$(CONFIG_NET_USB)			+= usb/
> +obj-$(CONFIG_DRIVER_NET_TSE)		+= altera_tse.o
> diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
> new file mode 100644
> index 0000000..2687377
> --- /dev/null
> +
> +static int tse_get_ethaddr(struct eth_device *edev, unsigned char *m)
> +{
> +	/* There is no eeprom */
so return the content of the register no?
> +	return -1;
> +}
> +

> +static int tse_eth_send(struct eth_device *edev, void *packet, int length)
> +{
> +
> +	struct altera_tse_priv *priv = edev->priv;
> +	struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx;
> +	struct alt_sgdma_descriptor *tx_desc = (struct alt_sgdma_descriptor *)priv->tx_desc;
> +
> +	struct alt_sgdma_descriptor *tx_desc_cur = (struct alt_sgdma_descriptor *)&tx_desc[0];
> +
> +	flush_dcache_range((uint32_t)packet, (uint32_t)packet + length);
> +	alt_sgdma_construct_descriptor_burst(
> +		(struct alt_sgdma_descriptor *)&tx_desc[0],
> +		(struct alt_sgdma_descriptor *)&tx_desc[1],
> +		(uint32_t *)packet,  /* read addr */
> +		(uint32_t *)0,       /*           */
> +		length,              /* length or EOP ,will change for each tx */
> +		0x1,                 /* gen eop */
> +		0x0,                 /* read fixed */
> +		0x1,                 /* write fixed or sop */
> +		0x0,                 /* read burst */
> +		0x0,                 /* write burst */
> +		0x0                  /* channel */
please use tab for indent I see other in the patch please check
> +		);
> +
> +	alt_sgdma_do_sync_transfer(tx_sgdma, tx_desc_cur);
> +
> +	return 0;;
> +}
> +
> +static void tse_eth_halt(struct eth_device *edev)
> +{
> +	struct altera_tse_priv *priv = edev->priv;
> +	struct alt_sgdma_registers *rx_sgdma = priv->sgdma_rx;
> +	struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx;
> +
> +	writel(0, &rx_sgdma->control); /* Stop the controller and reset settings */
> +	writel(0, &tx_sgdma->control); /* Stop the controller and reset settings */
> +}
> +
> +static int tse_eth_rx(struct eth_device *edev)
> +{
> +	uint16_t packet_length = 0;
> +
> +	struct altera_tse_priv *priv = edev->priv;
> +	struct alt_sgdma_descriptor *rx_desc = (struct alt_sgdma_descriptor *)priv->rx_desc;
> +	struct alt_sgdma_descriptor *rx_desc_cur = &rx_desc[0];
> +	struct alt_sgdma_registers *rx_sgdma = priv->sgdma_rx;
> +
> +	if (rx_desc_cur->descriptor_status &
> +		ALT_SGDMA_DESCRIPTOR_STATUS_TERMINATED_BY_EOP_MSK) {
> +
> +		packet_length = rx_desc->actual_bytes_transferred;
> +		net_receive(NetRxPackets[0], packet_length);
> +
> +		/* Clear Run */
> +		rx_sgdma->control = (rx_sgdma->control & (~ALT_SGDMA_CONTROL_RUN_MSK));
> +
> +		/* start descriptor again */
> +		flush_dcache_range((uint32_t)(NetRxPackets[0]), (uint32_t)(NetRxPackets[0]) + PKTSIZE);
> +		alt_sgdma_construct_descriptor_burst(
> +			(struct alt_sgdma_descriptor *)&rx_desc[0],
> +			(struct alt_sgdma_descriptor *)&rx_desc[1],
> +			(uint32_t)0x0,               /* read addr */
> +			(uint32_t *)NetRxPackets[0], /*           */
> +			0x0,                         /* length or EOP */
> +			0x0,                         /* gen eop */
> +			0x0,                         /* read fixed */
> +			0x0,                         /* write fixed or sop */
> +			0x0,                         /* read burst */
> +			0x0,                         /* write burst */
> +			0x0                          /* channel */
please use tab for indent
> +		);
> +
> +		/* setup the sgdma */
> +		alt_sgdma_do_async_transfer(priv->sgdma_rx, &rx_desc[0]);
> +	}
> +
> +	return 0;
> +}
> +
> +static char *get_phy_name(uint32_t phy_ID)
> +{
> +	uint8_t i = 0;
> +
> +	while (phy_name_table[i].phy_ID != 0) {
> +		if (phy_name_table[i].phy_ID == phy_ID)
> +			return phy_name_table[i].name;
> +		i++;
> +	}
> +
> +	return "unknown";
> +}
why this?
> +
> +static int check_phy_address(struct eth_device *edev)
> +{
> +	struct altera_tse_priv *priv = edev->priv;
> +	uint8_t mii_bus_scan = 0;
> +	uint8_t current_mii_address = 1;
> +	uint32_t phy_reg;
> +	uint32_t phy_ID;
> +
> +	if ((priv->miidev)->address < 0)
> +		mii_bus_scan = 1;
> +	else
> +		current_mii_address = (priv->miidev)->address;
> +
> +	do {
> +		/* Grab the bits from PHYIR1, and put them in the upper half */
> +		phy_reg = tse_phy_read(priv->miidev, current_mii_address, MII_PHYSID1);
> +		phy_ID = (phy_reg & 0xffff) << 16;
> +
> +		/* Grab the bits from PHYIR2, and put them in the lower half */
> +		phy_reg = tse_phy_read(priv->miidev, current_mii_address, MII_PHYSID2);
> +		phy_ID |= (phy_reg & 0xffff);
> +
> +		if (phy_ID != 0xffffffff) {
> +			printf("PHY (%s) found at address %d\n", get_phy_name(phy_ID), current_mii_address);
> +			(priv->miidev)->address = current_mii_address;
> +			return 0;
> +		}
> +
> +		current_mii_address++;
> +
> +	} while (current_mii_address < 32 && mii_bus_scan);
> +
> +	return -1;
> +}
> +
why this?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
