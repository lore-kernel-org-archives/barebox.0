Delivery-date: Fri, 09 Sep 2022 09:46:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWYim-00BeA7-Kk
	for lore@lore.pengutronix.de; Fri, 09 Sep 2022 09:46:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWYik-0005ki-H3
	for lore@pengutronix.de; Fri, 09 Sep 2022 09:46:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2SZsYITHkTOaGc4waDEOlSrzDJPXd1AJWjJqHdaVMp8=; b=AAfQpmdGoT+OCyIJKcIs8irjS9
	MHGuMMAHFtkaacg7YbxHZ7Idf5ZjIpsmaRKAlRVPrMsihDYTNGFfDNWWTZo4iHKY6FlO5y+aG8rBt
	vy7SUVZEZXIvo9B0nHJAKzTnFDGP5tEQmJlchdZTguwyr21gpIslMWKnY5U4xEOqD52f4DUxEL0//
	giXn5rCZubnSslVuDKlHtfC90bwVH7KvraiyGB4wUZNH34j5Rdb5yMw0JstDhLfBVrmewK+vNj7vK
	Oh4oKRTP3CdZFewUEtp5+89FeOysPYb9QV7HDYqHQKjJdFxnGSbbk6zkE70rVQVJXD6iNIQEB1Qd4
	f5Y0vz5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWYh5-00E5bW-Qw; Fri, 09 Sep 2022 07:44:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWYaI-00E1KL-BQ
	for barebox@lists.infradead.org; Fri, 09 Sep 2022 07:38:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oWYaG-0004Eh-Io; Fri, 09 Sep 2022 09:37:52 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oWYaE-004mC3-0T; Fri, 09 Sep 2022 09:37:51 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oWYaF-00DgEN-3g; Fri, 09 Sep 2022 09:37:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  9 Sep 2022 09:37:48 +0200
Message-Id: <20220909073749.3260556-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_003754_814582_84FC0B13 
X-CRM114-Status: GOOD (  28.67  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] net: Add driver for bcmgenet
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds a network driver for the bcmgenet core as found on the
Raspberry Pi4. The driver is derived from the U-Boot driver which
in turn is derived from the Linux driver. The driver has undergone the
usual barebox adjustments and has been tested on the Rpi4.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/Kconfig    |   6 +
 drivers/net/Makefile   |   1 +
 drivers/net/bcmgenet.c | 622 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 629 insertions(+)
 create mode 100644 drivers/net/bcmgenet.c

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 341d02a1da..27d0c4ec8b 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -40,6 +40,12 @@ config DRIVER_NET_AT91_ETHER
 	depends on HAS_AT91_ETHER
 	select PHYLIB
 
+config DRIVER_NET_BCMGENET
+        bool "BCMGENET V5 support"
+        select PHYLIB
+        help
+          This driver supports the BCMGENET Ethernet MAC.
+
 config DRIVER_NET_CS8900
 	bool "cs8900 ethernet driver"
 	depends on HAS_CS8900 || COMPILE_TEST
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index fa3d4583a0..a3eb10d1df 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -6,6 +6,7 @@ obj-$(CONFIG_NET_USB)			+= usb/
 obj-$(CONFIG_DRIVER_NET_AR231X)		+= ar231x.o
 obj-$(CONFIG_DRIVER_NET_ARC_EMAC)	+= arc_emac.o
 obj-$(CONFIG_DRIVER_NET_AT91_ETHER)	+= at91_ether.o
+obj-$(CONFIG_DRIVER_NET_BCMGENET)	+= bcmgenet.o
 obj-$(CONFIG_DRIVER_NET_CS8900)		+= cs8900.o
 obj-$(CONFIG_DRIVER_NET_CPSW)		+= cpsw.o
 obj-$(CONFIG_DRIVER_NET_DAVINCI_EMAC)	+= davinci_emac.o
