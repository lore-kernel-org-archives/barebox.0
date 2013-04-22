Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUCVv-0001UP-0G
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 08:54:21 +0000
Received: from mailout-de.gmx.net ([10.1.76.32]) by mrigmx.server.lan
 (mrigmx002) with ESMTP (Nemesis) id 0M8cOb-1Ui04C0IEd-00wElk for
 <barebox@lists.infradead.org>; Mon, 22 Apr 2013 10:54:15 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Mon, 22 Apr 2013 10:54:07 +0200
Message-Id: <1366620847-8616-1-git-send-email-linux@rempel-privat.de>
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
Subject: [PATCH 3/3] net: add new ar231x-eth driver
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <bug-track@fisher-privat.net>

From: Oleksij Rempel <bug-track@fisher-privat.net>

This driver should work with some Atheros WiSoCs:
- ar2312, ar2313
- ar2315, ar2316 ...
---
 drivers/net/Kconfig  |    7 +
 drivers/net/Makefile |    1 +
 drivers/net/ar231x.c |  402 ++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/ar231x.h |  243 ++++++++++++++++++++++++++++++
 4 files changed, 653 insertions(+)
 create mode 100644 drivers/net/ar231x.c
 create mode 100644 drivers/net/ar231x.h

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 43d5984..be7888f 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -27,6 +27,13 @@ menu "Network drivers"
 
 source "drivers/net/phy/Kconfig"
 
+config DRIVER_NET_AR231X
+	bool "AR231X Ethernet support"
+	depends on MACH_MIPS_AR531X
+	select PHYLIB
+	help
+	  Support for the AR231x/531x ethernet controller
+
 config DRIVER_NET_CS8900
 	bool "cs8900 ethernet driver"
 	depends on HAS_CS8900
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 4e6b49b..1563e4f 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -1,3 +1,4 @@
+obj-$(CONFIG_DRIVER_NET_AR231X)		+= ar231x.o
 obj-$(CONFIG_DRIVER_NET_CS8900)		+= cs8900.o
 obj-$(CONFIG_DRIVER_NET_SMC911X)	+= smc911x.o
 obj-$(CONFIG_DRIVER_NET_SMC91111)	+= smc91111.o
