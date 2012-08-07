Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og110.obsmtp.com ([64.18.0.20])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SykoT-0005YD-SB
 for barebox@lists.infradead.org; Tue, 07 Aug 2012 14:31:15 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue,  7 Aug 2012 15:30:56 +0100
Message-Id: <1344349858-6068-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1343232061-1789-1-git-send-email-renaud.barbier@ge.com>
References: <1343232061-1789-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 2/4] net: GIANFAR driver
To: barebox@lists.infradead.org

This update adds the GIANFAR driver along with the configuration
and build files.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/mach-mpc85xx/include/mach/gianfar.h |   31 ++
 drivers/net/Kconfig                          |    5 +
 drivers/net/Makefile                         |    1 +
 drivers/net/gianfar.c                        |  548 ++++++++++++++++++++++++++
 drivers/net/gianfar.h                        |  284 +++++++++++++
 5 files changed, 869 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/gianfar.h
 create mode 100644 drivers/net/gianfar.c
 create mode 100644 drivers/net/gianfar.h

diff --git a/arch/ppc/mach-mpc85xx/include/mach/gianfar.h b/arch/ppc/mach-mpc85xx/include/mach/gianfar.h
new file mode 100644
index 0000000..ae31638
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/include/mach/gianfar.h
@@ -0,0 +1,31 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ * Copyright 2004, 2007, 2009  Freescale Semiconductor, Inc.
+ * (C) Copyright 2003, Motorola, Inc.
+ * based on tsec.h by Xianghua Xiao and Andy Fleming 2003-2009
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
+ *
+ * Platform data for the Motorola Triple Speed Ethernet Controller
+ */
+
+struct gfar_info_struct {
+	unsigned int phyaddr;
+	unsigned int tbiana;
+	unsigned int tbicr;
+};
+
+int fsl_eth_init(int num, struct gfar_info_struct *gf);
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 749ea6a..7d21ed8 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -124,6 +124,11 @@ config DRIVER_NET_DESIGNWARE_ALTDESCRIPTOR
 	depends on DRIVER_NET_DESIGNWARE
 	default n
 
+config DRIVER_NET_GIANFAR
+	bool "Gianfar Ethernet"
+	depends on ARCH_MPC85XX
+	select MIIDEV
+
 source "drivers/net/usb/Kconfig"
 
 endmenu
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 29727b7..4d960e8 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -14,3 +14,4 @@ obj-$(CONFIG_NET_USB)			+= usb/
 obj-$(CONFIG_DRIVER_NET_TSE)		+= altera_tse.o
 obj-$(CONFIG_DRIVER_NET_KS8851_MLL)	+= ks8851_mll.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE)	+= designware.o
