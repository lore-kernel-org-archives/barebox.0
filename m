Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uf3oY-0001Pm-Kd
 for barebox@lists.infradead.org; Wed, 22 May 2013 07:50:33 +0000
Received: from mailout-de.gmx.net ([10.1.76.35]) by mrigmx.server.lan
 (mrigmx002) with ESMTP (Nemesis) id 0MbvL6-1Uw2zl1G0E-00JHSZ for
 <barebox@lists.infradead.org>; Wed, 22 May 2013 09:50:03 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 22 May 2013 09:49:48 +0200
Message-Id: <1369208989-14369-3-git-send-email-linux@rempel-privat.de>
In-Reply-To: <1369208989-14369-1-git-send-email-linux@rempel-privat.de>
References: <1369208989-14369-1-git-send-email-linux@rempel-privat.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC, PATCH v2 2/3] net: add ar231x-eth support
To: barebox@lists.infradead.org

This driver should work with some Atheros WiSoCs:
- ar2312, ar2313
- ar2315, ar2316 ...

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/net/Kconfig  |   7 +
 drivers/net/Makefile |   1 +
 drivers/net/ar231x.c | 429 +++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/ar231x.h | 219 ++++++++++++++++++++++++++
 4 files changed, 656 insertions(+)
 create mode 100644 drivers/net/ar231x.c
 create mode 100644 drivers/net/ar231x.h

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 2736094..5ad3e4d 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -27,6 +27,13 @@ menu "Network drivers"
 
 source "drivers/net/phy/Kconfig"
 
+config DRIVER_NET_AR231X
+	bool "AR231X Ethernet support"
+	depends on MACH_MIPS_AR231X
+	select PHYLIB
+	help
+	  Support for the AR231x/531x ethernet controller
+
 config DRIVER_NET_CALXEDA_XGMAC
 	bool "Calxeda xgmac"
 
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 42136f8..73403fe 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -1,3 +1,4 @@
+obj-$(CONFIG_DRIVER_NET_AR231X)		+= ar231x.o
 obj-$(CONFIG_DRIVER_NET_CALXEDA_XGMAC)	+= xgmac.o
 obj-$(CONFIG_DRIVER_NET_CS8900)		+= cs8900.o
 obj-$(CONFIG_DRIVER_NET_CPSW)		+= cpsw.o
