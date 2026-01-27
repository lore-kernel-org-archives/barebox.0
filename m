Delivery-date: Tue, 27 Jan 2026 13:13:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkhwp-005tLm-0u
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 13:13:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkhwn-000174-J0
	for lore@pengutronix.de; Tue, 27 Jan 2026 13:13:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IigRN676xeqfersznsDm7iA+UK19CAhLMK3wW7IF9Pk=; b=BznQM+lW3KkXky1CeHr8cLXI+Z
	bPhxvQueRdq6XVMasZnOSxm+1oHKJNQaYcYs+vdSE7diFfbK+jTe8ml3aQhe0oCyFqNzD11AFgnqq
	n2qy0gOAG84z/otvLwccvzxeRBdl4mm3pn74iwqkmDlD6kaQeRf5wv2ELVSshwmvPtxom6b6DaE2u
	wG7wuzJSYlsfYlvYTaDdc4zsT8aEnSRDbIIu4oSH6OeiCXyxrEVKB60XD/YDCQRm6n5YB4Dq5Jfoa
	TXnAwGtZ7dAaX8CNdA3WCI19JPzIx+3UinN2dH3XgOqa2YD6NWryDvn6eVYPy1H2OzW5kO2zcvVxO
	jF8U+Xag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkhw1-0000000EDKe-0GEr;
	Tue, 27 Jan 2026 12:12:41 +0000
