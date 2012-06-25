Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjCAC-0008DZ-7G
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 16:29:22 +0000
Received: from p5099b351.dip0.t-ipconnect.de ([80.153.179.81] helo=zzz.local)
 by bar.sig21.net with esmtpsa (TLS1.0:RSA_ARCFOUR_SHA1:16)
 (Exim 4.72) (envelope-from <js@sig21.net>) id 1SjC9j-00074B-2P
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 18:28:56 +0200
Received: from js by zzz.local with local (Exim 4.80)
 (envelope-from <js@sig21.net>) id 1SjBlP-0006Ob-FI
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 18:03:43 +0200
Date: Mon, 25 Jun 2012 18:03:43 +0200
From: Johannes Stezenbach <js@sig21.net>
Message-ID: <20120625160343.GA24551@sig21.net>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH v2] drivers/net: add designware driver
To: barebox@lists.infradead.org

Straight forward port of Synopsys Designware ethernet
driver from u-boot v2012.04.01.

Signed-off-by: Johannes Stezenbach <js@sig21.net>
---
 drivers/net/Kconfig      |   16 ++
 drivers/net/Makefile     |    1 +
 drivers/net/designware.c |  436 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/designware.h |  230 ++++++++++++++++++++++++
 include/net/designware.h |    9 +
 5 files changed, 692 insertions(+)

v2:
- remove usleep() in timeout loops
- change rx and tx buffers to use malloc() instead of dma_alloc_coherent(),
  and use dma_inv_range() + dma_flush_range()
- add DRIVER_NET_DESIGNWARE_ALTDESCRIPTOR in Kconfig
  (platforms that need it need to use "select")

Patch applies cleanly to master and next.


diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 172cc39..749ea6a 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -13,6 +13,9 @@ config HAS_AT91_ETHER
 config HAS_NETX_ETHER
 	bool
 
+config HAS_DESIGNWARE_ETH
+	bool
+
 config ARCH_HAS_FEC_IMX
 	bool
 
@@ -108,6 +111,19 @@ config DRIVER_NET_KS8851_MLL
 	  This option enables support for the Micrel KS8851 MLL
 	  ethernet chip.
 
+config DRIVER_NET_DESIGNWARE
+	bool "Designware Universal MAC ethernet driver"
+	select MIIDEV
+	depends on HAS_DESIGNWARE_ETH
+	help
+	  This option enables support for the Synopsys
+	  Designware Core Univesal MAC 10M/100M/1G ethernet IP.
+
+config DRIVER_NET_DESIGNWARE_ALTDESCRIPTOR
+	bool
+	depends on DRIVER_NET_DESIGNWARE
+	default n
+
 source "drivers/net/usb/Kconfig"
 
 endmenu
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 34dbee9..29727b7 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -13,3 +13,4 @@ obj-$(CONFIG_MIIDEV)			+= miidev.o
 obj-$(CONFIG_NET_USB)			+= usb/
 obj-$(CONFIG_DRIVER_NET_TSE)		+= altera_tse.o
 obj-$(CONFIG_DRIVER_NET_KS8851_MLL)	+= ks8851_mll.o
