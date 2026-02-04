Delivery-date: Wed, 04 Feb 2026 12:47:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnbLo-008jzG-0d
	for lore@lore.pengutronix.de;
	Wed, 04 Feb 2026 12:47:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnbLm-0008Bm-F5
	for lore@pengutronix.de; Wed, 04 Feb 2026 12:47:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k+BpQegv63RcBMY3zUKG+j7u9YZDNvqlNaOyQdP1Ra4=; b=K7mvKKf18a7id2HFXI8fG/n1H5
	EPK6TCh/rAp9+v6UTnfGCqfK6uBuBsy8UjvSOSoESY+jvGEK7ggRqRZVlvyT+QWjg7DjrC/Tc9JcR
	sVb/B515Eg3L7p0EBiuMWkTNYPDHEj4v2XnXULeMFKXwy5N2vb1jjxDFu30uk+G19x6ep7Yqn4pTd
	a/WyOIkCuy1Z1fEoqvJ//a0oa3Al9YsDRyL7hcBEDFOQo9qlzNvDz3n7akk954/rfFFzyn8Y8/g9l
	sN1mspG4fu92CuALBeB+p7DZiae26oMK5+PYFAHpJjrGH8Ri9RPud6gDWcEfrmR+g7Q/BTTo4XbpF
	acM/E87w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnbL9-00000008NuQ-3NsW;
	Wed, 04 Feb 2026 11:46:35 +0000
Received: from uk-relay3.ametek.com ([89.191.218.232] helo=uk-relay13.ametek.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnbL7-00000008Ns5-1V9n
	for barebox@lists.infradead.org;
	Wed, 04 Feb 2026 11:46:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ametek.com; s=ukrelaysnew; c=relaxed/simple;
	q=dns/txt; i=@ametek.com; t=1770205587; x=1772797587;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=UejlFXAZCvnxDdkieCjn77cJjKQ29+OpeGJeKcoWFSg=;
	b=JrjifsPAAuRS754VruuFpKzPFOiuoTg//vYB1rIgh/37HXirSGGS3MH+5Mk5AOWL
	VNLGdTsYhh0MEtJPmFAl0DPOdTWs+jyOW5y233G8pWXvh86rDg5JggLHPpSIR3Kt
	4cRF2OugvNlo4dGqsvZhyr0lMV1r5oxx2sCOocdVr7OYQfAUxcmJjTbt6rpho4gp
	9ZV8LaJch1S3I3gtY42oJeWk05HY45c96Nw+/Sp9feq2WIfMgXlyfpkiyW+CTPu9
	X/q78pT7a5m65luF8rseZzLy98vm0jIX1BjtfyDi4At3/63E7NNljpHNejuFxYxY
	5t8Ixbp92aaelYs0G7eujQ==;
X-AuditID: ac1001d4-ba83c380000daae5-08-69833193bda3
Received: from uk-edi-aba-ow01.ametek.com ( [10.175.96.158])
	by uk-relay13.ametek.com (Symantec Mail Security) with SMTP id 8D.ED.43749.39133896; Wed,  4 Feb 2026 11:46:27 +0000 (GMT)
From: Renaud Barbier <renaud.barbier@ametek.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@ametek.com>
Date: Wed,  4 Feb 2026 11:46:20 +0000
Message-ID: <20260204114621.2130261-4-renaud.barbier@ametek.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260204114621.2130261-1-renaud.barbier@ametek.com>
References: <20260204114621.2130261-1-renaud.barbier@ametek.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrMJMWRmVeSWpSXmKPExsXCtT5hnu5kw+ZMgx1NVhYnFvczW0x/G+TA
	5DFvZ4DH5iX1AUxRXDYpqTmZZalF+nYJXBmXni5lLFjbyFix9vYB5gbGixldjBwcEgImEl8e
	RXQxcnEICexklNj9aAtzFyMnB5uAgcS/o1/ZQGwRAXmJufvbWEFsZgE9iY4LE5lAbGEBG4l5
	f3aD1bMIqEr0rpvNCjKTV8BB4vx9cZCwBFDr4h3LwUo4BRwlHvx9DGYLAZV0PfjNCGLzCghK
	nJz5hAVivLxE89bZzBMYeWchSc1CklrAyLSKUbQ0W7coNSex0tBYLzE3tSQ1Wy85P3cTIzBc
	1ggwXtnBeOfTB71DjEwcjIcYJTiYlUR406fXZwrxpiRWVqUW5ccXleakFh9ilOZgURLnXbvn
	Q5yQQHoi0JTU1ILUIpgsEwenVANTWvqLsJtGIhr7dv804ZNfL/puVVyYjZCj1fzdx9LtncL1
	bIOnyLpzJEve+TtL9Ppdln2Tvse9v/BF0Vrk9/o9R0V7fLWPH5IQtI/SrLZ+wqDb+VO2ZrL/
	nvjvX3dYpB9WfqEhkhp0LJwvN1HkobFaoa0Gp8+3rb3Ox9Te53w/51CfMc2++0ulu+vuLjve
	wl2KFzJS30lc9t0QvmmW47m/jaXigR67zs7MLCqbdtZEdcm1qhu7zE7/7TwTM3WHmLHGp8AD
	b+USnRNXVyxK+rTjlPtXZcPImwe9ylgK9sSnpPzVOGZ6w7NR/tBL5ojblz9e2/9P8vtC1Vdd
	cW3PTD4/W/9WZKapzJzp6l79P4uV2IozEo1MzbSYi4oTAUsNClWIAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_034633_685425_59DDF6D6 
X-CRM114-Status: GOOD (  27.14  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/4] net:gianfar: add device tree support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Like the PPC platforms, the NXP LS1021A Ethernet controller is managed
by the gianfar driver. Since the LS1021A configuration uses a device tree,
add probing through the device tree to the gianfar driver while preserving
the tree-less PPC support.

Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
---
 arch/powerpc/include/asm/dma.h |  34 ++++
 drivers/net/Kconfig            |   2 +-
 drivers/net/gianfar.c          | 305 +++++++++++++++++++++++++++------
 drivers/net/gianfar.h          |  36 ++++
 4 files changed, 320 insertions(+), 57 deletions(-)

diff --git a/arch/powerpc/include/asm/dma.h b/arch/powerpc/include/asm/dma.h
index 27d269f491..cfdb8f3cf2 100644
--- a/arch/powerpc/include/asm/dma.h
+++ b/arch/powerpc/include/asm/dma.h
@@ -9,5 +9,39 @@
 #define __ASM_DMA_H
 
 /* empty */
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
index a6eb3bfa01..0d0993756a 100644
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
 #include <linux/io.h>
 #include <linux/phy.h>
 #include <linux/err.h>
@@ -173,28 +177,44 @@ static int gfar_init(struct eth_device *edev)
 	return  0;
 }
 
