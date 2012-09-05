Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo3.mail-out.ovh.net ([46.105.57.200]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9JwN-0003C2-61
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 18:03:06 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id A0783FF8FB3
 for <barebox@lists.infradead.org>; Wed,  5 Sep 2012 20:10:36 +0200 (CEST)
Date: Wed, 5 Sep 2012 20:03:20 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120905180320.GA4761@game.jcrosoft.org>
References: <1346860337-777-1-git-send-email-jlu@pengutronix.de>
 <1346860337-777-7-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346860337-777-7-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 6/8] drivers/net: add driver for the EMAC device found
 in some TI SoCs
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 17:52 Wed 05 Sep     , Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
Again NACK

drop the struct XXXX on hte reg

Best Regards,
J.
> ---
>  arch/arm/mach-omap/include/mach/emac_defs.h |   53 +++
>  drivers/net/Kconfig                         |    5 +
>  drivers/net/Makefile                        |    1 +
>  drivers/net/davinci_emac.c                  |  615 +++++++++++++++++++++++++++
>  drivers/net/davinci_emac.h                  |  318 ++++++++++++++
>  5 files changed, 992 insertions(+)
>  create mode 100644 arch/arm/mach-omap/include/mach/emac_defs.h
>  create mode 100644 drivers/net/davinci_emac.c
>  create mode 100644 drivers/net/davinci_emac.h
> 
> diff --git a/arch/arm/mach-omap/include/mach/emac_defs.h b/arch/arm/mach-omap/include/mach/emac_defs.h
> new file mode 100644
> index 0000000..ef930fc
> --- /dev/null
> +++ b/arch/arm/mach-omap/include/mach/emac_defs.h
> @@ -0,0 +1,53 @@
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
> +#ifndef _AM3517_EMAC_H_
> +#define _AM3517_EMAC_H_
> +
> +#define EMAC_BASE_ADDR                 0x5C010000
> +#define EMAC_WRAPPER_BASE_ADDR         0x5C000000
> +#define EMAC_WRAPPER_RAM_ADDR          0x5C020000
> +#define EMAC_MDIO_BASE_ADDR            0x5C030000
> +#define EMAC_HW_RAM_ADDR               0x01E20000
> +
> +#define EMAC_MDIO_BUS_FREQ             166000000       /* 166 MHZ check */
> +#define EMAC_MDIO_CLOCK_FREQ           1000000         /* 2.0 MHz */
> +
> +/* SOFTRESET macro definition interferes with emac_regs structure definition */
> +#undef SOFTRESET
> +
> +#define DAVINCI_EMAC_VERSION2
> +
> +#endif  /* _AM3517_EMAC_H_ */
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index dac1eb9..bfde54b 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -43,6 +43,11 @@ config DRIVER_NET_SMC91111
>  	  This option enables support for the SMSC LAN91C111
>  	  ethernet chip.
>  
> +config DRIVER_NET_DAVINCI_EMAC
> +	bool "TI Davinci/OMAP EMAC ethernet driver"
> +	depends on ARCH_DAVINCI || ARCH_OMAP3
> +	select MIIDEV
> +
>  config DRIVER_NET_DM9K
>  	bool "Davicom dm9k[E|A|B] ethernet driver"
>  	depends on HAS_DM9000
> diff --git a/drivers/net/Makefile b/drivers/net/Makefile
> index 951a220..52611f8 100644
> --- a/drivers/net/Makefile
> +++ b/drivers/net/Makefile
> @@ -1,6 +1,7 @@
>  obj-$(CONFIG_DRIVER_NET_CS8900)		+= cs8900.o
>  obj-$(CONFIG_DRIVER_NET_SMC911X)	+= smc911x.o
>  obj-$(CONFIG_DRIVER_NET_SMC91111)	+= smc91111.o
> +obj-$(CONFIG_DRIVER_NET_DAVINCI_EMAC)	+= davinci_emac.o
>  obj-$(CONFIG_DRIVER_NET_DM9K)		+= dm9k.o
>  obj-$(CONFIG_DRIVER_NET_NETX)		+= netx_eth.o
>  obj-$(CONFIG_DRIVER_NET_AT91_ETHER)	+= at91_ether.o
> diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
> new file mode 100644
> index 0000000..3615f96
> --- /dev/null
> +++ b/drivers/net/davinci_emac.c
> @@ -0,0 +1,615 @@
> +/*
> + * Copyright (C) 2012 Jan Luebbe <j.luebbe@pengutronix.de>
> + *
> + * Ethernet driver for TI TMS320DM644x (DaVinci) chips.
> + *
> + * Copyright (C) 2007 Sergey Kubushyn <ksi@koi8.net>
> + *
> + * Parts shamelessly stolen from TI's dm644x_emac.c. Original copyright
> + * follows:
> + *
> + * ----------------------------------------------------------------------------
> + *
> + * dm644x_emac.c
> + *
> + * TI DaVinci (DM644X) EMAC peripheral driver source for DV-EVM
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
> + * ver. 1.0: Sep 2005, Anant Gole - Created EMAC version for uBoot.
> + * ver  1.1: Nov 2005, Anant Gole - Extended the RX logic for multiple descriptors
> + *
> + */
> +
> +#include <common.h>
> +#include <io.h>
> +#include <clock.h>
> +#include <net.h>
> +#include <miidev.h>
> +#include <malloc.h>
> +#include <init.h>
> +#include <asm/mmu.h>
> +#include <asm/system.h>
> +#include <mach/emac_defs.h>
> +#include "davinci_emac.h"
> +
> +struct davinci_emac_priv {
> +	struct device_d *dev;
> +	struct eth_device edev;
> +	struct mii_device miidev;
> +
> +	/* EMAC Addresses */
> +	struct emac_regs *adap_emac; /* = EMAC_BASE_ADDR */
> +	struct ewrap_regs *adap_ewrap; /* = EMAC_WRAPPER_BASE_ADDR */
> +	struct mdio_regs *adap_mdio; /* = EMAC_MDIO_BASE_ADDR */
> +
> +	/* EMAC descriptors */
> +	struct emac_desc *emac_rx_desc; /* = EMAC_WRAPPER_RAM_ADDR + EMAC_RX_DESC_BASE */
> +	struct emac_desc *emac_tx_desc; /* = EMAC_WRAPPER_RAM_ADDR + EMAC_TX_DESC_BASE */
> +	struct emac_desc *emac_rx_active_head; /* = 0 */
> +	struct emac_desc *emac_rx_active_tail; /* = 0 */
> +	int emac_rx_queue_active; /* = 0 */
> +
> +	/* Receive packet buffers */
> +	unsigned char *emac_rx_buffers; /* [EMAC_MAX_RX_BUFFERS * (EMAC_MAX_ETHERNET_PKT_SIZE + EMAC_PKT_ALIGN)] */
> +
> +	/* PHY address for a discovered PHY (0xff - not found) */
> +	uint8_t active_phy_addr; /* = 0xff */
> +
> +	/* mac_addr[0] goes out on the wire first */
> +	uint8_t mac_addr[6];
> +};
> +
> +#ifdef EMAC_HW_RAM_ADDR
> +static inline uint32_t BD_TO_HW(struct emac_desc *x)
> +{
> +	if (x == 0)
> +		return 0;
> +
> +	return (uint32_t)(x) - EMAC_WRAPPER_RAM_ADDR + EMAC_HW_RAM_ADDR;
> +}
> +
> +static inline struct emac_desc* HW_TO_BD(uint32_t x)
> +{
> +	if (x == 0)
> +		return 0;
> +
> +	return (struct emac_desc*)(x - EMAC_HW_RAM_ADDR + EMAC_WRAPPER_RAM_ADDR);
> +}
> +#else
> +#define BD_TO_HW(x)     (x)
> +#define HW_TO_BD(x)     (x)
> +#endif
> +
> +static void davinci_eth_mdio_enable(struct davinci_emac_priv *priv)
> +{
> +	uint32_t	clkdiv;
> +
> +	clkdiv = (EMAC_MDIO_BUS_FREQ / EMAC_MDIO_CLOCK_FREQ) - 1;
> +
> +	dev_dbg(priv->dev, "mdio_enable + 0x%08x\n", priv->adap_mdio->CONTROL);
> +	writel((clkdiv & 0xff) |
> +		MDIO_CONTROL_ENABLE |
> +		MDIO_CONTROL_FAULT |
> +		MDIO_CONTROL_FAULT_ENABLE,
> +		&priv->adap_mdio->CONTROL);
> +	dev_dbg(priv->dev, "mdio_enable - 0x%08x\n", priv->adap_mdio->CONTROL);
> +
> +	while (readl(&priv->adap_mdio->CONTROL) & MDIO_CONTROL_IDLE);
> +}
> +
> +/* Read a PHY register via MDIO inteface. Returns 1 on success, 0 otherwise */
> +static int davinci_eth_phy_read(struct davinci_emac_priv *priv, uint8_t phy_addr, uint8_t reg_num, uint16_t *data)
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
> +static int davinci_eth_phy_write(struct davinci_emac_priv *priv, uint8_t phy_addr, uint8_t reg_num, uint16_t data)
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
> +/*
> + * This function must be called before emac_open() if you want to override
> + * the default mac address.
> + */
> +static int davinci_emac_set_ethaddr(struct eth_device *edev, unsigned char *addr)
> +{
> +	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)edev->priv;
> +	int i;
> +
> +	for (i = 0; i < sizeof(priv->mac_addr); i++)
> +		priv->mac_addr[i] = addr[i];
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
> +	uint32_t	clkdiv, cnt;
> +	struct emac_desc	*rx_desc;
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
> +	mac_hi = (priv->mac_addr[3] << 24) |
> +		 (priv->mac_addr[2] << 16) |
> +		 (priv->mac_addr[1] << 8)  |
> +		 (priv->mac_addr[0]);
> +	mac_lo = (priv->mac_addr[5] << 8) |
> +		 (priv->mac_addr[4]);
> +
> +	writel(mac_hi, &priv->adap_emac->MACADDRHI);
> +	writel(mac_lo | EMAC_MAC_ADDR_IS_VALID | EMAC_MAC_ADDR_MATCH,
> +	       &priv->adap_emac->MACADDRLO);
> +
> +	/* Set source MAC address - REQUIRED */
> +	writel(mac_hi, &priv->adap_emac->MACSRCADDRHI);
> +	writel(mac_lo, &priv->adap_emac->MACSRCADDRLO);
> +
> +	/* Set DMA head and completion pointers to 0 */
> +	for(cnt = 0; cnt < 8; cnt++) {
> +		writel(0, (void *)&priv->adap_emac->TX0HDP + 4 * cnt);
> +		writel(0, (void *)&priv->adap_emac->RX0HDP + 4 * cnt);
> +		writel(0, (void *)&priv->adap_emac->TX0CP + 4 * cnt);
> +		writel(0, (void *)&priv->adap_emac->RX0CP + 4 * cnt);
> +	}
> +
> +	/* Clear Statistics (do this before setting MacControl register) */
> +	for(cnt = 0; cnt < EMAC_NUM_STATS; cnt++)
> +		writel(0, (void *)&priv->adap_emac->RXGOODFRAMES + 4 * cnt);
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
> +	uint32_t dly = 0xff;
> +	uint32_t cnt;
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
> +	uint64_t start;
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
> +	writel((uint8_t *) packet, &priv->emac_tx_desc->buffer);
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
> +	while (1) {
> +		if (readl(&priv->adap_emac->TXINTSTATRAW) & 0x01) {
> +			/* Acknowledge the TX descriptor */
> +			writel(BD_TO_HW(priv->emac_tx_desc), &priv->adap_emac->TX0CP);
> +			ret_status = length;
> +			break;
> +		}
> +		if (is_timeout(start, 100 * MSECOND)) {
> +			ret_status = -ETIMEDOUT;
> +			break;
> +		}
> +	}
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
> +	struct emac_desc *rx_curr_desc;
> +	struct emac_desc *curr_desc;
> +	struct emac_desc *tail_desc;
> +	unsigned char *pkt;
> +	int status, len, ret = -1;
> +
> +	dev_dbg(priv->dev, "+ emac_recv\n");
> +
> +	rx_curr_desc = priv->emac_rx_active_head;
> +	status = readl(&rx_curr_desc->pkt_flag_len);
> +	if (status & EMAC_CPPI_OWNERSHIP_BIT) {
> +		ret = 0;
> +		goto out;
> +	}
> +
> +	if (status & EMAC_CPPI_RX_ERROR_FRAME) {
> +		/* Error in packet - discard it and requeue desc */
> +		dev_warn(priv->dev, "WARN: emac_rcv_pkt: Error in packet\n");
> +	} else {
> +		pkt = (unsigned char *)readl(&rx_curr_desc->buffer);
> +		len = readl(&rx_curr_desc->buff_off_len) & 0xffff;
> +		dev_dbg(priv->dev, "| emac_recv got packet (length %i)\n", len);
> +		dma_inv_range((ulong)pkt,
> +				(ulong)rx_curr_desc->buffer + len);
> +		net_receive(pkt, len);
> +		ret = len;
> +	}
> +
> +	/* Ack received packet descriptor */
> +	writel(BD_TO_HW(rx_curr_desc), &priv->adap_emac->RX0CP);
> +	curr_desc = rx_curr_desc;
> +	priv->emac_rx_active_head = HW_TO_BD(readl(&rx_curr_desc->next));
> +
> +	if (status & EMAC_CPPI_EOQ_BIT) {
> +		if (priv->emac_rx_active_head) {
> +			writel(BD_TO_HW(priv->emac_rx_active_head),
> +				&priv->adap_emac->RX0HDP);
> +		} else {
> +			priv->emac_rx_queue_active = 0;
> +			dev_info(priv->dev, "INFO:emac_rcv_packet: RX Queue not active\n");
> +		}
> +	}
> +
> +	/* Recycle RX descriptor */
> +	writel(EMAC_MAX_ETHERNET_PKT_SIZE, &rx_curr_desc->buff_off_len);
> +	writel(EMAC_CPPI_OWNERSHIP_BIT, &rx_curr_desc->pkt_flag_len);
> +	writel(0, &rx_curr_desc->next);
> +
> +	if (priv->emac_rx_active_head == 0) {
> +		dev_info(priv->dev, "INFO: emac_rcv_pkt: active queue head = 0\n");
> +		priv->emac_rx_active_head = curr_desc;
> +		priv->emac_rx_active_tail = curr_desc;
> +		if (priv->emac_rx_queue_active != 0) {
> +			writel(BD_TO_HW(priv->emac_rx_active_head), &priv->adap_emac->RX0HDP);
> +			dev_info(priv->dev, "INFO: emac_rcv_pkt: active queue head = 0, HDP fired\n");
> +			priv->emac_rx_queue_active = 1;
> +		}
> +	} else {
> +		tail_desc = priv->emac_rx_active_tail;
> +		priv->emac_rx_active_tail = curr_desc;
> +		writel(BD_TO_HW(curr_desc), &tail_desc->next);
> +		status = readl(&tail_desc->pkt_flag_len);
> +		if (status & EMAC_CPPI_EOQ_BIT) {
> +			writel(BD_TO_HW(curr_desc), &priv->adap_emac->RX0HDP);
> +			status &= ~EMAC_CPPI_EOQ_BIT;
> +			writel(status, &tail_desc->pkt_flag_len);
> +		}
> +	}
> +
> +out:
> +	dev_dbg(priv->dev, "- emac_recv\n");
> +
> +	return ret;
> +}
> +
> +static int davinci_emac_probe(struct device_d *dev)
> +{
> +	struct davinci_emac_priv *priv;
> +	uint64_t start;
> +
> +	dev_dbg(dev, "+ emac_probe\n");
> +
> +	priv = xzalloc(sizeof(*priv));
> +	dev->priv = priv;
> +
> +	priv->dev = dev;
> +
> +	priv->adap_emac = (struct emac_regs *)dev_request_mem_region(dev, 0);
> +	priv->adap_ewrap = (struct ewrap_regs *)dev_request_mem_region(dev, 1);
> +	priv->adap_mdio = (struct mdio_regs *)dev_request_mem_region(dev, 2);
> +
> +	/* EMAC descriptors */
> +	priv->emac_rx_desc = (struct emac_desc *)(EMAC_WRAPPER_RAM_ADDR + EMAC_RX_DESC_BASE);
> +	priv->emac_tx_desc = (struct emac_desc *)(EMAC_WRAPPER_RAM_ADDR + EMAC_TX_DESC_BASE);
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
> +	davinci_eth_mdio_enable(priv);
> +
> +	start = get_time_ns();
> +	while (1) {
> +		if (readl(&priv->adap_mdio->ALIVE))
> +			break;
> +		if (is_timeout(start, 256 * MSECOND)) {
> +			dev_err(dev, "No ETH PHY detected!\n");
> +			break;
> +		}
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
> index 0000000..b5d1dfa
> --- /dev/null
> +++ b/drivers/net/davinci_emac.h
> @@ -0,0 +1,318 @@
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
> +struct emac_desc {
> +	uint32_t	next;		/* Pointer to next descriptor in chain */
> +	uint8_t		*buffer;	/* Pointer to data buffer */
> +	uint32_t	buff_off_len;	/* Buffer Offset(MSW) and Length(LSW) */
> +	uint32_t	pkt_flag_len;	/* Packet Flags(MSW) and Length(LSW) */
> +};
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
> +struct emac_regs {
> +	uint32_t	TXIDVER;
> +	uint32_t	TXCONTROL;
> +	uint32_t	TXTEARDOWN;
> +	uint8_t		RSVD0[4];
> +	uint32_t	RXIDVER;
> +	uint32_t	RXCONTROL;
> +	uint32_t	RXTEARDOWN;
> +	uint8_t		RSVD1[100];
> +	uint32_t	TXINTSTATRAW;
> +	uint32_t	TXINTSTATMASKED;
> +	uint32_t	TXINTMASKSET;
> +	uint32_t	TXINTMASKCLEAR;
> +	uint32_t	MACINVECTOR;
> +	uint8_t		RSVD2[12];
> +	uint32_t	RXINTSTATRAW;
> +	uint32_t	RXINTSTATMASKED;
> +	uint32_t	RXINTMASKSET;
> +	uint32_t	RXINTMASKCLEAR;
> +	uint32_t	MACINTSTATRAW;
> +	uint32_t	MACINTSTATMASKED;
> +	uint32_t	MACINTMASKSET;
> +	uint32_t	MACINTMASKCLEAR;
> +	uint8_t		RSVD3[64];
> +	uint32_t	RXMBPENABLE;
> +	uint32_t	RXUNICASTSET;
> +	uint32_t	RXUNICASTCLEAR;
> +	uint32_t	RXMAXLEN;
> +	uint32_t	RXBUFFEROFFSET;
> +	uint32_t	RXFILTERLOWTHRESH;
> +	uint8_t		RSVD4[8];
> +	uint32_t	RX0FLOWTHRESH;
> +	uint32_t	RX1FLOWTHRESH;
> +	uint32_t	RX2FLOWTHRESH;
> +	uint32_t	RX3FLOWTHRESH;
> +	uint32_t	RX4FLOWTHRESH;
> +	uint32_t	RX5FLOWTHRESH;
> +	uint32_t	RX6FLOWTHRESH;
> +	uint32_t	RX7FLOWTHRESH;
> +	uint32_t	RX0FREEBUFFER;
> +	uint32_t	RX1FREEBUFFER;
> +	uint32_t	RX2FREEBUFFER;
> +	uint32_t	RX3FREEBUFFER;
> +	uint32_t	RX4FREEBUFFER;
> +	uint32_t	RX5FREEBUFFER;
> +	uint32_t	RX6FREEBUFFER;
> +	uint32_t	RX7FREEBUFFER;
> +	uint32_t	MACCONTROL;
> +	uint32_t	MACSTATUS;
> +	uint32_t	EMCONTROL;
> +	uint32_t	FIFOCONTROL;
> +	uint32_t	MACCONFIG;
> +	uint32_t	SOFTRESET;
> +	uint8_t		RSVD5[88];
> +	uint32_t	MACSRCADDRLO;
> +	uint32_t	MACSRCADDRHI;
> +	uint32_t	MACHASH1;
> +	uint32_t	MACHASH2;
> +	uint32_t	BOFFTEST;
> +	uint32_t	TPACETEST;
> +	uint32_t	RXPAUSE;
> +	uint32_t	TXPAUSE;
> +	uint8_t		RSVD6[16];
> +	uint32_t	RXGOODFRAMES;
> +	uint32_t	RXBCASTFRAMES;
> +	uint32_t	RXMCASTFRAMES;
> +	uint32_t	RXPAUSEFRAMES;
> +	uint32_t	RXCRCERRORS;
> +	uint32_t	RXALIGNCODEERRORS;
> +	uint32_t	RXOVERSIZED;
> +	uint32_t	RXJABBER;
> +	uint32_t	RXUNDERSIZED;
> +	uint32_t	RXFRAGMENTS;
> +	uint32_t	RXFILTERED;
> +	uint32_t	RXQOSFILTERED;
> +	uint32_t	RXOCTETS;
> +	uint32_t	TXGOODFRAMES;
> +	uint32_t	TXBCASTFRAMES;
> +	uint32_t	TXMCASTFRAMES;
> +	uint32_t	TXPAUSEFRAMES;
> +	uint32_t	TXDEFERRED;
> +	uint32_t	TXCOLLISION;
> +	uint32_t	TXSINGLECOLL;
> +	uint32_t	TXMULTICOLL;
> +	uint32_t	TXEXCESSIVECOLL;
> +	uint32_t	TXLATECOLL;
> +	uint32_t	TXUNDERRUN;
> +	uint32_t	TXCARRIERSENSE;
> +	uint32_t	TXOCTETS;
> +	uint32_t	FRAME64;
> +	uint32_t	FRAME65T127;
> +	uint32_t	FRAME128T255;
> +	uint32_t	FRAME256T511;
> +	uint32_t	FRAME512T1023;
> +	uint32_t	FRAME1024TUP;
> +	uint32_t	NETOCTETS;
> +	uint32_t	RXSOFOVERRUNS;
> +	uint32_t	RXMOFOVERRUNS;
> +	uint32_t	RXDMAOVERRUNS;
> +	uint8_t		RSVD7[624];
> +	uint32_t	MACADDRLO;
> +	uint32_t	MACADDRHI;
> +	uint32_t	MACINDEX;
> +	uint8_t		RSVD8[244];
> +	uint32_t	TX0HDP;
> +	uint32_t	TX1HDP;
> +	uint32_t	TX2HDP;
> +	uint32_t	TX3HDP;
> +	uint32_t	TX4HDP;
> +	uint32_t	TX5HDP;
> +	uint32_t	TX6HDP;
> +	uint32_t	TX7HDP;
> +	uint32_t	RX0HDP;
> +	uint32_t	RX1HDP;
> +	uint32_t	RX2HDP;
> +	uint32_t	RX3HDP;
> +	uint32_t	RX4HDP;
> +	uint32_t	RX5HDP;
> +	uint32_t	RX6HDP;
> +	uint32_t	RX7HDP;
> +	uint32_t	TX0CP;
> +	uint32_t	TX1CP;
> +	uint32_t	TX2CP;
> +	uint32_t	TX3CP;
> +	uint32_t	TX4CP;
> +	uint32_t	TX5CP;
> +	uint32_t	TX6CP;
> +	uint32_t	TX7CP;
> +	uint32_t	RX0CP;
> +	uint32_t	RX1CP;
> +	uint32_t	RX2CP;
> +	uint32_t	RX3CP;
> +	uint32_t	RX4CP;
> +	uint32_t	RX5CP;
> +	uint32_t	RX6CP;
> +	uint32_t	RX7CP;
> +};
> +
> +/* EMAC Wrapper Registers Structure */
> +struct ewrap_regs {
> +#ifdef DAVINCI_EMAC_VERSION2
> +	uint32_t	idver;
> +	uint32_t	softrst;
> +	uint32_t	emctrl;
> +	uint32_t	c0rxthreshen;
> +	uint32_t	c0rxen;
> +	uint32_t	c0txen;
> +	uint32_t	c0miscen;
> +	uint32_t	c1rxthreshen;
> +	uint32_t	c1rxen;
> +	uint32_t	c1txen;
> +	uint32_t	c1miscen;
> +	uint32_t	c2rxthreshen;
> +	uint32_t	c2rxen;
> +	uint32_t	c2txen;
> +	uint32_t	c2miscen;
> +	uint32_t	c0rxthreshstat;
> +	uint32_t	c0rxstat;
> +	uint32_t	c0txstat;
> +	uint32_t	c0miscstat;
> +	uint32_t	c1rxthreshstat;
> +	uint32_t	c1rxstat;
> +	uint32_t	c1txstat;
> +	uint32_t	c1miscstat;
> +	uint32_t	c2rxthreshstat;
> +	uint32_t	c2rxstat;
> +	uint32_t	c2txstat;
> +	uint32_t	c2miscstat;
> +	uint32_t	c0rximax;
> +	uint32_t	c0tximax;
> +	uint32_t	c1rximax;
> +	uint32_t	c1tximax;
> +	uint32_t	c2rximax;
> +	uint32_t	c2tximax;
> +#else
> +	uint8_t		RSVD0[4100];
> +	uint32_t	EWCTL;
> +	uint32_t	EWINTTCNT;
> +#endif
> +};
> +
> +/* EMAC MDIO Registers Structure */
> +struct mdio_regs {
> +	uint32_t	VERSION;
> +	uint32_t	CONTROL;
> +	uint32_t	ALIVE;
> +	uint32_t	LINK;
> +	uint32_t	LINKINTRAW;
> +	uint32_t	LINKINTMASKED;
> +	uint8_t	RSVD0[8];
> +	uint32_t	USERINTRAW;
> +	uint32_t	USERINTMASKED;
> +	uint32_t	USERINTMASKSET;
> +	uint32_t	USERINTMASKCLEAR;
> +	uint8_t	RSVD1[80];
> +	uint32_t	USERACCESS0;
> +	uint32_t	USERPHYSEL0;
> +	uint32_t	USERACCESS1;
> +	uint32_t	USERPHYSEL1;
> +};
> +
> +#endif  /* _DAVINCI_EMAC_H_ */
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