diff --git a/drivers/net/ar231x.c b/drivers/net/ar231x.c
new file mode 100644
index 0000000..e7c0da7
--- /dev/null
+++ b/drivers/net/ar231x.c
@@ -0,0 +1,429 @@
+/*
+ * ar231x.c: driver for the Atheros AR231x Ethernet device.
+ * This device is build in to SoC on ar231x series.
+ * All known of them are big endian.
+ *
+ * Based on Linux driver:
+ *   Copyright (C) 2004 by Sameer Dekate <sdekate@arubanetworks.com>
+ *   Copyright (C) 2006 Imre Kaloz <kaloz@openwrt.org>
+ *   Copyright (C) 2006-2009 Felix Fietkau <nbd@openwrt.org>
+ * Ported to Barebox:
+ *   Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+/*
+ * Known issues:
+ * - broadcast packets are not filtered by hardware. On noisy network with
+ * lots of bcast packages rx_buffer can be completely filled after. Currently
+ * we clear rx_buffer transmit some package.
+ */
+
+#include <common.h>
+#include <net.h>
+#include <init.h>
+#include <io.h>
+
+#include "ar231x.h"
+
+static inline void dma_writel(struct ar231x_eth_priv *priv,
+		u32 val, int reg)
+{
+	__raw_writel(val, priv->dma_regs + reg);
+}
+
+static inline u32 dma_readl(struct ar231x_eth_priv *priv, int reg)
+{
+	return __raw_readl(priv->dma_regs + reg);
+}
+
+static inline void eth_writel(struct ar231x_eth_priv *priv,
+		u32 val, int reg)
+{
+	__raw_writel(val, priv->eth_regs + reg);
+}
+
+static inline u32 eth_readl(struct ar231x_eth_priv *priv, int reg)
+{
+	return __raw_readl(priv->eth_regs + reg);
+}
+
+static inline void phy_writel(struct ar231x_eth_priv *priv,
+		u32 val, int reg)
+{
+	__raw_writel(val, priv->phy_regs + reg);
+}
+
+static inline u32 phy_readl(struct ar231x_eth_priv *priv, int reg)
+{
+	return __raw_readl(priv->phy_regs + reg);
+}
+
+static void ar231x_reset_bit_(struct ar231x_eth_priv *priv,
+		u32 val, enum reset_state state)
+{
+	if (priv->reset_bit) {
+		(*priv->reset_bit)(val, state);
+	}
+}
+
+static int ar231x_set_ethaddr(struct eth_device *edev, unsigned char *addr);
+static void ar231x_reset_regs(struct eth_device *edev)
+{
+	struct ar231x_eth_priv *priv = edev->priv;
+	struct ar231x_eth_platform_data *cfg = priv->cfg;
+	u32 flags;
+
+	ar231x_reset_bit_(priv, cfg->reset_mac, SET);
+	mdelay(10);
+
+	ar231x_reset_bit_(priv, cfg->reset_mac, REMOVE);
+	mdelay(10);
+
+	ar231x_reset_bit_(priv, cfg->reset_phy, SET);
+	mdelay(10);
+
+	ar231x_reset_bit_(priv, cfg->reset_phy, REMOVE);
+	mdelay(10);
+
+	dma_writel(priv, DMA_BUS_MODE_SWR, AR231X_DMA_BUS_MODE);
+	mdelay(10);
+
+	dma_writel(priv, ((32 << DMA_BUS_MODE_PBL_SHIFT) | DMA_BUS_MODE_BLE),
+			AR231X_DMA_BUS_MODE);
+
+	/* FIXME: priv->{t,r}x_ring are virtual addresses,
+	 * use virt-to-phys convertion */
+	dma_writel(priv, (u32)priv->tx_ring, AR231X_DMA_TX_RING);
+	dma_writel(priv, (u32)priv->rx_ring, AR231X_DMA_RX_RING);
+
+	dma_writel(priv, (DMA_CONTROL_SR | DMA_CONTROL_ST | DMA_CONTROL_SF),
+			AR231X_DMA_CONTROL);
+
+	eth_writel(priv, FLOW_CONTROL_FCE, AR231X_ETH_FLOW_CONTROL);
+	/* TODO: not sure if we need it here. */
+	eth_writel(priv, 0x8100, AR231X_ETH_VLAN_TAG);
+
+	/* Enable Ethernet Interface */
+	flags = (MAC_CONTROL_TE |	/* transmit enable */
+			/* FIXME: MAC_CONTROL_PM - pass mcast.
+			 * Seems like it makes no difference on some WiSoCs,
+			 * for example ar2313.
+			 * It should be tested on ar231[5,6,7] */
+			MAC_CONTROL_PM |
+			MAC_CONTROL_F  |	/* full duplex */
+			MAC_CONTROL_HBD);	/* heart beat disabled */
+	eth_writel(priv, flags, AR231X_ETH_MAC_CONTROL);
+}
+
+static void ar231x_flash_rxdsc(struct ar231x_descr *rxdsc)
+{
+	rxdsc->status = DMA_RX_OWN;
+	rxdsc->devcs = ((AR2313_RX_BUFSIZE << DMA_RX1_BSIZE_SHIFT) |
+			DMA_RX1_CHAINED);
+}
+
+static void ar231x_allocate_dma_descriptors(struct eth_device *edev)
+{
+	struct ar231x_eth_priv *priv = edev->priv;
+	u16 ar231x_descr_size = sizeof(struct ar231x_descr);
+	u16 i;
+
+	priv->tx_ring = xmalloc(ar231x_descr_size);
+	dev_dbg(&edev->dev, "allocate tx_ring @ %p\n", priv->tx_ring);
+
+	priv->rx_ring = xmalloc(ar231x_descr_size * AR2313_RXDSC_ENTRIES);
+	dev_dbg(&edev->dev, "allocate rx_ring @ %p\n", priv->rx_ring);
+
+	priv->rx_buffer = xmalloc(AR2313_RX_BUFSIZE * AR2313_RXDSC_ENTRIES);
+	dev_dbg(&edev->dev, "allocate rx_buffer @ %p\n", priv->rx_buffer);
+
+	/* Initialize the rx Descriptors */
+	for (i = 0; i < AR2313_RXDSC_ENTRIES; i++) {
+		struct ar231x_descr *rxdsc = &priv->rx_ring[i];
+		ar231x_flash_rxdsc(rxdsc);
+		rxdsc->buffer_ptr =
+			(u32)(priv->rx_buffer + AR2313_RX_BUFSIZE * i);
+		rxdsc->next_dsc_ptr = (u32)&priv->rx_ring[DSC_NEXT(i)];
+	}
+	/* set initial position of ring descriptor */
+	priv->next_rxdsc = &priv->rx_ring[0];
+}
+
+static void ar231x_adjust_link(struct eth_device *edev)
+{
+	struct ar231x_eth_priv *priv = edev->priv;
+	u32 mc;
+
+	if (edev->phydev->duplex != priv->oldduplex) {
+		mc = eth_readl(priv, AR231X_ETH_MAC_CONTROL);
+		mc &= ~(MAC_CONTROL_F | MAC_CONTROL_DRO);
+		if (edev->phydev->duplex)
+			mc |= MAC_CONTROL_F;
+		else
+			mc |= MAC_CONTROL_DRO;
+		eth_writel(priv, mc, AR231X_ETH_MAC_CONTROL);
+		priv->oldduplex = edev->phydev->duplex;
+	}
+}
+
+static int ar231x_eth_init(struct eth_device *edev)
+{
+	struct ar231x_eth_priv *priv = edev->priv;
+
+	ar231x_allocate_dma_descriptors(edev);
+	ar231x_reset_regs(edev);
+	ar231x_set_ethaddr(edev, priv->mac);
+	return 0;
+}
+
+static int ar231x_eth_open(struct eth_device *edev)
+{
+	struct ar231x_eth_priv *priv = edev->priv;
+	u32 tmp;
+
+	/* Enable RX. Now the rx_buffer will be filled.
+	 * If it is full we may lose first transmission. In this case
+	 * barebox should retry it.
+	 * Or TODO: - force HW to filter some how broadcasts
+	 *			- disable RX if we do not need it. */
+	tmp = eth_readl(priv, AR231X_ETH_MAC_CONTROL);
+	eth_writel(priv, (tmp | MAC_CONTROL_RE), AR231X_ETH_MAC_CONTROL);
+
+	return phy_device_connect(edev, &priv->miibus, (int)priv->phy_regs,
+			ar231x_adjust_link, 0, PHY_INTERFACE_MODE_MII);
+}
+
+static int ar231x_eth_recv(struct eth_device *edev)
+{
+	struct ar231x_eth_priv *priv = edev->priv;
+
+	while (1) {
+		struct ar231x_descr *rxdsc = priv->next_rxdsc;
+		u32 status = rxdsc->status;
+
+		/* owned by DMA? */
+		if (status & DMA_RX_OWN)
+			break;
+
+		/* Pick only packets what we can handle:
+		 * - only complete packet per buffer
+		 *   (First and Last at same time)
+		 * - drop multicast */
+		if (!priv->kill_rx_ring &&
+				((status & DMA_RX_MASK) == DMA_RX_FSLS)) {
+			u16 length =
+				((status >> DMA_RX_LEN_SHIFT) & 0x3fff)
+				- CRC_LEN;
+			net_receive((void *)rxdsc->buffer_ptr, length);
+		}
+		/* Clean descriptor. now it is owned by DMA. */
+		priv->next_rxdsc = (struct ar231x_descr *)rxdsc->next_dsc_ptr;
+		ar231x_flash_rxdsc(rxdsc);
+	}
+	priv->kill_rx_ring = 0;
+	return 0;
+}
+
+static int ar231x_eth_send(struct eth_device *edev, void *packet,
+		int length)
+{
+	struct ar231x_eth_priv *priv = edev->priv;
+	struct ar231x_descr *txdsc = priv->tx_ring;
+	u32 rx_missed;
+
+	/* We do not do async work.
+	 * If rx_ring is full, there is nothing we can use. */
+	rx_missed = dma_readl(priv, AR231X_DMA_RX_MISSED);
+	if (rx_missed) {
+		priv->kill_rx_ring = 1;
+		ar231x_eth_recv(edev);
+	}
+
+	/* Setup the transmit descriptor. */
+	txdsc->devcs = ((length << DMA_TX1_BSIZE_SHIFT) | DMA_TX1_DEFAULT);
+	txdsc->buffer_ptr = (uint)packet;
+	txdsc->status = DMA_TX_OWN;
+
+	/* Trigger transmission */
+	dma_writel(priv, 0, AR231X_DMA_TX_POLL);
+
+	/* Take enough time to transmit packet. 100 is not enough. */
+	wait_on_timeout(2000 * MSECOND,
+		!(txdsc->status & DMA_TX_OWN));
+
+	/* We can't do match here. If it is still in progress,
+	 * then engine is probably stalled or we wait not enough. */
+	if (txdsc->status & DMA_TX_OWN)
+		dev_err(&edev->dev, "Frame is still in progress.\n");
+
+	if (txdsc->status & DMA_TX_ERROR)
+		dev_err(&edev->dev, "Frame was aborted by engine\n");
+
+	/* Ready or not. Stop it. */
+	txdsc->status = 0;
+	return 0;
+}
+
+static void ar231x_eth_halt(struct eth_device *edev)
+{
+	struct ar231x_eth_priv *priv = edev->priv;
+	u32 tmp;
+
+	/* kill the MAC: disable RX and TX */
+	tmp = eth_readl(priv, AR231X_ETH_MAC_CONTROL);
+	eth_writel(priv, tmp & ~(MAC_CONTROL_RE | MAC_CONTROL_TE),
+			AR231X_ETH_MAC_CONTROL);
+
+	/* stop DMA */
+	dma_writel(priv, 0, AR231X_DMA_CONTROL);
+	dma_writel(priv, DMA_BUS_MODE_SWR, AR231X_DMA_BUS_MODE);
+
+	/* place PHY and MAC in reset */
+	ar231x_reset_bit_(priv, (priv->cfg->reset_mac | priv->cfg->reset_phy), SET);
+}
+
+static int ar231x_get_ethaddr(struct eth_device *edev, unsigned char *addr)
+{
+	struct ar231x_eth_priv *priv = edev->priv;
+
+	/* MAC address is stored on flash, in some kind of atheros config
+	 * area. Platform code should read it and pass to the driver. */
+	memcpy(addr, priv->mac, 6);
+	return 0;
+}
+
+/**
+ * These device do not have build in MAC address.
+ * It is located on atheros-config field on flash.
+ */
+static int ar231x_set_ethaddr(struct eth_device *edev, unsigned char *addr)
+{
+	struct ar231x_eth_priv *priv = edev->priv;
+
+	eth_writel(priv,
+			(addr[5] <<  8) | (addr[4]),
+			AR231X_ETH_MAC_ADDR1);
+	eth_writel(priv,
+			(addr[3] << 24) | (addr[2] << 16) |
+			(addr[1] <<  8) | addr[0],
+			AR231X_ETH_MAC_ADDR2);
+
+	mdelay(10);
+	return 0;
+}
+
+#define MII_ADDR(phy, reg) \
+	((reg << MII_ADDR_REG_SHIFT) | (phy << MII_ADDR_PHY_SHIFT))
+
+static int ar231x_miibus_read(struct mii_bus *bus, int phy_id, int regnum)
+{
+	struct ar231x_eth_priv *priv = bus->priv;
+	uint64_t time_start;
+
+	phy_writel(priv, MII_ADDR(phy_id, regnum), AR231X_ETH_MII_ADDR);
+	time_start = get_time_ns();
+	while (phy_readl(priv, AR231X_ETH_MII_ADDR) & MII_ADDR_BUSY) {
+		if (is_timeout(time_start, SECOND)) {
+			dev_err(&bus->dev, "miibus read timeout\n");
+			return -ETIMEDOUT;
+		}
+	}
+	return phy_readl(priv, AR231X_ETH_MII_DATA) >> MII_DATA_SHIFT;
+}
+
+static int ar231x_miibus_write(struct mii_bus *bus, int phy_id,
+			       int regnum, u16 val)
+{
+	struct ar231x_eth_priv *priv = bus->priv;
+	uint64_t time_start = get_time_ns();
+
+	while (phy_readl(priv, AR231X_ETH_MII_ADDR) & MII_ADDR_BUSY) {
+		if (is_timeout(time_start, SECOND)) {
+			dev_err(&bus->dev, "miibus write timeout\n");
+			return -ETIMEDOUT;
+		}
+	}
+	phy_writel(priv, val << MII_DATA_SHIFT, AR231X_ETH_MII_DATA);
+	phy_writel(priv, MII_ADDR(phy_id, regnum) | MII_ADDR_WRITE,
+		   AR231X_ETH_MII_ADDR);
+	return 0;
+}
+
+static int ar231x_mdiibus_reset(struct mii_bus *bus)
+{
+	struct ar231x_eth_priv *priv = bus->priv;
+
+	ar231x_reset_regs(&priv->edev);
+	return 0;
+}
+
+static int ar231x_eth_probe(struct device_d *dev)
+{
+	struct ar231x_eth_priv *priv;
+	struct eth_device *edev;
+	struct mii_bus *miibus;
+	struct ar231x_eth_platform_data *pdata;
+
+	if (!dev->platform_data) {
+		dev_err(dev, "no platform data\n");
+		return -ENODEV;
+	}
+
+	pdata = dev->platform_data;
+
+	priv = xzalloc(sizeof(struct ar231x_eth_priv));
+	edev = &priv->edev;
+	miibus = &priv->miibus;
+	edev->priv = priv;
+
+	/* link all platform depended regs */
+	priv->mac = pdata->mac;
+
+	priv->eth_regs = dev_request_mem_region(dev, 0);
+	/* we have 0x100000 for eth, part of it are dma regs.
+	 * So they are already requested */
+	priv->dma_regs = (void *)(priv->eth_regs + 0x1000);
+
+	priv->phy_regs = dev_request_mem_region(dev, 1);
+
+	priv->cfg = pdata;
+	edev->init = ar231x_eth_init;
+	edev->open = ar231x_eth_open;
+	edev->send = ar231x_eth_send;
+	edev->recv = ar231x_eth_recv;
+	edev->halt = ar231x_eth_halt;
+	edev->get_ethaddr = ar231x_get_ethaddr;
+	edev->set_ethaddr = ar231x_set_ethaddr;
+
+	priv->miibus.read = ar231x_miibus_read;
+	priv->miibus.write = ar231x_miibus_write;
+	priv->miibus.reset = ar231x_mdiibus_reset;
+	priv->miibus.priv = priv;
+	priv->miibus.parent = dev;
+
+	mdiobus_register(miibus);
+	eth_register(edev);
+
+	return 0;
+}
+
+static void ar231x_eth_remove(struct device_d *dev)
+{
+
+}
+
+static struct driver_d ar231x_eth_driver = {
+	.name = "ar231x_eth",
+	.probe = ar231x_eth_probe,
+	.remove = ar231x_eth_remove,
+};
+
+static int ar231x_eth_driver_init(void)
+{
+	return platform_driver_register(&ar231x_eth_driver);
+}
+device_initcall(ar231x_eth_driver_init);
diff --git a/drivers/net/ar231x.h b/drivers/net/ar231x.h
new file mode 100644
index 0000000..2468412
--- /dev/null
+++ b/drivers/net/ar231x.h
@@ -0,0 +1,219 @@
+/*
+ * ar231x.h: Linux driver for the Atheros AR231x Ethernet device.
+ * Based on Linux driver:
+ *		Copyright (C) 2004 by Sameer Dekate <sdekate@arubanetworks.com>
+ *		Copyright (C) 2006 Imre Kaloz <kaloz@openwrt.org>
+ *		Copyright (C) 2006-2009 Felix Fietkau <nbd@openwrt.org>
+ * Ported to Barebox:
+ *		Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
+ *
+ * Thanks to Atheros for providing hardware and documentation
+ * enabling me to write this driver.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef _AR2313_2_H_
+#define _AR2313_2_H_
+
+#include <net.h>
+#include <mach/ar231x_platform.h>
+
+/* Allocate 64 RX buffers. This will reduce packet loss, until we will start
+ * processing them. It is important in noisy network with lots of broadcasts. */
+#define AR2313_RXDSC_ENTRIES	64
+#define DSC_NEXT(idx)		(((idx) + 1) & (AR2313_RXDSC_ENTRIES - 1))
+
+/* Use system default buffers size. At the moment of writing it was 1518 */
+#define AR2313_RX_BUFSIZE	PKTSIZE
+#define CRC_LEN			4
+
+/**
+ * DMA controller
+ */
+#define AR231X_DMA_BUS_MODE		0x00 /* (CSR0) */
+#define AR231X_DMA_TX_POLL		0x04 /* (CSR1) */
+#define AR231X_DMA_RX_POLL		0x08 /* (CSR2) */
+#define AR231X_DMA_RX_RING		0x0c /* (CSR3) */
+#define AR231X_DMA_TX_RING		0x10 /* (CSR4) */
+#define AR231X_DMA_STATUS		0x14 /* (CSR5) */
+#define AR231X_DMA_CONTROL		0x18 /* (CSR6) */
+#define AR231X_DMA_INTR_ENA		0x1c /* (CSR7) */
+#define AR231X_DMA_RX_MISSED		0x20 /* (CSR8) */
+/* reserverd 0x24-0x4c (CSR9-19) */
+#define AR231X_DMA_CUR_TX_BUF_ADDR	0x50 /* (CSR20) */
+#define AR231X_DMA_CUR_RX_BUF_ADDR	0x54 /* (CSR21) */
+
+/**
+ * Ethernet controller
+ */
+#define AR231X_ETH_MAC_CONTROL		0x00
+#define AR231X_ETH_MAC_ADDR1		0x04
+#define AR231X_ETH_MAC_ADDR2		0x08
+#define AR231X_ETH_MCAST_TABLE1		0x0c
+#define AR231X_ETH_MCAST_TABLE2		0x10
+#define AR231X_ETH_MII_ADDR		0x14
+#define AR231X_ETH_MII_DATA		0x18
+#define AR231X_ETH_FLOW_CONTROL		0x1c
+#define AR231X_ETH_VLAN_TAG		0x20
+/* pad 0x24 - 0x3c */
+/* ucast_table 0x40-0x5c */
+
+/**
+ * RX descriptor status bits. ar231x_descr.status
+ */
+#define DMA_RX_ERR_CRC		BIT(1)
+#define DMA_RX_ERR_DRIB		BIT(2)
+#define DMA_RX_ERR_MII		BIT(3)
+#define DMA_RX_EV2		BIT(5)
+#define DMA_RX_ERR_COL		BIT(6)
+#define DMA_RX_LONG		BIT(7)
+#define DMA_RX_LS		BIT(8)	/* last descriptor */
+#define DMA_RX_FS		BIT(9)	/* first descriptor */
+#define DMA_RX_MF		BIT(10)	/* multicast frame */
+#define DMA_RX_ERR_RUNT		BIT(11)	/* runt frame */
+#define DMA_RX_ERR_LENGTH	BIT(12)	/* length error */
+#define DMA_RX_ERR_DESC		BIT(14)	/* descriptor error */
+#define DMA_RX_ERROR		BIT(15)	/* error summary */
+#define DMA_RX_LEN_MASK		0x3fff0000
+#define DMA_RX_LEN_SHIFT	16
+#define DMA_RX_FILT		BIT(30)
+#define DMA_RX_OWN		BIT(31)	/* desc owned by DMA controller */
+#define DMA_RX_FSLS		(DMA_RX_LS | DMA_RX_FS)
+#define DMA_RX_MASK		(DMA_RX_FSLS | DMA_RX_MF | DMA_RX_ERROR)
+
+/**
+ * RX descriptor configuration bits. ar231x_descr.devcs
+ */
+#define DMA_RX1_BSIZE_MASK	0x000007ff
+#define DMA_RX1_BSIZE_SHIFT	0
+#define DMA_RX1_CHAINED		BIT(24)
+#define DMA_RX1_RER		BIT(25)
+
+/**
+ * TX descriptor status fields. ar231x_descr.status
+ */
+#define DMA_TX_ERR_UNDER	BIT(1)	/* underflow error */
+#define DMA_TX_ERR_DEFER	BIT(2)	/* excessive deferral */
+#define DMA_TX_COL_MASK		0x78
+#define DMA_TX_COL_SHIFT	3
+#define DMA_TX_ERR_HB		BIT(7)	/* hearbeat failure */
+#define DMA_TX_ERR_COL		BIT(8)	/* excessive collisions */
+#define DMA_TX_ERR_LATE		BIT(9)	/* late collision */
+#define DMA_TX_ERR_LINK		BIT(10)	/* no carrier */
+#define DMA_TX_ERR_LOSS		BIT(11)	/* loss of carrier */
+#define DMA_TX_ERR_JABBER	BIT(14)	/* transmit jabber timeout */
+#define DMA_TX_ERROR		BIT(15)	/* frame aborted */
+#define DMA_TX_OWN		BIT(31)	/* descr owned by DMA controller */
+
+/**
+ * TX descriptor configuration bits. ar231x_descr.devcs
+ */
+#define DMA_TX1_BSIZE_MASK	0x000007ff
+#define DMA_TX1_BSIZE_SHIFT	0
+#define DMA_TX1_CHAINED		BIT(24)	/* chained descriptors */
+#define DMA_TX1_TER		BIT(25)	/* transmit end of ring */
+#define DMA_TX1_FS		BIT(29)	/* first segment */
+#define DMA_TX1_LS		BIT(30)	/* last segment */
+#define DMA_TX1_IC		BIT(31)	/* interrupt on completion */
+#define DMA_TX1_DEFAULT		(DMA_TX1_FS | DMA_TX1_LS | DMA_TX1_TER)
+
+#define MAC_CONTROL_RE		BIT(2)	/* receive enable */
+#define MAC_CONTROL_TE		BIT(3)	/* transmit enable */
+#define MAC_CONTROL_DC		BIT(5)	/* Deferral check */
+#define MAC_CONTROL_ASTP	BIT(8)	/* Auto pad strip */
+#define MAC_CONTROL_DRTY	BIT(10)	/* Disable retry */
+#define MAC_CONTROL_DBF		BIT(11)	/* Disable bcast frames */
+#define MAC_CONTROL_LCC		BIT(12)	/* late collision ctrl */
+#define MAC_CONTROL_HP		BIT(13)	/* Hash Perfect filtering */
+#define MAC_CONTROL_HASH	BIT(14)	/* Unicast hash filtering */
+#define MAC_CONTROL_HO		BIT(15)	/* Hash only filtering */
+#define MAC_CONTROL_PB		BIT(16)	/* Pass Bad frames */
+#define MAC_CONTROL_IF		BIT(17)	/* Inverse filtering */
+#define MAC_CONTROL_PR		BIT(18)	/* promiscuous mode
+					 * (valid frames only) */
+#define MAC_CONTROL_PM		BIT(19)	/* pass multicast */
+#define MAC_CONTROL_F		BIT(20)	/* full-duplex */
+#define MAC_CONTROL_DRO		BIT(23)	/* Disable Receive Own */
+#define MAC_CONTROL_HBD		BIT(28)	/* heart-beat disabled (MUST BE SET) */
+#define MAC_CONTROL_BLE		BIT(30)	/* big endian mode */
+#define MAC_CONTROL_RA		BIT(31)	/* receive all
+					 * (valid and invalid frames) */
+
+#define MII_ADDR_BUSY		BIT(0)
+#define MII_ADDR_WRITE		BIT(1)
+#define MII_ADDR_REG_SHIFT	6
+#define MII_ADDR_PHY_SHIFT	11
+#define MII_DATA_SHIFT		0
+
+#define FLOW_CONTROL_FCE	BIT(1)
+
+#define DMA_BUS_MODE_SWR	BIT(0)	/* software reset */
+#define DMA_BUS_MODE_BLE	BIT(7)	/* big endian mode */
+#define DMA_BUS_MODE_PBL_SHIFT	8	/* programmable burst length 32 */
+#define DMA_BUS_MODE_DBO	BIT(20)	/* big-endian descriptors */
+
+#define DMA_STATUS_TI		BIT(0)	/* transmit interrupt */
+#define DMA_STATUS_TPS		BIT(1)	/* transmit process stopped */
+#define DMA_STATUS_TU		BIT(2)	/* transmit buffer unavailable */
+#define DMA_STATUS_TJT		BIT(3)	/* transmit buffer timeout */
+#define DMA_STATUS_UNF		BIT(5)	/* transmit underflow */
+#define DMA_STATUS_RI		BIT(6)	/* receive interrupt */
+#define DMA_STATUS_RU		BIT(7)	/* receive buffer unavailable */
+#define DMA_STATUS_RPS		BIT(8)	/* receive process stopped */
+#define DMA_STATUS_ETI		BIT(10)	/* early transmit interrupt */
+#define DMA_STATUS_FBE		BIT(13)	/* fatal bus interrupt */
+#define DMA_STATUS_ERI		BIT(14)	/* early receive interrupt */
+#define DMA_STATUS_AIS		BIT(15)	/* abnormal interrupt summary */
+#define DMA_STATUS_NIS		BIT(16)	/* normal interrupt summary */
+#define DMA_STATUS_RS_SHIFT	17	/* receive process state */
+#define DMA_STATUS_TS_SHIFT	20	/* transmit process state */
+#define DMA_STATUS_EB_SHIFT	23	/* error bits */
+
+#define DMA_CONTROL_SR		BIT(1)	/* start receive */
+#define DMA_CONTROL_ST		BIT(13)	/* start transmit */
+#define DMA_CONTROL_SF		BIT(21)	/* store and forward */
+
+
+struct ar231x_descr {
+	u32 status;		/* OWN, Device control and status. */
+	u32 devcs;		/* Packet control bitmap + Length. */
+	u32 buffer_ptr;		/* Pointer to packet buffer. */
+	u32 next_dsc_ptr;	/* Pointer to next descriptor in chain. */
+};
+
+/**
+ * Struct private for the Sibyte.
+ *
+ * Elements are grouped so variables used by the tx handling goes
+ * together, and will go into the same cache lines etc. in order to
+ * avoid cache line contention between the rx and tx handling on SMP.
+ *
+ * Frequently accessed variables are put at the beginning of the
+ * struct to help the compiler generate better/shorter code.
+ */
+struct ar231x_eth_priv {
+	struct ar231x_eth_platform_data *cfg;
+	u8 *mac;
+	void __iomem *phy_regs;
+	void __iomem *eth_regs;
+	void __iomem *dma_regs;
+	void __iomem *reset_regs;
+
+	struct eth_device edev;
+	struct mii_bus miibus;
+
+	struct ar231x_descr *tx_ring;
+	struct ar231x_descr *rx_ring;
+	struct ar231x_descr *next_rxdsc;
+	u8 kill_rx_ring;
+	void *rx_buffer;
+
+	int oldduplex;
+	void (*reset_bit)(u32 val, enum reset_state state);
+};
+
+#endif							/* _AR2313_H_ */
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