+static int gfar_receive_packets_setup(struct gfar_private *priv, int ix)
+{
+	dma_addr_t dma;
+
+	dma = dma_map_single(priv->dev, priv->rx_buffer[ix], PKTSIZE,
+				DMA_FROM_DEVICE);
+	if (dma_mapping_error(priv->dev, dma))
+		return -EFAULT;
+
+	out_be32(&priv->rxbd[ix].buf, dma);
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
+	ret = phy_device_connect(edev, (phy ? &phy->miibus : NULL), priv->phyaddr,
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
-		out_be32(&priv->rxbd[ix].buf, (uint)priv->rx_buffer[ix]);
+		if (gfar_receive_packets_setup(priv, ix)) {
+			dev_err(&edev->dev, "RX packet dma mapping failed");
+			return -EIO;
+		}
 	}
 	out_be16(&priv->rxbd[RX_BUF_CNT - 1].status, RXBD_EMPTY | RXBD_WRAP);
 
@@ -324,26 +344,19 @@ static int gfar_bus_reset(struct mii_bus *bus)
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
@@ -351,12 +364,19 @@ static int gfar_send(struct eth_device *edev, void *packet, int length)
 	struct gfar_private *priv = edev->priv;
 	void __iomem *regs = priv->regs;
 	struct device *dev = edev->parent;
+	dma_addr_t dma;
 	uint64_t start;
 	uint tidx;
 	uint16_t status;
 
 	tidx = priv->txidx;
-	out_be32(&priv->txbd[tidx].buf, (u32)packet);
+
+	dma = dma_map_single(dev, packet, length, DMA_TO_DEVICE);
+	if (dma_mapping_error(priv->dev, dma)) {
+		dev_err(dev, "TX mapping packet failed");
+		return -EFAULT;
+	}
+	out_be32(&priv->txbd[tidx].buf, (u32)dma);
 	out_be16(&priv->txbd[tidx].length, length);
 	out_be16(&priv->txbd[tidx].status,
 		in_be16(&priv->txbd[tidx].status) |
@@ -371,6 +391,7 @@ static int gfar_send(struct eth_device *edev, void *packet, int length)
 		if (is_timeout(start, 5 * MSECOND))
 			break;
 	}
+	dma_unmap_single(dev, dma, length, DMA_TO_DEVICE);
 
 	status = in_be16(&priv->txbd[tidx].status);
 	if (status & TXBD_READY) {
@@ -400,10 +421,18 @@ static void gfar_recv(struct eth_device *edev)
 
 	/* Send the packet up if there were no errors */
 	status = in_be16(&priv->rxbd[priv->rxidx].status);
-	if (!(status & RXBD_STATS))
-		net_receive(edev, priv->rx_buffer[priv->rxidx], length - 4);
-	else
+	if (!(status & RXBD_STATS)) {
+		void *frame;
+
+		frame = phys_to_virt(in_be32(&priv->rxbd[priv->rxidx].buf));
+		dma_sync_single_for_cpu(dev, (unsigned long)frame, length,
+					DMA_FROM_DEVICE);
+		net_receive(edev, frame, length - 4);
+		dma_sync_single_for_device(dev, (unsigned long)frame, length,
+					   DMA_FROM_DEVICE);
+	} else {
 		dev_err(dev, "Got error %x\n", status & RXBD_STATS);
+	}
 
 	out_be16(&priv->rxbd[priv->rxidx].length, 0);
 
@@ -450,33 +479,111 @@ static int gfar_miiphy_write(struct mii_bus *bus, int addr, int reg,
 	return 0;
 }
 
-/*
- * Initialize device structure. Returns success if
- * initialization succeeded.
- */
-static int gfar_probe(struct device *dev)
+#ifdef CONFIG_OFDEVICE
+static int gfar_probe_dt(struct gfar_private *priv)
 {
-	struct gfar_info_struct *gfar_info = dev->platform_data;
-	struct eth_device *edev;
-	struct gfar_private *priv;
-	struct device *mdev;
-	size_t size;
-	char devname[16];
-	char *p;
-	int ret;
+	struct device *dev = priv->dev;
+	struct device_node *np;
+	uint32_t tbiaddr = 0x1f;
+
+	priv->dev = dev;
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
+				}
+				break;
+			}
+		}
+	}
 