+obj-$(CONFIG_DRIVER_NET_GIANFAR)	+= gianfar.o
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
new file mode 100644
index 0000000..6572400
--- /dev/null
+++ b/drivers/net/gianfar.c
@@ -0,0 +1,548 @@
+/*
+ * Freescale Three Speed Ethernet Controller driver
+ *
+ * This software may be used and distributed according to the
+ * terms of the GNU Public License, Version 2, incorporated
+ * herein by reference.
+ *
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ * Copyright 2004-2010 Freescale Semiconductor, Inc.
+ * (C) Copyright 2003, Motorola, Inc.
+ * based on work by Andy Fleming
+ */
+
+#include <config.h>
+#include <common.h>
+#include <malloc.h>
+#include <net.h>
+#include <init.h>
+#include <driver.h>
+#include <miidev.h>
+#include <command.h>
+#include <errno.h>
+#include <asm/io.h>
+#include "gianfar.h"
+
+/* 2 seems to be the minimum number of TX descriptors to make it work. */
+#define TX_BUF_CNT 	2
+#define RX_BUF_CNT 	PKTBUFSRX
+#define BUF_ALIGN	8
+
+/*
+ * Initialize required registers to appropriate values, zeroing
+ * those we don't care about (unless zero is bad, in which case,
+ * choose a more appropriate value)
+ */
+static void gfar_init_registers(void __iomem *regs)
+{
+	out_be32(regs + GFAR_IEVENT_OFFSET, GFAR_IEVENT_INIT_CLEAR);
+
+	out_be32(regs + GFAR_IMASK_OFFSET, GFAR_IMASK_INIT_CLEAR);
+
+	out_be32(regs + GFAR_IADDR(0), 0);
+	out_be32(regs + GFAR_IADDR(1), 0);
+	out_be32(regs + GFAR_IADDR(2), 0);
+	out_be32(regs + GFAR_IADDR(3), 0);
+	out_be32(regs + GFAR_IADDR(4), 0);
+	out_be32(regs + GFAR_IADDR(5), 0);
+	out_be32(regs + GFAR_IADDR(6), 0);
+	out_be32(regs + GFAR_IADDR(7), 0);
+
+	out_be32(regs + GFAR_GADDR(0), 0);
+	out_be32(regs + GFAR_GADDR(1), 0);
+	out_be32(regs + GFAR_GADDR(2), 0);
+	out_be32(regs + GFAR_GADDR(3), 0);
+	out_be32(regs + GFAR_GADDR(4), 0);
+	out_be32(regs + GFAR_GADDR(5), 0);
+	out_be32(regs + GFAR_GADDR(6), 0);
+	out_be32(regs + GFAR_GADDR(7), 0);
+
+	out_be32(regs + GFAR_RCTRL_OFFSET, 0x00000000);
+
+	memset((void *)(regs + GFAR_TR64_OFFSET), 0,
+			GFAR_CAM2_OFFSET - GFAR_TR64_OFFSET);
+
+	out_be32(regs + GFAR_CAM1_OFFSET, 0xffffffff);
+	out_be32(regs + GFAR_CAM2_OFFSET, 0xffffffff);
+
+	out_be32(regs + GFAR_MRBLR_OFFSET, MRBLR_INIT_SETTINGS);
+
+	out_be32(regs + GFAR_MINFLR_OFFSET, MINFLR_INIT_SETTINGS);
+
+	out_be32(regs + GFAR_ATTR_OFFSET, ATTR_INIT_SETTINGS);
+	out_be32(regs + GFAR_ATTRELI_OFFSET, ATTRELI_INIT_SETTINGS);
+}
+
+/*
+ * Configure maccfg2 based on negotiated speed and duplex
+ * reported by PHY handling code
+ */
+static void gfar_adjust_link(struct eth_device *edev)
+{
+	struct gfar_private *priv = edev->priv;
+	struct device_d *mdev = priv->miidev.parent;
+	void __iomem *regs = priv->regs;
+	u32 ecntrl, maccfg2;
+	uint32_t status;
+
+	status = miidev_get_status(&priv->miidev);
+
+	priv->link = status & MIIDEV_STATUS_IS_UP;
+	if (status & MIIDEV_STATUS_IS_FULL_DUPLEX)
+		priv->duplexity = 1;
+	else
+		priv->duplexity = 0;
+
+	if (status & MIIDEV_STATUS_IS_1000MBIT)
+		priv->speed = 1000;
+	else if (status & MIIDEV_STATUS_IS_100MBIT)
+		priv->speed = 100;
+	else
+		priv->speed = 10;
+
+	if (priv->link) {
+		/* clear all bits relative with interface mode */
+		ecntrl = in_be32(regs + GFAR_ECNTRL_OFFSET);
+		ecntrl &= ~GFAR_ECNTRL_R100;
+
+		maccfg2 = in_be32(regs + GFAR_MACCFG2_OFFSET);
+		maccfg2 &= ~(GFAR_MACCFG2_IF | GFAR_MACCFG2_FULL_DUPLEX);
+
+		if (priv->duplexity != 0)
+			maccfg2 |= GFAR_MACCFG2_FULL_DUPLEX;
+		else
+			maccfg2 &= ~(GFAR_MACCFG2_FULL_DUPLEX);
+
+		switch (priv->speed) {
+		case 1000:
+			maccfg2 |= GFAR_MACCFG2_GMII;
+			break;
+		case 100:
+		case 10:
+			maccfg2 |= GFAR_MACCFG2_MII;
+			/*
+			 * Set R100 bit in all modes although
+			 * it is only used in RGMII mode
+			 */
+			if (priv->speed == 100)
+				ecntrl |= GFAR_ECNTRL_R100;
+			break;
+		default:
+			dev_info(mdev, "Speed is unknown\n");
+			break;
+		}
+
+		out_be32(regs + GFAR_ECNTRL_OFFSET, ecntrl);
+		out_be32(regs + GFAR_MACCFG2_OFFSET, maccfg2);
+
+		dev_info(mdev, "Speed: %d, %s duplex\n", priv->speed,
+		       (priv->duplexity) ? "full" : "half");
+
+	} else {
+		dev_info(mdev, "No link.\n");
+	}
+}
+
+/* Stop the interface */
+static void gfar_halt(struct eth_device *edev)
+{
+	struct gfar_private *priv = edev->priv;
+	void __iomem *regs = priv->regs;
+	int value;
+
+	clrbits_be32(regs + GFAR_DMACTRL_OFFSET, GFAR_DMACTRL_GRS |
+			GFAR_DMACTRL_GTS);
+	setbits_be32(regs + GFAR_DMACTRL_OFFSET, GFAR_DMACTRL_GRS |
+			GFAR_DMACTRL_GTS);
+
+	value = in_be32(regs + GFAR_IEVENT_OFFSET);
+	value &= (GFAR_IEVENT_GRSC | GFAR_IEVENT_GTSC);
+
+	while (value != (GFAR_IEVENT_GRSC | GFAR_IEVENT_GTSC)) {
+		value = in_be32(regs + GFAR_IEVENT_OFFSET);
+		value &= (GFAR_IEVENT_GRSC | GFAR_IEVENT_GTSC);
+	}
+
+	clrbits_be32(regs + GFAR_MACCFG1_OFFSET,
+			GFAR_MACCFG1_TX_EN | GFAR_MACCFG1_RX_EN);
+}
+
+/* Initializes registers for the controller. */
+static int gfar_init(struct eth_device *edev)
+{
+	struct gfar_private *priv = edev->priv;
+	void __iomem *regs = priv->regs;
+
+	gfar_halt(edev);
+
+	/* Init MACCFG2. Default to GMII */
+	out_be32(regs + GFAR_MACCFG2_OFFSET, MACCFG2_INIT_SETTINGS);
+	out_be32(regs + GFAR_ECNTRL_OFFSET, ECNTRL_INIT_SETTINGS);
+
+	priv->rxidx = 0;
+	priv->txidx = 0;
+
+	gfar_init_registers(regs);
+
+	miidev_restart_aneg(&priv->miidev);
+
+	return  0;
+}
+
+static int gfar_open(struct eth_device *edev)
+{
+	int ix;
+	struct gfar_private *priv = edev->priv;
+	void __iomem *regs = priv->regs;
+
+	/* Point to the buffer descriptors */
+	out_be32(regs + GFAR_TBASE0_OFFSET, (unsigned int)priv->txbd);
+	out_be32(regs + GFAR_RBASE0_OFFSET, (unsigned int)priv->rxbd);
+
+	/* Initialize the Rx Buffer descriptors */
+	for (ix = 0; ix < RX_BUF_CNT; ix++) {
+		priv->rxbd[ix].status = RXBD_EMPTY;
+		priv->rxbd[ix].length = 0;
+		priv->rxbd[ix].bufPtr = (uint) NetRxPackets[ix];
+	}
+	priv->rxbd[RX_BUF_CNT - 1].status |= RXBD_WRAP;
+
+	/* Initialize the TX Buffer Descriptors */
+	for (ix = 0; ix < TX_BUF_CNT; ix++) {
+		priv->txbd[ix].status = 0;
+		priv->txbd[ix].length = 0;
+		priv->txbd[ix].bufPtr = 0;
+	}
+	priv->txbd[TX_BUF_CNT - 1].status |= TXBD_WRAP;
+
+	miidev_wait_aneg(&priv->miidev);
+	gfar_adjust_link(edev);
+
+	/* Enable Transmit and Receive */
+	setbits_be32(regs + GFAR_MACCFG1_OFFSET, GFAR_MACCFG1_RX_EN |
+			GFAR_MACCFG1_TX_EN);
+
+	/* Tell the DMA it is clear to go */
+	setbits_be32(regs + GFAR_DMACTRL_OFFSET, DMACTRL_INIT_SETTINGS);
+	out_be32(regs + GFAR_TSTAT_OFFSET, GFAR_TSTAT_CLEAR_THALT);
+	out_be32(regs + GFAR_RSTAT_OFFSET, GFAR_RSTAT_CLEAR_RHALT);
+	clrbits_be32(regs + GFAR_DMACTRL_OFFSET, GFAR_DMACTRL_GRS |
+			GFAR_DMACTRL_GTS);
+
+	return 0;
+}
+
+static int gfar_get_ethaddr(struct eth_device *edev, unsigned char *mac)
+{
+	return -ENODEV;
+}
+
+static int gfar_set_ethaddr(struct eth_device *edev, unsigned char *mac)
+{
+	struct gfar_private *priv = edev->priv;
+	void __iomem *regs = priv->regs;
+	char tmpbuf[MAC_ADDR_LEN];
+	uint tempval;
+	int ix;
+
+	for (ix = 0; ix < MAC_ADDR_LEN; ix++)
+		tmpbuf[MAC_ADDR_LEN - 1 - ix] = mac[ix];
+
+	tempval = (tmpbuf[0] << 24) | (tmpbuf[1] << 16) | (tmpbuf[2] << 8) |
+		  tmpbuf[3];
+
+	out_be32(regs + GFAR_MACSTRADDR1_OFFSET, tempval);
+
+	tempval = *((uint *)(tmpbuf + 4));
+
+	out_be32(regs + GFAR_MACSTRADDR2_OFFSET, tempval);
+
+	return 0;
+}
+
+/* Writes the given phy's reg with value, using the specified MDIO regs */
+static int gfar_local_mdio_write(void __iomem *phyregs, uint addr, uint reg,
+				uint value)
+{
+	uint64_t start;
+
+	out_be32(phyregs + GFAR_MIIMADD_OFFSET, (addr << 8) | (reg & 0x1f));
+	out_be32(phyregs + GFAR_MIIMCON_OFFSET, value);
+
+	start = get_time_ns();
+	while (!is_timeout(start, 10 * MSECOND)) {
+		if (!(in_be32(phyregs + GFAR_MIIMMIND_OFFSET) &
+					GFAR_MIIMIND_BUSY))
+			return 0;
+	}
+
+	return -EIO;
+}
+
+/*
+ * Reads register regnum on the device's PHY through the
+ * specified registers. It lowers and raises the read
+ * command, and waits for the data to become valid (miimind
+ * notvalid bit cleared), and the bus to cease activity (miimind
+ * busy bit cleared), and then returns the value
+ */
+static uint gfar_local_mdio_read(void __iomem *phyregs, uint phyid, uint regnum)
+{
+	uint64_t start;
+
+	/* Put the address of the phy, and the register number into MIIMADD */
+	out_be32(phyregs + GFAR_MIIMADD_OFFSET, (phyid << 8) | (regnum & 0x1f));
+
+	/* Clear the command register, and wait */
+	out_be32(phyregs + GFAR_MIIMCOM_OFFSET, 0);
+
+	/* Initiate a read command, and wait */
+	out_be32(phyregs + GFAR_MIIMCOM_OFFSET, GFAR_MIIM_READ_COMMAND);
+
+	start = get_time_ns();
+	while (!is_timeout(start, 10 * MSECOND)) {
+		if (!(in_be32(phyregs + GFAR_MIIMMIND_OFFSET) &
+			(GFAR_MIIMIND_NOTVALID | GFAR_MIIMIND_BUSY)))
+			return in_be32(phyregs + GFAR_MIIMSTAT_OFFSET);
+	}
+
+	return -EIO;
+}
+
+static void gfar_configure_serdes(struct gfar_private *priv)
+{
+	gfar_local_mdio_write(priv->phyregs_sgmii,
+			in_be32(priv->regs + GFAR_TBIPA_OFFSET), GFAR_TBI_ANA,
+			priv->tbiana);
+	gfar_local_mdio_write(priv->phyregs_sgmii,
+			in_be32(priv->regs + GFAR_TBIPA_OFFSET),
+			GFAR_TBI_TBICON, GFAR_TBICON_CLK_SELECT);
+	gfar_local_mdio_write(priv->phyregs_sgmii,
+			in_be32(priv->regs + GFAR_TBIPA_OFFSET), GFAR_TBI_CR,
+			priv->tbicr);
+}
+
+/* Reset the internal and external PHYs. */
+static void gfar_init_phy(struct eth_device *dev)
+{
+	struct gfar_private *priv = dev->priv;
+	void __iomem *regs = priv->regs;
+	uint64_t start;
+
+	/* Assign a Physical address to the TBI */
+	out_be32(regs + GFAR_TBIPA_OFFSET, GFAR_TBIPA_VALUE);
+
+	/* Reset MII (due to new addresses) */
+	out_be32(priv->phyregs + GFAR_MIIMCFG_OFFSET, GFAR_MIIMCFG_RESET);
+	out_be32(priv->phyregs + GFAR_MIIMCFG_OFFSET, GFAR_MIIMCFG_INIT_VALUE);
+
+	start = get_time_ns();
+	while (!is_timeout(start, 10 * MSECOND)) {
+		if (!(in_be32(priv->phyregs + GFAR_MIIMMIND_OFFSET) &
+			GFAR_MIIMIND_BUSY))
+			break;
+	}
+
+	gfar_local_mdio_write(priv->phyregs, priv->phyaddr, GFAR_MIIM_CR,
+			GFAR_MIIM_CR_RST);
+
+	start = get_time_ns();
+	while (!is_timeout(start, 10 * MSECOND)) {
+		if (!(gfar_local_mdio_read(priv->phyregs, priv->phyaddr,
+					GFAR_MIIM_CR) & GFAR_MIIM_CR_RST))
+			break;
+	}
+
+	if (in_be32(regs + GFAR_ECNTRL_OFFSET) & GFAR_ECNTRL_SGMII_MODE)
+		gfar_configure_serdes(priv);
+}
+
+static int gfar_send(struct eth_device *edev, void *packet, int length)
+{
+	struct gfar_private *priv = edev->priv;
+	void __iomem *regs = priv->regs;
+	struct device_d *dev = edev->parent;
+	uint64_t start;
+	uint tidx;
+
+	tidx = priv->txidx;
+	priv->txbd[tidx].bufPtr = (uint) packet;
+	priv->txbd[tidx].length = length;
+	priv->txbd[tidx].status |= (TXBD_READY | TXBD_LAST |
+				TXBD_CRC | TXBD_INTERRUPT);
+
+	/* Tell the DMA to go */
+	out_be32(regs + GFAR_TSTAT_OFFSET, GFAR_TSTAT_CLEAR_THALT);
+
+	/* Wait for buffer to be transmitted */
+	start = get_time_ns();
+	while (priv->txbd[tidx].status & TXBD_READY) {
+		if (is_timeout(start, 5 * MSECOND)) {
+			break;
+		}
+	}
+
+	if (priv->txbd[tidx].status & TXBD_READY) {
+		dev_err(dev, "tx timeout: 0x%x\n", priv->txbd[tidx].status);
+		return -EBUSY;
+	}
+	else if (priv->txbd[tidx].status & TXBD_STATS) {
+		dev_err(dev, "TX error: 0x%x\n", priv->txbd[tidx].status);
+		return -EIO;
+	}
+
+	priv->txidx = (priv->txidx + 1) % TX_BUF_CNT;
+
+	return 0;
+}
+
+static int gfar_recv(struct eth_device *edev)
+{
+	struct gfar_private *priv = edev->priv;
+	struct device_d *dev = edev->parent;
+	void __iomem *regs = priv->regs;
+	int length;
+
+	if (priv->rxbd[priv->rxidx].status & RXBD_EMPTY) {
+		return 0; /* no data */
+	}
+
+	length = priv->rxbd[priv->rxidx].length;
+
+	/* Send the packet up if there were no errors */
+	if (!(priv->rxbd[priv->rxidx].status & RXBD_STATS)) {
+		net_receive(NetRxPackets[priv->rxidx], length - 4);
+	} else {
+		dev_err(dev, "Got error %x\n",
+		       (priv->rxbd[priv->rxidx].status & RXBD_STATS));
+	}
+
+	priv->rxbd[priv->rxidx].length = 0;
+
+	/* Set the wrap bit if this is the last element in the list */
+	if ((priv->rxidx + 1) == RX_BUF_CNT)
+		priv->rxbd[priv->rxidx].status = RXBD_WRAP;
+	else
+		priv->rxbd[priv->rxidx].status = 0;
+
+	priv->rxbd[priv->rxidx].status |= RXBD_EMPTY;
+	priv->rxidx = (priv->rxidx + 1) % RX_BUF_CNT;
+
+	if (in_be32(regs + GFAR_IEVENT_OFFSET) & GFAR_IEVENT_BSY) {
+		out_be32(regs + GFAR_IEVENT_OFFSET, GFAR_IEVENT_BSY);
+		out_be32(regs + GFAR_RSTAT_OFFSET, GFAR_RSTAT_CLEAR_RHALT);
+	}
+
+	return 0;
+}
+
+/* Read a MII PHY register. */
+static int gfar_miiphy_read(struct mii_device *mdev, int addr, int reg)
+{
+	struct eth_device *edev = mdev->edev;
+	struct device_d *dev = edev->parent;
+	struct gfar_private *priv = edev->priv;
+	int ret;
+
+	ret = gfar_local_mdio_read(priv->phyregs, addr, reg);
+	if (ret == -EIO)
+		dev_err(dev, "Can't read PHY at address %d\n", addr);
+
+	return ret;
+}
+
+/* Write a MII PHY register.  */
+static int gfar_miiphy_write(struct mii_device *mdev, int addr, int reg,
+				int value)
+{
+	struct eth_device *edev = mdev->edev;
+	struct device_d *dev = edev->parent;
+	struct gfar_private *priv = edev->priv;
+	unsigned short val = value;
+	int ret;
+
+	ret = gfar_local_mdio_write(priv->phyregs, addr, reg, val);
+
+	if (ret)
+		dev_err(dev, "Can't write PHY at address %d\n", addr);
+
+	return 0;
+}
+
+/*
+ * Initialize device structure. Returns success if
+ * initialization succeeded.
+ */
+static int gfar_probe(struct device_d *dev)
+{
+	struct gfar_info_struct *gfar_info = dev->platform_data;
+	struct eth_device *edev;
+	struct gfar_private *priv;
+	size_t size;
+	char *p;
+
+	priv = xzalloc(sizeof(struct gfar_private));
+
+	if (NULL == priv)
+		return -ENODEV;
+
+	edev = &priv->edev;
+
+	priv->regs = dev_request_mem_region(dev, 0);
+	priv->phyregs = dev_request_mem_region(dev, 1);
+	priv->phyregs_sgmii = dev_request_mem_region(dev, 2);
+
+	priv->phyaddr = gfar_info->phyaddr;
+	priv->tbicr = gfar_info->tbicr;
+	priv->tbiana = gfar_info->tbiana;
+
+	/*
+	 * Allocate descriptors 64-bit aligned. Descriptors 
+	 * are 8 bytes in size.
+	 */
+	size = ((TX_BUF_CNT * sizeof(struct txbd8)) +
+		(RX_BUF_CNT * sizeof(struct rxbd8))) + BUF_ALIGN;
+	p = (char *)xmemalign(BUF_ALIGN, size);
+	priv->txbd = (struct txbd8 *)p;
+	priv->rxbd = (struct rxbd8 *)(p + (TX_BUF_CNT * sizeof(struct txbd8)));
+
+	edev->priv = priv;
+	edev->init = gfar_init;
+	edev->open = gfar_open;
+	edev->halt = gfar_halt;
+	edev->send = gfar_send;
+	edev->recv = gfar_recv;
+	edev->get_ethaddr = gfar_get_ethaddr;
+	edev->set_ethaddr = gfar_set_ethaddr;
+	edev->parent = dev;
+
+	setbits_be32(priv->regs + GFAR_MACCFG1_OFFSET, GFAR_MACCFG1_SOFT_RESET);
+	udelay(2);
+	clrbits_be32(priv->regs + GFAR_MACCFG1_OFFSET, GFAR_MACCFG1_SOFT_RESET);
+
+	priv->miidev.read = gfar_miiphy_read;
+	priv->miidev.write = gfar_miiphy_write;
+	priv->miidev.address = priv->phyaddr;
+	priv->miidev.flags = 0;
+	priv->miidev.edev = edev;
+	priv->miidev.parent = dev;
+
+	gfar_init_phy(edev);
+
+	mii_register(&priv->miidev);
+
+	return eth_register(edev);
+}
+
+static struct driver_d gfar_eth_driver = {
+	.name  = "gfar",
+	.probe = gfar_probe,
+};
+
+static int gfar_eth_init(void)
+{
+	register_driver(&gfar_eth_driver);
+	return 0;
+}
+
+device_initcall(gfar_eth_init);
diff --git a/drivers/net/gianfar.h b/drivers/net/gianfar.h
new file mode 100644
index 0000000..a4ad99e
--- /dev/null
+++ b/drivers/net/gianfar.h
@@ -0,0 +1,284 @@
+/*
+ *  gianfar.h
+ *
+ *  Driver for the Motorola Triple Speed Ethernet Controller
+ *
+ *  This software may be used and distributed according to the
+ *  terms of the GNU Public License, Version 2, incorporated
+ *  herein by reference.
+ *
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ * Copyright 2004, 2007, 2009  Freescale Semiconductor, Inc.
+ * (C) Copyright 2003, Motorola, Inc.
+ * based on tsec.h by Xianghua Xiao and Andy Fleming 2003-2009
+ */
+
+#ifndef __GIANFAR_H
+#define __GIANFAR_H
+
+#include <net.h>
+#include <config.h>
+#include <mach/gianfar.h>
+
+#define MAC_ADDR_LEN 6
+
+/* TBI register addresses */
+#define GFAR_TBI_CR		0x00
+#define GFAR_TBI_SR		0x01
+#define GFAR_TBI_ANA		0x04
+#define GFAR_TBI_ANLPBPA	0x05
+#define GFAR_TBI_ANEX		0x06
+#define GFAR_TBI_TBICON		0x11
+
+/* TBI MDIO register bit fields*/
+#define GFAR_TBICON_CLK_SELECT		0x0020
+#define GFAR_TBIANA_ASYMMETRIC_PAUSE	0x0100
+#define GFAR_TBIANA_SYMMETRIC_PAUSE	0x0080
+#define GFAR_TBIANA_HALF_DUPLEX		0x0040
+#define GFAR_TBIANA_FULL_DUPLEX		0x0020
+/* The two reserved bits below are used in AN3869 to enable SGMII. */
+#define GFAR_TBIANA_RESERVED1		0x4000
+#define GFAR_TBIANA_RESERVED15		0x0001
+#define GFAR_TBICR_PHY_RESET		0x8000
+#define GFAR_TBICR_ANEG_ENABLE		0x1000
+#define GFAR_TBICR_RESTART_ANEG		0x0200
+#define GFAR_TBICR_FULL_DUPLEX		0x0100
+#define GFAR_TBICR_SPEED1_SET		0x0040
+
+/* MAC register bits */
+#define GFAR_MACCFG1_SOFT_RESET		0x80000000
+#define GFAR_MACCFG1_RESET_RX_MC	0x00080000
+#define GFAR_MACCFG1_RESET_TX_MC	0x00040000
+#define GFAR_MACCFG1_RESET_RX_FUN	0x00020000
+#define TESC_MACCFG1_RESET_TX_FUN	0x00010000
+#define GFAR_MACCFG1_LOOPBACK		0x00000100
+#define GFAR_MACCFG1_RX_FLOW		0x00000020
+#define GFAR_MACCFG1_TX_FLOW		0x00000010
+#define GFAR_MACCFG1_SYNCD_RX_EN	0x00000008
+#define GFAR_MACCFG1_RX_EN		0x00000004
+#define GFAR_MACCFG1_SYNCD_TX_EN	0x00000002
+#define GFAR_MACCFG1_TX_EN		0x00000001
+
+#define MACCFG2_INIT_SETTINGS		0x00007205
+#define GFAR_MACCFG2_FULL_DUPLEX	0x00000001
+#define GFAR_MACCFG2_IF			0x00000300
+#define GFAR_MACCFG2_GMII		0x00000200
+#define GFAR_MACCFG2_MII		0x00000100
+
+#define ECNTRL_INIT_SETTINGS		0x00001000
+#define GFAR_ECNTRL_TBI_MODE		0x00000020
+#define GFAR_ECNTRL_R100		0x00000008
+#define GFAR_ECNTRL_SGMII_MODE		0x00000002
+
+#ifndef GFAR_TBIPA_VALUE
+	#define GFAR_TBIPA_VALUE	0x1f
+#endif
+#define GFAR_MIIMCFG_INIT_VALUE		0x00000003
+#define GFAR_MIIMCFG_RESET		0x80000000
+
+#define GFAR_MIIMIND_BUSY		0x00000001
+#define GFAR_MIIMIND_NOTVALID		0x00000004
+
+#define GFAR_MIIM_CONTROL		0x00000000
+#define GFAR_MIIM_CONTROL_RESET		0x00009140
+#define GFAR_MIIM_CONTROL_INIT		0x00001140
+#define GFAR_MIIM_CONTROL_RESTART	0x00001340
+#define GFAR_MIIM_ANEN			0x00001000
+
+#define GFAR_MIIM_CR			0x00000000
+#define GFAR_MIIM_CR_RST		0x00008000
+#define GFAR_MIIM_CR_INIT		0x00001000
+
+#define GFAR_MIIM_STATUS		0x1
+#define GFAR_MIIM_STATUS_AN_DONE	0x00000020
+#define GFAR_MIIM_STATUS_LINK		0x0004
+
+#define GFAR_MIIM_PHYIR1		0x2
+#define GFAR_MIIM_PHYIR2		0x3
+
+#define GFAR_MIIM_ANAR			0x4
+#define GFAR_MIIM_ANAR_INIT		0x1e1
+
+#define GFAR_MIIM_TBI_ANLPBPA		0x5
+#define GFAR_MIIM_TBI_ANLPBPA_HALF	0x00000040
+#define GFAR_MIIM_TBI_ANLPBPA_FULL	0x00000020
+
+#define GFAR_MIIM_TBI_ANEX		0x6
+#define GFAR_MIIM_TBI_ANEX_NP		0x00000004
+#define GFAR_MIIM_TBI_ANEX_PRX		0x00000002
+
+#define GFAR_MIIM_GBIT_CONTROL		0x9
+#define GFAR_MIIM_GBIT_CONTROL_INIT	0xe00
+
+#define GFAR_MIIM_EXT_PAGE_ACCESS	0x1f
+
+#define GFAR_MIIM_GBIT_CON		0x09
+#define GFAR_MIIM_GBIT_CON_ADVERT	0x0e00
+
+#define GFAR_MIIM_READ_COMMAND		0x00000001
+
+#define MRBLR_INIT_SETTINGS	1536
+
+#define MINFLR_INIT_SETTINGS	0x00000040
+
+#define DMACTRL_INIT_SETTINGS	0x000000c3
+#define GFAR_DMACTRL_GRS	0x00000010
+#define GFAR_DMACTRL_GTS	0x00000008
+
+#define GFAR_TSTAT_CLEAR_THALT	0x80000000
+#define GFAR_RSTAT_CLEAR_RHALT	0x00800000
+
+#define GFAR_IEVENT_INIT_CLEAR	0xffffffff
+#define GFAR_IEVENT_BABR	0x80000000
+#define GFAR_IEVENT_RXC		0x40000000
+#define GFAR_IEVENT_BSY		0x20000000
+#define GFAR_IEVENT_EBERR	0x10000000
+#define GFAR_IEVENT_MSRO	0x04000000
+#define GFAR_IEVENT_GTSC	0x02000000
+#define GFAR_IEVENT_BABT	0x01000000
+#define GFAR_IEVENT_TXC		0x00800000
+#define GFAR_IEVENT_TXE		0x00400000
+#define GFAR_IEVENT_TXB		0x00200000
+#define GFAR_IEVENT_TXF		0x00100000
+#define GFAR_IEVENT_IE		0x00080000
+#define GFAR_IEVENT_LC		0x00040000
+#define GFAR_IEVENT_CRL		0x00020000
+#define GFAR_IEVENT_XFUN	0x00010000
+#define GFAR_IEVENT_RXB0	0x00008000
+#define GFAR_IEVENT_GRSC	0x00000100
+#define GFAR_IEVENT_RXF0	0x00000080
+
+#define GFAR_IMASK_INIT_CLEAR	0x00000000
+
+/* Default Attribute fields */
+#define ATTR_INIT_SETTINGS     0x000000c0
+#define ATTRELI_INIT_SETTINGS  0x00000000
+
+/* TxBD status field bits */
+#define TXBD_READY		0x8000
+#define TXBD_PADCRC		0x4000
+#define TXBD_WRAP		0x2000
+#define TXBD_INTERRUPT		0x1000
+#define TXBD_LAST		0x0800
+#define TXBD_CRC		0x0400
+#define TXBD_DEF		0x0200
+#define TXBD_HUGEFRAME		0x0080
+#define TXBD_LATECOLLISION	0x0080
+#define TXBD_RETRYLIMIT		0x0040
+#define	TXBD_RETRYCOUNTMASK	0x003c
+#define TXBD_UNDERRUN		0x0002
+#define TXBD_STATS		0x03ff
+
+/* RxBD status field bits */
+#define RXBD_EMPTY		0x8000
+#define RXBD_RO1		0x4000
+#define RXBD_WRAP		0x2000
+#define RXBD_INTERRUPT		0x1000
+#define RXBD_LAST		0x0800
+#define RXBD_FIRST		0x0400
+#define RXBD_MISS		0x0100
+#define RXBD_BROADCAST		0x0080
+#define RXBD_MULTICAST		0x0040
+#define RXBD_LARGE		0x0020
+#define RXBD_NONOCTET		0x0010
+#define RXBD_SHORT		0x0008
+#define RXBD_CRCERR		0x0004
+#define RXBD_OVERRUN		0x0002
+#define RXBD_TRUNCATED		0x0001
+#define RXBD_STATS		0x003f
+
+struct txbd8 {
+	ushort	     status;	     /* Status Fields */
+	ushort	     length;	     /* Buffer length */
+	uint	     bufPtr;	     /* Buffer Pointer */
+};
+
+struct rxbd8 {
+	ushort	     status;	     /* Status Fields */
+	ushort	     length;	     /* Buffer Length */
+	uint	     bufPtr;	     /* Buffer Pointer */
+};
+
+/* eTSEC general control and status registers */
+#define GFAR_IEVENT_OFFSET	0x010	/* Interrupt Event */
+#define GFAR_IMASK_OFFSET	0x014	/* Interrupt Mask */
+#define GFAR_ECNTRL_OFFSET	0x020	/* Ethernet Control */
+#define GFAR_MINFLR_OFFSET	0x024	/* Minimum Frame Length */
+#define GFAR_DMACTRL_OFFSET	0x02c	/* DMA Control */
+#define GFAR_TBIPA_OFFSET	0x030	/* TBI PHY address */
+
+/* eTSEC transmit control and status register */
+#define GFAR_TSTAT_OFFSET	0x104	/* transmit status register */
+#define GFAR_TBASE0_OFFSET	0x204	/* TxBD Base Address */
+
+/* eTSEC receive control and status register */
+#define GFAR_RCTRL_OFFSET	0x300	/* Receive Control */
+#define GFAR_RSTAT_OFFSET	0x304	/* transmit status register */
+#define GFAR_MRBLR_OFFSET	0x340	/* Maximum Receive Buffer Length */
+#define GFAR_RBASE0_OFFSET	0x404	/* RxBD Base Address */
+
+/* eTSEC MAC registers */
+#define GFAR_MACCFG1_OFFSET	0x500	/* MAC Configuration #1 */
+#define GFAR_MACCFG2_OFFSET	0x504	/* MAC Configuration #2 */
+#define GFAR_MIIMCFG_OFFSET	0x520	/* MII management configuration */
+#define GFAR_MIIMCOM_OFFSET	0x524	/* MII management command */
+#define GFAR_MIIMADD_OFFSET	0x528	/* MII management address */
+#define GFAR_MIIMCON_OFFSET	0x52c	/* MII management control */
+#define GFAR_MIIMSTAT_OFFSET	0x530	/* MII management status */
+#define GFAR_MIIMMIND_OFFSET	0x534	/* MII management indicator */
+#define GFAR_MACSTRADDR1_OFFSET 0x540	/* MAC station address #1 */
+#define GFAR_MACSTRADDR2_OFFSET 0x544	/* MAC station address #2 */
+
+/* eTSEC transmit and receive counters registers. */
+#define GFAR_TR64_OFFSET	0x680
+/* eTSEC counter control and TOE statistics registers */
+#define GFAR_CAM1_OFFSET	0x738
+#define GFAR_CAM2_OFFSET	0x73c
+
+/* Individual/group address registers */
+#define GFAR_IADDR0_OFFSET	0x800
+#define GFAR_IADDR1_OFFSET	0x804
+#define GFAR_IADDR2_OFFSET	0x808
+#define GFAR_IADDR3_OFFSET	0x80c
+#define GFAR_IADDR4_OFFSET	0x810
+#define GFAR_IADDR5_OFFSET	0x814
+#define GFAR_IADDR6_OFFSET	0x818
+#define GFAR_IADDR7_OFFSET	0x81c
+
+#define GFAR_IADDR(REGNUM) (GFAR_IADDR##REGNUM##_OFFSET)
+
+/* Group address registers */
+#define GFAR_GADDR0_OFFSET	0x880
+#define GFAR_GADDR1_OFFSET	0x884
+#define GFAR_GADDR2_OFFSET	0x888
+#define GFAR_GADDR3_OFFSET	0x88c
+#define GFAR_GADDR4_OFFSET	0x890
+#define GFAR_GADDR5_OFFSET	0x894
+#define GFAR_GADDR6_OFFSET	0x898
+#define GFAR_GADDR7_OFFSET	0x89c
+
+#define GFAR_GADDR(REGNUM) (GFAR_GADDR##REGNUM##_OFFSET)
+
+/* eTSEC DMA attributes registers */
+#define GFAR_ATTR_OFFSET	0xbf8	/* Default Attribute Register */
+#define GFAR_ATTRELI_OFFSET	0xbfc	/* Default Attribute Extract Len/Idx */
+
+struct gfar_private {
+	struct eth_device edev;
+	void __iomem *regs;
+	void __iomem *phyregs;
+	void __iomem *phyregs_sgmii;
+	struct phy_info *phyinfo;
+	struct mii_device miidev;
+	volatile struct txbd8 *txbd;
+	volatile struct rxbd8 *rxbd;
+	uint txidx;
+	uint rxidx;
+	uint phyaddr;
+	uint tbicr;
+	uint tbiana;
+	uint link;
+	uint duplexity;
+	uint speed;
+};
+#endif /* __GIANFAR_H */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
