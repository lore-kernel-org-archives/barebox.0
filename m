Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9fyS-0003jc-Jc
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 17:34:43 +0000
Date: Thu, 6 Sep 2012 19:34:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120906173438.GF26594@pengutronix.de>
References: <1346940621-28732-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346940621-28732-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] drivers/net: add driver for the EMAC device found in
 some TI SoCs
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 06, 2012 at 04:10:21PM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-omap/include/mach/emac_defs.h |   48 +++
>  drivers/net/Kconfig                         |    5 +
>  drivers/net/Makefile                        |    1 +
>  drivers/net/davinci_emac.c                  |  618 +++++++++++++++++++++++++++
>  drivers/net/davinci_emac.h                  |  289 +++++++++++++
>  5 files changed, 961 insertions(+)
>  create mode 100644 arch/arm/mach-omap/include/mach/emac_defs.h
>  create mode 100644 drivers/net/davinci_emac.c
>  create mode 100644 drivers/net/davinci_emac.h
> 
> diff --git a/arch/arm/mach-omap/include/mach/emac_defs.h b/arch/arm/mach-omap/include/mach/emac_defs.h
> new file mode 100644
> index 0000000..568de6a
> --- /dev/null
> +++ b/arch/arm/mach-omap/include/mach/emac_defs.h
> @@ -0,0 +1,48 @@
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
> index 0000000..09fcb63
> --- /dev/null
> +++ b/drivers/net/davinci_emac.c
> @@ -0,0 +1,618 @@
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
> +	void __iomem *adap_emac; /* = EMAC_BASE_ADDR */
> +	void __iomem *adap_ewrap; /* = EMAC_WRAPPER_BASE_ADDR */
> +	void __iomem *adap_mdio; /* = EMAC_MDIO_BASE_ADDR */
> +
> +	/* EMAC descriptors */
> +	void __iomem *emac_desc_base; /* = EMAC_WRAPPER_RAM_ADDR */
> +	void __iomem *emac_rx_desc; /* = EMAC_WRAPPER_RAM_ADDR + EMAC_RX_DESC_BASE */
> +	void __iomem *emac_tx_desc; /* = EMAC_WRAPPER_RAM_ADDR + EMAC_TX_DESC_BASE */
> +	void __iomem *emac_rx_active_head; /* = 0 */
> +	void __iomem *emac_rx_active_tail; /* = 0 */
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
> +static inline uint32_t BD_TO_HW(void __iomem *x)
> +{
> +	if (x == 0)
> +		return 0;
> +
> +	return (uint32_t)(x) - EMAC_WRAPPER_RAM_ADDR + EMAC_HW_RAM_ADDR;
> +}
> +
> +static inline void __iomem *HW_TO_BD(uint32_t x)
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
> +	dev_dbg(priv->dev, "mdio_enable + 0x%08x\n",
> +		readl(priv->adap_mdio + EMAC_MDIO_CONTROL));
> +	writel((clkdiv & 0xff) |
> +		MDIO_CONTROL_ENABLE |
> +		MDIO_CONTROL_FAULT |
> +		MDIO_CONTROL_FAULT_ENABLE,
> +		priv->adap_mdio + EMAC_MDIO_CONTROL);
> +	dev_dbg(priv->dev, "mdio_enable - 0x%08x\n",
> +		readl(priv->adap_mdio + EMAC_MDIO_CONTROL));
> +
> +	while (readl(priv->adap_mdio + EMAC_MDIO_CONTROL) & MDIO_CONTROL_IDLE);
> +}
> +
> +/* Read a PHY register via MDIO inteface. Returns 1 on success, 0 otherwise */
> +static int davinci_eth_phy_read(struct davinci_emac_priv *priv, uint8_t phy_addr, uint8_t reg_num, uint16_t *data)
> +{
> +	int	tmp;
> +
> +	while (readl(priv->adap_mdio + EMAC_MDIO_USERACCESS0) & MDIO_USERACCESS0_GO);
> +
> +	writel(MDIO_USERACCESS0_GO |
> +		MDIO_USERACCESS0_WRITE_READ |
> +		((reg_num & 0x1f) << 21) |
> +		((phy_addr & 0x1f) << 16),
> +		priv->adap_mdio + EMAC_MDIO_USERACCESS0);
> +
> +	/* Wait for command to complete */
> +	while ((tmp = readl(priv->adap_mdio + EMAC_MDIO_USERACCESS0)) & MDIO_USERACCESS0_GO);
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
> +	while (readl(priv->adap_mdio + EMAC_MDIO_USERACCESS0) & MDIO_USERACCESS0_GO);
> +
> +	dev_dbg(priv->dev, "emac_phy_write: addr=0x%02x reg=0x%02x data=0x%04x\n",
> +		   phy_addr, reg_num, data);
> +	writel(MDIO_USERACCESS0_GO |
> +				MDIO_USERACCESS0_WRITE_WRITE |
> +				((reg_num & 0x1f) << 21) |
> +				((phy_addr & 0x1f) << 16) |
> +				(data & 0xffff),
> +		priv->adap_mdio + EMAC_MDIO_USERACCESS0);
> +
> +	/* Wait for command to complete */
> +	while (readl(priv->adap_mdio + EMAC_MDIO_USERACCESS0) & MDIO_USERACCESS0_GO);
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
> +	uint32_t clkdiv, cnt;
> +	void __iomem *rx_desc;
> +	unsigned long mac_hi, mac_lo;
> +	int ret;
> +
> +	dev_dbg(priv->dev, "+ emac_open\n");
> +
> +	dev_dbg(priv->dev, "emac->TXIDVER: 0x%08x\n",
> +		readl(priv->adap_emac + EMAC_TXIDVER));
> +	dev_dbg(priv->dev, "emac->RXIDVER: 0x%08x\n",
> +		readl(priv->adap_emac + EMAC_RXIDVER));
> +
> +	/* Reset EMAC module and disable interrupts in wrapper */
> +	writel(1, priv->adap_emac + EMAC_SOFTRESET);
> +	while (readl(priv->adap_emac + EMAC_SOFTRESET) != 0);
> +	writel(1, priv->adap_ewrap + EMAC_EWRAP_SOFTRESET);
> +	while (readl(priv->adap_ewrap + EMAC_EWRAP_SOFTRESET) != 0);
> +
> +	writel(0, priv->adap_ewrap + EMAC_EWRAP_C0RXEN);
> +	writel(0, priv->adap_ewrap + EMAC_EWRAP_C1RXEN);
> +	writel(0, priv->adap_ewrap + EMAC_EWRAP_C2RXEN);
> +	writel(0, priv->adap_ewrap + EMAC_EWRAP_C0TXEN);
> +	writel(0, priv->adap_ewrap + EMAC_EWRAP_C1TXEN);
> +	writel(0, priv->adap_ewrap + EMAC_EWRAP_C2TXEN);
> +	writel(0, priv->adap_ewrap + EMAC_EWRAP_C0MISCEN);
> +	writel(0, priv->adap_ewrap + EMAC_EWRAP_C1MISCEN);
> +	writel(0, priv->adap_ewrap + EMAC_EWRAP_C2MISCEN);
> +
> +	rx_desc = priv->emac_rx_desc;
> +
> +	/*
> +	 * Set MAC Addresses & Init multicast Hash to 0 (disable any multicast
> +	 * receive)
> +	 * Use channel 0 only - other channels are disabled
> +	 */
> +	writel(0, priv->adap_emac + EMAC_MACINDEX);
> +	mac_hi = (priv->mac_addr[3] << 24) |
> +		 (priv->mac_addr[2] << 16) |
> +		 (priv->mac_addr[1] << 8)  |
> +		 (priv->mac_addr[0]);
> +	mac_lo = (priv->mac_addr[5] << 8) |
> +		 (priv->mac_addr[4]);
> +
> +	writel(mac_hi, priv->adap_emac + EMAC_MACADDRHI);
> +	writel(mac_lo | EMAC_MAC_ADDR_IS_VALID | EMAC_MAC_ADDR_MATCH,
> +	       priv->adap_emac + EMAC_MACADDRLO);
> +
> +	/* Set source MAC address - REQUIRED */
> +	writel(mac_hi, priv->adap_emac + EMAC_MACSRCADDRHI);
> +	writel(mac_lo, priv->adap_emac + EMAC_MACSRCADDRLO);
> +
> +	/* Set DMA head and completion pointers to 0 */
> +	for(cnt = 0; cnt < 8; cnt++) {
> +		writel(0, (void *)priv->adap_emac + EMAC_TX0HDP + 4 * cnt);
> +		writel(0, (void *)priv->adap_emac + EMAC_RX0HDP + 4 * cnt);
> +		writel(0, (void *)priv->adap_emac + EMAC_TX0CP + 4 * cnt);
> +		writel(0, (void *)priv->adap_emac + EMAC_RX0CP + 4 * cnt);
> +	}
> +
> +	/* Clear Statistics (do this before setting MacControl register) */
> +	for(cnt = 0; cnt < EMAC_NUM_STATS; cnt++)
> +		writel(0, (void *)priv->adap_emac + EMAC_RXGOODFRAMES + 4 * cnt);
> +
> +	/* No multicast addressing */
> +	writel(0, priv->adap_emac + EMAC_MACHASH1);
> +	writel(0, priv->adap_emac + EMAC_MACHASH2);
> +
> +	writel(0x01, priv->adap_emac + EMAC_TXCONTROL);
> +	writel(0x01, priv->adap_emac + EMAC_RXCONTROL);
> +
> +	/* Create RX queue and set receive process in place */
> +	priv->emac_rx_active_head = priv->emac_rx_desc;
> +	for (cnt = 0; cnt < EMAC_MAX_RX_BUFFERS; cnt++) {
> +		writel(BD_TO_HW(rx_desc + EMAC_DESC_SIZE), rx_desc + EMAC_DESC_NEXT);
> +		writel(&priv->emac_rx_buffers[cnt * (EMAC_MAX_ETHERNET_PKT_SIZE + EMAC_PKT_ALIGN)], rx_desc + EMAC_DESC_BUFFER);
> +		writel(EMAC_MAX_ETHERNET_PKT_SIZE, rx_desc + EMAC_DESC_BUFF_OFF_LEN);
> +		writel(EMAC_CPPI_OWNERSHIP_BIT, rx_desc + EMAC_DESC_PKT_FLAG_LEN);
> +		rx_desc += EMAC_DESC_SIZE;
> +	}
> +
> +	/* Set the last descriptor's "next" parameter to 0 to end the RX desc list */
> +	rx_desc -= EMAC_DESC_SIZE;
> +	writel(0, rx_desc + EMAC_DESC_NEXT);
> +	priv->emac_rx_active_tail = rx_desc;
> +	priv->emac_rx_queue_active = 1;
> +
> +	/* Enable TX/RX */
> +	writel(EMAC_MAX_ETHERNET_PKT_SIZE, priv->adap_emac + EMAC_RXMAXLEN);
> +	writel(0, priv->adap_emac + EMAC_RXBUFFEROFFSET);
> +
> +	/* No fancy configs - Use this for promiscous for debug - EMAC_RXMBPENABLE_RXCAFEN_ENABLE */
> +	writel(EMAC_RXMBPENABLE_RXBROADEN, priv->adap_emac + EMAC_RXMBPENABLE);
> +
> +	/* Enable ch 0 only */
> +	writel(0x01, priv->adap_emac + EMAC_RXUNICASTSET);
> +
> +	/* Enable MII interface and full duplex mode (using RMMI) */
> +	writel((EMAC_MACCONTROL_MIIEN_ENABLE |
> +		EMAC_MACCONTROL_FULLDUPLEX_ENABLE |
> +		EMAC_MACCONTROL_RMIISPEED_100),
> +	       priv->adap_emac + EMAC_MACCONTROL);
> +
> +	/* Init MDIO & get link state */
> +	clkdiv = (EMAC_MDIO_BUS_FREQ / EMAC_MDIO_CLOCK_FREQ) - 1;
> +	writel((clkdiv & 0xff) | MDIO_CONTROL_ENABLE | MDIO_CONTROL_FAULT,
> +		priv->adap_mdio + EMAC_MDIO_CONTROL);
> +
> +	/* Start receive process */
> +	writel(BD_TO_HW(priv->emac_rx_desc), priv->adap_emac + EMAC_RX0HDP);
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
> +		writel(0, priv->adap_emac + EMAC_TXTEARDOWN);
> +		for(cnt = 0; cnt != 0xfffffffc; cnt = readl(priv->adap_emac + EMAC_TX0CP)) {
> +			/* Wait here for Tx teardown completion interrupt to occur
> +			 * Note: A task delay can be called here to pend rather than
> +			 * occupying CPU cycles - anyway it has been found that teardown
> +			 * takes very few cpu cycles and does not affect functionality */
> +			 dly--;
> +			 udelay(1);
> +			 if (dly == 0)
> +				break;
> +		}
> +		writel(cnt, priv->adap_emac + EMAC_TX0CP);
> +		writel(0, priv->adap_emac + EMAC_TX0HDP);
> +	} else {
> +		/* Init RX channel teardown */
> +		writel(0, priv->adap_emac + EMAC_RXTEARDOWN);
> +		for(cnt = 0; cnt != 0xfffffffc; cnt = readl(priv->adap_emac + EMAC_RX0CP)) {
> +			/* Wait here for Rx teardown completion interrupt to occur
> +			 * Note: A task delay can be called here to pend rather than
> +			 * occupying CPU cycles - anyway it has been found that teardown
> +			 * takes very few cpu cycles and does not affect functionality */
> +			 dly--;
> +			 udelay(1);
> +			 if (dly == 0)
> +				break;
> +		}
> +		writel(cnt, priv->adap_emac + EMAC_RX0CP);
> +		writel(0, priv->adap_emac + EMAC_RX0HDP);
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
> +	writel(1, priv->adap_emac + EMAC_SOFTRESET);
> +	writel(1, priv->adap_ewrap + EMAC_EWRAP_SOFTRESET);
> +
> +	writel(0, priv->adap_ewrap + EMAC_EWRAP_C0RXEN);
> +	writel(0, priv->adap_ewrap + EMAC_EWRAP_C1RXEN);
> +	writel(0, priv->adap_ewrap + EMAC_EWRAP_C2RXEN);
> +	writel(0, priv->adap_ewrap + EMAC_EWRAP_C0TXEN);
> +	writel(0, priv->adap_ewrap + EMAC_EWRAP_C1TXEN);
> +	writel(0, priv->adap_ewrap + EMAC_EWRAP_C2TXEN);
> +	writel(0, priv->adap_ewrap + EMAC_EWRAP_C0MISCEN);
> +	writel(0, priv->adap_ewrap + EMAC_EWRAP_C1MISCEN);
> +	writel(0, priv->adap_ewrap + EMAC_EWRAP_C2MISCEN);
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
> +	writel(0, priv->emac_tx_desc + EMAC_DESC_NEXT);
> +	writel((uint8_t *) packet, priv->emac_tx_desc + EMAC_DESC_BUFFER);
> +	writel((length & 0xffff), priv->emac_tx_desc + EMAC_DESC_BUFF_OFF_LEN);
> +	writel(((length & 0xffff) | EMAC_CPPI_SOP_BIT |
> +				    EMAC_CPPI_OWNERSHIP_BIT |
> +				    EMAC_CPPI_EOP_BIT),
> +		priv->emac_tx_desc + EMAC_DESC_PKT_FLAG_LEN);
> +	dma_flush_range((ulong) packet, (ulong)packet + length);
> +	/* Send the packet */
> +	writel(BD_TO_HW(priv->emac_tx_desc), priv->adap_emac + EMAC_TX0HDP);
> +
> +	/* Wait for packet to complete or link down */
> +	start = get_time_ns();
> +	while (1) {
> +		if (readl(priv->adap_emac + EMAC_TXINTSTATRAW) & 0x01) {
> +			/* Acknowledge the TX descriptor */
> +			writel(BD_TO_HW(priv->emac_tx_desc), priv->adap_emac + EMAC_TX0CP);
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
> +	void __iomem *rx_curr_desc, *curr_desc, *tail_desc;
> +	unsigned char *pkt;
> +	int status, len, ret = -1;
> +
> +	dev_dbg(priv->dev, "+ emac_recv\n");
> +
> +	rx_curr_desc = priv->emac_rx_active_head;
> +	status = readl(rx_curr_desc + EMAC_DESC_PKT_FLAG_LEN);
> +	if (status & EMAC_CPPI_OWNERSHIP_BIT) {
> +		ret = 0;
> +		goto out;
> +	}
> +
> +	if (status & EMAC_CPPI_RX_ERROR_FRAME) {
> +		/* Error in packet - discard it and requeue desc */
> +		dev_warn(priv->dev, "WARN: emac_rcv_pkt: Error in packet\n");
> +	} else {
> +		pkt = (unsigned char *)readl(rx_curr_desc + EMAC_DESC_BUFFER);
> +		len = readl(rx_curr_desc + EMAC_DESC_BUFF_OFF_LEN) & 0xffff;
> +		dev_dbg(priv->dev, "| emac_recv got packet (length %i)\n", len);
> +		dma_inv_range((ulong)pkt,
> +				(ulong)readl(rx_curr_desc + EMAC_DESC_BUFFER) + len);
> +		net_receive(pkt, len);
> +		ret = len;
> +	}
> +
> +	/* Ack received packet descriptor */
> +	writel(BD_TO_HW(rx_curr_desc), priv->adap_emac + EMAC_RX0CP);
> +	curr_desc = rx_curr_desc;
> +	priv->emac_rx_active_head = HW_TO_BD(readl(rx_curr_desc + EMAC_DESC_NEXT));
> +
> +	if (status & EMAC_CPPI_EOQ_BIT) {
> +		if (priv->emac_rx_active_head) {
> +			writel(BD_TO_HW(priv->emac_rx_active_head),
> +				priv->adap_emac + EMAC_RX0HDP);
> +		} else {
> +			priv->emac_rx_queue_active = 0;
> +			dev_info(priv->dev, "INFO:emac_rcv_packet: RX Queue not active\n");
> +		}
> +	}
> +
> +	/* Recycle RX descriptor */
> +	writel(EMAC_MAX_ETHERNET_PKT_SIZE, rx_curr_desc + EMAC_DESC_BUFF_OFF_LEN);
> +	writel(EMAC_CPPI_OWNERSHIP_BIT, rx_curr_desc + EMAC_DESC_PKT_FLAG_LEN);
> +	writel(0, rx_curr_desc + EMAC_DESC_NEXT);
> +
> +	if (priv->emac_rx_active_head == 0) {
> +		dev_info(priv->dev, "INFO: emac_rcv_pkt: active queue head = 0\n");
> +		priv->emac_rx_active_head = curr_desc;
> +		priv->emac_rx_active_tail = curr_desc;
> +		if (priv->emac_rx_queue_active != 0) {
> +			writel(BD_TO_HW(priv->emac_rx_active_head), priv->adap_emac + EMAC_RX0HDP);
> +			dev_info(priv->dev, "INFO: emac_rcv_pkt: active queue head = 0, HDP fired\n");
> +			priv->emac_rx_queue_active = 1;
> +		}
> +	} else {
> +		tail_desc = priv->emac_rx_active_tail;
> +		priv->emac_rx_active_tail = curr_desc;
> +		writel(BD_TO_HW(curr_desc), tail_desc + EMAC_DESC_NEXT);
> +		status = readl(tail_desc + EMAC_DESC_PKT_FLAG_LEN);
> +		if (status & EMAC_CPPI_EOQ_BIT) {
> +			writel(BD_TO_HW(curr_desc), priv->adap_emac + EMAC_RX0HDP);
> +			status &= ~EMAC_CPPI_EOQ_BIT;
> +			writel(status, tail_desc + EMAC_DESC_PKT_FLAG_LEN);
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
> +	priv->adap_emac = dev_request_mem_region(dev, 0);
> +	priv->adap_ewrap = dev_request_mem_region(dev, 1);
> +	priv->adap_mdio = dev_request_mem_region(dev, 2);
> +	priv->emac_desc_base = dev_request_mem_region(dev, 3);
> +
> +	/* EMAC descriptors */
> +	priv->emac_rx_desc = priv->emac_desc_base + EMAC_RX_DESC_BASE;
> +	priv->emac_tx_desc = priv->emac_desc_base + EMAC_TX_DESC_BASE;
> +	priv->emac_rx_active_head = NULL;
> +	priv->emac_rx_active_tail = NULL;
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
> +		if (readl(priv->adap_mdio + EMAC_MDIO_ALIVE))
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
> index 0000000..c5fa018
> --- /dev/null
> +++ b/drivers/net/davinci_emac.h
> @@ -0,0 +1,289 @@
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
> +/* EMAC Descriptor Offsets */
> +#define EMAC_DESC_NEXT			0x0	/* Pointer to next descriptor in chain */
> +#define EMAC_DESC_BUFFER		0x4	/* Pointer to data buffer */
> +#define EMAC_DESC_BUFF_OFF_LEN		0x8	/* Buffer Offset(MSW) and Length(LSW) */
> +#define EMAC_DESC_PKT_FLAG_LEN		0xc	/* Packet Flags(MSW) and Length(LSW) */
> +#define EMAC_DESC_SIZE			0x10
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
> +#define MDIO_CONTROL_IDLE		(0x80000000)
> +#define MDIO_CONTROL_ENABLE		(0x40000000)
> +#define MDIO_CONTROL_FAULT_ENABLE	(0x40000)
> +#define MDIO_CONTROL_FAULT		(0x80000)
> +#define MDIO_USERACCESS0_GO		(0x80000000)
> +#define MDIO_USERACCESS0_WRITE_READ	(0x0)
> +#define MDIO_USERACCESS0_WRITE_WRITE	(0x40000000)
> +#define MDIO_USERACCESS0_ACK		(0x20000000)
> +
> +/* Ethernet MAC Registers */
> +#define EMAC_TXIDVER			0x000
> +#define EMAC_TXCONTROL			0x004
> +#define EMAC_TXTEARDOWN			0x008
> +#define EMAC_RXIDVER			0x010
> +#define EMAC_RXCONTROL			0x014
> +#define EMAC_RXTEARDOWN			0x018
> +#define EMAC_TXINTSTATRAW		0x080
> +#define EMAC_TXINTSTATMASKED		0x084
> +#define EMAC_TXINTMASKSET		0x088
> +#define EMAC_TXINTMASKCLEAR		0x08c
> +#define EMAC_MACINVECTOR		0x090
> +#define EMAC_MACEOIVECTOR		0x094
> +#define EMAC_RXINTSTATRAW		0x0a0
> +#define EMAC_RXINTSTATMASKED		0x0a4
> +#define EMAC_RXINTMASKSET		0x0a8
> +#define EMAC_RXINTMASKCLEAR		0x0ac
> +#define EMAC_MACINTSTATRAW		0x0b0
> +#define EMAC_MACINTSTATMASKED		0x0b4
> +#define EMAC_MACINTMASKSET		0x0b8
> +#define EMAC_MACINTMASKCLEAR		0x0bc
> +#define EMAC_RXMBPENABLE		0x100
> +#define EMAC_RXUNICASTSET		0x104
> +#define EMAC_RXUNICASTCLEAR		0x108
> +#define EMAC_RXMAXLEN			0x10c
> +#define EMAC_RXBUFFEROFFSET		0x110
> +#define EMAC_RXFILTERLOWTHRESH		0x114
> +#define EMAC_RX0FLOWTHRESH		0x120
> +#define EMAC_RX1FLOWTHRESH		0x124
> +#define EMAC_RX2FLOWTHRESH		0x128
> +#define EMAC_RX3FLOWTHRESH		0x12c
> +#define EMAC_RX4FLOWTHRESH		0x130
> +#define EMAC_RX5FLOWTHRESH		0x134
> +#define EMAC_RX6FLOWTHRESH		0x138
> +#define EMAC_RX7FLOWTHRESH		0x13c
> +#define EMAC_RX0FREEBUFFER		0x140
> +#define EMAC_RX1FREEBUFFER		0x144
> +#define EMAC_RX2FREEBUFFER		0x148
> +#define EMAC_RX3FREEBUFFER		0x14c
> +#define EMAC_RX4FREEBUFFER		0x150
> +#define EMAC_RX5FREEBUFFER		0x154
> +#define EMAC_RX6FREEBUFFER		0x158
> +#define EMAC_RX7FREEBUFFER		0x15c
> +#define EMAC_MACCONTROL			0x160
> +#define EMAC_MACSTATUS			0x164
> +#define EMAC_EMCONTROL			0x168
> +#define EMAC_FIFOCONTROL		0x16c
> +#define EMAC_MACCONFIG			0x170
> +#define EMAC_SOFTRESET			0x174
> +#define EMAC_MACSRCADDRLO		0x1d0
> +#define EMAC_MACSRCADDRHI		0x1d4
> +#define EMAC_MACHASH1			0x1d8
> +#define EMAC_MACHASH2			0x1dc
> +#define EMAC_BOFFTEST			0x1e0
> +#define EMAC_TPACETEST			0x1e4
> +#define EMAC_RXPAUSE			0x1e8
> +#define EMAC_TXPAUSE			0x1ec
> +#define EMAC_RXGOODFRAMES		0x200
> +#define EMAC_RXBCASTFRAMES		0x204
> +#define EMAC_RXMCASTFRAMES		0x208
> +#define EMAC_RXPAUSEFRAMES		0x20c
> +#define EMAC_RXCRCERRORS		0x210
> +#define EMAC_RXALIGNCODEERRORS		0x214
> +#define EMAC_RXOVERSIZED		0x218
> +#define EMAC_RXJABBER			0x21c
> +#define EMAC_RXUNDERSIZED		0x220
> +#define EMAC_RXFRAGMENTS		0x224
> +#define EMAC_RXFILTERED			0x228
> +#define EMAC_RXQOSFILTERED		0x22c
> +#define EMAC_RXOCTETS			0x230
> +#define EMAC_TXGOODFRAMES		0x234
> +#define EMAC_TXBCASTFRAMES		0x238
> +#define EMAC_TXMCASTFRAMES		0x23c
> +#define EMAC_TXPAUSEFRAMES		0x240
> +#define EMAC_TXDEFERRED			0x244
> +#define EMAC_TXCOLLISION		0x248
> +#define EMAC_TXSINGLECOLL		0x24c
> +#define EMAC_TXMULTICOLL		0x250
> +#define EMAC_TXEXCESSIVECOLL		0x254
> +#define EMAC_TXLATECOLL			0x258
> +#define EMAC_TXUNDERRUN			0x25c
> +#define EMAC_TXCARRIERSENSE		0x260
> +#define EMAC_TXOCTETS			0x264
> +#define EMAC_FRAME64			0x268
> +#define EMAC_FRAME65T127		0x26c
> +#define EMAC_FRAME128T255		0x270
> +#define EMAC_FRAME256T511		0x274
> +#define EMAC_FRAME512T1023		0x278
> +#define EMAC_FRAME1024TUP		0x27c
> +#define EMAC_NETOCTETS			0x280
> +#define EMAC_RXSOFOVERRUNS		0x284
> +#define EMAC_RXMOFOVERRUNS		0x288
> +#define EMAC_RXDMAOVERRUNS		0x28c
> +#define EMAC_MACADDRLO			0x500
> +#define EMAC_MACADDRHI			0x504
> +#define EMAC_MACINDEX			0x508
> +#define EMAC_TX0HDP			0x600
> +#define EMAC_TX1HDP			0x604
> +#define EMAC_TX2HDP			0x608
> +#define EMAC_TX3HDP			0x60c
> +#define EMAC_TX4HDP			0x610
> +#define EMAC_TX5HDP			0x614
> +#define EMAC_TX6HDP			0x618
> +#define EMAC_TX7HDP			0x61c
> +#define EMAC_RX0HDP			0x620
> +#define EMAC_RX1HDP			0x624
> +#define EMAC_RX2HDP			0x628
> +#define EMAC_RX3HDP			0x62c
> +#define EMAC_RX4HDP			0x630
> +#define EMAC_RX5HDP			0x634
> +#define EMAC_RX6HDP			0x638
> +#define EMAC_RX7HDP			0x63c
> +#define EMAC_TX0CP			0x640
> +#define EMAC_TX1CP			0x644
> +#define EMAC_TX2CP			0x648
> +#define EMAC_TX3CP			0x64c
> +#define EMAC_TX4CP			0x650
> +#define EMAC_TX5CP			0x654
> +#define EMAC_TX6CP			0x658
> +#define EMAC_TX7CP			0x65c
> +#define EMAC_RX0CP			0x660
> +#define EMAC_RX1CP			0x664
> +#define EMAC_RX2CP			0x668
> +#define EMAC_RX3CP			0x66c
> +#define EMAC_RX4CP			0x670
> +#define EMAC_RX5CP			0x674
> +#define EMAC_RX6CP			0x678
> +#define EMAC_RX7CP			0x67c
> +
> +/* EMAC Wrapper Registers */
> +#define EMAC_EWRAP_IDVER		0x00
> +#define EMAC_EWRAP_SOFTRESET		0x04
> +#define EMAC_EWRAP_INTCTRL		0x0c
> +#define EMAC_EWRAP_C0RXTHRESHEN		0x10
> +#define EMAC_EWRAP_C0RXEN		0x14
> +#define EMAC_EWRAP_C0TXEN		0x18
> +#define EMAC_EWRAP_C0MISCEN		0x1c
> +#define EMAC_EWRAP_C1RXTHRESHEN		0x20
> +#define EMAC_EWRAP_C1RXEN		0x24
> +#define EMAC_EWRAP_C1TXEN		0x28
> +#define EMAC_EWRAP_C1MISCEN		0x2c
> +#define EMAC_EWRAP_C2RXTHRESHEN		0x30
> +#define EMAC_EWRAP_C2RXEN		0x34
> +#define EMAC_EWRAP_C2TXEN		0x38
> +#define EMAC_EWRAP_C2MISCEN		0x3c
> +#define EMAC_EWRAP_C0RXTHRESHSTAT	0x40
> +#define EMAC_EWRAP_C0RXSTAT		0x44
> +#define EMAC_EWRAP_C0TXSTAT		0x48
> +#define EMAC_EWRAP_C0MISCSTAT		0x4c
> +#define EMAC_EWRAP_C1RXTHRESHSTAT	0x50
> +#define EMAC_EWRAP_C1RXSTAT		0x54
> +#define EMAC_EWRAP_C1TXSTAT		0x58
> +#define EMAC_EWRAP_C1MISCSTAT		0x5c
> +#define EMAC_EWRAP_C2RXTHRESHSTAT	0x60
> +#define EMAC_EWRAP_C2RXSTAT		0x64
> +#define EMAC_EWRAP_C2TXSTAT		0x68
> +#define EMAC_EWRAP_C2MISCSTAT		0x6c
> +#define EMAC_EWRAP_C0RXIMAX		0x70
> +#define EMAC_EWRAP_C0TXIMAX		0x74
> +#define EMAC_EWRAP_C1RXIMAX		0x78
> +#define EMAC_EWRAP_C1TXIMAX		0x7c
> +#define EMAC_EWRAP_C2RXIMAX		0x80
> +#define EMAC_EWRAP_C2TXIMAX		0x84
> +
> +/* EMAC MDIO Registers */
> +#define EMAC_MDIO_VERSION		0x00
> +#define EMAC_MDIO_CONTROL		0x04
> +#define EMAC_MDIO_ALIVE			0x08
> +#define EMAC_MDIO_LINK			0x0c
> +#define EMAC_MDIO_LINKINTRAW		0x10
> +#define EMAC_MDIO_LINKINTMASKED		0x14
> +#define EMAC_MDIO_USERINTRAW		0x20
> +#define EMAC_MDIO_USERINTMASKED		0x24
> +#define EMAC_MDIO_USERINTMASKSET	0x28
> +#define EMAC_MDIO_USERINTMASKCLEAR	0x2c
> +#define EMAC_MDIO_USERACCESS0		0x80
> +#define EMAC_MDIO_USERPHYSEL0		0x84
> +#define EMAC_MDIO_USERACCESS1		0x88
> +#define EMAC_MDIO_USERPHYSEL1		0x8c
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
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