-	priv = xzalloc(sizeof(struct gfar_private));
+	priv->phyaddr = -1;
+	np = of_parse_phandle_from(dev->device_node, NULL, "phy-handle", 0);
+	if (np) {
+		uint32_t reg = 0;
 
-	ret = net_alloc_packets(priv->rx_buffer, ARRAY_SIZE(priv->rx_buffer));
-	if (ret)
-		return ret;
+		if (!of_property_read_u32(np, "reg", &reg))
+			priv->phyaddr = reg;
+	} else {
+		dev_err(dev, "Could not get phy-handle address\n");
+		return -ENOENT;
+	}
 
-	edev = &priv->edev;
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
+		if (!parent)  {
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
+		if (!tbiphy->regs) {
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
+	return 0;
+}
+
+static int gfar_probe_pd(struct gfar_private *priv)
+{
+	return -ENODEV;
+}
+#else
+static int gfar_probe_pd(struct gfar_private *priv)
+{
+	struct gfar_info_struct *gfar_info = priv->dev->platform_data;
+	struct device *mdev;
+	char devname[16];
 
 	priv->mdiobus_tbi = gfar_info->mdiobus_tbi;
-	priv->regs = dev_get_mem_region(dev, 0);
-	if (IS_ERR(priv->regs))
-		return PTR_ERR(priv->regs);
 	priv->phyaddr = gfar_info->phyaddr;
 	priv->tbicr = gfar_info->tbicr;
 	priv->tbiana = gfar_info->tbiana;
@@ -497,16 +604,65 @@ static int gfar_probe(struct device *dev)
 		}
 	}
 	priv->gfar_tbi = mdev->priv;
