Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6V6C-0006jl-VE
	for barebox@lists.infradead.org; Sun, 03 Apr 2011 21:44:50 +0000
Received: by wyb28 with SMTP id 28so5134017wyb.36
	for <barebox@lists.infradead.org>; Sun, 03 Apr 2011 14:44:43 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Sun,  3 Apr 2011 23:45:00 +0200
Message-Id: <1301867100-13020-1-git-send-email-franck.jullien@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Nios2: Add Altera TSE MAC driver
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

This patch adds the Altera Triple Speed Ethernet driver.

Signed-off-by: Franck JULLIEN <franck.jullien@gmail.com>
---
 drivers/net/Kconfig      |   16 +
 drivers/net/Makefile     |    5 +-
 drivers/net/altera_tse.c |  720 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/altera_tse.h |  522 +++++++++++++++++++++++++++++++++
 4 files changed, 1261 insertions(+), 2 deletions(-)
 create mode 100644 drivers/net/altera_tse.c
 create mode 100644 drivers/net/altera_tse.h

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 6479417..19e35db 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -84,6 +84,22 @@ config DRIVER_NET_TAP
 	bool "tap Ethernet driver"
 	depends on LINUX
 
+config DRIVER_NET_TSE
+	depends on NIOS2
+	bool "Altera TSE ethernet driver"
+	select MIIDEV
+	help
+	  This option enables support for the Altera TSE MAC.
+
+config TSE_USE_DEDICATED_DESC_MEM
+	depends on DRIVER_NET_TSE
+	bool "Altera TSE uses dedicated descriptor memory"
+	help
+	  This option tells the TSE driver to use an onchip memory
+	  to store SGDMA descriptors. Descriptor memory is not
+	  reserved with a malloc but directly mapped to the memory
+	  address (defined in config.h)
+
 source "drivers/net/usb/Kconfig"
 
 endmenu
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 96d3d32..f02618b 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -1,7 +1,7 @@
-obj-$(CONFIG_DRIVER_NET_CS8900)	        += cs8900.o
+obj-$(CONFIG_DRIVER_NET_CS8900)		+= cs8900.o
 obj-$(CONFIG_DRIVER_NET_SMC911X)	+= smc911x.o
 obj-$(CONFIG_DRIVER_NET_SMC91111)	+= smc91111.o
-obj-$(CONFIG_DRIVER_NET_DM9000)	        += dm9000.o
+obj-$(CONFIG_DRIVER_NET_DM9000)		+= dm9000.o
 obj-$(CONFIG_DRIVER_NET_NETX)		+= netx_eth.o
 obj-$(CONFIG_DRIVER_NET_AT91_ETHER)	+= at91_ether.o
 obj-$(CONFIG_DRIVER_NET_MPC5200)	+= fec_mpc5200.o
@@ -11,3 +11,4 @@ obj-$(CONFIG_DRIVER_NET_MACB)		+= macb.o
 obj-$(CONFIG_DRIVER_NET_TAP)		+= tap.o
 obj-$(CONFIG_MIIDEV)			+= miidev.o
 obj-$(CONFIG_NET_USB)			+= usb/