+obj-$(CONFIG_DRIVER_NET_DESIGNWARE)	+= designware.o
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
new file mode 100644
index 0000000..379b4e3
--- /dev/null
+++ b/drivers/net/designware.c
@@ -0,0 +1,436 @@
+/*
+ * (C) Copyright 2010
+ * Vipin Kumar, ST Micoelectronics, vipin.kumar@st.com.
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
+/*
+ * Designware ethernet IP driver for u-boot
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <net.h>
+#include <miidev.h>
+#include <asm/mmu.h>
+#include <net/designware.h>
+#include "designware.h"
+
+
+struct dw_eth_dev {
+	struct eth_device netdev;
+	struct mii_device miidev;
+
+	void (*fix_mac_speed)(int speed);
+	u8 macaddr[6];
+	u32 tx_currdescnum;
+	u32 rx_currdescnum;
+
+	struct dmamacdescr *tx_mac_descrtable;
+	struct dmamacdescr *rx_mac_descrtable;
+
+	u8 *txbuffs;
+	u8 *rxbuffs;
+
+	struct eth_mac_regs *mac_regs_p;
+	struct eth_dma_regs *dma_regs_p;
+};
+
+/* Speed specific definitions */
+#define SPEED_10M		1
+#define SPEED_100M		2
+#define SPEED_1000M		3
+
+/* Duplex mode specific definitions */
+#define HALF_DUPLEX		1
+#define FULL_DUPLEX		2
+
+
+static int dwc_ether_mii_read(struct mii_device *dev, int addr, int reg)
+{
+	struct dw_eth_dev *priv = dev->edev->priv;
+	struct eth_mac_regs *mac_p = priv->mac_regs_p;
+	u64 start;
+	u32 miiaddr;
+
+	miiaddr = ((addr << MIIADDRSHIFT) & MII_ADDRMSK) | \
+		  ((reg << MIIREGSHIFT) & MII_REGMSK);
+
+	writel(miiaddr | MII_CLKRANGE_150_250M | MII_BUSY, &mac_p->miiaddr);
+
+	start = get_time_ns();
+	while (readl(&mac_p->miiaddr) & MII_BUSY) {
+		if (is_timeout(start, 10 * MSECOND)) {
+			dev_err(&priv->netdev.dev, "MDIO timeout\n");
+			return -EIO;
+		}
+	}
+	return readl(&mac_p->miidata) & 0xffff;
+}
+
+static int dwc_ether_mii_write(struct mii_device *dev, int addr, int reg, int val)
+{
+	struct dw_eth_dev *priv = dev->edev->priv;
+	struct eth_mac_regs *mac_p = priv->mac_regs_p;
+	u64 start;
+	u32 miiaddr;
+
+	writel(val, &mac_p->miidata);
+	miiaddr = ((addr << MIIADDRSHIFT) & MII_ADDRMSK) | \
+		  ((reg << MIIREGSHIFT) & MII_REGMSK) | MII_WRITE;
+
+	writel(miiaddr | MII_CLKRANGE_150_250M | MII_BUSY, &mac_p->miiaddr);
+
+	start = get_time_ns();
+	while (readl(&mac_p->miiaddr) & MII_BUSY) {
+		if (is_timeout(start, 10 * MSECOND)) {
+			dev_err(&priv->netdev.dev, "MDIO timeout\n");
+			return -EIO;
+		}
+	}
+
+	/* Needed as a fix for ST-Phy */
+	dwc_ether_mii_read(dev, addr, reg);
+	return 0;
+}
+
+
+static int mac_reset(struct eth_device *dev)
+{
+	struct dw_eth_dev *priv = dev->priv;
+	struct eth_mac_regs *mac_p = priv->mac_regs_p;
+	struct eth_dma_regs *dma_p = priv->dma_regs_p;
+	u64 start;
+
+	writel(DMAMAC_SRST, &dma_p->busmode);
+	writel(MII_PORTSELECT, &mac_p->conf);
+
+	start = get_time_ns();
+	while (readl(&dma_p->busmode) & DMAMAC_SRST) {
+		if (is_timeout(start, 10 * MSECOND)) {
+			dev_err(&priv->netdev.dev, "MAC reset timeout\n");
+			return -EIO;
+		}
+	}
+	return 0;
+}
+
+static void tx_descs_init(struct eth_device *dev)
+{
+	struct dw_eth_dev *priv = dev->priv;
+	struct eth_dma_regs *dma_p = priv->dma_regs_p;
+	struct dmamacdescr *desc_table_p = &priv->tx_mac_descrtable[0];
+	char *txbuffs = &priv->txbuffs[0];
+	struct dmamacdescr *desc_p;
+	u32 idx;
+
+	for (idx = 0; idx < CONFIG_TX_DESCR_NUM; idx++) {
+		desc_p = &desc_table_p[idx];
+		desc_p->dmamac_addr = &txbuffs[idx * CONFIG_ETH_BUFSIZE];
+		desc_p->dmamac_next = &desc_table_p[idx + 1];
+
+#if defined(CONFIG_DRIVER_NET_DESIGNWARE_ALTDESCRIPTOR)
+		desc_p->txrx_status &= ~(DESC_TXSTS_TXINT | DESC_TXSTS_TXLAST |
+				DESC_TXSTS_TXFIRST | DESC_TXSTS_TXCRCDIS | \
+				DESC_TXSTS_TXCHECKINSCTRL | \
+				DESC_TXSTS_TXRINGEND | DESC_TXSTS_TXPADDIS);
+
+		desc_p->txrx_status |= DESC_TXSTS_TXCHAIN;
+		desc_p->dmamac_cntl = 0;
+		desc_p->txrx_status &= ~(DESC_TXSTS_MSK | DESC_TXSTS_OWNBYDMA);
+#else
+		desc_p->dmamac_cntl = DESC_TXCTRL_TXCHAIN;
+		desc_p->txrx_status = 0;
+#endif
+	}
+
+	/* Correcting the last pointer of the chain */
+	desc_p->dmamac_next = &desc_table_p[0];
+
+	writel((ulong)&desc_table_p[0], &dma_p->txdesclistaddr);
+}
+
+static void rx_descs_init(struct eth_device *dev)
+{
+	struct dw_eth_dev *priv = dev->priv;
+	struct eth_dma_regs *dma_p = priv->dma_regs_p;
+	struct dmamacdescr *desc_table_p = &priv->rx_mac_descrtable[0];
+	char *rxbuffs = &priv->rxbuffs[0];
+	struct dmamacdescr *desc_p;
+	u32 idx;
+
+	for (idx = 0; idx < CONFIG_RX_DESCR_NUM; idx++) {
+		desc_p = &desc_table_p[idx];
+		desc_p->dmamac_addr = &rxbuffs[idx * CONFIG_ETH_BUFSIZE];
+		desc_p->dmamac_next = &desc_table_p[idx + 1];
+
+		desc_p->dmamac_cntl =
+			(MAC_MAX_FRAME_SZ & DESC_RXCTRL_SIZE1MASK) | \
+				      DESC_RXCTRL_RXCHAIN;
+
+		dma_inv_range((unsigned long)desc_p->dmamac_addr,
+			      (unsigned long)desc_p->dmamac_addr + CONFIG_ETH_BUFSIZE);
+		desc_p->txrx_status = DESC_RXSTS_OWNBYDMA;
+	}
+
+	/* Correcting the last pointer of the chain */
+	desc_p->dmamac_next = &desc_table_p[0];
+
+	writel((ulong)&desc_table_p[0], &dma_p->rxdesclistaddr);
+}
+
+static void descs_init(struct eth_device *dev)
+{
+	tx_descs_init(dev);
+	rx_descs_init(dev);
+}
+
+static int dwc_ether_init(struct eth_device *dev)
+{
+	struct dw_eth_dev *priv = dev->priv;
+	struct eth_mac_regs *mac_p = priv->mac_regs_p;
+	struct eth_dma_regs *dma_p = priv->dma_regs_p;
+
+	if (mac_reset(dev) < 0)
+		return -1;
+
+	/* HW MAC address is lost during MAC reset */
+	dev->set_ethaddr(dev, priv->macaddr);
+
+	writel(FIXEDBURST | PRIORXTX_41 | BURST_16, &dma_p->busmode);
+	writel(FLUSHTXFIFO | readl(&dma_p->opmode), &dma_p->opmode);
+	writel(STOREFORWARD | TXSECONDFRAME, &dma_p->opmode);
+	writel(FRAMEBURSTENABLE | DISABLERXOWN, &mac_p->conf);
+	return 0;
+}
+
+static int dwc_ether_open(struct eth_device *dev)
+{
+	struct dw_eth_dev *priv = dev->priv;
+	struct eth_mac_regs *mac_p = priv->mac_regs_p;
+	struct eth_dma_regs *dma_p = priv->dma_regs_p;
+	u32 conf;
+	int link, speed;
+
+	miidev_wait_aneg(&priv->miidev);
+	miidev_print_status(&priv->miidev);
+	link = miidev_get_status(&priv->miidev);
+
+	if (priv->fix_mac_speed) {
+		speed = link & MIIDEV_STATUS_IS_1000MBIT ? 1000 :
+			(link & MIIDEV_STATUS_IS_100MBIT ? 100 : 10);
+		priv->fix_mac_speed(speed);
+	}
+
+	conf = readl(&mac_p->conf);
+	if (link & MIIDEV_STATUS_IS_FULL_DUPLEX)
+		conf |= FULLDPLXMODE;
+	else
+		conf &= ~FULLDPLXMODE;
+	if (link & MIIDEV_STATUS_IS_1000MBIT)
+		conf &= ~MII_PORTSELECT;
+	else
+		conf |= MII_PORTSELECT;
+	writel(conf, &mac_p->conf);
+
+	descs_init(dev);
+
+	/*
+	 * Start/Enable xfer at dma as well as mac level
+	 */
+	writel(readl(&dma_p->opmode) | RXSTART, &dma_p->opmode);
+	writel(readl(&dma_p->opmode) | TXSTART, &dma_p->opmode);
+	writel(readl(&mac_p->conf) | RXENABLE | TXENABLE, &mac_p->conf);
+	return 0;
+}
+
+static int dwc_ether_send(struct eth_device *dev, void *packet, int length)
+{
+	struct dw_eth_dev *priv = dev->priv;
+	struct eth_dma_regs *dma_p = priv->dma_regs_p;
+	u32 desc_num = priv->tx_currdescnum;
+	struct dmamacdescr *desc_p = &priv->tx_mac_descrtable[desc_num];
+
+	/* Check if the descriptor is owned by CPU */
+	if (desc_p->txrx_status & DESC_TXSTS_OWNBYDMA) {
+		dev_err(&dev->dev, "CPU not owner of tx frame\n");
+		return -1;
+	}
+
+	memcpy((void *)desc_p->dmamac_addr, packet, length);
+	dma_flush_range((unsigned long)desc_p->dmamac_addr,
+			(unsigned long)desc_p->dmamac_addr + length);
+
+#if defined(CONFIG_DRIVER_NET_DESIGNWARE_ALTDESCRIPTOR)
+	desc_p->txrx_status |= DESC_TXSTS_TXFIRST | DESC_TXSTS_TXLAST;
+	desc_p->dmamac_cntl |= (length << DESC_TXCTRL_SIZE1SHFT) & \
+			       DESC_TXCTRL_SIZE1MASK;
+
+	desc_p->txrx_status &= ~(DESC_TXSTS_MSK);
+	desc_p->txrx_status |= DESC_TXSTS_OWNBYDMA;
+#else
+	desc_p->dmamac_cntl |= ((length << DESC_TXCTRL_SIZE1SHFT) & \
+			       DESC_TXCTRL_SIZE1MASK) | DESC_TXCTRL_TXLAST | \
+			       DESC_TXCTRL_TXFIRST;
+
+	desc_p->txrx_status = DESC_TXSTS_OWNBYDMA;
+#endif
+
+	/* Test the wrap-around condition. */
+	if (++desc_num >= CONFIG_TX_DESCR_NUM)
+		desc_num = 0;
+
+	priv->tx_currdescnum = desc_num;
+
+	/* Start the transmission */
+	writel(POLL_DATA, &dma_p->txpolldemand);
+	return 0;
+}
+
+static int dwc_ether_rx(struct eth_device *dev)
+{
+	struct dw_eth_dev *priv = dev->priv;
+	u32 desc_num = priv->rx_currdescnum;
+	struct dmamacdescr *desc_p = &priv->rx_mac_descrtable[desc_num];
+
+	u32 status = desc_p->txrx_status;
+	int length = 0;
+
+	/* Check  if the owner is the CPU */
+	if (status & DESC_RXSTS_OWNBYDMA)
+		return 0;
+
+	length = (status & DESC_RXSTS_FRMLENMSK) >> \
+		 DESC_RXSTS_FRMLENSHFT;
+
+	net_receive(desc_p->dmamac_addr, length);
+
+	/*
+	 * Make the current descriptor valid again and go to
+	 * the next one
+	 */
+	dma_inv_range((unsigned long)desc_p->dmamac_addr,
+		      (unsigned long)desc_p->dmamac_addr + length);
+	desc_p->txrx_status |= DESC_RXSTS_OWNBYDMA;
+
+	/* Test the wrap-around condition. */
+	if (++desc_num >= CONFIG_RX_DESCR_NUM)
+		desc_num = 0;
+
+	priv->rx_currdescnum = desc_num;
+
+	return length;
+}
+
+static void dwc_ether_halt (struct eth_device *dev)
+{
+	struct dw_eth_dev *priv = dev->priv;
+
+	mac_reset(dev);
+	priv->tx_currdescnum = priv->rx_currdescnum = 0;
+}
+
+static int dwc_ether_get_ethaddr(struct eth_device *dev, u8 adr[6])
+{
+	/* we have no EEPROM */
+	return -1;
+}
+
+static int dwc_ether_set_ethaddr(struct eth_device *dev, u8 adr[6])
+{
+	struct dw_eth_dev *priv = dev->priv;
+	struct eth_mac_regs *mac_p = priv->mac_regs_p;
+	u32 macid_lo, macid_hi;
+
+	macid_lo = adr[0] + (adr[1] << 8) + \
+		   (adr[2] << 16) + (adr[3] << 24);
+	macid_hi = adr[4] + (adr[5] << 8);
+	writel(macid_hi, &mac_p->macaddr0hi);
+	writel(macid_lo, &mac_p->macaddr0lo);
+	memcpy(priv->macaddr, adr, 6);
+	return 0;
+}
+
+static int dwc_ether_probe(struct device_d *dev)
+{
+	struct dw_eth_dev *priv;
+	struct eth_device *edev;
+	struct mii_device *miidev;
+	void __iomem *base;
+	struct dwc_ether_platform_data *pdata = dev->platform_data;
+
+	if (!pdata) {
+		printf("dwc_ether: no platform_data\n");
+		return -ENODEV;
+	}
+
+	priv = xzalloc(sizeof(struct dw_eth_dev));
+
+	base = dev_request_mem_region(dev, 0);
+	priv->mac_regs_p = base;
+	dev_info(dev, "MAC version %08x\n", readl(&priv->mac_regs_p->version));
+	priv->dma_regs_p = base + DW_DMA_BASE_OFFSET;
+	priv->tx_mac_descrtable = dma_alloc_coherent(
+		CONFIG_TX_DESCR_NUM * sizeof(struct dmamacdescr));
+	priv->rx_mac_descrtable = dma_alloc_coherent(
+		CONFIG_RX_DESCR_NUM * sizeof(struct dmamacdescr));
+	priv->txbuffs = malloc(TX_TOTAL_BUFSIZE);
+	priv->rxbuffs = malloc(RX_TOTAL_BUFSIZE);
+	priv->fix_mac_speed = pdata->fix_mac_speed;
+
+	edev = &priv->netdev;
+	miidev = &priv->miidev;
+	edev->priv = priv;
+
+	edev->init = dwc_ether_init;
+	edev->open = dwc_ether_open;
+	edev->send = dwc_ether_send;
+	edev->recv = dwc_ether_rx;
+	edev->halt = dwc_ether_halt;
+	edev->get_ethaddr = dwc_ether_get_ethaddr;
+	edev->set_ethaddr = dwc_ether_set_ethaddr;
+
+	miidev->address = pdata->phy_addr;
+	miidev->read = dwc_ether_mii_read;
+	miidev->write = dwc_ether_mii_write;
+	miidev->edev = edev;
+
+	mii_register(miidev);
+	eth_register(edev);
+	return 0;
+}
+
+static void dwc_ether_remove(struct device_d *dev)
+{
+}
+
+static struct driver_d dwc_ether_driver = {
+	.name = "designware_eth",
+	.probe = dwc_ether_probe,
+	.remove = dwc_ether_remove,
+};
+
+static int dwc_ether_driver_init(void)
+{
+	register_driver(&dwc_ether_driver);
+	return 0;
+}
+device_initcall(dwc_ether_driver_init);
diff --git a/drivers/net/designware.h b/drivers/net/designware.h
new file mode 100644
index 0000000..db2ead4
--- /dev/null
+++ b/drivers/net/designware.h
@@ -0,0 +1,230 @@
+/*
+ * (C) Copyright 2010
+ * Vipin Kumar, ST Micoelectronics, vipin.kumar@st.com.
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
+#ifndef __DESIGNWARE_ETH_H
+#define __DESIGNWARE_ETH_H
+
+#define CONFIG_TX_DESCR_NUM	16
+#define CONFIG_RX_DESCR_NUM	16
+#define CONFIG_ETH_BUFSIZE	2048
+#define TX_TOTAL_BUFSIZE	(CONFIG_ETH_BUFSIZE * CONFIG_TX_DESCR_NUM)
+#define RX_TOTAL_BUFSIZE	(CONFIG_ETH_BUFSIZE * CONFIG_RX_DESCR_NUM)
+
+struct eth_mac_regs {
+	u32 conf;		/* 0x00 */
+	u32 framefilt;		/* 0x04 */
+	u32 hashtablehigh;	/* 0x08 */
+	u32 hashtablelow;	/* 0x0c */
+	u32 miiaddr;		/* 0x10 */
+	u32 miidata;		/* 0x14 */
+	u32 flowcontrol;	/* 0x18 */
+	u32 vlantag;		/* 0x1c */
+	u32 version;		/* 0x20 */
+	u8 reserved_1[20];
+	u32 intreg;		/* 0x38 */
+	u32 intmask;		/* 0x3c */
+	u32 macaddr0hi;		/* 0x40 */
+	u32 macaddr0lo;		/* 0x44 */
+};
+
+/* MAC configuration register definitions */
+#define FRAMEBURSTENABLE	(1 << 21)
+#define MII_PORTSELECT		(1 << 15)
+#define FES_100			(1 << 14)
+#define DISABLERXOWN		(1 << 13)
+#define FULLDPLXMODE		(1 << 11)
+#define RXENABLE		(1 << 2)
+#define TXENABLE		(1 << 3)
+
+/* MII address register definitions */
+#define MII_BUSY		(1 << 0)
+#define MII_WRITE		(1 << 1)
+#define MII_CLKRANGE_60_100M	(0)
+#define MII_CLKRANGE_100_150M	(0x4)
+#define MII_CLKRANGE_20_35M	(0x8)
+#define MII_CLKRANGE_35_60M	(0xC)
+#define MII_CLKRANGE_150_250M	(0x10)
+#define MII_CLKRANGE_250_300M	(0x14)
+
+#define MIIADDRSHIFT		(11)
+#define MIIREGSHIFT		(6)
+#define MII_REGMSK		(0x1F << 6)
+#define MII_ADDRMSK		(0x1F << 11)
+
+
+struct eth_dma_regs {
+	u32 busmode;		/* 0x00 */
+	u32 txpolldemand;	/* 0x04 */
+	u32 rxpolldemand;	/* 0x08 */
+	u32 rxdesclistaddr;	/* 0x0c */
+	u32 txdesclistaddr;	/* 0x10 */
+	u32 status;		/* 0x14 */
+	u32 opmode;		/* 0x18 */
+	u32 intenable;		/* 0x1c */
+	u8 reserved[40];
+	u32 currhosttxdesc;	/* 0x48 */
+	u32 currhostrxdesc;	/* 0x4c */
+	u32 currhosttxbuffaddr;	/* 0x50 */
+	u32 currhostrxbuffaddr;	/* 0x54 */
+};
+
+#define DW_DMA_BASE_OFFSET	(0x1000)
+
+/* Bus mode register definitions */
+#define FIXEDBURST		(1 << 16)
+#define PRIORXTX_41		(3 << 14)
+#define PRIORXTX_31		(2 << 14)
+#define PRIORXTX_21		(1 << 14)
+#define PRIORXTX_11		(0 << 14)
+#define BURST_1			(1 << 8)
+#define BURST_2			(2 << 8)
+#define BURST_4			(4 << 8)
+#define BURST_8			(8 << 8)
+#define BURST_16		(16 << 8)
+#define BURST_32		(32 << 8)
+#define RXHIGHPRIO		(1 << 1)
+#define DMAMAC_SRST		(1 << 0)
+
+/* Poll demand definitions */
+#define POLL_DATA		(0xFFFFFFFF)
+
+/* Operation mode definitions */
+#define STOREFORWARD		(1 << 21)
+#define FLUSHTXFIFO		(1 << 20)
+#define TXSTART			(1 << 13)
+#define TXSECONDFRAME		(1 << 2)
+#define RXSTART			(1 << 1)
+
+/* Descriptior related definitions */
+#define MAC_MAX_FRAME_SZ	(1600)
+
+struct dmamacdescr {
+	u32 txrx_status;
+	u32 dmamac_cntl;
+	void *dmamac_addr;
+	struct dmamacdescr *dmamac_next;
+};
+
+/*
+ * txrx_status definitions
+ */
+
+/* tx status bits definitions */
+#if defined(CONFIG_DRIVER_NET_DESIGNWARE_ALTDESCRIPTOR)
+
+#define DESC_TXSTS_OWNBYDMA		(1 << 31)
+#define DESC_TXSTS_TXINT		(1 << 30)
+#define DESC_TXSTS_TXLAST		(1 << 29)
+#define DESC_TXSTS_TXFIRST		(1 << 28)
+#define DESC_TXSTS_TXCRCDIS		(1 << 27)
+
+#define DESC_TXSTS_TXPADDIS		(1 << 26)
+#define DESC_TXSTS_TXCHECKINSCTRL	(3 << 22)
+#define DESC_TXSTS_TXRINGEND		(1 << 21)
+#define DESC_TXSTS_TXCHAIN		(1 << 20)
+#define DESC_TXSTS_MSK			(0x1FFFF << 0)
+
+#else
+
+#define DESC_TXSTS_OWNBYDMA		(1 << 31)
+#define DESC_TXSTS_MSK			(0x1FFFF << 0)
+
+#endif
+
+/* rx status bits definitions */
+#define DESC_RXSTS_OWNBYDMA		(1 << 31)
+#define DESC_RXSTS_DAFILTERFAIL		(1 << 30)
+#define DESC_RXSTS_FRMLENMSK		(0x3FFF << 16)
+#define DESC_RXSTS_FRMLENSHFT		(16)
+
+#define DESC_RXSTS_ERROR		(1 << 15)
+#define DESC_RXSTS_RXTRUNCATED		(1 << 14)
+#define DESC_RXSTS_SAFILTERFAIL		(1 << 13)
+#define DESC_RXSTS_RXIPC_GIANTFRAME	(1 << 12)
+#define DESC_RXSTS_RXDAMAGED		(1 << 11)
+#define DESC_RXSTS_RXVLANTAG		(1 << 10)
+#define DESC_RXSTS_RXFIRST		(1 << 9)
+#define DESC_RXSTS_RXLAST		(1 << 8)
+#define DESC_RXSTS_RXIPC_GIANT		(1 << 7)
+#define DESC_RXSTS_RXCOLLISION		(1 << 6)
+#define DESC_RXSTS_RXFRAMEETHER		(1 << 5)
+#define DESC_RXSTS_RXWATCHDOG		(1 << 4)
+#define DESC_RXSTS_RXMIIERROR		(1 << 3)
+#define DESC_RXSTS_RXDRIBBLING		(1 << 2)
+#define DESC_RXSTS_RXCRC		(1 << 1)
+
+/*
+ * dmamac_cntl definitions
+ */
+
+/* tx control bits definitions */
+#if defined(CONFIG_DRIVER_NET_DESIGNWARE_ALTDESCRIPTOR)
+
+#define DESC_TXCTRL_SIZE1MASK		(0x1FFF << 0)
+#define DESC_TXCTRL_SIZE1SHFT		(0)
+#define DESC_TXCTRL_SIZE2MASK		(0x1FFF << 16)
+#define DESC_TXCTRL_SIZE2SHFT		(16)
+
+#else
+
+#define DESC_TXCTRL_TXINT		(1 << 31)
+#define DESC_TXCTRL_TXLAST		(1 << 30)
+#define DESC_TXCTRL_TXFIRST		(1 << 29)
+#define DESC_TXCTRL_TXCHECKINSCTRL	(3 << 27)
+#define DESC_TXCTRL_TXCRCDIS		(1 << 26)
+#define DESC_TXCTRL_TXRINGEND		(1 << 25)
+#define DESC_TXCTRL_TXCHAIN		(1 << 24)
+
+#define DESC_TXCTRL_SIZE1MASK		(0x7FF << 0)
+#define DESC_TXCTRL_SIZE1SHFT		(0)
+#define DESC_TXCTRL_SIZE2MASK		(0x7FF << 11)
+#define DESC_TXCTRL_SIZE2SHFT		(11)
+
+#endif
+
+/* rx control bits definitions */
+#if defined(CONFIG_DRIVER_NET_DESIGNWARE_ALTDESCRIPTOR)
+
+#define DESC_RXCTRL_RXINTDIS		(1 << 31)
+#define DESC_RXCTRL_RXRINGEND		(1 << 15)
+#define DESC_RXCTRL_RXCHAIN		(1 << 14)
+
+#define DESC_RXCTRL_SIZE1MASK		(0x1FFF << 0)
+#define DESC_RXCTRL_SIZE1SHFT		(0)
+#define DESC_RXCTRL_SIZE2MASK		(0x1FFF << 16)
+#define DESC_RXCTRL_SIZE2SHFT		(16)
+
+#else
+
+#define DESC_RXCTRL_RXINTDIS		(1 << 31)
+#define DESC_RXCTRL_RXRINGEND		(1 << 25)
+#define DESC_RXCTRL_RXCHAIN		(1 << 24)
+
+#define DESC_RXCTRL_SIZE1MASK		(0x7FF << 0)
+#define DESC_RXCTRL_SIZE1SHFT		(0)
+#define DESC_RXCTRL_SIZE2MASK		(0x7FF << 11)
+#define DESC_RXCTRL_SIZE2SHFT		(11)
+
+#endif
+
+#endif
diff --git a/include/net/designware.h b/include/net/designware.h
new file mode 100644
index 0000000..3f9f5b9
--- /dev/null
+++ b/include/net/designware.h
@@ -0,0 +1,9 @@
+#ifndef __DWC_UNIMAC_H
+#define __DWC_UNIMAC_H
+
+struct dwc_ether_platform_data {
+	u8 phy_addr;
+	void (*fix_mac_speed)(int speed);
+};
+
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