diff --git a/drivers/net/bcmgenet.c b/drivers/net/bcmgenet.c
new file mode 100644
index 0000000000..73c1590518
--- /dev/null
+++ b/drivers/net/bcmgenet.c
@@ -0,0 +1,622 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Amit Singh Tomar <amittomer25@gmail.com>
+ *
+ * Driver for Broadcom GENETv5 Ethernet controller (as found on the RPi4)
+ * This driver is based on the Linux driver:
+ *      drivers/net/ethernet/broadcom/genet/bcmgenet.c
+ *      which is: Copyright (c) 2014-2017 Broadcom
+ *
+ * The hardware supports multiple queues (16 priority queues and one
+ * default queue), both for RX and TX. There are 256 DMA descriptors (both
+ * for TX and RX), and they live in MMIO registers. The hardware allows
+ * assigning descriptor ranges to queues, but we choose the most simple setup:
+ * All 256 descriptors are assigned to the default queue (#16).
+ * Also the Linux driver supports multiple generations of the MAC, whereas
+ * we only support v5, as used in the Raspberry Pi 4.
+ */
+
+#include <common.h>
+#include <dma.h>
+#include <malloc.h>
+#include <net.h>
+#include <init.h>
+#include <driver.h>
+#include <io.h>
+#include <clock.h>
+#include <xfuncs.h>
+#include <linux/phy.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <of_net.h>
+#include <linux/iopoll.h>
+
+/* Register definitions derived from Linux source */
+#define SYS_REV_CTRL			0x00
+
+#define SYS_PORT_CTRL			0x04
+#define PORT_MODE_EXT_GPHY		3
+
+#define GENET_SYS_OFF			0x0000
+#define SYS_RBUF_FLUSH_CTRL		(GENET_SYS_OFF + 0x08)
+#define SYS_TBUF_FLUSH_CTRL		(GENET_SYS_OFF + 0x0c)
+
+#define GENET_EXT_OFF			0x0080
+#define EXT_RGMII_OOB_CTRL		(GENET_EXT_OFF + 0x0c)
+#define RGMII_LINK			BIT(4)
+#define OOB_DISABLE			BIT(5)
+#define RGMII_MODE_EN			BIT(6)
+#define ID_MODE_DIS			BIT(16)
+
+#define GENET_RBUF_OFF			0x0300
+#define RBUF_TBUF_SIZE_CTRL		(GENET_RBUF_OFF + 0xb4)
+#define RBUF_CTRL			(GENET_RBUF_OFF + 0x00)
+#define RBUF_ALIGN_2B			BIT(1)
+
+#define GENET_UMAC_OFF			0x0800
+#define UMAC_MIB_CTRL			(GENET_UMAC_OFF + 0x580)
+#define UMAC_MAX_FRAME_LEN		(GENET_UMAC_OFF + 0x014)
+#define UMAC_MAC0			(GENET_UMAC_OFF + 0x00c)
+#define UMAC_MAC1			(GENET_UMAC_OFF + 0x010)
+#define UMAC_CMD			(GENET_UMAC_OFF + 0x008)
+#define MDIO_CMD			(GENET_UMAC_OFF + 0x614)
+#define UMAC_TX_FLUSH			(GENET_UMAC_OFF + 0x334)
+#define MDIO_START_BUSY			BIT(29)
+#define MDIO_READ_FAIL			BIT(28)
+#define MDIO_RD				(2 << 26)
+#define MDIO_WR				BIT(26)
+#define MDIO_PMD_SHIFT			21
+#define MDIO_PMD_MASK			0x1f
+#define MDIO_REG_SHIFT			16
+#define MDIO_REG_MASK			0x1f
+
+#define CMD_TX_EN			BIT(0)
+#define CMD_RX_EN			BIT(1)
+#define UMAC_SPEED_10			0
+#define UMAC_SPEED_100			1
+#define UMAC_SPEED_1000			2
+#define UMAC_SPEED_2500			3
+#define CMD_SPEED_SHIFT			2
+#define CMD_SPEED_MASK			3
+#define CMD_SW_RESET			BIT(13)
+#define CMD_LCL_LOOP_EN			BIT(15)
+#define CMD_TX_EN			BIT(0)
+#define CMD_RX_EN			BIT(1)
+
+#define MIB_RESET_RX			BIT(0)
+#define MIB_RESET_RUNT			BIT(1)
+#define MIB_RESET_TX			BIT(2)
+
+/* total number of Buffer Descriptors, same for Rx/Tx */
+#define TOTAL_DESCS			256
+#define RX_DESCS			TOTAL_DESCS
+#define TX_DESCS			TOTAL_DESCS
+
+#define DEFAULT_Q			0x10
+
+#define ENET_MAX_MTU_SIZE		1536
+
+/* Tx/Rx Dma Descriptor common bits */
+#define DMA_EN				BIT(0)
+#define DMA_RING_BUF_EN_SHIFT		0x01
+#define DMA_RING_BUF_EN_MASK		0xffff
+#define DMA_BUFLENGTH_MASK		0x0fff
+#define DMA_BUFLENGTH_SHIFT		16
+#define DMA_RING_SIZE_SHIFT		16
+#define DMA_OWN				0x8000
+#define DMA_EOP				0x4000
+#define DMA_SOP				0x2000
+#define DMA_WRAP			0x1000
+#define DMA_MAX_BURST_LENGTH		0x8
+/* Tx specific DMA descriptor bits */
+#define DMA_TX_UNDERRUN			0x0200
+#define DMA_TX_APPEND_CRC		0x0040
+#define DMA_TX_OW_CRC			0x0020
+#define DMA_TX_DO_CSUM			0x0010
+#define DMA_TX_QTAG_SHIFT		7
+
+/* DMA rings size */
+#define DMA_RING_SIZE			0x40
+#define DMA_RINGS_SIZE			(DMA_RING_SIZE * (DEFAULT_Q + 1))
+
+/* DMA descriptor */
+#define DMA_DESC_LENGTH_STATUS		0x00
+#define DMA_DESC_ADDRESS_LO		0x04
+#define DMA_DESC_ADDRESS_HI		0x08
+#define DMA_DESC_SIZE			12
+
+#define GENET_RX_OFF			0x2000
+#define GENET_RDMA_REG_OFF		0x2c00
+#define GENET_TX_OFF			0x4000
+#define GENET_TDMA_REG_OFF		0x4c00
+
+#define DMA_FC_THRESH_HI		(RX_DESCS >> 4)
+#define DMA_FC_THRESH_LO		5
+#define DMA_FC_THRESH_VALUE		((DMA_FC_THRESH_LO << 16) |	\
+					  DMA_FC_THRESH_HI)
+
+#define DMA_XOFF_THRESHOLD_SHIFT	16
+
+#define TDMA_RING_REG_BASE		0x5000
+#define TDMA_READ_PTR			(TDMA_RING_REG_BASE + 0x00)
+#define TDMA_CONS_INDEX			(TDMA_RING_REG_BASE + 0x08)
+#define TDMA_PROD_INDEX			(TDMA_RING_REG_BASE + 0x0c)
+#define DMA_RING_BUF_SIZE		0x10
+#define DMA_START_ADDR			0x14
+#define DMA_END_ADDR			0x1c
+#define DMA_MBUF_DONE_THRESH		0x24
+#define TDMA_FLOW_PERIOD		(TDMA_RING_REG_BASE + 0x28)
+#define TDMA_WRITE_PTR			(TDMA_RING_REG_BASE + 0x2c)
+
+#define RDMA_RING_REG_BASE		0x3000
+#define RDMA_WRITE_PTR			(RDMA_RING_REG_BASE + 0x00)
+#define RDMA_PROD_INDEX			(RDMA_RING_REG_BASE + 0x08)
+#define RDMA_CONS_INDEX			(RDMA_RING_REG_BASE + 0x0c)
+#define RDMA_XON_XOFF_THRESH		(RDMA_RING_REG_BASE + 0x28)
+#define RDMA_READ_PTR			(RDMA_RING_REG_BASE + 0x2c)
+
+#define TDMA_REG_BASE			0x5040
+#define RDMA_REG_BASE			0x3040
+#define DMA_RING_CFG			0x00
+#define DMA_CTRL			0x04
+#define DMA_SCB_BURST_SIZE		0x0c
+
+#define RX_BUF_LENGTH			2048
+#define RX_TOTAL_BUFSIZE		(RX_BUF_LENGTH * RX_DESCS)
+#define RX_BUF_OFFSET			2
+
+struct bcmgenet_eth_priv {
+	char *rxbuffer;
+	void *mac_reg;
+	int tx_index;
+	int rx_index;
+	int c_index;
+	u32 interface;
+	struct mii_bus miibus;
+	struct eth_device edev;
+	struct device_d *dev;
+	unsigned char addr[6];
+};
+
+static void bcmgenet_umac_reset(struct bcmgenet_eth_priv *priv)
+{
+	u32 reg;
+
+	reg = readl(priv->mac_reg + SYS_RBUF_FLUSH_CTRL);
+	reg |= BIT(1);
+	writel(reg, (priv->mac_reg + SYS_RBUF_FLUSH_CTRL));
+	udelay(10);
+
+	reg &= ~BIT(1);
+	writel(reg, (priv->mac_reg + SYS_RBUF_FLUSH_CTRL));
+	udelay(10);
+
+	writel(0, (priv->mac_reg + SYS_RBUF_FLUSH_CTRL));
+	udelay(10);
+
+	writel(0, priv->mac_reg + UMAC_CMD);
+
+	writel(CMD_SW_RESET | CMD_LCL_LOOP_EN, priv->mac_reg + UMAC_CMD);
+	udelay(2);
+	writel(0, priv->mac_reg + UMAC_CMD);
+
+	/* clear tx/rx counter */
+	writel(MIB_RESET_RX | MIB_RESET_TX | MIB_RESET_RUNT,
+	       priv->mac_reg + UMAC_MIB_CTRL);
+	writel(0, priv->mac_reg + UMAC_MIB_CTRL);
+
+	writel(ENET_MAX_MTU_SIZE, priv->mac_reg + UMAC_MAX_FRAME_LEN);
+
+	/* init rx registers, enable ip header optimization */
+	reg = readl(priv->mac_reg + RBUF_CTRL);
+	reg |= RBUF_ALIGN_2B;
+	writel(reg, (priv->mac_reg + RBUF_CTRL));
+
+	writel(1, (priv->mac_reg + RBUF_TBUF_SIZE_CTRL));
+}
+
+static int bcmgenet_set_hwaddr(struct eth_device *dev, const unsigned char *addr)
+{
+	struct bcmgenet_eth_priv *priv = dev->priv;
+
+	memcpy(priv->addr, addr, 6);
+
+	return 0;
+}
+
+static int __bcmgenet_set_hwaddr(struct bcmgenet_eth_priv *priv)
+{
+	const unsigned char *addr = priv->addr;
+	u32 reg;
+
+	reg = addr[0] << 24 | addr[1] << 16 | addr[2] << 8 | addr[3];
+	writel_relaxed(reg, priv->mac_reg + UMAC_MAC0);
+
+	reg = addr[4] << 8 | addr[5];
+	writel_relaxed(reg, priv->mac_reg + UMAC_MAC1);
+
+	return 0;
+}
+
+static int bcmgenet_get_hwaddr(struct eth_device *edev, unsigned char *mac)
+{
+	return -1;
+}
+
+static void bcmgenet_disable_dma(struct bcmgenet_eth_priv *priv)
+{
+	clrbits_le32(priv->mac_reg + TDMA_REG_BASE + DMA_CTRL, DMA_EN);
+	clrbits_le32(priv->mac_reg + RDMA_REG_BASE + DMA_CTRL, DMA_EN);
+
+	writel(1, priv->mac_reg + UMAC_TX_FLUSH);
+	udelay(10);
+	writel(0, priv->mac_reg + UMAC_TX_FLUSH);
+}
+
+static void bcmgenet_enable_dma(struct bcmgenet_eth_priv *priv)
+{
+	u32 dma_ctrl = (1 << (DEFAULT_Q + DMA_RING_BUF_EN_SHIFT)) | DMA_EN;
+
+	writel(dma_ctrl, priv->mac_reg + TDMA_REG_BASE + DMA_CTRL);
+	setbits_le32(priv->mac_reg + RDMA_REG_BASE + DMA_CTRL, dma_ctrl);
+}
+
+static int bcmgenet_gmac_eth_send(struct eth_device *edev, void *packet, int length)
+{
+	struct bcmgenet_eth_priv *priv = edev->priv;
+	void *desc_base = priv->mac_reg + GENET_TX_OFF + priv->tx_index * DMA_DESC_SIZE;
+	u32 len_stat = length << DMA_BUFLENGTH_SHIFT;
+	u32 prod_index, cons;
+	u32 tries = 100;
+	dma_addr_t dma;
+
+	prod_index = readl(priv->mac_reg + TDMA_PROD_INDEX);
+
+	dma = dma_map_single(priv->dev, packet, length, DMA_TO_DEVICE);
+	if (dma_mapping_error(priv->dev, dma))
+		return -EFAULT;
+
+	len_stat |= 0x3f << DMA_TX_QTAG_SHIFT;
+	len_stat |= DMA_TX_APPEND_CRC | DMA_SOP | DMA_EOP;
+
+	/* Set-up packet for transmission */
+	writel(lower_32_bits(dma), (desc_base + DMA_DESC_ADDRESS_LO));
+	writel(upper_32_bits(dma), (desc_base + DMA_DESC_ADDRESS_HI));
+	writel(len_stat, (desc_base + DMA_DESC_LENGTH_STATUS));
+
+	/* Increment index and start transmission */
+	if (++priv->tx_index >= TX_DESCS)
+		priv->tx_index = 0;
+
+	prod_index++;
+
+	/* Start Transmisson */
+	writel(prod_index, priv->mac_reg + TDMA_PROD_INDEX);
+
+	do {
+		cons = readl(priv->mac_reg + TDMA_CONS_INDEX);
+	} while ((cons & 0xffff) < prod_index && --tries);
+
+	dma_unmap_single(priv->dev, dma, length, DMA_TO_DEVICE);
+
+	if (!tries) {
+		dev_err(priv->dev, "sending timed out\n");
+		return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
+static int bcmgenet_gmac_eth_recv(struct eth_device *edev)
+{
+	struct bcmgenet_eth_priv *priv = edev->priv;
+	void *desc_base = priv->mac_reg + GENET_RX_OFF + priv->rx_index * DMA_DESC_SIZE;
+	u32 prod_index = readl(priv->mac_reg + RDMA_PROD_INDEX);
+	u32 length;
+	unsigned long addr_lo, addr_hi, addr;
+
+	if (prod_index == priv->c_index)
+		return -EAGAIN;
+
+	length = readl(desc_base + DMA_DESC_LENGTH_STATUS);
+	length = (length >> DMA_BUFLENGTH_SHIFT) & DMA_BUFLENGTH_MASK;
+	addr_lo = readl(desc_base + DMA_DESC_ADDRESS_LO);
+	addr_hi = readl(desc_base + DMA_DESC_ADDRESS_HI);
+	addr = addr_hi << 32 | addr_lo;
+
+	dma_sync_single_for_cpu(addr, length, DMA_FROM_DEVICE);
+
+	/* To cater for the IP header alignment the hardware does.
+	 * This would actually not be needed if we don't program
+	 * RBUF_ALIGN_2B
+	 */
+	net_receive(edev, (void *)addr + RX_BUF_OFFSET, length - RX_BUF_OFFSET);
+
+	dma_sync_single_for_device(addr, length, DMA_FROM_DEVICE);
+
+	/* Tell the MAC we have consumed that last receive buffer. */
+	priv->c_index = (priv->c_index + 1) & 0xffff;
+	writel(priv->c_index, priv->mac_reg + RDMA_CONS_INDEX);
+
+	/* Forward our descriptor pointer, wrapping around if needed. */
+	if (++priv->rx_index >= RX_DESCS)
+		priv->rx_index = 0;
+
+	return 0;
+}
+
+static void rx_descs_init(struct bcmgenet_eth_priv *priv)
+{
+	char *rxbuffs = priv->rxbuffer;
+	u32 len_stat, i;
+	void *desc_base = priv->mac_reg + GENET_RX_OFF;
+
+	len_stat = (RX_BUF_LENGTH << DMA_BUFLENGTH_SHIFT) | DMA_OWN;
+
+	for (i = 0; i < RX_DESCS; i++) {
+		writel(lower_32_bits((uintptr_t)&rxbuffs[i * RX_BUF_LENGTH]),
+		       desc_base + i * DMA_DESC_SIZE + DMA_DESC_ADDRESS_LO);
+		writel(upper_32_bits((uintptr_t)&rxbuffs[i * RX_BUF_LENGTH]),
+		       desc_base + i * DMA_DESC_SIZE + DMA_DESC_ADDRESS_HI);
+		writel(len_stat,
+		       desc_base + i * DMA_DESC_SIZE + DMA_DESC_LENGTH_STATUS);
+	}
+}
+
+static void rx_ring_init(struct bcmgenet_eth_priv *priv)
+{
+	writel(DMA_MAX_BURST_LENGTH,
+	       priv->mac_reg + RDMA_REG_BASE + DMA_SCB_BURST_SIZE);
+
+	writel(0x0, priv->mac_reg + RDMA_RING_REG_BASE + DMA_START_ADDR);
+	writel(0x0, priv->mac_reg + RDMA_READ_PTR);
+	writel(0x0, priv->mac_reg + RDMA_WRITE_PTR);
+	writel(RX_DESCS * DMA_DESC_SIZE / 4 - 1,
+	       priv->mac_reg + RDMA_RING_REG_BASE + DMA_END_ADDR);
+
+	/* cannot init RDMA_PROD_INDEX to 0, so align RDMA_CONS_INDEX on it instead */
+	priv->c_index = readl(priv->mac_reg + RDMA_PROD_INDEX);
+	writel(priv->c_index, priv->mac_reg + RDMA_CONS_INDEX);
+	priv->rx_index = priv->c_index;
+	priv->rx_index &= 0xff;
+	writel((RX_DESCS << DMA_RING_SIZE_SHIFT) | RX_BUF_LENGTH,
+	       priv->mac_reg + RDMA_RING_REG_BASE + DMA_RING_BUF_SIZE);
+	writel(DMA_FC_THRESH_VALUE, priv->mac_reg + RDMA_XON_XOFF_THRESH);
+	writel(1 << DEFAULT_Q, priv->mac_reg + RDMA_REG_BASE + DMA_RING_CFG);
+}
+
+static void tx_ring_init(struct bcmgenet_eth_priv *priv)
+{
+	writel(DMA_MAX_BURST_LENGTH,
+	       priv->mac_reg + TDMA_REG_BASE + DMA_SCB_BURST_SIZE);
+
+	writel(0x0, priv->mac_reg + TDMA_RING_REG_BASE + DMA_START_ADDR);
+	writel(0x0, priv->mac_reg + TDMA_READ_PTR);
+	writel(0x0, priv->mac_reg + TDMA_WRITE_PTR);
+	writel(TX_DESCS * DMA_DESC_SIZE / 4 - 1,
+	       priv->mac_reg + TDMA_RING_REG_BASE + DMA_END_ADDR);
+	/* cannot init TDMA_CONS_INDEX to 0, so align TDMA_PROD_INDEX on it instead */
+	priv->tx_index = readl(priv->mac_reg + TDMA_CONS_INDEX);
+	writel(priv->tx_index, priv->mac_reg + TDMA_PROD_INDEX);
+	priv->tx_index &= 0xFF;
+	writel(0x1, priv->mac_reg + TDMA_RING_REG_BASE + DMA_MBUF_DONE_THRESH);
+	writel(0x0, priv->mac_reg + TDMA_FLOW_PERIOD);
+	writel((TX_DESCS << DMA_RING_SIZE_SHIFT) | RX_BUF_LENGTH,
+	       priv->mac_reg + TDMA_RING_REG_BASE + DMA_RING_BUF_SIZE);
+
+	writel(1 << DEFAULT_Q, priv->mac_reg + TDMA_REG_BASE + DMA_RING_CFG);
+}
+
+static void bcmgenet_adjust_link(struct eth_device *edev)
+{
+	struct bcmgenet_eth_priv *priv = edev->priv;
+	struct phy_device *phy_dev = edev->phydev;
+	u32 speed;
+
+	switch (phy_dev->speed) {
+	case SPEED_1000:
+		speed = UMAC_SPEED_1000;
+		break;
+	case SPEED_100:
+		speed = UMAC_SPEED_100;
+		break;
+	case SPEED_10:
+		speed = UMAC_SPEED_10;
+		break;
+	default:
+		dev_err(priv->dev, "bcmgenet: Unsupported PHY speed: %d\n", phy_dev->speed);
+		return;
+	}
+
+	clrsetbits_le32(priv->mac_reg + EXT_RGMII_OOB_CTRL, OOB_DISABLE,
+			RGMII_LINK | RGMII_MODE_EN);
+
+	if (phy_dev->interface == PHY_INTERFACE_MODE_RGMII ||
+	    phy_dev->interface == PHY_INTERFACE_MODE_RGMII_RXID) {
+		setbits_le32(priv->mac_reg + EXT_RGMII_OOB_CTRL, ID_MODE_DIS);
+		writel(PORT_MODE_EXT_GPHY, priv->mac_reg + SYS_PORT_CTRL);
+	}
+
+	clrsetbits_le32(priv->mac_reg + UMAC_CMD, CMD_SPEED_MASK << CMD_SPEED_SHIFT,
+			speed << CMD_SPEED_SHIFT);
+}
+
+static int bcmgenet_gmac_eth_start(struct eth_device *edev)
+{
+	struct bcmgenet_eth_priv *priv = edev->priv;
+	int ret;
+
+	bcmgenet_umac_reset(priv);
+
+	__bcmgenet_set_hwaddr(priv);
+
+	/* Disable RX/TX DMA and flush TX queues */
+	bcmgenet_disable_dma(priv);
+
+	rx_ring_init(priv);
+	rx_descs_init(priv);
+	tx_ring_init(priv);
+	bcmgenet_enable_dma(priv);
+
+	ret = phy_device_connect(edev, &priv->miibus, -1,
+				 bcmgenet_adjust_link, 0,
+				 priv->interface);
+	if (ret)
+                return ret;
+
+	/* Enable Rx/Tx */
+	setbits_le32(priv->mac_reg + UMAC_CMD, CMD_TX_EN | CMD_RX_EN);
+
+	return 0;
+}
+
+static void bcmgenet_mdio_start(struct bcmgenet_eth_priv *priv)
+{
+	setbits_le32(priv->mac_reg + MDIO_CMD, MDIO_START_BUSY);
+}
+
+static int bcmgenet_mdio_write(struct mii_bus *bus, int addr,
+			       int reg, u16 value)
+{
+	struct bcmgenet_eth_priv *priv = bus->priv;
+	u32 val;
+
+	/* Prepare the read operation */
+	val = MDIO_WR | (addr << MDIO_PMD_SHIFT) |
+		(reg << MDIO_REG_SHIFT) | (0xffff & value);
+	writel_relaxed(val,  priv->mac_reg + MDIO_CMD);
+
+	/* Start MDIO transaction */
+	bcmgenet_mdio_start(priv);
+
+	return readl_poll_timeout(priv->mac_reg + MDIO_CMD, reg,
+				  !(reg & MDIO_START_BUSY), 20);
+}
+
+static int bcmgenet_mdio_read(struct mii_bus *bus, int addr, int reg)
+{
+	struct bcmgenet_eth_priv *priv = bus->priv;
+	u32 val;
+	int ret;
+
+	/* Prepare the read operation */
+	val = MDIO_RD | (addr << MDIO_PMD_SHIFT) | (reg << MDIO_REG_SHIFT);
+	writel_relaxed(val, priv->mac_reg + MDIO_CMD);
+
+	/* Start MDIO transaction */
+	bcmgenet_mdio_start(priv);
+
+	ret = readl_poll_timeout(priv->mac_reg + MDIO_CMD, reg,
+				 !(reg & MDIO_START_BUSY), 20);
+	if (ret)
+		return ret;
+
+	val = readl_relaxed(priv->mac_reg + MDIO_CMD);
+
+	return val & 0xffff;
+}
+
+static int bcmgenet_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	struct bcmgenet_eth_priv *priv;
+	u32 reg;
+	int ret;
+	u8 major;
+	struct eth_device *edev;
+
+	priv = xzalloc(sizeof(*priv));
+	edev = &priv->edev;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		ret = PTR_ERR(iores);
+		return ret;
+	}
+	priv->mac_reg = IOMEM(iores->start);
+	priv->dev = dev;
+	priv->rxbuffer = dma_alloc(RX_TOTAL_BUFSIZE);
+
+	edev->open = bcmgenet_gmac_eth_start;
+	edev->send = bcmgenet_gmac_eth_send;
+	edev->recv = bcmgenet_gmac_eth_recv;
+	edev->get_ethaddr = bcmgenet_get_hwaddr;
+	edev->set_ethaddr = bcmgenet_set_hwaddr;
+	edev->parent = dev;
+	edev->priv = priv;
+	dev->priv = priv;
+
+	/* Read GENET HW version */
+	reg = readl_relaxed(priv->mac_reg + SYS_REV_CTRL);
+	major = (reg >> 24) & 0x0f;
+	if (major != 6) {
+		if (major == 5)
+			major = 4;
+		else if (major == 0)
+			major = 1;
+
+		dev_err(priv->dev, "Unsupported GENETv%d.%d\n", major, (reg >> 16) & 0x0f);
+		return -ENODEV;
+	}
+
+	ret = of_get_phy_mode(dev->device_node);
+	if (ret < 0)
+		priv->interface = PHY_INTERFACE_MODE_MII;
+	else
+		priv->interface = ret;
+
+	writel(0, priv->mac_reg + SYS_RBUF_FLUSH_CTRL);
+	udelay(10);
+	/* disable MAC while updating its registers */
+	writel(0, priv->mac_reg + UMAC_CMD);
+	/* issue soft reset with (rg)mii loopback to ensure a stable rxclk */
+	writel(CMD_SW_RESET | CMD_LCL_LOOP_EN, priv->mac_reg + UMAC_CMD);
+
+	priv->miibus.read = bcmgenet_mdio_read;
+	priv->miibus.write = bcmgenet_mdio_write;
+
+	priv->miibus.priv = priv;
+	priv->miibus.parent = dev;
+
+	ret = mdiobus_register(&priv->miibus);
+	if (ret)
+		return ret;
+
+	ret = eth_register(edev);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static void bcmgenet_gmac_eth_stop(struct bcmgenet_eth_priv *priv)
+{
+	clrbits_le32(priv->mac_reg + UMAC_CMD, CMD_TX_EN | CMD_RX_EN);
+
+	bcmgenet_disable_dma(priv);
+}
+
+static void bcmgenet_remove(struct device_d *dev)
+{
+	struct bcmgenet_eth_priv *priv = dev->priv;
+
+	bcmgenet_gmac_eth_stop(priv);
+}
+
+static struct of_device_id bcmgenet_ids[] = {
+        {
+                .compatible = "brcm,genet-v5",
+        }, {
+                .compatible = "brcm,bcm2711-genet-v5",
+        }, {
+                /* sentinel */
+        },
+};
+
+static struct driver_d bcmgenet_driver = {
+        .name   = "brcm-genet",
+        .probe  = bcmgenet_probe,
+        .remove = bcmgenet_remove,
+        .of_compatible = DRV_OF_COMPAT(bcmgenet_ids),
+};
+device_platform_driver(bcmgenet_driver);
-- 
2.30.2