-	/*
-	 * Allocate descriptors 64-bit aligned. Descriptors
-	 * are 8 bytes in size.
-	 */
+
+	return 0;
+}
+
+static int gfar_probe_dt(struct gfar_private *priv)
+{
+	return -ENODEV;
+}
+#endif
+
+/*
+ * PPC only as there is no device tree support.
+ * Initialize device structure. Returns success if
+ * initialization succeeded.
+ */
+static int gfar_probe(struct device *dev)
+{
+	struct gfar_private *priv;
+	struct eth_device *edev;
+	size_t size;
+	void *base;
+	int ret;
+
+	priv = xzalloc(sizeof(struct gfar_private));
+
+	ret = net_alloc_packets(priv->rx_buffer, ARRAY_SIZE(priv->rx_buffer));
+	if (ret)
+		goto free_priv;
+
+	priv->dev = dev;
+	edev = &priv->edev;
+
+	priv->regs = dev_get_mem_region(dev, 0);
+	if (IS_ERR(priv->regs)) {
+		ret = PTR_ERR(priv->regs);
+		goto free_received_packets;
+	}
+
+	if (dev->of_node) {
+		ret = gfar_probe_dt(priv);
+		if (ret)
+			goto free_received_packets;
+	} else {
+		ret = gfar_probe_pd(priv);
+		if (ret)
+			goto free_received_packets;
+	}
+
 	size = ((TX_BUF_CNT * sizeof(struct txbd8)) +
-		(RX_BUF_CNT * sizeof(struct rxbd8))) + BUF_ALIGN;
-	p = (char *)xmemalign(BUF_ALIGN, size);
-	priv->txbd = (struct txbd8 __iomem *)p;
-	priv->rxbd = (struct rxbd8 __iomem *)(p +
-			(TX_BUF_CNT * sizeof(struct txbd8)));
+			(RX_BUF_CNT * sizeof(struct rxbd8)));
+	if (IS_ENABLED(CONFIG_PPC)) {
+		base = xmemalign(BUF_ALIGN, size);
+	} else {
+		base = dma_alloc_coherent(DMA_DEVICE_BROKEN, size, DMA_ADDRESS_BROKEN);
+		dma_set_mask(dev, DMA_BIT_MASK(32));
+	}
+	priv->txbd = (struct txbd8 __iomem *)base;
+	base += TX_BUF_CNT * sizeof(struct txbd8);
+	priv->rxbd = (struct rxbd8 __iomem *)base;
 
 	edev->priv = priv;
 	edev->init = gfar_init;
@@ -525,22 +681,56 @@ static int gfar_probe(struct device *dev)
 	gfar_init_phy(edev);
 
 	return eth_register(edev);
+
+free_received_packets:
+	free(priv->rx_buffer);
+free_priv:
+	free(priv);
+
+	return ret;
 }
 
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
+
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
 
@@ -560,10 +750,12 @@ static int gfar_phy_probe(struct device *dev)
 
 static struct driver gfar_phy_driver = {
 	.name  = "gfar-mdio",
+	.of_compatible = DRV_OF_COMPAT(gfar_mdio_ids),
 	.probe = gfar_phy_probe,
 };
 register_driver_macro(coredevice, platform, gfar_phy_driver);
 
+#ifndef CONFIG_OFDEVICE
 static int gfar_tbiphy_probe(struct device *dev)
 {
 	struct gfar_phy *phy;
@@ -593,3 +785,4 @@ static struct driver gfar_tbiphy_driver = {
 	.probe = gfar_tbiphy_probe,
 };
 register_driver_macro(coredevice, platform, gfar_tbiphy_driver);
+#endif
diff --git a/drivers/net/gianfar.h b/drivers/net/gianfar.h
index acb50b9ce3..4e364fdf1a 100644
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