diff --git a/drivers/net/ar231x.c b/drivers/net/ar231x.c
new file mode 100644
index 0000000..9b07452
--- /dev/null
+++ b/drivers/net/ar231x.c
@@ -0,0 +1,402 @@
+/*
+ * ar231x.c: Linux driver for the Atheros AR231x Ethernet device.
+ * Based on Linux driver:
+ * 		Copyright (C) 2004 by Sameer Dekate <sdekate@arubanetworks.com>
+ * 		Copyright (C) 2006 Imre Kaloz <kaloz@openwrt.org>
+ * 		Copyright (C) 2006-2009 Felix Fietkau <nbd@openwrt.org>
+ * Ported to Barebox:
+ * 		Copyright (C) 2013 Oleksij Rempel <bug-track@fisher-privat.net>
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
+#include <driver.h>
+#include <init.h>
+#include <mach/ar231x_platform.h>
+#include <common.h>
+#include <net.h>
+#include "ar231x.h"
+#include <asm/addrspace.h>
+#include <asm/io.h>
+#include <linux/phy.h>
+
+/* Allocate 64 RX buffers. This will reduce packet loss, until we will start
+ * processing them. It is important in noisy network with lots of broadcasts. */
+#define AR2313_RXDSC_ENTRIES		64
+#define DSC_NEXT(idx)				((idx + 1) & (AR2313_RXDSC_ENTRIES - 1))
+
+/* Use system default buffers size. At the moment of writing it was 1518 */
+#define AR2313_RX_BUFSIZE			PKTSIZE
+#define CRC_LEN						4
+
+static int ar231x_set_ethaddr(struct eth_device *edev, unsigned char *addr);
+static void ar231x_reset_regs(struct eth_device *edev)
+{
+	struct ar231x_eth_priv *priv = edev->priv;
+	struct ar231x_eth_platform_data *cfg = priv->cfg;
+	u32 flags;
+
+	debug("%s\n", __func__);
+
+	*priv->int_regs |= cfg->reset_mac;
+	mdelay(10);
+	*priv->int_regs &= ~cfg->reset_mac;
+	mdelay(10);
+	*priv->int_regs |= cfg->reset_phy;
+	mdelay(10);
+	*priv->int_regs &= ~cfg->reset_phy;
+	mdelay(10);
+
+	priv->dma_regs->bus_mode = DMA_BUS_MODE_SWR;
+	mdelay(10);
+	priv->dma_regs->bus_mode =
+		((32 << DMA_BUS_MODE_PBL_SHIFT) | DMA_BUS_MODE_BLE);
+
+	priv->dma_regs->tx_ring = (u32)priv->tx_ring;
+	priv->dma_regs->rx_ring = (u32)priv->rx_ring;
+	priv->dma_regs->control =
+		(DMA_CONTROL_SR | DMA_CONTROL_ST | DMA_CONTROL_SF);
+	priv->eth_regs->flow_control = FLOW_CONTROL_FCE;
+	/* TODO: not sure if we need it here. */
+	priv->eth_regs->vlan_tag = (0x8100);
+
+	/* Enable Ethernet Interface */
+	flags = (MAC_CONTROL_TE |	/* transmit enable */
+			/* MAC_CONTROL_PM - pass mcast.
+			 * Seems like it makes no difference on some WiSoCs,
+			 * for example ar2313. */
+			MAC_CONTROL_PM |
+			MAC_CONTROL_F  |	/* full duplex */
+			MAC_CONTROL_HBD);	/* heart beat disabled */
+	priv->eth_regs->mac_control = flags;
+}
+
+static void ar231x_flash_rxdsc(ar231x_descr_t *rxdsc)
+{
+	rxdsc->status = DMA_RX_OWN;
+	rxdsc->devcs = ((AR2313_RX_BUFSIZE << DMA_RX1_BSIZE_SHIFT) |
+			DMA_RX1_CHAINED);
+}
+
+static void ar231x_allocate_dma_descriptors(struct eth_device *edev)
+{
+	struct ar231x_eth_priv *priv = edev->priv;
+	u16 ar231x_descr_size = sizeof(ar231x_descr_t);
+	u16 i;
+
+	debug("%s\n", __func__);
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
+		ar231x_descr_t *rxdsc = &priv->rx_ring[i];
+		ar231x_flash_rxdsc(rxdsc);
+		rxdsc->buffer_ptr = (u32)(priv->rx_buffer + AR2313_RX_BUFSIZE * i);
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
+	debug("%s\n", __func__);
+
+	if (edev->phydev->duplex != priv->oldduplex) {
+		mc = priv->eth_regs->mac_control;
+		mc &= ~(MAC_CONTROL_F | MAC_CONTROL_DRO);
+		if (edev->phydev->duplex)
+			mc |= MAC_CONTROL_F;
+		else
+			mc |= MAC_CONTROL_DRO;
+		priv->eth_regs->mac_control = mc;
+		priv->oldduplex = edev->phydev->duplex;
+	}
+}
+
+static int ar231x_eth_init(struct eth_device *edev)
+{
+	struct ar231x_eth_priv *priv = edev->priv;
+	debug("%s\n", __func__);
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
+	debug("%s\n", __func__);
+
+	/* Enable RX. Now the rx_buffer will be filled.
+	 * If it is full we may lose first transmission. In this case
+	 * barebox should retry it.
+	 * Or TODO: - force HW to filter some how broadcasts
+	 *			- disable RX if we do not need it. */
+	priv->eth_regs->mac_control |= MAC_CONTROL_RE;
+
+	return phy_device_connect(edev, &priv->miibus, (int)priv->phy_regs,
+			ar231x_adjust_link, 0, PHY_INTERFACE_MODE_MII);
+}
+
+static int ar231x_eth_recv(struct eth_device *edev)
+{
+	struct ar231x_eth_priv *priv = edev->priv;
+
+	debug("%s\n", __func__);
+
+
+
+	while (1) {
+		ar231x_descr_t *rxdsc = priv->next_rxdsc;
+		u32 status = rxdsc->status;
+
+		/* owned by DMA? */
+		if (status & DMA_RX_OWN)
+			break;
+
+		/* Pick only packets what we can handle:
+		 * - only complete packet per buffer (First and Last at same time)
+		 * - drop multicast */
+		if (!priv->kill_rx_ring &&
+				((status & DMA_RX_MASK) == DMA_RX_FSLS)) {
+			u16 length = ((status >> DMA_RX_LEN_SHIFT) & 0x3fff) - CRC_LEN;
+			net_receive((void *)rxdsc->buffer_ptr, length);
+		}
+		/* Clean descriptor. now it is owned by DMA. */
+		priv->next_rxdsc = (ar231x_descr_t *)rxdsc->next_dsc_ptr;
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
+	ar231x_descr_t *txdsc = priv->tx_ring;
+
+	debug("%s\n", __func__);
+
+	/* We do not do async work.
+	 * If rx_ring is full, there is nothing we can use. */
+	if (priv->dma_regs->rx_missed) {
+		debug("rx_ring is full. Clear it./n");
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
+	priv->dma_regs->tx_poll = 0;
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
+
+	debug("%s\n", __func__);
+
+	/* kill the MAC: disable RX and TX */
+	priv->eth_regs->mac_control &= ~(MAC_CONTROL_RE | MAC_CONTROL_TE);
+	/* stop DMA */
+	priv->dma_regs->control = 0;
+	priv->dma_regs->bus_mode = DMA_BUS_MODE_SWR;
+
+	/* place PHY and MAC in reset */
+	*priv->int_regs |= (priv->cfg->reset_mac | priv->cfg->reset_phy);
+}
+
+static int ar231x_get_ethaddr(struct eth_device *edev, unsigned char *addr)
+{
+	struct ar231x_eth_priv *priv = edev->priv;
+
+	debug("%s\n", __func__);
+
+	/* MAC address is stored on flash, in some kind of atheros config
+	 * area. Platform code should read it and pass to the driver. */
+	memcpy(addr, priv->mac, 6);
+	return 0;
+}
+
+static int ar231x_set_ethaddr(struct eth_device *edev, unsigned char *addr)
+{
+	struct ar231x_eth_priv *priv = edev->priv;
+
+	debug("%s\n", __func__);
+
+	priv->eth_regs->mac_addr[0] =
+			(addr[5] <<  8) | (addr[4]);
+	priv->eth_regs->mac_addr[1] =
+			(addr[3] << 24) | (addr[2] << 16) |
+			(addr[1] <<  8) | addr[0];
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
+	volatile ETHERNET_STRUCT *ethernet = priv->phy_regs;
+
+	debug("%s\n", __func__);
+
+	ethernet->mii_addr = MII_ADDR(phy_id, regnum);
+	while (ethernet->mii_addr & MII_ADDR_BUSY);
+	return (ethernet->mii_data >> MII_DATA_SHIFT);
+}
+
+static int ar231x_miibus_write(struct mii_bus *bus, int phy_id, int regnum, u16 val)
+{
+	struct ar231x_eth_priv *priv = bus->priv;
+	volatile ETHERNET_STRUCT *ethernet = priv->phy_regs;
+
+	debug("%s\n", __func__);
+
+	while (ethernet->mii_addr & MII_ADDR_BUSY);
+	ethernet->mii_data = val << MII_DATA_SHIFT;
+	ethernet->mii_addr = MII_ADDR(phy_id, regnum) | MII_ADDR_WRITE;
+
+	return 0;
+}
+
+static int ar231x_mdiibus_reset(struct mii_bus *bus)
+{
+	struct ar231x_eth_priv *priv = bus->priv;
+
+	debug("%s\n", __func__);
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
+	debug("%s\n", __func__);
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
+	if (!pdata->base_eth) {
+		dev_err(dev, "no eth base defined\n");
+		return -ENODEV;
+	}
+	priv->eth_regs = (ETHERNET_STRUCT *)pdata->base_eth;
+	priv->dma_regs = (DMA *)(pdata->base_eth + 0x1000);
+
+	if (!pdata->base_phy) {
+		dev_err(dev, "no phy base defined\n");
+		return -ENODEV;
+	}
+	priv->phy_regs = (ETHERNET_STRUCT *)pdata->base_phy;
+
+	if (!pdata->base_reset) {
+		dev_err(dev, "no reset base defined\n");
+		return -ENODEV;
+	}
+	priv->int_regs = (u32 *)pdata->base_reset;
+	priv->cfg = pdata;
+
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
+	debug("%s\n", __func__);
+}
+
+static struct driver_d ar231x_eth_driver = {
+        .name = "ar231x_eth",
+        .probe = ar231x_eth_probe,
+        .remove = ar231x_eth_remove,
+};
+
+static int ar231x_eth_driver_init(void)
+{
+	debug("%s\n", __func__);
+
+	platform_driver_register(&ar231x_eth_driver);
+	return 0;
+}
+device_initcall(ar231x_eth_driver_init);
diff --git a/drivers/net/ar231x.h b/drivers/net/ar231x.h
new file mode 100644
index 0000000..d8e7116
--- /dev/null
+++ b/drivers/net/ar231x.h
@@ -0,0 +1,243 @@
+/*
+ * ar231x.h: Linux driver for the Atheros AR231x Ethernet device.
+ *
+ * Copyright (C) 2004 by Sameer Dekate <sdekate@arubanetworks.com>
+ * Copyright (C) 2006 Imre Kaloz <kaloz@openwrt.org>
+ * Copyright (C) 2006-2009 Felix Fietkau <nbd@openwrt.org>
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
+/*
+ * probe link timer - 5 secs
+ */
+#define LINK_TIMER    (5*HZ)
+
+#define IS_DMA_TX_INT(X)   (((X) & (DMA_STATUS_TI)) != 0)
+#define IS_DMA_RX_INT(X)   (((X) & (DMA_STATUS_RI)) != 0)
+#define IS_DRIVER_OWNED(X) (((X) & (DMA_TX_OWN))    == 0)
+
+#define AR2313_TX_TIMEOUT (HZ/4)
+
+/*
+ * Rings
+ */
+#define DSC_RING_ENTRIES_SIZE	(AR2313_DESCR_ENTRIES * sizeof(struct desc))
+
+#define AR2313_DMA_DATA_SIZE 0x000007ff //should be checked
+
+#define AR2313_MBGET		2
+#define AR2313_MBSET		3
+#define AR2313_PCI_RECONFIG	4
+#define AR2313_PCI_DUMP		5
+#define AR2313_TEST_PANIC	6
+#define AR2313_TEST_NULLPTR	7
+#define AR2313_READ_DATA	8
+#define AR2313_WRITE_DATA	9
+#define AR2313_GET_VERSION	10
+#define AR2313_TEST_HANG	11
+#define AR2313_SYNC			12
+
+#define DMA_RX_ERR_CRC		BIT(1)
+#define DMA_RX_ERR_DRIB		BIT(2)
+#define DMA_RX_ERR_MII		BIT(3)
+#define DMA_RX_EV2			BIT(5)
+#define DMA_RX_ERR_COL		BIT(6)
+#define DMA_RX_LONG			BIT(7)
+#define DMA_RX_LS			BIT(8)	/* last descriptor */
+#define DMA_RX_FS			BIT(9)	/* first descriptor */
+#define DMA_RX_MF			BIT(10)	/* multicast frame */
+#define DMA_RX_ERR_RUNT		BIT(11)	/* runt frame */
+#define DMA_RX_ERR_LENGTH	BIT(12)	/* length error */
+#define DMA_RX_ERR_DESC		BIT(14)	/* descriptor error */
+#define DMA_RX_ERROR		BIT(15)	/* error summary */
+#define DMA_RX_LEN_MASK		0x3fff0000
+#define DMA_RX_LEN_SHIFT	16
+#define DMA_RX_FILT			BIT(30)
+#define DMA_RX_OWN			BIT(31)	/* desc owned by DMA controller */
+#define DMA_RX_FSLS			(DMA_RX_LS | DMA_RX_FS)
+#define DMA_RX_MASK			(DMA_RX_FSLS | DMA_RX_MF | DMA_RX_ERROR)
+
+#define DMA_RX1_BSIZE_MASK	0x000007ff
+#define DMA_RX1_BSIZE_SHIFT	0
+#define DMA_RX1_CHAINED		BIT(24)
+#define DMA_RX1_RER			BIT(25)
+
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
+#define DMA_TX_OWN			BIT(31)	/* descr owned by DMA controller */
+
+#define DMA_TX1_BSIZE_MASK	0x000007ff
+#define DMA_TX1_BSIZE_SHIFT	0
+#define DMA_TX1_CHAINED		BIT(24)	/* chained descriptors */
+#define DMA_TX1_TER			BIT(25)	/* transmit end of ring */
+#define DMA_TX1_FS			BIT(29)	/* first segment */
+#define DMA_TX1_LS			BIT(30)	/* last segment */
+#define DMA_TX1_IC			BIT(31)	/* interrupt on completion */
+#define DMA_TX1_DEFAULT		(DMA_TX1_FS | DMA_TX1_LS | DMA_TX1_TER)
+
+#define RCVPKT_LENGTH(X)	(X  >> 16)	/* Received pkt Length */
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
+#define MAC_CONTROL_PR		BIT(18)	/* promiscuous mode (valid frames only) */
+#define MAC_CONTROL_PM		BIT(19)	/* pass multicast */
+#define MAC_CONTROL_F		BIT(20)	/* full-duplex */
+#define MAC_CONTROL_DRO		BIT(23)	/* Disable Receive Own */
+#define MAC_CONTROL_HBD		BIT(28)	/* heart-beat disabled (MUST BE SET) */
+#define MAC_CONTROL_BLE		BIT(30)	/* big endian mode */
+#define MAC_CONTROL_RA		BIT(31)	/* receive all (valid and invalid frames) */
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
+typedef struct {
+	volatile u32 status;		/* OWN, Device control and status. */
+	volatile u32 devcs;			/* Packet control bitmap + Length. */
+	volatile u32 buffer_ptr;	/* Pointer to packet buffer. */
+	volatile u32 next_dsc_ptr;	/* Pointer to next descriptor in chain. */
+} ar231x_descr_t;
+
+
+
+//
+// New Combo structure for Both Eth0 AND eth1
+typedef struct {
+	volatile u32 mac_control;		/* 0x00 */
+	volatile u32 mac_addr[2];		/* 0x04 - 0x08 */
+	volatile u32 mcast_table[2];	/* 0x0c - 0x10 */
+	volatile u32 mii_addr;			/* 0x14 */
+	volatile u32 mii_data;			/* 0x18 */
+	volatile u32 flow_control;		/* 0x1c */
+	volatile u32 vlan_tag;			/* 0x20 */
+	volatile u32 pad[7];			/* 0x24 - 0x3c */
+	volatile u32 ucast_table[8];	/* 0x40-0x5c */
+
+} ETHERNET_STRUCT;
+
+/********************************************************************
+ * Interrupt controller
+ ********************************************************************/
+
+typedef struct {
+	volatile u32 wdog_control;	/* 0x08 */
+	volatile u32 wdog_timer;	/* 0x0c */
+	volatile u32 misc_status;	/* 0x10 */
+	volatile u32 misc_mask;		/* 0x14 */
+	volatile u32 global_status;	/* 0x18 */
+	volatile u32 reserved;		/* 0x1c */
+	volatile u32 reset_control;	/* 0x20 */
+} INTERRUPT;
+
+/********************************************************************
+ * DMA controller
+ ********************************************************************/
+typedef struct {
+	volatile u32 bus_mode;			/* 0x00 (CSR0) */
+	volatile u32 tx_poll;			/* 0x04 (CSR1) */
+	volatile u32 rx_poll;			/* 0x08 (CSR2) */
+	volatile u32 rx_ring;			/* 0x0c (CSR3) */
+	volatile u32 tx_ring;			/* 0x10 (CSR4) */
+	volatile u32 status;			/* 0x14 (CSR5) */
+	volatile u32 control;			/* 0x18 (CSR6) */
+	volatile u32 intr_ena;			/* 0x1c (CSR7) */
+	volatile u32 rx_missed;			/* 0x20 (CSR8) */
+	volatile u32 reserved[11];		/* 0x24-0x4c (CSR9-19) */
+	volatile u32 cur_tx_buf_addr;	/* 0x50 (CSR20) */
+	volatile u32 cur_rx_buf_addr;	/* 0x50 (CSR21) */
+} DMA;
+
+/*
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
+	volatile ETHERNET_STRUCT *phy_regs;
+	volatile ETHERNET_STRUCT *eth_regs;
+	volatile DMA *dma_regs;
+	volatile u32 *int_regs;
+
+	struct eth_device edev;
+	struct mii_bus miibus;
+
+	ar231x_descr_t *tx_ring;
+	ar231x_descr_t *rx_ring;
+	ar231x_descr_t *next_rxdsc;
+	u8 kill_rx_ring;
+	void *rx_buffer;
+
+	int oldduplex;
+};
+
+#endif							/* _AR2313_H_ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