Received: from uk-relay3.ametek.com ([89.191.218.232] helo=uk-relay13.ametek.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkhvw-0000000EDH2-0vEG
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 12:12:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ametek.com; s=ukrelaysnew; c=relaxed/simple;
	q=dns/txt; i=@ametek.com; t=1769515943; x=1772107943;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=c9DXXbzuabI0/sO4bB12Cu+ntxSG+SneebJ0IaOilxQ=;
	b=PFbpHAbLMAQyVBB50JjM9CmDKQUUXjUWIVHJSrnL/Wd9Mz8Dw/ZVRtG7Xs45Zo1v
	1i0OPjagXjpLET5J+Z1HDa3XkD+BACe2AEY1w1KURYboZdvS7+D5ExiUjDvk0w60
	B3H/iX7oQbz6REm7l5pFlOa6oF3Gde7/UuKwVke9nL4T+cO3tzCO5VuzID325QvC
	bsukT4lC0Hjek6KScrMQJ7GXVL2CGO18tMY7sbxiZcmItfhGIbt1Mrmmx+AwmN85
	z1MZ5I7QPMaDYUPea47skMJ294AK1LVLun8+r6/y4C9Wn0zymxRkWyI/fY1OzRbo
	6uIp9RIFvExkJeDeS2s/5w==;
X-AuditID: ac1001d4-ba83c380000daae5-b3-6978aba763af
Received: from uk-edi-aba-ow01.ametek.com ( [10.175.96.158])
	by uk-relay13.ametek.com (Symantec Mail Security) with SMTP id DC.FF.43749.7ABA8796; Tue, 27 Jan 2026 12:12:23 +0000 (GMT)
From: Renaud Barbier <renaud.barbier@ametek.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@ametek.com>
Date: Tue, 27 Jan 2026 12:12:16 +0000
Message-ID: <20260127121217.3896902-2-renaud.barbier@ametek.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260127121217.3896902-1-renaud.barbier@ametek.com>
References: <20260127121217.3896902-1-renaud.barbier@ametek.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCJMWRmVeSWpSXmKPExsXCtT5hnu7y1RWZBnu/clicWNzPbDH9bZAD
	k8e8nQEem5fUBzBFcdmkpOZklqUW6dslcGU82v+IqeB5XUXPrIssDYw307oYOTkkBEwkjv65
	xd7FyMUhJLCTUeLKqxY2kASbgIHEv6NfwWwRAXmJufvbWEFsZgE9iY4LE5lAbGEBK4mfD7vB
	bBYBVYlVK3qYQWxeAQeJuwvuM0EskJdYvGM5WJxTwFHi3ft+sLgQUM2yvS9YIOoFJU7OfMIC
	MV9eonnrbOYJjLyzkKRmIUktYGRaxShamq1blJqTWGlorJeYm1qSmq2XnJ+7iREYMGsEGK/s
	YLzz6YPeIUYmDsZDjBIczEoivPzLSjOFeFMSK6tSi/Lji0pzUosPMUpzsCiJ867d8yFOSCA9
	EWhKampBahFMlomDU6qBafItrb9Knvt44uYWFp9Ku65+yZ0rVyz7im2rza+LnrIVEReeVx3c
	6uMyryynhYsl98y/54JPhBZJ72PpMKy/cv/K48sWC7hPzXAReKo+v33SrbRr5yTEq75pqCll
	eN4xaZ/QEfjfd+0Lx2Cd8q6JStM2ak+NfXukzoJX8WJY3gczA4WKZV9/XOwR7C5qSfFUOTF3
	KWNxzfF1s5s3stfMWjp3OcOGbZu4nofe23dtS5VyzNc1uuvqpbRKV5Ra7b8U4enNbe949pf1
	mofCv69aREdYb54zLaBsGcuSUHGF6NnuweGH+12u1jMmBKWqR566aCJQnsTxZPXMR1XLLm3z
	mFr47FxpSD3PPl+5Z/ZNSmzFGYlGpmZazEXFiQAl7ajZiQIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_041236_544774_46BDB38B 
X-CRM114-Status: GOOD (  26.53  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] net: gianfar: add device tree support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Like the PPC platforms, the NXP LS1021A Ethernet controller is managed
by the gianfar driver. Since the LS1021A configuration uses a device tree,
add probing through the device tree to the gianfar driver while preserving
the tree-less PPC support.

Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
---
 arch/powerpc/include/asm/dma.h |  35 ++++-
 drivers/net/Kconfig            |   2 +-
 drivers/net/gianfar.c          | 261 +++++++++++++++++++++++++++++----
 drivers/net/gianfar.h          |  36 +++++
 4 files changed, 300 insertions(+), 34 deletions(-)

diff --git a/arch/powerpc/include/asm/dma.h b/arch/powerpc/include/asm/dma.h
index 27d269f491..dcd9e3d748 100644
--- a/arch/powerpc/include/asm/dma.h
+++ b/arch/powerpc/include/asm/dma.h
@@ -8,6 +8,39 @@
 #ifndef __ASM_DMA_H
 #define __ASM_DMA_H
 
-/* empty */
+#include <io.h>
+
+#define arch_sync_dma_for_cpu arch_sync_dma_for_cpu
+static inline void arch_sync_dma_for_cpu(void *vaddr, size_t size,
+					 enum dma_data_direction dir)
+{
+}
+
+#define arch_sync_dma_for_device arch_sync_dma_for_device
+static inline void arch_sync_dma_for_device(void *vaddr, size_t size,
+					    enum dma_data_direction dir)
+{
+}
+
+static inline void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
+					   size_t size, enum dma_data_direction dir)
+{
+}
+
+static inline void dma_sync_single_for_device(struct device *dev, dma_addr_t address,
+					      size_t size, enum dma_data_direction dir)
+{
+}
+
+static inline dma_addr_t dma_map_single(struct device *dev, void *ptr,
+					size_t size, enum dma_data_direction dir)
+{
+	return virt_to_phys(ptr);
+}
+
+static inline void dma_unmap_single(struct device *dev, dma_addr_t dma_addr,
+				    size_t size, enum dma_data_direction dir)
+{
+}
 
 #endif /* __ASM_DMA_H */
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 068906078c..bd18416d3d 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -237,7 +237,7 @@ config DRIVER_NET_FSL_FMAN
 
 config DRIVER_NET_GIANFAR
 	bool "Gianfar Ethernet"
