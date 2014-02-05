Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x231.google.com ([2a00:1450:4013:c00::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBB99-0004zU-9L
 for barebox@lists.infradead.org; Wed, 05 Feb 2014 22:40:53 +0000
Received: by mail-ee0-f49.google.com with SMTP id d17so526797eek.8
 for <barebox@lists.infradead.org>; Wed, 05 Feb 2014 14:40:20 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed,  5 Feb 2014 23:40:08 +0100
Message-Id: <1391640009-3399-6-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1391640009-3399-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1391640009-3399-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 5/6] net: orion: add ethernet driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Michael Grzeschik <mgr@pengutronix.de>

This adds a driver for the Ethernet ip found on Marvell Orion SoCs,
which is derived from Marvell Discovery System Controllers (MV643xx).
It is partially based on the corresponding u-boot driver.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Signed-off-by: Michael Grzeschik <mgr@pengutronix.de>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Michael Grzeschik <mgr@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 drivers/net/Kconfig     |   6 +
 drivers/net/Makefile    |   1 +
 drivers/net/orion-gbe.c | 541 ++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/orion-gbe.h | 236 +++++++++++++++++++++
 4 files changed, 784 insertions(+)
 create mode 100644 drivers/net/orion-gbe.c
 create mode 100644 drivers/net/orion-gbe.h

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index a5216ec69082..fd9685988cb4 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -116,6 +116,12 @@ config DRIVER_NET_NETX
 	depends on HAS_NETX_ETHER
 	select PHYLIB
 
+config DRIVER_NET_ORION
+	bool "Marvell Orion SoC Ethernet"
+	depends on ARCH_MVEBU
+	select PHYLIB
+	select MDIO_MVEBU
+
 config DRIVER_NET_SMC911X
 	bool "smc911x ethernet driver"
 	select PHYLIB
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index c485716e9ace..c1c4559937ef 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -18,6 +18,7 @@ obj-$(CONFIG_DRIVER_NET_MACB)		+= macb.o
 obj-$(CONFIG_DRIVER_NET_MICREL)		+= ksz8864rmn.o
 obj-$(CONFIG_DRIVER_NET_MPC5200)	+= fec_mpc5200.o
 obj-$(CONFIG_DRIVER_NET_NETX)		+= netx_eth.o
+obj-$(CONFIG_DRIVER_NET_ORION)		+= orion-gbe.o
 obj-$(CONFIG_DRIVER_NET_SMC911X)	+= smc911x.o
 obj-$(CONFIG_DRIVER_NET_SMC91111)	+= smc91111.o
 obj-$(CONFIG_DRIVER_NET_TAP)		+= tap.o
diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
new file mode 100644
index 000000000000..00f5e543c13b
--- /dev/null
+++ b/drivers/net/orion-gbe.c
@@ -0,0 +1,541 @@
+/*
+ * (C) Copyright 2014
+ *   Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
+ *   Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * based on kirkwood_egiga driver from u-boot
+ *   (C) Copyright 2009
+ *     Marvell Semiconductor <www.marvell.com>
+ *     Written-by: Prafulla Wadaskar <prafulla@marvell.com>
+ *
+ *     based on - Driver for MV64360X ethernet ports
+ *     Copyright (C) 2002 rabeeh@galileo.co.il
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
+ * MA 02110-1301 USA
+ */
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <net.h>
+#include <of_net.h>
+#include <sizes.h>
+#include <asm/mmu.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/mbus.h>
+
+#include "orion-gbe.h"
+
+struct rxdesc {
+	u32 cmd_sts;		/* Descriptor command status */
+	u16 buf_size;		/* Buffer size */
+	u16 byte_cnt;		/* Descriptor buffer byte count */
+	void *buf_ptr;		/* Descriptor buffer pointer */
+	struct rxdesc *nxtdesc;	/* Next descriptor pointer */
+};
+
+struct txdesc {
+	u32 cmd_sts;		/* Descriptor command status */
+	u16 l4i_chk;		/* CPU provided TCP Checksum */
+	u16 byte_cnt;		/* Descriptor buffer byte count */
+	void *buf_ptr;		/* Descriptor buffer ptr */
+	struct txdesc *nxtdesc;	/* Next descriptor ptr */
+};
+
+struct port_priv {
+	struct eth_device edev;
+	void __iomem *regs;
+	struct device_node *np;
+	int portno;
+	struct txdesc *txdesc;
+	struct rxdesc *rxdesc;
+	struct rxdesc *current_rxdesc;
+	u8 *rxbuf;
+};
+
+struct orion_gbe {
+	void __iomem *regs;
+	struct clk *clk;
+	struct port_priv *ports;
+	int num_ports;
+};
+
+#define UTXQ			0	/* Used Tx queue number */
+#define URXQ			0	/* Used Rx queue number */
+#define RX_RING_SIZE		4
+#define TRANSFER_TIMEOUT	(10 * MSECOND)
+
+#define NR_ADDR_WINS		6	/* number of address windows */
+#define NR_HIGH_ADDR_WINS	4	/* number of high address windows */
+
+#define ACCEPT_MAC_ADDR		0
+#define REJECT_MAC_ADDR		1
+
+/* setup DRAM access windows provided by mbus */
+static void eunit_set_dram_access(struct orion_gbe *gbe)
+{
+	const struct mbus_dram_target_info *dram = mvebu_mbus_dram_info();
+	u32 bare = ~0, epap = 0, reg;
+	int n;
+
+	for (n = 0; n < NR_ADDR_WINS; n++) {
+		if (n >= dram->num_cs)
+			continue;
+
+		/* enable BAR */
+		bare &= ~BIT(n);
+		/* set port access protect to R/W */
+		epap |= ACCESS_FULL << (n * 2);
+
+		/* configure Base Address and Size */
+		reg = ((dram->cs[n].size / SZ_64K) - 1) << 16;
+		writel(reg, gbe->regs + EUNIT_S(n));
+
+		reg = dram->cs[n].base & 0xffff0000;
+		reg |= dram->cs[n].mbus_attr << 8;
+		reg |= dram->mbus_dram_target_id;
+		writel(reg, gbe->regs + EUNIT_BA(n));
+		if (n < NR_HIGH_ADDR_WINS)
+			writel(0, gbe->regs + EUNIT_HA(n));
+	}
+
+	writel(epap, gbe->regs + EUNIT_PAP);
+	writel(bare, gbe->regs + EUNIT_BARE);
+}
+
+/* clear entries in unicast, special multicast, and other multicast tables */
+static void port_clear_mac_tables(struct port_priv *port)
+{
+	int n;
+
+	/* clear unicast tables (DFUTn) */
+	for (n = 0; n < 4; n++)
+		writel(0, port->regs + PORT_DFUT(n));
+
+	/* clear special (DFSMTn) and other (DFOMTn) multicast tables */
+	for (n = 0; n < 64; n++) {
+		writel(0, port->regs + PORT_DFSMT(n));
+		writel(0, port->regs + PORT_DFOMT(n));
+	}
+}
+
+/*
+ * set the port unicast address table
+ *
+ * This function adds/removes MAC addresses from the port unicast
+ * address table.
+ *
+ * Locate the proper entry in the Unicast table for the specified MAC
+ * nibble and set its properties according to function parameters.
+ *
+ * @nibble	Unicast MAC address, last nibble
+ * @reject      0 = Accept, 1 = Reject MAC address
+ */
+static void port_set_unicast_filter(struct port_priv *port,
+				    u8 nibble, int reject)
+{
+	u8 table, entry, shift;
+	u32 reg;
+
+	/* Locate the Unicast table entry by nibble */
+	nibble &= 0xf;
+	table = nibble / 4;
+	entry = nibble % 4;
+	shift = (DFT_ENTRY_SIZE * entry);
+
+	reg = readl(port->regs + PORT_DFUT(table));
+	reg &= DFT_ENTRY_MASK << shift;
+	if (!reject)
+		reg |= (DFT_PASS | (URXQ << DFT_QUEUE_SHIFT)) << shift;
+	writel(reg, port->regs + PORT_DFUT(table));
+}
+
+/* initialize rx descriptor ring */
+static void port_init_rxdesc_ring(struct port_priv *port)
+{
+	struct rxdesc *rxdesc, *nxtdesc;
+	void *rxbuf;
+	int n;
+
+	/* initialize aligned rx descriptor ring-buffer */
+	rxdesc = port->rxdesc;
+	rxbuf = port->rxbuf;
+	for (n = 0; n < RX_RING_SIZE; n++) {
+		nxtdesc = ((void *)rxdesc) + ALIGN(sizeof(*port->rxdesc), 16);
+
+		rxdesc->cmd_sts = RXDESC_OWNED_BY_DMA;
+		rxdesc->buf_size = ALIGN(PKTSIZE, 8);
+		rxdesc->byte_cnt = 0;
+		rxdesc->buf_ptr = rxbuf;
+		if (n == RX_RING_SIZE-1)
+			rxdesc->nxtdesc = port->rxdesc;
+		else
+			rxdesc->nxtdesc = nxtdesc;
+
+		rxbuf += ALIGN(PKTSIZE, 8);
+
+		rxdesc = nxtdesc;
+	}
+
+	port->current_rxdesc = port->rxdesc;
+}
+
+/* stop a queue and check for termination */
+static void port_stop_queue(void __iomem *ctrl)
+{
+	u32 reg = readl(ctrl);
+
+	if (!(reg & 0xff))
+		return;
+
+	/* stop active channels only */
+	writel((reg << 8), ctrl);
+	/* wait for all queues to terminate */
+	while (readl(ctrl) & 0xff)
+		;
+}
+
+static void port_stop(struct port_priv *port)
+{
+	/* stop all queues */
+	port_stop_queue(port->regs + PORT_TQC);
+	port_stop_queue(port->regs + PORT_RQC);
+	/* disable port, release reset */
+	writel(readl(port->regs + PORT_SC0) & ~PORT_ENABLE,
+	       port->regs + PORT_SC0);
+	writel(readl(port->regs + PORT_SC1) & ~PORT_RESET,
+	       port->regs + PORT_SC1);
+	/* clear and mask all interrupts */
+	writel(0, port->regs + PORT_IC);
+	writel(0, port->regs + PORT_IM);
+	writel(0, port->regs + PORT_EIC);
+	writel(0, port->regs + PORT_EIM);
+}
+
+static void port_halt(struct eth_device *edev)
+{
+	struct port_priv *port = edev->priv;
+
+	port_stop(port);
+}
+
+static int port_send(struct eth_device *edev, void *data, int len)
+{
+	struct port_priv *port = edev->priv;
+	struct txdesc *txdesc = port->txdesc;
+	u32 cmd_sts;
+	int ret;
+
+	/* flush transmit data */
+	dma_flush_range((unsigned long)data, (unsigned long)data+len);
+
+	txdesc->cmd_sts = TXDESC_OWNED_BY_DMA;
+	txdesc->cmd_sts |= TXDESC_FIRST | TXDESC_LAST;
+	txdesc->cmd_sts |= TXDESC_ZERO_PADDING | TXDESC_GEN_CRC;
+	txdesc->buf_ptr = data;
+	txdesc->byte_cnt = len;
+
+	/* assign tx descriptor and issue send command */
+	writel((u32)txdesc, port->regs + PORT_TCQDP(UTXQ));
+	writel(BIT(UTXQ), port->regs + PORT_TQC);
+
+	/* wait for packet transmit completion */
+	ret = wait_on_timeout(TRANSFER_TIMEOUT,
+		      (readl(&txdesc->cmd_sts) & TXDESC_OWNED_BY_DMA) == 0);
+	if (ret) {
+		dev_err(&edev->dev, "transmit timeout\n");
+		return ret;
+	}
+
+	cmd_sts = readl(&txdesc->cmd_sts);
+	if ((cmd_sts & TXDESC_LAST) && (cmd_sts & TXDESC_ERROR)) {
+		dev_err(&edev->dev, "transmit error %d\n",
+			(cmd_sts & TXDESC_ERROR_MASK) >> TXDESC_ERROR_SHIFT);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int port_recv(struct eth_device *edev)
+{
+	struct port_priv *port = edev->priv;
+	struct rxdesc *rxdesc = port->current_rxdesc;
+	u32 cmd_sts;
+	int ret = 0;
+
+	/* wait for received packet */
+	if (readl(&rxdesc->cmd_sts) & RXDESC_OWNED_BY_DMA)
+		return 0;
+
+	/* drop malicious packets */
+	cmd_sts = readl(&rxdesc->cmd_sts);
+	if ((cmd_sts & (RXDESC_FIRST | RXDESC_LAST)) !=
+	    (RXDESC_FIRST | RXDESC_LAST)) {
+		dev_err(&edev->dev, "rx packet spread on multiple descriptors\n");
+		ret = -EIO;
+		goto recv_err;
+	}
+
+	if (cmd_sts & RXDESC_ERROR) {
+		dev_err(&edev->dev, "receive error %d\n",
+			(cmd_sts & RXDESC_ERROR_MASK) >> RXDESC_ERROR_SHIFT);
+		ret = -EIO;
+		goto recv_err;
+	}
+
+	/* invalidate current receive buffer */
+	dma_inv_range((unsigned long)rxdesc->buf_ptr,
+		      (unsigned long)rxdesc->buf_ptr +
+		      ALIGN(PKTSIZE, 8));
+
+	/* received packet is padded with two null bytes */
+	net_receive(rxdesc->buf_ptr + 0x2, rxdesc->byte_cnt - 0x2);
+	ret = 0;
+
+recv_err:
+	/* reset this and get next rx descriptor*/
+	rxdesc->byte_cnt = 0;
+	rxdesc->buf_size = ALIGN(PKTSIZE, 8);
+	rxdesc->cmd_sts = RXDESC_OWNED_BY_DMA;
+	writel((u32)rxdesc->nxtdesc, &port->current_rxdesc);
+
+	return ret;
+}
+
+static int port_set_ethaddr(struct eth_device *edev, unsigned char *mac)
+{
+	struct port_priv *port = edev->priv;
+	u32 mac_h = (mac[0] << 24) | (mac[1] << 16) | (mac[2] << 8) | mac[3];
+	u32 mac_l = (mac[4] << 8) | mac[5];
+
+	port_clear_mac_tables(port);
+
+	writel(mac_l, port->regs + PORT_MACAL);
+	writel(mac_h, port->regs + PORT_MACAH);
+
+	/* accept frames for this address */
+	port_set_unicast_filter(port, mac[5], ACCEPT_MAC_ADDR);
+
+	return 0;
+}
+
+static int port_get_ethaddr(struct eth_device *edev, unsigned char *mac)
+{
+	struct port_priv *port = edev->priv;
+	u32 reg;
+
+	reg = readl(port->regs + PORT_MACAH);
+	mac[0] = (u8)(reg >> 24) & 0xff;
+	mac[1] = (u8)(reg >> 16) & 0xff;
+	mac[2] = (u8)(reg >> 8) & 0xff;
+	mac[3] = (u8)reg & 0xff;
+
+	reg = readl(port->regs + PORT_MACAL);
+	mac[4] = (u8)(reg >> 8) & 0xff;
+	mac[5] = (u8)reg & 0xff;
+
+	return 0;
+}
+
+static int port_open(struct eth_device *edev)
+{
+	struct port_priv *port = edev->priv;
+
+	/* enable receive queue */
+	writel(BIT(URXQ), port->regs + PORT_RQC);
+
+	return 0;
+}
+
+static void port_adjust_link(struct eth_device *edev)
+{
+	struct port_priv *port = edev->priv;
+	struct phy_device *phy = edev->phydev;
+	u32 reg;
+
+	/* disable port */
+	reg = readl(port->regs + PORT_SC0);
+	reg &= ~PORT_ENABLE;
+	writel(reg, port->regs + PORT_SC0);
+
+	/* setup and enable port */
+	reg &= ~(SET_SPEED_MASK | SET_FULL_DUPLEX | SET_FLOWCTRL_ENABLE);
+	if (phy->speed == SPEED_1000)
+		reg |= SET_SPEED_1000;
+	else if (phy->speed == SPEED_100)
+		reg |= SET_SPEED_100;
+	else if (phy->speed == SPEED_10)
+		reg |= SET_SPEED_10;
+	if (phy->duplex)
+		reg |= SET_FULL_DUPLEX;
+	if (phy->pause)
+		reg |= SET_FLOWCTRL_ENABLE;
+	reg |= FORCE_LINK_PASS | FORCE_NO_LINK_FAIL | PORT_ENABLE;
+
+	writel(reg, port->regs + PORT_SC0);
+}
+
+static int port_probe(struct device_d *parent, struct port_priv *port)
+{
+	struct device_node *phynp;
+	phy_interface_t intf = PHY_INTERFACE_MODE_RGMII;
+	u32 reg;
+	int ret;
+
+	/* assume port0 but warn on missing port reg property */
+	if (of_property_read_u32(port->np, "reg", &port->portno))
+		dev_warn(parent, "port node is missing reg property\n");
+
+	phynp = of_parse_phandle(port->np, "phy-handle", 0);
+	if (phynp) {
+		ret = of_get_phy_mode(port->np);
+		if (ret > 0)
+			intf = ret;
+	}
+
+	port->regs = dev_get_mem_region(parent, 0) + PORTn_REGS(port->portno);
+
+	/* allocate rx/tx descriptors and buffers */
+	port->txdesc = dma_alloc_coherent(ALIGN(sizeof(*port->txdesc), 16));
+	port->rxdesc = dma_alloc_coherent(RX_RING_SIZE *
+					  ALIGN(sizeof(*port->rxdesc), 16));
+	port->rxbuf = dma_alloc(RX_RING_SIZE * ALIGN(PKTSIZE, 8));
+
+	port_stop(port);
+	port_init_rxdesc_ring(port);
+
+	/* disable port bandwidth limitation */
+	writel(~0, port->regs + PORT_TQTBCNT(UTXQ));
+	writel(~0, port->regs + PORT_TQTBC(UTXQ));
+	writel(0, port->regs + PORT_MTU);
+	/* assign initial rx descriptor */
+	writel((u32)port->current_rxdesc, port->regs + PORT_CRDP(URXQ));
+	/* setup SDMA with maximum burst and no swap */
+	reg = RX_BURST_SIZE_16 | RX_BLM_NO_SWAP |
+		TX_BURST_SIZE_16 | TX_BLM_NO_SWAP;
+	writel(reg, port->regs + PORT_SDC);
+
+	/* port configuration */
+	reg = DEFAULT_RXQ(URXQ) | DEFAULT_ARPQ(URXQ);
+	writel(reg, port->regs + PORT_C);
+	writel(0, port->regs + PORT_CX);
+
+	reg = SC0_RESERVED | MRU_1518;
+	reg |= DISABLE_ANEG_DUPLEX | DISABLE_ANEG_FLOWCTRL | DISABLE_ANEG_SPEED;
+	writel(reg, port->regs + PORT_SC0);
+
+	reg = SC1_RESERVED;
+	reg |= DEFAULT_COL_LIMIT | COL_ON_BACKPRESS | INBAND_ANEG_BYPASS;
+	if (intf == PHY_INTERFACE_MODE_RGMII)
+		reg |= RGMII_ENABLE;
+	writel(reg, port->regs + PORT_SC1);
+
+	/* register eth device */
+	port->edev.priv = port;
+	port->edev.open = port_open;
+	port->edev.send = port_send;
+	port->edev.recv = port_recv;
+	port->edev.halt = port_halt;
+	port->edev.set_ethaddr = port_set_ethaddr;
+	port->edev.get_ethaddr = port_get_ethaddr;
+	port->edev.parent = parent;
+
+	ret = eth_register(&port->edev);
+	if (ret)
+		return ret;
+
+	/* attach phy device */
+	if (phynp) {
+		ret = of_phy_device_connect(&port->edev, phynp,
+					    port_adjust_link, 0, intf);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int orion_gbe_probe(struct device_d *dev)
+{
+	struct orion_gbe *gbe;
+	struct port_priv *ppriv;
+	struct device_node *pnp;
+	int ret;
+
+	gbe = xzalloc(sizeof(*gbe));
+	dev->priv = gbe;
+
+	gbe->regs = dev_get_mem_region(dev, 0);
+	gbe->clk = clk_get(dev, 0);
+	if (!IS_ERR(gbe->clk))
+		clk_enable(gbe->clk);
+
+	eunit_set_dram_access(gbe);
+
+	/*
+	 * Orion SoCs only have one port per controller, but the
+	 * IP itself supports more than one port per controller.
+	 * Although untested, the driver should also be able to
+	 * deal with multi-port controllers.
+	 */
+	for_each_child_of_node(dev->device_node, pnp)
+		gbe->num_ports++;
+
+	gbe->ports = xzalloc(gbe->num_ports * sizeof(*gbe->ports));
+
+	ppriv = gbe->ports;
+	for_each_child_of_node(dev->device_node, pnp) {
+		ppriv->np = pnp;
+
+		ret = port_probe(dev, ppriv);
+		if (ret)
+			return ret;
+
+		ppriv++;
+	}
+
+	return 0;
+}
+
+static void orion_gbe_remove(struct device_d *dev)
+{
+	struct orion_gbe *gbe = dev->priv;
+	int n;
+
+	for (n = 0; n < gbe->num_ports; n++)
+		port_halt(&gbe->ports[n].edev);
+
+	/* disable all address windows */
+	writel(~0, gbe->regs + EUNIT_BARE);
+
+	if (!IS_ERR(gbe->clk))
+		clk_disable(gbe->clk);
+}
+
+static struct of_device_id orion_gbe_dt_ids[] = {
+	{ .compatible = "marvell,orion-eth", },
+	{ .compatible = "marvell,kirkwood-eth", },
+	{ }
+};
+
+static struct driver_d orion_gbe_driver = {
+	.name   = "orion-gbe",
+	.probe  = orion_gbe_probe,
+	.remove = orion_gbe_remove,
+	.of_compatible = DRV_OF_COMPAT(orion_gbe_dt_ids),
+};
+device_platform_driver(orion_gbe_driver);
diff --git a/drivers/net/orion-gbe.h b/drivers/net/orion-gbe.h
new file mode 100644
index 000000000000..e5b18b1eb3cf
--- /dev/null
+++ b/drivers/net/orion-gbe.h
@@ -0,0 +1,236 @@
+/*
+ * (C) Copyright 2014
+ *   Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
+ *   Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * based on kirkwood_egiga driver from u-boot
+ *   (C) Copyright 2009
+ *     Marvell Semiconductor <www.marvell.com>
+ *     Written-by: Prafulla Wadaskar <prafulla@marvell.com>
+ *
+ *     based on - Driver for MV64360X ethernet ports
+ *     Copyright (C) 2002 rabeeh@galileo.co.il
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
+ * MA 02110-1301 USA
+ */
+
+#ifndef __ORION_GBE_
+#define __ORION_GBE_
+
+/* Ethernet Unit Base Address */
+#define EUNIT_BA(x)		(0x200 + (x) * 0x8)
+/* Ethernet Unit Size */
+#define EUNIT_S(x)		(0x204 + (x) * 0x8)
+/* Ethernet Unit High Address */
+#define EUNIT_HA(x)		(0x280 + (x) * 0x4)
+/* Ethernet Unit Base Address Enable */
+#define EUNIT_BARE		0x290
+/* Ethernet Unit Port Access Protect */
+#define EUNIT_PAP		0x294
+#define NO_ACCESS		0
+#define ACCESS_READ_ONLY	1
+#define ACCESS_FULL		3
+
+/* Port Registers Offset */
+#define PORTn_REGS(x)		(0x400 + (x) * 0x400)
+/* Port Configuration */
+#define PORT_C			0x000
+#define  PROMISCUOUS_MODE	BIT(0)
+#define  DEFAULT_RXQ(x)		((x) << 1)
+#define  DEFAULT_ARPQ(x)	((x) << 4)
+#define  BCAST_OTHER_REJECT	BIT(7)
+#define  BCAST_IP_REJECT	BIT(8)
+#define  BCAST_ARP_REJECT	BIT(9)
+#define  AUTO_SET_NO_TX_ERR	BIT(12)
+#define  TCPQ_CAPTURE_ENABLE	BIT(14)
+#define  UDPQ_CAPTURE_ENABLE	BIT(15)
+#define  DEFAULT_TCPQ(x)	((x) << 16)
+#define  DEFAULT_UDPQ(x)	((x) << 19)
+#define  DEFAULT_BPDUQ(x)	((x) << 22)
+#define  RX_TCP_CHKSUM_HEADER	BIT(25)
+/* Port Configuration Extended */
+#define PORT_CX			0x004
+#define  TX_CRC_GEN_DISABLE	BIT(3)
+#define  BPDUQ_CAPTURE_ENABLE	BIT(0)
+/* Port MAC Address High */
+#define PORT_MACAL		0x014
+/* Port MAC Address Low */
+#define PORT_MACAH		0x018
+/* Port SDMA Configuration */
+#define PORT_SDC		0x01c
+#define  TX_BURST_SIZE_1	(0 << 22)
+#define  TX_BURST_SIZE_2	(1 << 22)
+#define  TX_BURST_SIZE_4	(2 << 22)
+#define  TX_BURST_SIZE_8	(3 << 22)
+#define  TX_BURST_SIZE_16	(4 << 22)
+#define  TX_BLM_SWAP		(0 << 5)
+#define  TX_BLM_NO_SWAP		(1 << 5)
+#define  RX_BLM_SWAP		(0 << 4)
+#define  RX_BLM_NO_SWAP		(1 << 4)
+#define  RX_BURST_SIZE_1	(0 << 1)
+#define  RX_BURST_SIZE_2	(1 << 1)
+#define  RX_BURST_SIZE_4	(2 << 1)
+#define  RX_BURST_SIZE_8	(3 << 1)
+#define  RX_BURST_SIZE_16	(4 << 1)
+/* Port Serial Control 0 */
+#define PORT_SC0		0x03c
+#define  SC0_RESERVED		BIT(9)
+#define  PORT_ENABLE		BIT(0)
+#define  FORCE_LINK_PASS	BIT(1)
+#define  DISABLE_ANEG_DUPLEX	BIT(2)
+#define  DISABLE_ANEG_FLOWCTRL	BIT(3)
+#define  ADVERTISE_PAUSE	BIT(4)
+#define  FORCE_FLOWCTRL_OFF	(0 << 5)
+#define  FORCE_FLOWCTRL_ON	(1 << 5)
+#define  FORCE_FLOWCTRL_MASK	(3 << 5)
+#define  FORCE_BACKPRESS_NO_JAM	(0 << 7)
+#define  FORCE_BACKPRESS_JAM	(1 << 7)
+#define  FORCE_BACKPRESS_MASK	(3 << 7)
+#define  FORCE_NO_LINK_FAIL	BIT(10)
+#define  DISABLE_ANEG_SPEED	BIT(13)
+#define  ADVERTISE_DTE		BIT(14)
+#define  MII_PHY_MODE		BIT(15)
+#define  MII_SRC_SYNCHRONOUS	BIT(16)
+#define  MRU_1518		(0 << 17)
+#define  MRU_1522		(1 << 17)
+#define  MRU_1552		(2 << 17)
+#define  MRU_9022		(3 << 17)
+#define  MRU_9192		(4 << 17)
+#define  MRU_9700		(5 << 17)
+#define  MRU_MASK		(7 << 17)
+#define  SET_FULL_DUPLEX	BIT(21)
+#define  SET_FLOWCTRL_ENABLE	BIT(22)
+#define  SET_SPEED_1000		(1 << 23)
+#define  SET_SPEED_10		(0 << 23)
+#define  SET_SPEED_100		(2 << 23)
+#define  SET_SPEED_MASK		(3 << 23)
+/* Port Status 0 */
+#define PORT_S0			0x044
+/* Port Trasmit Queue Command */
+#define PORT_TQC		0x048
+/* Port Serial Control 1 */
+#define PORT_SC1		0x04c
+#define  SC1_RESERVED		(0x2 << 9)
+#define  LOOPBACK_PCS		BIT(1)
+#define  RGMII_ENABLE		BIT(3)
+#define  PORT_RESET		BIT(4)
+#define  CLK125_BYPASS		BIT(5)
+#define  INBAND_ANEG		BIT(6)
+#define  INBAND_ANEG_BYPASS	BIT(7)
+#define  INBAND_ANEG_RESTART	BIT(8)
+#define  LIMIT_TO_1000BASEX	BIT(11)
+#define  COL_ON_BACKPRESS	BIT(15)
+#define  COL_LIMIT(x)		(((x) & 0xfff) << 16)
+#define  DEFAULT_COL_LIMIT	COL_LIMIT(0x23)
+#define  COL_ON_BACKPRESS	BIT(15)
+#define  EN_MII_ODD_PREAMBLE	BIT(22)
+/* Port Status 1 */
+#define PORT_S1			0x050
+/* Port Interrupt Cause */
+#define PORT_IC			0x060
+/* Port Interrupt Mask */
+#define PORT_IM			0x068
+#define  INT_SUM		BIT(31)
+#define  TX_END			BIT(19)
+#define  RXQ_ERR		(15 << 11)
+#define  RX_ERR			BIT(10)
+#define  TXQ_ERR		(15 << 2)
+#define  EXTENDED_INT		BIT(1)
+#define  RX_RETURN		BIT(0)
+/* Port Extended Interrupt Cause */
+#define PORT_EIC		0x064
+/* Port Extended Interrupt Mask */
+#define PORT_EIM		0x06c
+#define  EXTENDED_INT_SUM	BIT(31)
+#define  PRBS_ERR		BIT(25)
+#define  INTERNAL_ADDR_ERR	BIT(23)
+#define  LINK_CHANGE		BIT(20)
+#define  TX_UNDERRUN		BIT(19)
+#define  RX_OVERRUN		BIT(18)
+#define  PHY_CHANGE		BIT(16)
+#define  TX_ERR			BIT(8)
+#define  TX_RETURN		BIT(0)
+/* Port Maximum Transmit Unit */
+#define PORT_MTU		0x0e8
+/* Port Current Receive Descriptor Pointer */
+#define PORT_CRDP(x)		(0x20c + (x) * 0x10)
+/* Port Receive Queue Command */
+#define	PORT_RQC		0x280
+/* Port Transmit Current Queue Descriptor Pointer */
+#define	PORT_TCQDP(x)		(0x2c0 + (x) * 0x04)
+/* Port Transmit Queue Token Bucket Counter */
+#define	PORT_TQTBCNT(x)		(0x300 + (x) * 0x10)
+/* Port Transmit Queue Token Bucket Configuration */
+#define	PORT_TQTBC(x)		(0x304 + (x) * 0x10)
+
+#define	PORT_DFSMT(x)		(0x1000 + ((x) * 0x04))
+#define	PORT_DFOMT(x)		(0x1100 + ((x) * 0x04))
+#define	PORT_DFUT(x)		(0x1200 + ((x) * 0x04))
+
+#define DFT_ENTRY_MASK		0xff
+#define DFT_ENTRY_SIZE		8
+#define DFT_QUEUE_SHIFT		1
+#define DFT_PASS		BIT(0)
+
+#define RXDESC_ERROR		BIT(0)
+#define RXDESC_ERROR_CRC	(0 << 1)
+#define RXDESC_ERROR_OVERRUN	(1 << 1)
+#define RXDESC_ERROR_MAXLEN	(2 << 1)
+#define RXDESC_ERROR_RESOURCE	(3 << 1)
+#define RXDESC_ERROR_MASK	(3 << 1)
+#define RXDESC_ERROR_SHIFT	1
+#define RXDESC_L4_CHECKSUM(x)	(((x) & (0xffff << 3)) >> 3)
+#define RXDESC_VLAN_TAGGED	BIT(19)
+#define RXDESC_BDPU		BIT(20)
+#define RXDESC_FRAME_TCP	(0 << 21)
+#define RXDESC_FRAME_UDP	(1 << 21)
+#define RXDESC_FRAME_OTHER	(2 << 21)
+#define RXDESC_FRAME_MASK	(3 << 21)
+#define RXDESC_L2_IS_ETHERNET	BIT(23)
+#define RXDESC_L4_IS_IPV4	BIT(24)
+#define RXDESC_L4_HEADER_OK	BIT(25)
+#define RXDESC_LAST		BIT(26)
+#define RXDESC_FIRST		BIT(27)
+#define RXDESC_UNKNOWN_DEST	BIT(28)
+#define RXDESC_ENABLE_IRQ	BIT(29)
+#define RXDESC_L4_CHECKSUM_OK	BIT(30)
+#define RXDESC_OWNED_BY_DMA	BIT(31)
+
+#define RXDESC_BYTECOUNT_FRAG	BIT(2)
+
+#define TXDESC_ERROR			BIT(0)
+#define TXDESC_ERROR_LATE_COLL		(0 << 1)
+#define TXDESC_ERROR_UNDERRUN		(1 << 1)
+#define TXDESC_ERROR_RET_LIMIT		(2 << 1)
+#define TXDESC_ERROR_MASK		(3 << 1)
+#define TXDESC_ERROR_SHIFT		1
+#define TXDESC_LCC_SNAP			BIT(9)
+#define TXDESC_L4_CHK_FIRST		BIT(10)
+#define TXDESC_IPV4_HEADER_LEN(x)	(((x) & 0xf) << 11)
+#define TXDESC_VLAN_TAGGED		BIT(15)
+#define TXDESC_FRAME_TCP		(0 << 16)
+#define TXDESC_FRAME_UDP		(1 << 16)
+#define TXDESC_GEN_FRAME_CHECKSUM	BIT(17)
+#define TXDESC_GEN_IPV4_CHECKSUM	BIT(18)
+#define TXDESC_ZERO_PADDING		BIT(19)
+#define TXDESC_LAST			BIT(20)
+#define TXDESC_FIRST			BIT(21)
+#define TXDESC_GEN_CRC			BIT(22) /* Orion5x only */
+#define TXDESC_ENABLE_IRQ		BIT(23)
+#define TXDESC_NO_AUTO_RETURN		BIT(30)
+#define TXDESC_OWNED_BY_DMA		BIT(31)
+
+#endif
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