+obj-$(CONFIG_DRIVER_NET_TSE)		+= altera_tse.o
diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
new file mode 100644
index 0000000..464a6d4
--- /dev/null
+++ b/drivers/net/altera_tse.c
@@ -0,0 +1,720 @@
+/*
+ * Altera TSE Network driver
+ *
+ * Copyright (C) 2008 Altera Corporation.
+ * Copyright (C) 2010 Thomas Chou <thomas@wytron.com.tw>
+ * Copyright (C) 2011 Franck JULLIEN, <elec4fun@gmail.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <net.h>
+#include <miidev.h>
+#include <init.h>
+#include <clock.h>
+#include <asm/io.h>
+#include <asm/dma-mapping.h>
+#include "altera_tse.h"
+
+static struct phy_info phy_info_dp83848 = {
+	0x20005C90,
+	"DP83848C",
+	32,
+	(struct phy_cmd[]){ /* config */
+	                  {PHY_BMCR, PHY_BMCR_RESET, NULL},
+	                  {PHY_BMCR, PHY_BMCR_AUTON | PHY_BMCR_RST_NEG, NULL},
+	                  {miim_end,}
+	                  },
+	(struct phy_cmd[]){ /* startup */
+	                  {miim_end,}
+	                  },
+	(struct phy_cmd[]){ /* shutdown */
+	                  {miim_end,}
+	                  }
+};
+
+/* a generic flavor.  */
+static struct phy_info phy_info_generic = {
+	0,
+	"Unknown/Generic PHY",
+	32,
+	(struct phy_cmd[]){ /* config */
+	                  {PHY_BMCR, PHY_BMCR_RESET, NULL},
+	                  {PHY_BMCR, PHY_BMCR_AUTON | PHY_BMCR_RST_NEG, NULL},
+	                  {miim_end,}
+	                  },
+	(struct phy_cmd[]){ /* startup */
+	                  {PHY_BMSR, miim_read, NULL},
+	                  {PHY_BMSR, miim_read, NULL},
+	                  {miim_end,}
+	                  },
+	(struct phy_cmd[]){ /* shutdown */
+	                  {miim_end,}
+	                  }
+};
+
+static struct phy_info *phy_info[] = {
+	&phy_info_dp83848,
+	NULL
+};
+
+/* This is a generic routine that the SGDMA mode-specific routines
+ * call to populate a descriptor.
+ * arg1     :pointer to first SGDMA descriptor.
+ * arg2     :pointer to next  SGDMA descriptor.
+ * arg3     :Address to where data to be written.
+ * arg4     :Address from where data to be read.
+ * arg5     :no of byte to transaction.
+ * arg6     :variable indicating to generate start of packet or not
+ * arg7     :read fixed
+ * arg8     :write fixed
+ * arg9     :read burst
+ * arg10    :write burst
+ * arg11    :atlantic_channel number
+ */
+static void alt_sgdma_construct_descriptor_burst(
+	struct alt_sgdma_descriptor *desc,
+	struct alt_sgdma_descriptor *next,
+	uint32_t *read_addr,
+	uint32_t *write_addr,
+	uint16_t length_or_eop,
+	uint8_t generate_eop,
+	uint8_t read_fixed,
+	uint8_t write_fixed_or_sop,
+	uint8_t read_burst,
+	uint8_t write_burst,
+	uint8_t atlantic_channel)
+{
+	uint32_t temp;
+
+	/*
+	 * Mark the "next" descriptor as "not" owned by hardware. This prevents
+	 * The SGDMA controller from continuing to process the chain. This is
+	 * done as a single IO write to bypass cache, without flushing
+	 * the entire descriptor, since only the 8-bit descriptor status must
+	 * be flushed.
+	 */
+	if (!next)
+		printf("Next descriptor not defined!!\n");
+
+	temp = readb(&next->descriptor_control);
+	writeb(temp & ~ALT_SGDMA_DESCRIPTOR_CONTROL_OWNED_BY_HW_MSK,
+		&next->descriptor_control);
+
+	writel((uint32_t)read_addr, &desc->source);
+	writel((uint32_t)write_addr, &desc->destination);
+	writel((uint32_t)next, &desc->next);
+
+	writel(0, &desc->source_pad);
+	writel(0, &desc->destination_pad);
+	writel(0, &desc->next_pad);
+	writew(length_or_eop, &desc->bytes_to_transfer);
+	writew(0, &desc->actual_bytes_transferred);
+	writeb(0, &desc->descriptor_status);
+
+	/* SGDMA burst not currently supported */
+	writeb(0, &desc->read_burst);
+	writeb(0, &desc->write_burst);
+
+	/*
+	 * Set the descriptor control block as follows:
+	 * - Set "owned by hardware" bit
+	 * - Optionally set "generate EOP" bit
+	 * - Optionally set the "read from fixed address" bit
+	 * - Optionally set the "write to fixed address bit (which serves
+	 *   serves as a "generate SOP" control bit in memory-to-stream mode).
+	 * - Set the 4-bit atlantic channel, if specified
+	 *
+	 * Note this step is performed after all other descriptor information
+	 * has been filled out so that, if the controller already happens to be
+	 * pointing at this descriptor, it will not run (via the "owned by
+	 * hardware" bit) until all other descriptor has been set up.
+	 */
+
+	writeb((ALT_SGDMA_DESCRIPTOR_CONTROL_OWNED_BY_HW_MSK) |
+	       (generate_eop ? ALT_SGDMA_DESCRIPTOR_CONTROL_GENERATE_EOP_MSK : 0) |
+	       (read_fixed ? ALT_SGDMA_DESCRIPTOR_CONTROL_READ_FIXED_ADDRESS_MSK : 0) |
+	       (write_fixed_or_sop ? ALT_SGDMA_DESCRIPTOR_CONTROL_WRITE_FIXED_ADDRESS_MSK : 0) |
+	       (atlantic_channel ? ((atlantic_channel & 0x0F) << 3) : 0),
+	       &desc->descriptor_control);
+}
+
+static int alt_sgdma_do_sync_transfer(struct alt_sgdma_registers *dev,
+					struct alt_sgdma_descriptor *desc)
+{
+	uint32_t temp;
+	uint64_t start;
+	uint64_t tout;
+
+	/* Wait for any pending transfers to complete */
+	tout = ALT_TSE_SGDMA_BUSY_WATCHDOG_TOUT * MSECOND;
+
+	start = get_time_ns();
+
+	while (readl(&dev->status) & ALT_SGDMA_STATUS_BUSY_MSK) {
+		if (is_timeout(start, tout)) {
+			debug("Timeout waiting sgdma in do sync!\n");
+			break;
+		}
+	}
+
+	/*
+	 * Clear any (previous) status register information
+	 * that might occlude our error checking later.
+	 */
+	writel(0xFF, &dev->status);
+
+	/* Point the controller at the descriptor */
+	writel((uint32_t)desc, &dev->next_descriptor_pointer);
+	debug("next desc in sgdma 0x%x\n", (uint32_t)dev->next_descriptor_pointer);
+
+	/*
+	 * Set up SGDMA controller to:
+	 * - Disable interrupt generation
+	 * - Run once a valid descriptor is written to controller
+	 * - Stop on an error with any particular descriptor
+	 */
+	writel(ALT_SGDMA_CONTROL_RUN_MSK | ALT_SGDMA_CONTROL_STOP_DMA_ER_MSK,
+		&dev->control);
+
+	/* Wait for the descriptor (chain) to complete */
+	debug("wait for sgdma....");
+	start = get_time_ns();
+
+	while (readl(&dev->status) & ALT_SGDMA_STATUS_BUSY_MSK) {
+		if (is_timeout(start, tout)) {
+			debug("Timeout waiting sgdma in do sync!\n");
+			break;
+		}
+	}
+
+	debug("done\n");
+
+	/* Clear Run */
+	temp = readl(&dev->control);
+	writel(temp & ~ALT_SGDMA_CONTROL_RUN_MSK, &dev->control);
+
+	/* Get & clear status register contents */
+	debug("tx sgdma status = 0x%x", readl(&dev->status));
+	writel(0xFF, &dev->status);
+
+	return 0;
+}
+
+static int alt_sgdma_do_async_transfer(struct alt_sgdma_registers *dev,
+					struct alt_sgdma_descriptor *desc)
+{
+	uint64_t start;
+	uint64_t tout;
+
+	/* Wait for any pending transfers to complete */
+	tout = ALT_TSE_SGDMA_BUSY_WATCHDOG_TOUT * MSECOND;
+
+	start = get_time_ns();
+
+	while (readl(&dev->status) & ALT_SGDMA_STATUS_BUSY_MSK) {
+		if (is_timeout(start, tout)) {
+			debug("Timeout waiting sgdma in do async!\n");
+			break;
+		}
+	}
+
+	/*
+	 * Clear any (previous) status register information
+	 * that might occlude our error checking later.
+	 */
+	writel(0xFF, &dev->status);
+
+	/* Point the controller at the descriptor */
+	writel((uint32_t)desc, &dev->next_descriptor_pointer);
+
+	/*
+	 * Set up SGDMA controller to:
+	 * - Disable interrupt generation
+	 * - Run once a valid descriptor is written to controller
+	 * - Stop on an error with any particular descriptor
+	 */
+	writel(ALT_SGDMA_CONTROL_RUN_MSK | ALT_SGDMA_CONTROL_STOP_DMA_ER_MSK,
+		&dev->control);
+
+	return 0;
+}
+
+static int tse_get_ethaddr(struct eth_device *edev, unsigned char *m)
+{
+/* If there is already a MAC address configured when barebox starts (??), use it */
+#ifdef THERE_IS_A_DEFAULT_MAC_ADDR_IN_TSE
+	struct altera_tse_priv *priv = edev->priv;
+	struct alt_tse_mac *mac_dev = priv->mac_dev;
+
+	m[5] = (readl(&mac_dev->mac_addr_1) >> 8) && 0xFF;
+	m[4] = (readl(&mac_dev->mac_addr_1))      && 0xFF;
+	m[3] = (readl(mac_dev->mac_addr_0) >> 24) && 0xFF;
+	m[2] = (readl(mac_dev->mac_addr_0) >> 16) && 0xFF;
+	m[1] = (readl(mac_dev->mac_addr_0) >>  8) && 0xFF;
+	m[0] = (readl(mac_dev->mac_addr_0))       && 0xFF;
+
+	return 0;
+#else
+	return -1;
+#endif
+}
+
+static int tse_set_ethaddr(struct eth_device *edev, unsigned char *m)
+{
+	struct altera_tse_priv *priv = edev->priv;
+	struct alt_tse_mac *mac_dev = priv->mac_dev;
+
+	debug("Setting MAC address to %02x:%02x:%02x:%02x:%02x:%02x\n",
+		m[0], m[1], m[2], m[3], m[4], m[5]);
+
+	writel(m[3] << 24 | m[2] << 16 | m[1] << 8 | m[0], &mac_dev->mac_addr_0);
+	writel((m[5] << 8 | m[4]) & 0xFFFF, &mac_dev->mac_addr_1);
+
+	return 0;
+}
+
+static int tse_phy_read(struct mii_device *mdev, int phy_addr, int reg)
+{
+	struct eth_device *edev = mdev->edev;
+	struct alt_tse_mac *mac_dev;
+	uint32_t *mdio_regs;
+
+	mac_dev = (struct alt_tse_mac *)edev->iobase;
+	writel(phy_addr, &mac_dev->mdio_phy1_addr);
+
+	mdio_regs = (uint32_t *)&mac_dev->mdio_phy1;
+
+	return readl(&mdio_regs[reg]) & 0xFFFF;
+}
+
+static int tse_phy_write(struct mii_device *mdev, int phy_addr, int reg, int val)
+{
+	struct eth_device *edev = mdev->edev;
+	struct alt_tse_mac *mac_dev;
+	uint32_t *mdio_regs;
+
+	mac_dev = (struct alt_tse_mac *)edev->iobase;
+	writel(phy_addr, &mac_dev->mdio_phy1_addr);
+
+	mdio_regs = (uint32_t *)&mac_dev->mdio_phy1;
+
+	writel((uint32_t)val, &mdio_regs[reg]);
+
+	return 0;
+}
+
+static void tse_reset(struct eth_device *edev)
+{
+	/* stop sgdmas, disable tse receive */
+	struct altera_tse_priv *priv = edev->priv;
+	struct alt_tse_mac *mac_dev = priv->mac_dev;
+	struct alt_sgdma_registers *rx_sgdma = priv->sgdma_rx;
+	struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx;
+	struct alt_sgdma_descriptor *rx_desc = (struct alt_sgdma_descriptor *)&priv->rx_desc[0];
+	struct alt_sgdma_descriptor *tx_desc = (struct alt_sgdma_descriptor *)&priv->tx_desc[0];
+	uint64_t start;
+	uint64_t tout;
+
+	tout = ALT_TSE_SGDMA_BUSY_WATCHDOG_TOUT * MSECOND;
+
+	/* clear rx desc & wait for sgdma to complete */
+	writeb(0, &rx_desc->descriptor_control);
+	writel(0, &rx_sgdma->control);
+
+	writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &rx_sgdma->control);
+	writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &rx_sgdma->control);
+	mdelay(100);
+
+	start = get_time_ns();
+
+	while (readl(&rx_sgdma->status) & ALT_SGDMA_STATUS_BUSY_MSK) {
+		if (is_timeout(start, tout)) {
+			printf("Timeout waiting for rx sgdma!\n");
+			writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &rx_sgdma->control);
+			writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &rx_sgdma->control);
+			break;
+		}
+	}
+
+	/* clear tx desc & wait for sgdma to complete */
+	writeb(0, &tx_desc->descriptor_control);
+	writel(0, &tx_sgdma->control);
+
+	writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &tx_sgdma->control);
+	writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &tx_sgdma->control);
+	mdelay(100);
+
+	start = get_time_ns();
+
+	while (readl(&tx_sgdma->status) & ALT_SGDMA_STATUS_BUSY_MSK) {
+		if (is_timeout(start, tout)) {
+			printf("Timeout waiting for tx sgdma!\n");
+			writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &tx_sgdma->control);
+			writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &tx_sgdma->control);
+			break;
+		}
+	}
+
+	/* reset the mac */
+	writel(ALTERA_TSE_CMD_TX_ENA_MSK | ALTERA_TSE_CMD_RX_ENA_MSK |
+		ALTERA_TSE_CMD_SW_RESET_MSK, &mac_dev->command_config);
+
+	start = get_time_ns();
+	tout = ALT_TSE_SW_RESET_WATCHDOG_TOUT * MSECOND;
+
+	while (readl(&mac_dev->command_config) & ALTERA_TSE_CMD_SW_RESET_MSK) {
+		if (is_timeout(start, tout)) {
+			printf("TSEMAC SW reset bit never cleared!\n");
+			break;
+		}
+	}
+}
+
+static int tse_eth_open(struct eth_device *edev)
+{
+	return 0;
+}
+
+static int tse_eth_send(struct eth_device *edev, void *packet, int length)
+{
+
+	struct altera_tse_priv *priv = edev->priv;
+	struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx;
+	struct alt_sgdma_descriptor *tx_desc = (struct alt_sgdma_descriptor *)priv->tx_desc;
+
+	struct alt_sgdma_descriptor *tx_desc_cur = (struct alt_sgdma_descriptor *)&tx_desc[0];
+
+	flush_dcache_range((uint32_t)packet, (uint32_t)packet + length);
+	alt_sgdma_construct_descriptor_burst(
+		(struct alt_sgdma_descriptor *)&tx_desc[0],
+		(struct alt_sgdma_descriptor *)&tx_desc[1],
+		(uint32_t *)packet,  /* read addr */
+		(uint32_t *)0,       /*           */
+		length,              /* length or EOP ,will change for each tx */
+		0x1,                 /* gen eop */
+		0x0,                 /* read fixed */
+		0x1,                 /* write fixed or sop */
+		0x0,                 /* read burst */
+		0x0,                 /* write burst */
+		0x0                  /* channel */
+		);
+
+	alt_sgdma_do_sync_transfer(tx_sgdma, tx_desc_cur);
+
+	return 0;;
+}
+
+static void tse_eth_halt(struct eth_device *edev)
+{
+
+}
+
+static int tse_eth_rx(struct eth_device *edev)
+{
+	uint16_t packet_length = 0;
+
+	struct altera_tse_priv *priv = edev->priv;
+	struct alt_sgdma_descriptor *rx_desc = (struct alt_sgdma_descriptor *)priv->rx_desc;
+	struct alt_sgdma_descriptor *rx_desc_cur = &rx_desc[0];
+	struct alt_sgdma_registers *rx_sgdma = priv->sgdma_rx;
+
+	if (rx_desc_cur->descriptor_status &
+		ALT_SGDMA_DESCRIPTOR_STATUS_TERMINATED_BY_EOP_MSK) {
+
+		packet_length = rx_desc->actual_bytes_transferred;
+		net_receive(NetRxPackets[0], packet_length);
+
+		/* Clear Run */
+		rx_sgdma->control = (rx_sgdma->control & (~ALT_SGDMA_CONTROL_RUN_MSK));
+
+		/* start descriptor again */
+		flush_dcache_range((uint32_t)(NetRxPackets[0]), (uint32_t)(NetRxPackets[0]) + PKTSIZE);
+		alt_sgdma_construct_descriptor_burst(
+			(struct alt_sgdma_descriptor *)&rx_desc[0],
+			(struct alt_sgdma_descriptor *)&rx_desc[1],
+			(uint32_t)0x0,               /* read addr */
+			(uint32_t *)NetRxPackets[0], /*           */
+			0x0,                         /* length or EOP */
+			0x0,                         /* gen eop */
+			0x0,                         /* read fixed */
+			0x0,                         /* write fixed or sop */
+			0x0,                         /* read burst */
+			0x0,                         /* write burst */
+			0x0                          /* channel */
+		);
+
+		/* setup the sgdma */
+		alt_sgdma_do_async_transfer(priv->sgdma_rx, &rx_desc[0]);
+	}
+
+	return 0;
+}
+
+/* Grab the identifier of the device's PHY, and search through
+* all of the known PHYs to see if one matches. If so, return
+* it, if not, return NULL
+*/
+static struct phy_info *get_phy_info(struct eth_device *edev)
+{
+	struct altera_tse_priv *priv = edev->priv;
+	struct phy_info *theInfo = NULL;
+	uint32_t phy_reg;
+	uint32_t phy_ID;
+	uint8_t i;
+	uint8_t mii_bus_scan = 0;
+	uint8_t current_mii_address = 1;
+
+	if ((priv->miidev)->address == -1)
+		mii_bus_scan = 1;
+	else
+		current_mii_address = (priv->miidev)->address;
+
+	do {
+		/* Grab the bits from PHYIR1, and put them in the upper half */
+		phy_reg = tse_phy_read(priv->miidev, current_mii_address, MIIM_PHYIR1);
+		phy_ID = (phy_reg & 0xffff) << 16;
+
+		/* Grab the bits from PHYIR2, and put them in the lower half */
+		phy_reg = tse_phy_read(priv->miidev, current_mii_address, MIIM_PHYIR2);
+		phy_ID |= (phy_reg & 0xffff);
+
+		if (phy_ID != 0xffffffff) {
+			printf("PHY found at address %d\n", current_mii_address);
+			break;
+		}
+
+		current_mii_address++;
+
+	} while (current_mii_address < 32 && mii_bus_scan);
+
+	if (phy_ID != 0xffffffff) {
+		/* loop through all the known PHY types, and find one that */
+		/* matches the ID we read from the PHY. */
+		for (i = 0; phy_info[i]; i++) {
+			if (phy_info[i]->id == (phy_ID >> phy_info[i]->shift)) {
+				theInfo = phy_info[i];
+				break;
+			}
+		}
+
+		if (theInfo == NULL) {
+			theInfo = &phy_info_generic;
+			printf("No support for PHY id %x; assuming generic\n", phy_ID);
+		} else
+			printf("PHY is %s (0x%x)\n", theInfo->name, phy_ID);
+	} else
+		printf("PHY not found\n");
+
+	return theInfo;
+}
+
+/* Execute the given series of commands on the given device's
+ * PHY, running functions as necessary
+ */
+static void phy_run_commands(struct altera_tse_priv *priv, struct phy_cmd *cmd)
+{
+	uint8_t i;
+	uint32_t result;
+
+	for (i = 0; cmd->mii_reg != miim_end; i++) {
+		if (cmd->mii_data == miim_read) {
+			result = tse_phy_read(priv->miidev, (priv->miidev)->address, cmd->mii_reg);
+			if (cmd->funct != NULL)
+				(*(cmd->funct)) (result, priv);
+		} else {
+			if (cmd->funct != NULL)
+				result = (*(cmd->funct)) (cmd->mii_reg, priv);
+			else
+				result = cmd->mii_data;
+
+			tse_phy_write(priv->miidev, (priv->miidev)->address, cmd->mii_reg, result);
+		}
+		cmd++;
+	}
+}
+
+/* Phy init code */
+static int init_phy(struct eth_device *edev)
+{
+	struct altera_tse_priv *priv = edev->priv;
+	struct phy_info *curphy;
+
+	/* Get the cmd structure corresponding to the attached
+	 * PHY */
+	curphy = get_phy_info(edev);
+
+	if (curphy == NULL) {
+		priv->phyinfo = NULL;
+		return 0;
+	} else
+		debug("%s found\n", curphy->name);
+
+	priv->phyinfo = curphy;
+
+	phy_run_commands(priv, priv->phyinfo->config);
+
+	return 1;
+}
+
+static int tse_init_dev(struct eth_device *edev)
+{
+	struct altera_tse_priv *priv = edev->priv;
+	struct alt_tse_mac *mac_dev = priv->mac_dev;
+	struct alt_sgdma_descriptor *tx_desc = priv->tx_desc;
+	struct alt_sgdma_descriptor *rx_desc = priv->rx_desc;
+	struct alt_sgdma_descriptor *rx_desc_cur;
+
+	rx_desc_cur = (struct alt_sgdma_descriptor *)&rx_desc[0];
+
+	tse_reset(edev);
+	init_phy(edev);
+
+	/* need to create sgdma */
+	alt_sgdma_construct_descriptor_burst(
+		(struct alt_sgdma_descriptor *)&tx_desc[0],
+		(struct alt_sgdma_descriptor *)&tx_desc[1],
+		(uint32_t *)NULL,     /* read addr */
+		(uint32_t *)0,        /*           */
+		0,                    /* length or EOP ,will change for each tx */
+		0x1,                  /* gen eop */
+		0x0,                  /* read fixed */
+		0x1,                  /* write fixed or sop */
+		0x0,                  /* read burst */
+		0x0,                  /* write burst */
+		0x0                   /* channel */
+		);
+
+	flush_dcache_range((uint32_t)(NetRxPackets[0]), (uint32_t)(NetRxPackets[0]) + PKTSIZE);
+	alt_sgdma_construct_descriptor_burst(
+		(struct alt_sgdma_descriptor *)&rx_desc[0],
+		(struct alt_sgdma_descriptor *)&rx_desc[1],
+		(uint32_t)0x0,                    /* read addr */
+		(uint32_t *)NetRxPackets[0],      /*           */
+		0x0,                              /* length or EOP */
+		0x0,                              /* gen eop */
+		0x0,                              /* read fixed */
+		0x0,                              /* write fixed or sop */
+		0x0,                              /* read burst */
+		0x0,                              /* write burst */
+		0x0                               /* channel */
+		);
+
+	/* start rx async transfer */
+	alt_sgdma_do_async_transfer(priv->sgdma_rx, rx_desc_cur);
+
+	/* Initialize MAC registers */
+	writel(PKTSIZE, &mac_dev->max_frame_length);
+
+	/* NO Shift */
+	writel(0, &mac_dev->rx_cmd_stat);
+	writel(0, &mac_dev->tx_cmd_stat);
+
+	/* enable MAC */
+	writel(ALTERA_TSE_CMD_TX_ENA_MSK | ALTERA_TSE_CMD_RX_ENA_MSK, &mac_dev->command_config);
+
+	if (priv->phyinfo != NULL)
+		phy_run_commands(priv, priv->phyinfo->startup);
+
+	return 0;
+}
+
+static int tse_probe(struct device_d *dev)
+{
+	struct altera_tse_priv *priv;
+	struct mii_device *miidev;
+	struct eth_device *edev;
+	struct alt_sgdma_descriptor *rx_desc;
+	struct alt_sgdma_descriptor *tx_desc;
+#ifndef CONFIG_TSE_USE_DEDICATED_DESC_MEM
+	uint32_t dma_handle;
+#endif
+
+	edev = xzalloc(sizeof(struct eth_device) + sizeof(struct altera_tse_priv));
+	miidev = xzalloc(sizeof(struct mii_device));
+
+	dev->type_data = edev;
+	edev->priv = (struct altera_tse_priv *)(edev + 1);
+
+	edev->iobase = dev->map_base;
+
+	priv = edev->priv;
+
+	edev->init = tse_init_dev;
+	edev->open = tse_eth_open;
+	edev->send = tse_eth_send;
+	edev->recv = tse_eth_rx;
+	edev->halt = tse_eth_halt;
+	edev->get_ethaddr = tse_get_ethaddr;
+	edev->set_ethaddr = tse_set_ethaddr;
+
+#ifdef CONFIG_TSE_USE_DEDICATED_DESC_MEM
+	tx_desc = (struct alt_sgdma_descriptor *)NIOS_SOPC_TSE_DESC_MEM_BASE;
+	rx_desc = tx_desc + 2;
+#else
+	tx_desc = dma_alloc_coherent(sizeof(*tx_desc) * (3 + PKTBUFSRX), &dma_handle);
+	rx_desc = tx_desc + 2;
+
+	if (!tx_desc) {
+		free(edev);
+		free(miidev);
+		return 0;
+	}
+#endif
+
+	memset(rx_desc, 0, (sizeof *rx_desc) * (PKTBUFSRX + 1));
+	memset(tx_desc, 0, (sizeof *tx_desc) * 2);
+
+	priv->mac_dev = (struct alt_tse_mac *)dev->map_base;
+	priv->sgdma_rx = (struct alt_sgdma_registers *)NIOS_SOPC_SGDMA_RX_BASE;
+	priv->sgdma_tx = (struct alt_sgdma_registers *)NIOS_SOPC_SGDMA_TX_BASE;
+	priv->rx_desc = rx_desc;
+	priv->tx_desc = tx_desc;
+
+	priv->miidev = miidev;
+
+	miidev->read = tse_phy_read;
+	miidev->write = tse_phy_write;
+#ifndef NIOS_SOPC_PHY_ADDR
+	miidev->address = -1;
+#else
+	miidev->address = NIOS_SOPC_PHY_ADDR;
+#endif
+	miidev->flags = 0;
+	miidev->edev = edev;
+
+	mii_register(miidev);
+
+	return eth_register(edev);
+}
+
+static struct driver_d altera_tse_driver = {
+	.name = "altera_tse",
+	.probe = tse_probe,
+};
+
+static int tse_init(void)
+{
+	register_driver(&altera_tse_driver);
+	return 0;
+}
+
+device_initcall(tse_init);
+
diff --git a/drivers/net/altera_tse.h b/drivers/net/altera_tse.h
new file mode 100644
index 0000000..af2694b
--- /dev/null
+++ b/drivers/net/altera_tse.h
@@ -0,0 +1,522 @@
+/*
+ * Altera 10/100/1000 triple speed ethernet mac
+ *
+ * Copyright (C) 2008 Altera Corporation.
+ * Copyright (C) 2010 Thomas Chou <thomas@wytron.com.tw>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+#ifndef _ALTERA_TSE_H_
+#define _ALTERA_TSE_H_
+
+#define __packed_1_    __attribute__ ((packed, aligned(1)))
+
+/* PHY Stuff */
+#define miim_end	-2
+#define miim_read	-1
+
+#define MIIMCFG_INIT_VALUE	0x00000003
+#define MIIMCFG_RESET		0x80000000
+
+#define MIIMIND_BUSY		0x00000001
+#define MIIMIND_NOTVALID	0x00000004
+
+#define MIIM_CONTROL		0x00
+#define MIIM_CONTROL_RESET	0x00009140
+#define MIIM_CONTROL_INIT	0x00001140
+#define MIIM_CONTROL_RESTART	0x00001340
+#define MIIM_ANEN		0x00001000
+
+#define MIIM_CR			0x00
+#define MIIM_CR_RST		0x00008000
+#define MIIM_CR_INIT		0x00001000
+
+#define MIIM_STATUS		0x1
+#define MIIM_STATUS_AN_DONE	0x00000020
+#define MIIM_STATUS_LINK	0x0004
+#define PHY_BMSR_AUTN_ABLE	0x0008
+#define PHY_BMSR_AUTN_COMP	0x0020
+
+#define MIIM_PHYIR1		0x2
+#define MIIM_PHYIR2		0x3
+
+#define MIIM_ANAR		0x4
+#define MIIM_ANAR_INIT		0x1e1
+
+#define MIIM_TBI_ANLPBPA	0x5
+#define MIIM_TBI_ANLPBPA_HALF	0x00000040
+#define MIIM_TBI_ANLPBPA_FULL	0x00000020
+
+#define MIIM_TBI_ANEX		0x6
+#define MIIM_TBI_ANEX_NP	0x00000004
+#define MIIM_TBI_ANEX_PRX	0x00000002
+
+#define MIIM_GBIT_CONTROL	0x9
+#define MIIM_GBIT_CONTROL_INIT	0xe00
+
+#define MIIM_EXT_PAGE_ACCESS	0x1f
+
+/* MII PHY REGISTERS */
+
+/* phy seed setup */
+#define AUTO			99
+#define _1000BASET		1000
+#define _100BASET		100
+#define _10BASET		10
+#define HALF			22
+#define FULL			44
+
+/* phy register offsets */
+#define PHY_BMCR		0x00
+#define PHY_BMSR		0x01
+#define PHY_PHYIDR1		0x02
+#define PHY_PHYIDR2		0x03
+#define PHY_ANAR		0x04
+#define PHY_ANLPAR		0x05
+#define PHY_ANER		0x06
+#define PHY_ANNPTR		0x07
+#define PHY_ANLPNP		0x08
+#define PHY_1000BTCR		0x09
+#define PHY_1000BTSR		0x0A
+#define PHY_EXSR		0x0F
+#define PHY_PHYSTS		0x10
+#define PHY_MIPSCR		0x11
+#define PHY_MIPGSR		0x12
+#define PHY_DCR			0x13
+#define PHY_FCSCR		0x14
+#define PHY_RECR		0x15
+#define PHY_PCSR		0x16
+#define PHY_LBR			0x17
+#define PHY_10BTSCR		0x18
+#define PHY_PHYCTRL		0x19
+
+/* PHY BMCR */
+#define PHY_BMCR_RESET		0x8000
+#define PHY_BMCR_LOOP		0x4000
+#define PHY_BMCR_100MB		0x2000
+#define PHY_BMCR_AUTON		0x1000
+#define PHY_BMCR_POWD		0x0800
+#define PHY_BMCR_ISO		0x0400
+#define PHY_BMCR_RST_NEG	0x0200
+#define PHY_BMCR_DPLX		0x0100
+#define PHY_BMCR_COL_TST	0x0080
+
+#define PHY_BMCR_SPEED_MASK	0x2040
+#define PHY_BMCR_1000_MBPS	0x0040
+#define PHY_BMCR_100_MBPS	0x2000
+#define PHY_BMCR_10_MBPS	0x0000
+
+/* phy BMSR */
+#define PHY_BMSR_100T4		0x8000
+#define PHY_BMSR_100TXF		0x4000
+#define PHY_BMSR_100TXH		0x2000
+#define PHY_BMSR_10TF		0x1000
+#define PHY_BMSR_10TH		0x0800
+#define PHY_BMSR_EXT_STAT	0x0100
+#define PHY_BMSR_PRE_SUP	0x0040
+#define PHY_BMSR_AUTN_COMP	0x0020
+#define PHY_BMSR_RF		0x0010
+#define PHY_BMSR_AUTN_ABLE	0x0008
+#define PHY_BMSR_LS		0x0004
+#define PHY_BMSR_JD		0x0002
+#define PHY_BMSR_EXT		0x0001
+
+/*phy ANLPAR */
+#define PHY_ANLPAR_NP		0x8000
+#define PHY_ANLPAR_ACK		0x4000
+#define PHY_ANLPAR_RF		0x2000
+#define PHY_ANLPAR_ASYMP	0x0800
+#define PHY_ANLPAR_PAUSE	0x0400
+#define PHY_ANLPAR_T4		0x0200
+#define PHY_ANLPAR_TXFD		0x0100
+#define PHY_ANLPAR_TX		0x0080
+#define PHY_ANLPAR_10FD		0x0040
+#define PHY_ANLPAR_10		0x0020
+#define PHY_ANLPAR_100		0x0380 /* we can run at 100 */
+/* phy ANLPAR 1000BASE-X */
+#define PHY_X_ANLPAR_NP		0x8000
+#define PHY_X_ANLPAR_ACK	0x4000
+#define PHY_X_ANLPAR_RF_MASK	0x3000
+#define PHY_X_ANLPAR_PAUSE_MASK	0x0180
+#define PHY_X_ANLPAR_HD		0x0040
+#define PHY_X_ANLPAR_FD		0x0020
+
+#define PHY_ANLPAR_PSB_MASK	0x001f
+#define PHY_ANLPAR_PSB_802_3	0x0001
+#define PHY_ANLPAR_PSB_802_9	0x0002
+
+/* phy 1000BTCR */
+#define PHY_1000BTCR_1000FD	0x0200
+#define PHY_1000BTCR_1000HD	0x0100
+
+/* phy 1000BTSR */
+#define PHY_1000BTSR_MSCF	0x8000
+#define PHY_1000BTSR_MSCR	0x4000
+#define PHY_1000BTSR_LRS	0x2000
+#define PHY_1000BTSR_RRS	0x1000
+#define PHY_1000BTSR_1000FD	0x0800
+#define PHY_1000BTSR_1000HD	0x0400
+
+/* phy EXSR */
+#define PHY_EXSR_1000XF		0x8000
+#define PHY_EXSR_1000XH		0x4000
+#define PHY_EXSR_1000TF		0x2000
+#define PHY_EXSR_1000TH		0x1000
+
+/* PHY_PHYCTRL */
+#define PHY_PHYCTRL_LED_CNFG1	0x0040
+#define PHY_PHYCTRL_LED_CNFG0	0x0020
+
+#define MIIM_READ_COMMAND	0x00000001
+
+/* struct phy_info: a structure which defines attributes for a PHY
+ * id will contain a number which represents the PHY.  During
+ * startup, the driver will poll the PHY to find out what its
+ * UID--as defined by registers 2 and 3--is.  The 32-bit result
+ * gotten from the PHY will be shifted right by "shift" bits to
+ * discard any bits which may change based on revision numbers
+ * unimportant to functionality
+ *
+ * The struct phy_cmd entries represent pointers to an arrays of
+ * commands which tell the driver what to do to the PHY.
+ */
+struct phy_info {
+	uint id;
+	char *name;
+	uint shift;
+	/* Called to configure the PHY, and modify the controller
+	 * based on the results */
+	struct phy_cmd *config;
+
+	/* Called when starting up the controller */
+	struct phy_cmd *startup;
+
+	/* Called when bringing down the controller */
+	struct phy_cmd *shutdown;
+};
+
+/* SGDMA Stuff */
+#define ALT_SGDMA_STATUS_ERROR_MSK			(0x00000001)
+#define ALT_SGDMA_STATUS_EOP_ENCOUNTERED_MSK		(0x00000002)
+#define ALT_SGDMA_STATUS_DESC_COMPLETED_MSK		(0x00000004)
+#define ALT_SGDMA_STATUS_CHAIN_COMPLETED_MSK		(0x00000008)
+#define ALT_SGDMA_STATUS_BUSY_MSK			(0x00000010)
+
+#define ALT_SGDMA_CONTROL_IE_ERROR_MSK			(0x00000001)
+#define ALT_SGDMA_CONTROL_IE_EOP_ENCOUNTERED_MSK	(0x00000002)
+#define ALT_SGDMA_CONTROL_IE_DESC_COMPLETED_MSK		(0x00000004)
+#define ALT_SGDMA_CONTROL_IE_CHAIN_COMPLETED_MSK	(0x00000008)
+#define ALT_SGDMA_CONTROL_IE_GLOBAL_MSK			(0x00000010)
+#define ALT_SGDMA_CONTROL_RUN_MSK			(0x00000020)
+#define ALT_SGDMA_CONTROL_STOP_DMA_ER_MSK		(0x00000040)
+#define ALT_SGDMA_CONTROL_IE_MAX_DESC_PROCESSED_MSK	(0x00000080)
+#define ALT_SGDMA_CONTROL_MAX_DESC_PROCESSED_MSK	(0x0000FF00)
+#define ALT_SGDMA_CONTROL_SOFTWARERESET_MSK		(0x00010000)
+#define ALT_SGDMA_CONTROL_PARK_MSK			(0x00020000)
+#define ALT_SGDMA_CONTROL_CLEAR_INTERRUPT_MSK		(0x80000000)
+
+#define ALTERA_TSE_SGDMA_INTR_MASK  (ALT_SGDMA_CONTROL_IE_CHAIN_COMPLETED_MSK \
+			| ALT_SGDMA_STATUS_DESC_COMPLETED_MSK \
+			| ALT_SGDMA_CONTROL_IE_GLOBAL_MSK)
+
+/*
+ * Descriptor control bit masks & offsets
+ *
+ * Note: The control byte physically occupies bits [31:24] in memory.
+ *	 The following bit-offsets are expressed relative to the LSB of
+ *	 the control register bitfield.
+ */
+#define ALT_SGDMA_DESCRIPTOR_CONTROL_GENERATE_EOP_MSK		(0x00000001)
+#define ALT_SGDMA_DESCRIPTOR_CONTROL_READ_FIXED_ADDRESS_MSK	(0x00000002)
+#define ALT_SGDMA_DESCRIPTOR_CONTROL_WRITE_FIXED_ADDRESS_MSK	(0x00000004)
+#define ALT_SGDMA_DESCRIPTOR_CONTROL_ATLANTIC_CHANNEL_MSK	(0x00000008)
+#define ALT_SGDMA_DESCRIPTOR_CONTROL_OWNED_BY_HW_MSK		(0x00000080)
+
+/*
+ * Descriptor status bit masks & offsets
+ *
+ * Note: The status byte physically occupies bits [23:16] in memory.
+ *	 The following bit-offsets are expressed relative to the LSB of
+ *	 the status register bitfield.
+ */
+#define ALT_SGDMA_DESCRIPTOR_STATUS_E_CRC_MSK			(0x00000001)
+#define ALT_SGDMA_DESCRIPTOR_STATUS_E_PARITY_MSK		(0x00000002)
+#define ALT_SGDMA_DESCRIPTOR_STATUS_E_OVERFLOW_MSK		(0x00000004)
+#define ALT_SGDMA_DESCRIPTOR_STATUS_E_SYNC_MSK			(0x00000008)
+#define ALT_SGDMA_DESCRIPTOR_STATUS_E_UEOP_MSK			(0x00000010)
+#define ALT_SGDMA_DESCRIPTOR_STATUS_E_MEOP_MSK			(0x00000020)
+#define ALT_SGDMA_DESCRIPTOR_STATUS_E_MSOP_MSK			(0x00000040)
+#define ALT_SGDMA_DESCRIPTOR_STATUS_TERMINATED_BY_EOP_MSK	(0x00000080)
+#define ALT_SGDMA_DESCRIPTOR_STATUS_ERROR_MSK			(0x0000007F)
+
+/*
+ * The SGDMA controller buffer descriptor allocates
+ * 64 bits for each address. To support ANSI C, the
+ * struct implementing a descriptor places 32-bits
+ * of padding directly above each address; each pad must
+ * be cleared when initializing a descriptor.
+ */
+
+/*
+ * Buffer Descriptor data structure
+ *
+ */
+struct alt_sgdma_descriptor {
+	unsigned int *source;           /* the address of data to be read. */
+	unsigned int source_pad;
+
+	unsigned int *destination;     /* the address to write data */
+	unsigned int destination_pad;
+
+	unsigned int *next;            /* the next descriptor in the list. */
+	unsigned int next_pad;
+
+	unsigned short bytes_to_transfer; /* the number of bytes to transfer */
+	unsigned char read_burst;
+	unsigned char write_burst;
+
+	unsigned short actual_bytes_transferred;/* bytes transferred by DMA */
+	unsigned char descriptor_status;
+	unsigned char descriptor_control;
+
+} __packed_1_;
+
+/* SG-DMA Control/Status Slave registers map */
+
+struct alt_sgdma_registers {
+	unsigned int status;
+	unsigned int status_pad[3];
+	unsigned int control;
+	unsigned int control_pad[3];
+	unsigned int next_descriptor_pointer;
+	unsigned int descriptor_pad[3];
+};
+
+/* TSE Stuff */
+#define ALTERA_TSE_CMD_TX_ENA_MSK		(0x00000001)
+#define ALTERA_TSE_CMD_RX_ENA_MSK		(0x00000002)
+#define ALTERA_TSE_CMD_XON_GEN_MSK		(0x00000004)
+#define ALTERA_TSE_CMD_ETH_SPEED_MSK		(0x00000008)
+#define ALTERA_TSE_CMD_PROMIS_EN_MSK		(0x00000010)
+#define ALTERA_TSE_CMD_PAD_EN_MSK		(0x00000020)
+#define ALTERA_TSE_CMD_CRC_FWD_MSK		(0x00000040)
+#define ALTERA_TSE_CMD_PAUSE_FWD_MSK		(0x00000080)
+#define ALTERA_TSE_CMD_PAUSE_IGNORE_MSK		(0x00000100)
+#define ALTERA_TSE_CMD_TX_ADDR_INS_MSK		(0x00000200)
+#define ALTERA_TSE_CMD_HD_ENA_MSK		(0x00000400)
+#define ALTERA_TSE_CMD_EXCESS_COL_MSK		(0x00000800)
+#define ALTERA_TSE_CMD_LATE_COL_MSK		(0x00001000)
+#define ALTERA_TSE_CMD_SW_RESET_MSK		(0x00002000)
+#define ALTERA_TSE_CMD_MHASH_SEL_MSK		(0x00004000)
+#define ALTERA_TSE_CMD_LOOPBACK_MSK		(0x00008000)
+/* Bits (18:16) = address select */
+#define ALTERA_TSE_CMD_TX_ADDR_SEL_MSK		(0x00070000)
+#define ALTERA_TSE_CMD_MAGIC_ENA_MSK		(0x00080000)
+#define ALTERA_TSE_CMD_SLEEP_MSK		(0x00100000)
+#define ALTERA_TSE_CMD_WAKEUP_MSK		(0x00200000)
+#define ALTERA_TSE_CMD_XOFF_GEN_MSK		(0x00400000)
+#define ALTERA_TSE_CMD_CNTL_FRM_ENA_MSK		(0x00800000)
+#define ALTERA_TSE_CMD_NO_LENGTH_CHECK_MSK	(0x01000000)
+#define ALTERA_TSE_CMD_ENA_10_MSK		(0x02000000)
+#define ALTERA_TSE_CMD_RX_ERR_DISC_MSK		(0x04000000)
+/* Bits (30..27) reserved */
+#define ALTERA_TSE_CMD_CNT_RESET_MSK		(0x80000000)
+
+#define ALTERA_TSE_TX_CMD_STAT_TX_SHIFT16	(0x00040000)
+#define ALTERA_TSE_TX_CMD_STAT_OMIT_CRC		(0x00020000)
+
+#define ALTERA_TSE_RX_CMD_STAT_RX_SHIFT16	(0x02000000)
+
+#define ALT_TSE_SW_RESET_WATCHDOG_CNTR		10000
+#define ALT_TSE_SGDMA_BUSY_WATCHDOG_CNTR	90000000
+
+#define ALT_TSE_SW_RESET_WATCHDOG_TOUT		1    /* ms */
+#define ALT_TSE_SGDMA_BUSY_WATCHDOG_TOUT	5    /* ms */
+
+struct alt_tse_mdio {
+	unsigned int control; /*PHY device operation control register */
+	unsigned int status;  /*PHY device operation status register */
+	unsigned int phy_id1; /*Bits 31:16 of PHY identifier. */
+	unsigned int phy_id2; /*Bits 15:0 of PHY identifier. */
+	unsigned int auto_negotiation_advertisement;
+	unsigned int remote_partner_base_page_ability;
+
+	unsigned int reg6;
+	unsigned int reg7;
+	unsigned int reg8;
+	unsigned int reg9;
+	unsigned int rega;
+	unsigned int regb;
+	unsigned int regc;
+	unsigned int regd;
+	unsigned int rege;
+	unsigned int regf;
+	unsigned int reg10;
+	unsigned int reg11;
+	unsigned int reg12;
+	unsigned int reg13;
+	unsigned int reg14;
+	unsigned int reg15;
+	unsigned int reg16;
+	unsigned int reg17;
+	unsigned int reg18;
+	unsigned int reg19;
+	unsigned int reg1a;
+	unsigned int reg1b;
+	unsigned int reg1c;
+	unsigned int reg1d;
+	unsigned int reg1e;
+	unsigned int reg1f;
+};
+
+/* MAC register Space */
+
+struct alt_tse_mac {
+	unsigned int megacore_revision;
+	unsigned int scratch_pad;
+	unsigned int command_config;
+	unsigned int mac_addr_0;
+	unsigned int mac_addr_1;
+	unsigned int max_frame_length;
+	unsigned int pause_quanta;
+	unsigned int rx_sel_empty_threshold;
+	unsigned int rx_sel_full_threshold;
+	unsigned int tx_sel_empty_threshold;
+	unsigned int tx_sel_full_threshold;
+	unsigned int rx_almost_empty_threshold;
+	unsigned int rx_almost_full_threshold;
+	unsigned int tx_almost_empty_threshold;
+	unsigned int tx_almost_full_threshold;
+	unsigned int mdio_phy0_addr;
+	unsigned int mdio_phy1_addr;
+
+	/* only if 100/1000 BaseX PCS, reserved otherwise */
+	unsigned int reservedx44[5];
+
+	unsigned int reg_read_access_status;
+	unsigned int min_tx_ipg_length;
+
+	/* IEEE 802.3 oEntity Managed Object Support */
+	unsigned int aMACID_1;	/*The MAC addresses */
+	unsigned int aMACID_2;
+	unsigned int aFramesTransmittedOK;
+	unsigned int aFramesReceivedOK;
+	unsigned int aFramesCheckSequenceErrors;
+	unsigned int aAlignmentErrors;
+	unsigned int aOctetsTransmittedOK;
+	unsigned int aOctetsReceivedOK;
+
+	/* IEEE 802.3 oPausedEntity Managed Object Support */
+	unsigned int aTxPAUSEMACCtrlFrames;
+	unsigned int aRxPAUSEMACCtrlFrames;
+
+	/* IETF MIB (MIB-II) Object Support */
+	unsigned int ifInErrors;
+	unsigned int ifOutErrors;
+	unsigned int ifInUcastPkts;
+	unsigned int ifInMulticastPkts;
+	unsigned int ifInBroadcastPkts;
+	unsigned int ifOutDiscards;
+	unsigned int ifOutUcastPkts;
+	unsigned int ifOutMulticastPkts;
+	unsigned int ifOutBroadcastPkts;
+
+	/* IETF RMON MIB Object Support */
+	unsigned int etherStatsDropEvent;
+	unsigned int etherStatsOctets;
+	unsigned int etherStatsPkts;
+	unsigned int etherStatsUndersizePkts;
+	unsigned int etherStatsOversizePkts;
+	unsigned int etherStatsPkts64Octets;
+	unsigned int etherStatsPkts65to127Octets;
+	unsigned int etherStatsPkts128to255Octets;
+	unsigned int etherStatsPkts256to511Octets;
+	unsigned int etherStatsPkts512to1023Octets;
+	unsigned int etherStatsPkts1024to1518Octets;
+
+	unsigned int etherStatsPkts1519toXOctets;
+	unsigned int etherStatsJabbers;
+	unsigned int etherStatsFragments;
+
+	unsigned int reservedxE4;
+
+	/*FIFO control register. */
+	unsigned int tx_cmd_stat;
+	unsigned int rx_cmd_stat;
+
+	unsigned int ipaccTxConf;
+	unsigned int ipaccRxConf;
+	unsigned int ipaccRxStat;
+	unsigned int ipaccRxStatSum;
+
+	/*Multicast address resolution table */
+	unsigned int hash_table[64];
+
+	/*Registers 0 to 31 within PHY device 0/1 */
+	struct alt_tse_mdio mdio_phy0;
+	struct alt_tse_mdio mdio_phy1;
+
+	/*4 Supplemental MAC Addresses */
+	unsigned int supp_mac_addr_0_0;
+	unsigned int supp_mac_addr_0_1;
+	unsigned int supp_mac_addr_1_0;
+	unsigned int supp_mac_addr_1_1;
+	unsigned int supp_mac_addr_2_0;
+	unsigned int supp_mac_addr_2_1;
+	unsigned int supp_mac_addr_3_0;
+	unsigned int supp_mac_addr_3_1;
+
+	unsigned int reservedx320[56];
+};
+
+/* flags: TSE MII modes */
+/* GMII/MII	= 0 */
+/* RGMII	= 1 */
+/* RGMII_ID	= 2 */
+/* RGMII_TXID	= 3 */
+/* RGMII_RXID	= 4 */
+/* SGMII	= 5 */
+struct altera_tse_priv {
+	char devname[16];
+	struct alt_tse_mac *mac_dev;
+	struct alt_sgdma_registers *sgdma_rx;
+	struct alt_sgdma_registers *sgdma_tx;
+	unsigned int rx_sgdma_irq;
+	unsigned int tx_sgdma_irq;
+	unsigned int has_descriptor_mem;
+	unsigned int descriptor_mem_base;
+	unsigned int descriptor_mem_size;
+	struct alt_sgdma_descriptor *rx_desc;
+	struct alt_sgdma_descriptor *tx_desc;
+	struct phy_info *phyinfo;
+	unsigned int phyaddr;
+	unsigned int flags;
+	unsigned int link;
+	unsigned int duplexity;
+	unsigned int speed;
+	struct mii_device *miidev;
+};
+
+/* Phy stuff continued */
+/*
+ * struct phy_cmd:  A command for reading or writing a PHY register
+ *
+ * mii_reg:  The register to read or write
+ *
+ * mii_data:  For writes, the value to put in the register.
+ *     A value of -1 indicates this is a read.
+ *
+ * funct: A function pointer which is invoked for each command.
+ *     For reads, this function will be passed the value read
+ *     from the PHY, and process it.
+ *     For writes, the result of this function will be written
+ *     to the PHY register
+ */
+struct phy_cmd {
+	uint mii_reg;
+	uint mii_data;
+	uint(*funct) (uint mii_reg, struct altera_tse_priv *priv);
+};
+#endif /* _ALTERA_TSE_H_ */
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