-	depends on ARCH_MPC85XX
+	depends on ARCH_MPC85XX || ARCH_LS1021
 	select PHYLIB
 
 config DRIVER_NET_KS8851_MLL
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 18b3c8849c..7a947a21da 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -8,14 +8,18 @@
  * based on work by Andy Fleming
  */
 
+#ifdef CONFIG_PPC
 #include <asm/config.h>
+#endif
 #include <common.h>
 #include <malloc.h>
 #include <net.h>
+#include <dma.h>
 #include <init.h>
 #include <driver.h>
 #include <command.h>
 #include <errno.h>
+#include <of_address.h>
 #include <asm/io.h>
 #include <linux/phy.h>
 #include <linux/err.h>
@@ -77,11 +81,11 @@ static void gfar_adjust_link(struct eth_device *edev)
 	u32 ecntrl, maccfg2;
 
 	priv->link = edev->phydev->link;
-	priv->duplexity =edev->phydev->duplex;
+	priv->duplexity = edev->phydev->duplex;
 
 	if (edev->phydev->speed == SPEED_1000)
 		priv->speed = 1000;
-	if (edev->phydev->speed == SPEED_100)
+	else if (edev->phydev->speed == SPEED_100)
 		priv->speed = 100;
 	else
 		priv->speed = 10;
@@ -121,11 +125,11 @@ static void gfar_adjust_link(struct eth_device *edev)
 		out_be32(regs + GFAR_ECNTRL_OFFSET, ecntrl);
 		out_be32(regs + GFAR_MACCFG2_OFFSET, maccfg2);
 
-		dev_info(&edev->dev, "Speed: %d, %s duplex\n", priv->speed,
+		dev_dbg(&edev->dev, "Speed: %d, %s duplex\n", priv->speed,
 		       (priv->duplexity) ? "full" : "half");
 
 	} else {
-		dev_info(&edev->dev, "No link.\n");
+		dev_dbg(&edev->dev, "No link.\n");
 	}
 }
 
@@ -173,28 +177,45 @@ static int gfar_init(struct eth_device *edev)
 	return  0;
 }
 
+static int gfar_receive_packets_setup(struct gfar_private *priv, int ix)
+{
+	dma_addr_t dma;
+
+	dma = dma_map_single(priv->dev, priv->rx_buffer[ix], PKTSIZE,
+			DMA_FROM_DEVICE);
+	if (dma_mapping_error(priv->dev, dma)) {
+		return -EFAULT;
+	}
+
+	out_be32(&priv->rxbd[ix].bufPtr, dma);
+
+	return 0;
+}
+
 static int gfar_open(struct eth_device *edev)
 {
-	int ix;
 	struct gfar_private *priv = edev->priv;
 	struct gfar_phy *phy = priv->gfar_mdio;
 	void __iomem *regs = priv->regs;
-	int ret;
+	int ix, ret;
 
-	ret = phy_device_connect(edev, &phy->miibus, priv->phyaddr,
-				 gfar_adjust_link, 0, PHY_INTERFACE_MODE_NA);
+	ret = phy_device_connect(edev, (phy?&phy->miibus:NULL), priv->phyaddr,
+				 gfar_adjust_link, 0, priv->interface);
 	if (ret)
 		return ret;
 
 	/* Point to the buffer descriptors */
-	out_be32(regs + GFAR_TBASE0_OFFSET, (unsigned int)priv->txbd);
-	out_be32(regs + GFAR_RBASE0_OFFSET, (unsigned int)priv->rxbd);
+	out_be32(regs + GFAR_TBASE0_OFFSET, virt_to_phys(priv->txbd));
+	out_be32(regs + GFAR_RBASE0_OFFSET, virt_to_phys(priv->rxbd));
 
 	/* Initialize the Rx Buffer descriptors */
 	for (ix = 0; ix < RX_BUF_CNT; ix++) {
 		out_be16(&priv->rxbd[ix].status, RXBD_EMPTY);
 		out_be16(&priv->rxbd[ix].length, 0);
-		out_be32(&priv->rxbd[ix].bufPtr, (uint) priv->rx_buffer[ix]);
+		if (gfar_receive_packets_setup(priv, ix)) {
+			dev_err(&edev->dev, "RX packet dma mapping failed");
+			return -EIO;
+		}
 	}
 	out_be16(&priv->rxbd[RX_BUF_CNT - 1].status, RXBD_EMPTY | RXBD_WRAP);
 
@@ -324,26 +345,19 @@ static int gfar_bus_reset(struct mii_bus *bus)
 	return 0;
 }
 
-/* Reset the external PHYs. */
 static void gfar_init_phy(struct eth_device *dev)
 {
 	struct gfar_private *priv = dev->priv;
-	struct gfar_phy *phy = priv->gfar_mdio;
 	void __iomem *regs = priv->regs;
-	uint64_t start;
-
-	gfar_local_mdio_write(phy->regs, priv->phyaddr, GFAR_MIIM_CR,
-			GFAR_MIIM_CR_RST);
-
-	start = get_time_ns();
-	while (!is_timeout(start, 10 * MSECOND)) {
-		if (!(gfar_local_mdio_read(phy->regs, priv->phyaddr,
-					GFAR_MIIM_CR) & GFAR_MIIM_CR_RST))
-			break;
-	}
+	uint32_t ecntrl;
 
-	if (in_be32(regs + GFAR_ECNTRL_OFFSET) & GFAR_ECNTRL_SGMII_MODE)
+	ecntrl = in_be32(regs + GFAR_ECNTRL_OFFSET);
+	if (ecntrl & GFAR_ECNTRL_SGMII_MODE) {
+		priv->interface = PHY_INTERFACE_MODE_SGMII;
 		gfar_configure_serdes(priv);
+	} else if (ecntrl & ECNTRL_REDUCED_MODE) {
+		priv->interface = PHY_INTERFACE_MODE_RGMII;
+	}
 }
 
 static int gfar_send(struct eth_device *edev, void *packet, int length)
@@ -351,12 +365,19 @@ static int gfar_send(struct eth_device *edev, void *packet, int length)
 	struct gfar_private *priv = edev->priv;
 	void __iomem *regs = priv->regs;
 	struct device *dev = edev->parent;
+	dma_addr_t dma;
 	uint64_t start;
 	uint tidx;
 	uint16_t status;
 
 	tidx = priv->txidx;
-	out_be32(&priv->txbd[tidx].bufPtr, (u32) packet);
+
+	dma = dma_map_single(dev, packet, length, DMA_TO_DEVICE);
+	if (dma_mapping_error(priv->dev, dma)) {
+		dev_err(dev, "TX mapping packet failed");
+		return -EFAULT;
+	}
+	out_be32(&priv->txbd[tidx].bufPtr, (u32) dma);
 	out_be16(&priv->txbd[tidx].length, length);
 	out_be16(&priv->txbd[tidx].status,
 		in_be16(&priv->txbd[tidx].status) |
@@ -368,10 +389,11 @@ static int gfar_send(struct eth_device *edev, void *packet, int length)
 	/* Wait for buffer to be transmitted */
 	start = get_time_ns();
 	while (in_be16(&priv->txbd[tidx].status) & TXBD_READY) {
-		if (is_timeout(start, 5 * MSECOND)) {
+		if (is_timeout(start, 10 * MSECOND)) {
 			break;
 		}
 	}
+	dma_unmap_single(dev, dma, length, DMA_TO_DEVICE);
 
 	status = in_be16(&priv->txbd[tidx].status);
 	if (status & TXBD_READY) {
@@ -401,9 +423,16 @@ static void gfar_recv(struct eth_device *edev)
 
 	/* Send the packet up if there were no errors */
 	status = in_be16(&priv->rxbd[priv->rxidx].status);
-	if (!(status & RXBD_STATS))
-		net_receive(edev, priv->rx_buffer[priv->rxidx], length - 4);
-	else
+	if (!(status & RXBD_STATS)) {
+		void *frame;
+
+		frame = phys_to_virt(in_be32(&priv->rxbd[priv->rxidx].bufPtr));
+		dma_sync_single_for_cpu(dev, (unsigned long)frame, length,
+				DMA_FROM_DEVICE);
+		net_receive(edev, frame, length - 4);
+		dma_sync_single_for_device(dev, (unsigned long)frame, length,
+				DMA_FROM_DEVICE);
+	} else
 		dev_err(dev, "Got error %x\n", status & RXBD_STATS);
 
 	out_be16(&priv->rxbd[priv->rxidx].length, 0);
@@ -451,7 +480,140 @@ static int gfar_miiphy_write(struct mii_bus *bus, int addr, int reg,
 	return 0;
 }
 
+#ifdef CONFIG_OFDEVICE
+static int gfar_probe(struct device_d *dev)
+{
+	struct eth_device *edev;
+	struct gfar_private *priv;
+	struct device_node *np;
+	uint32_t tbiaddr = 0x1f;
+	size_t size;
+	void *base;
+	int ret;
+
+	priv = xzalloc(sizeof(struct gfar_private));
+
+	ret = net_alloc_packets(priv->rx_buffer, RX_BUF_CNT);
+	if (ret) {
+		free(priv);
+		return ret;
+	}
+
+	priv->dev = dev;
+	edev = &priv->edev;
+
+	priv->regs = dev_get_mem_region(dev, 0);
+	if (IS_ERR(priv->regs)) {
+		struct device_node *child;
+
+		child = of_get_next_child(dev->device_node, NULL);
+		for_each_child_of_node(dev->device_node, child) {
+			if (child->name && !strncmp(child->name, "queue-group",
+					strlen("queue-group"))) {
+				priv->regs = of_iomap(child, 0);
+				if (IS_ERR(priv->regs)) {
+					dev_err(dev, "Failed to acquire first group address\n");
+					return -ENOENT;
+				} else {
+					break;
+				}
+			}
+		}
+	}
+	priv->phyaddr = -1;
+
+	np = of_parse_phandle_from(dev->device_node, NULL, "phy-handle", 0);
+	if (np) {
+		uint32_t reg = 0;
+
+		if (!of_property_read_u32(np, "reg", &reg))
+			priv->phyaddr = reg;
+	} else {
+		dev_err(dev, "Could not get phy-handle address\n");
+		return -ENOENT;
+	}
+
+	priv->tbicr = TSEC_TBICR_SETTINGS;
+	priv->tbiana = TBIANA_SETTINGS;
+
+	/* Handle to tbi node */
+	np = of_parse_phandle_from(dev->device_node, NULL, "tbi-handle", 0);
+	if (np) {
+		struct device_node *parent;
+		struct gfar_phy *tbiphy;
+		struct device *bus_dev;
+		struct mii_bus *bus;
+
+		/* Get tbi address to be programmed in device */
+		if (of_property_read_u32(np, "reg", &tbiaddr)) {
+			dev_err(dev, "Failed to get tbi reg property\n");
+			return -ENOENT;
+		}
+		/* MDIO is the parent  */
+		parent = of_get_parent(np);
+		if (parent == NULL)  {
+			dev_err(dev, "No parent node for TBI PHY?\n");
+			return -ENOENT;
+		}
+		tbiphy = xzalloc(sizeof(*tbiphy));
+		tbiphy->dev = parent->dev;
+		tbiphy->regs = NULL;
+
+		for_each_mii_bus(bus) {
+			if (bus->dev.of_node == parent) {
+				struct gfar_phy *phy;
+
+				bus_dev = bus->parent;
+				phy = bus_dev->priv;
+				tbiphy->regs = phy->regs;
+				break;
+			}
+		}
+		if (tbiphy->regs == NULL) {
+			dev_err(dev, "Could not get TBI address\n");
+			free(tbiphy);
+			return PTR_ERR(tbiphy->regs);
+		}
+
+		tbiphy->miibus.read = gfar_miiphy_read;
+		tbiphy->miibus.write = gfar_miiphy_write;
+		tbiphy->miibus.priv = tbiphy;
+		tbiphy->miibus.parent = dev;
+		tbiphy->dev->priv = tbiphy;
+		priv->gfar_tbi = tbiphy;
+	}
+
+	priv->tbiaddr = tbiaddr;
+	out_be32(priv->regs + GFAR_TBIPA_OFFSET, priv->tbiaddr);
+
+	size = ((TX_BUF_CNT * sizeof(struct txbd8)) +
+		(RX_BUF_CNT * sizeof(struct rxbd8)));
+	base = dma_alloc_coherent(DMA_DEVICE_BROKEN, size, DMA_ADDRESS_BROKEN);
+	priv->txbd = (struct txbd8 __iomem *)base;
+	priv->rxbd = (struct rxbd8 __iomem *)(base + (TX_BUF_CNT * sizeof(struct txbd8)));
+	dma_set_mask(dev, DMA_BIT_MASK(32));
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
+	gfar_init_phy(edev);
+
+	return eth_register(edev);
+}
+#else
 /*
+ * PPC only as there is no device tree support.
  * Initialize device structure. Returns success if
  * initialization succeeded.
  */
@@ -469,8 +631,10 @@ static int gfar_probe(struct device *dev)
 	priv = xzalloc(sizeof(struct gfar_private));
 
 	ret = net_alloc_packets(priv->rx_buffer, ARRAY_SIZE(priv->rx_buffer));
-	if (ret)
+	if (ret) {
+		free(priv);
 		return ret;
+	}
 
 	edev = &priv->edev;
 
@@ -527,21 +691,49 @@ static int gfar_probe(struct device *dev)
 
 	return eth_register(edev);
 }
+#endif
+
+static struct tsec_data etsec2_data = {
+	.mdio_regs_off = 0x520,
+};
+
+static struct tsec_data gianfar_data = {
+	.mdio_regs_off = 0x0,
+};
+
+static const struct of_device_id gfar_ids[] = {
+	{ .compatible = "fsl,etsec2", .data = &etsec2_data },
+	{ .compatible = "gianfar", .data = &gianfar_data },
+	{ /* sentinel */ }
+};
 
 static struct driver gfar_eth_driver = {
 	.name  = "gfar",
+	.of_compatible = DRV_OF_COMPAT(gfar_ids),
 	.probe = gfar_probe,
 };
 device_platform_driver(gfar_eth_driver);
 
+/* MII bus */
+static struct fsl_pq_mdio_data mdio_gianfar_data = {
+	.mdio_regs_off = 0x0,
+};
+
+static __maybe_unused const struct of_device_id gfar_mdio_ids[] = {
+	{ .compatible = "fsl,etsec2-mdio", .data = &mdio_gianfar_data },
+	{ /* sentinel */ }
+};
+
 static int gfar_phy_probe(struct device *dev)
 {
 	struct gfar_phy *phy;
+	struct fsl_pq_mdio_data *data;
 	int ret;
 
+	data = (struct fsl_pq_mdio_data *)device_get_match_data(dev);
 	phy = xzalloc(sizeof(*phy));
 	phy->dev = dev;
-	phy->regs = dev_get_mem_region(dev, 0);
+	phy->regs = dev_get_mem_region(dev, 0) + data->mdio_regs_off;
 	if (IS_ERR(phy->regs))
 		return PTR_ERR(phy->regs);
 
@@ -561,10 +753,14 @@ static int gfar_phy_probe(struct device *dev)
 
 static struct driver gfar_phy_driver = {
 	.name  = "gfar-mdio",
+#ifdef CONFIG_OFDEVICE
+	.of_compatible = DRV_OF_COMPAT(gfar_mdio_ids),
+#endif
 	.probe = gfar_phy_probe,
 };
 register_driver_macro(coredevice, platform, gfar_phy_driver);
 
+#ifndef CONFIG_OFDEVICE
 static int gfar_tbiphy_probe(struct device *dev)
 {
 	struct gfar_phy *phy;
@@ -594,3 +790,4 @@ static struct driver gfar_tbiphy_driver = {
 	.probe = gfar_tbiphy_probe,
 };
 register_driver_macro(coredevice, platform, gfar_tbiphy_driver);
+#endif
diff --git a/drivers/net/gianfar.h b/drivers/net/gianfar.h
index 8ccbbe1473..42add4df87 100644
--- a/drivers/net/gianfar.h
+++ b/drivers/net/gianfar.h
@@ -14,8 +14,14 @@
 #define __GIANFAR_H
 
 #include <net.h>
+
+#ifdef CONFIG_PPC
 #include <asm/config.h>
+#endif
+
+#ifdef CONFIG_ARCH_MPC85XX
 #include <mach/gianfar.h>
+#endif
 
 #define MAC_ADDR_LEN 6
 
@@ -27,6 +33,10 @@
 #define GFAR_TBI_ANEX		0x06
 #define GFAR_TBI_TBICON		0x11
 
+#ifndef GFAR_TBIPA_OFFSET
+#define GFAR_TBIPA_OFFSET       0x030
+#endif
+
 /* TBI MDIO register bit fields*/
 #define GFAR_TBICON_CLK_SELECT		0x0020
 #define GFAR_TBIANA_ASYMMETRIC_PAUSE	0x0100
@@ -64,7 +74,9 @@
 
 #define ECNTRL_INIT_SETTINGS		0x00001000
 #define GFAR_ECNTRL_TBI_MODE		0x00000020
+#define ECNTRL_REDUCED_MODE		0x00000010
 #define GFAR_ECNTRL_R100		0x00000008
+#define GFAR_ECNTRL_RMM			0x00000004
 #define GFAR_ECNTRL_SGMII_MODE		0x00000002
 
 #ifndef GFAR_TBIPA_VALUE
@@ -271,9 +283,11 @@ struct gfar_phy {
 #define BUF_ALIGN	8
 
 struct gfar_private {
+	struct device_d *dev;
 	struct eth_device edev;
 	void __iomem *regs;
 	int mdiobus_tbi;
+	phy_interface_t interface;
 	struct gfar_phy *gfar_mdio;
 	struct gfar_phy *gfar_tbi;
 	struct phy_info *phyinfo;
@@ -284,9 +298,31 @@ struct gfar_private {
 	uint phyaddr;
 	uint tbicr;
 	uint tbiana;
+	uint tbiaddr;
 	uint link;
 	uint duplexity;
 	uint speed;
 	void *rx_buffer[PKTBUFSRX];
 };
+
+struct tsec_data {
+	uint32_t mdio_regs_off;
+};
+
+struct fsl_pq_mdio_data {
+	uint32_t mdio_regs_off;
+};
+
+#define TBIANA_SETTINGS ( \
+	GFAR_TBIANA_ASYMMETRIC_PAUSE \
+	| GFAR_TBIANA_SYMMETRIC_PAUSE \
+	| GFAR_TBIANA_FULL_DUPLEX \
+	)
+
+#define TSEC_TBICR_SETTINGS ( \
+	GFAR_TBICR_PHY_RESET \
+	| GFAR_TBICR_ANEG_ENABLE \
+	| GFAR_TBICR_FULL_DUPLEX \
+	| GFAR_TBICR_SPEED1_SET \
+	)
 #endif /* __GIANFAR_H */
-- 
2.43.0



