Delivery-date: Thu, 05 Jun 2025 15:13:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPp-0041ck-0t
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 15:13:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPk-0001EJ-J3
	for lore@pengutronix.de; Thu, 05 Jun 2025 15:13:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2Zcn9Lsocv4Whd06cHI2JrzqJZb1656AQSsnSTiaGyE=; b=bzoOkYC4aqgFpzUVH2qKUnvPgI
	Ui0VQlIBGLn6c8HN09EAzY50W5dDrc9PVmbkukZHaen+yYMl1A2PULc3luygQpYI3qBunyXR4nWjv
	3nZvc9RxhvIuGZbtWaCL/+IVmYXYAfekObmnTFCnDddQ0iWfH8Tk+c8Oqu8WEJQlXSNBRam4s/WkU
	XKyEYXBrXMO23DOZ8Yvv7lV/3WfK011OrqSSymF0kEgV3ml9HFG2am9bT875qRopAZaA8EX4Xlodg
	8C3oLM143f88zD6clHjZhRRyfeewnRHWj8iPUn6ctR/G5Hi4k08PNUI/E3E+0izpecaR997nEkdxC
	SnboycWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAP3-0000000FZQ7-2IOd;
	Thu, 05 Jun 2025 13:13:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFG-0000000FXtV-01N3
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 13:03:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFE-00014w-TJ; Thu, 05 Jun 2025 15:02:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFE-001xkK-2H;
	Thu, 05 Jun 2025 15:02:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1c;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-13-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=8053;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=1d5EuTv21sYefqIf8+eN+vK1kIbYpQJFR35ozMgigQ8=;
 b=jWOEMjhaHxqyt4dfZfIfLto8LUyp1k+yQOgtlN5qTJWb2XCxxSaLrcYWTjKzBwOypxA2KSb/t
 XXOnjzGOry4ChEOgOxOC/cpB5PiuCNuPuT9E37B0jyDWaXXB/uLwSh1
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_060258_219513_11486987 
X-CRM114-Status: GOOD (  16.89  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 13/33] drivers: soc: ti: k3-ringacc: handle absence of
 tisci
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Based on Linux downstream commit:

| commit a621a1075550f0e857adbadb4142fc1b3142136d
| Author: Sai Sree Kartheek Adivi <s-adivi@ti.com>
| Date:   Thu Feb 20 21:56:48 2025 +0530
|
|     PENDING: drivers: soc: ti: k3-ringacc: handle absence of tisci
|
|     Handle absence of tisci with direct register writes. This will support
|     platforms that do not have tisci firmware like AM62L.
|
|     Signed-off-by: Sai Sree Kartheek Adivi <s-adivi@ti.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/soc/ti/k3-navss-ringacc.c | 127 ++++++++++++++++++++++++++++++++++----
 include/soc/ti/k3-navss-ringacc.h |   3 +
 2 files changed, 117 insertions(+), 13 deletions(-)

diff --git a/drivers/soc/ti/k3-navss-ringacc.c b/drivers/soc/ti/k3-navss-ringacc.c
index 4835aef2f3d2425bf45610cc9e5b9273bde30eb3..dfc397a1f5aca08a90ed773540bdeae9f50b8173 100644
--- a/drivers/soc/ti/k3-navss-ringacc.c
+++ b/drivers/soc/ti/k3-navss-ringacc.c
@@ -40,6 +40,38 @@ struct k3_ring_rt_regs {
 	u32	hwindx;
 };
 
+#define K3_RINGACC_RT_CFG_REGS_OFS	0x40
+#define K3_DMARING_CFG_ADDR_HI_MASK	GENMASK(3, 0)
+#define K3_DMARING_CFG_ASEL_SHIFT	16
+#define K3_DMARING_CFG_SIZE_MASK	GENMASK(15, 0)
+
+/**
+ * struct k3_ring_cfg_regs - The RA Configuration Registers region
+ *
+ * @ba_lo: Ring Base Address Low Register
+ * @ba_hi: Ring Base Address High Register
+ * @size: Ring Size Register
+ */
+struct k3_ring_cfg_regs {
+	u32	ba_lo;
+	u32	ba_hi;
+	u32	size;
+};
+
+#define K3_RINGACC_RT_INT_REGS_OFS		0x140
+#define K3_RINGACC_RT_INT_ENABLE_SET_COMPLETE	BIT(0)
+#define K3_RINGACC_RT_INT_ENABLE_SET_TR			BIT(2)
+
+struct k3_ring_intr_regs {
+	u32	enable_set;
+	u32	resv_4;
+	u32	clr;
+	u32	resv_16;
+	u32	status_set;
+	u32	resv_8;
+	u32	status;
+};
+
 #define K3_RINGACC_RT_REGS_STEP			0x1000
 #define K3_DMARING_RT_REGS_STEP			0x2000
 #define K3_DMARING_RT_REGS_REVERSE_OFS		0x1000
@@ -152,6 +184,8 @@ struct k3_ring_state {
  */
 struct k3_ring {
 	struct k3_ring_rt_regs __iomem *rt;
+	struct k3_ring_cfg_regs __iomem *cfg;
+	struct k3_ring_intr_regs __iomem *intr;
 	struct k3_ring_fifo_regs __iomem *fifos;
 	struct k3_ringacc_proxy_target_regs  __iomem *proxy;
 	dma_addr_t	ring_mem_dma;
@@ -439,6 +473,10 @@ static void k3_ringacc_ring_reset_sci(struct k3_ring *ring)
 	struct k3_ringacc *ringacc = ring->parent;
 	int ret;
 
+	/* TODO: Implement ring reset without tisci */
+	if (!ringacc->tisci)
+		return;
+
 	ring_cfg.nav_id = ringacc->tisci_dev_id;
 	ring_cfg.index = ring->ring_id;
 	ring_cfg.valid_params = TI_SCI_MSG_VALUE_RM_RING_COUNT_VALID;
@@ -467,16 +505,30 @@ static void k3_ringacc_ring_reconfig_qmode_sci(struct k3_ring *ring,
 	struct ti_sci_msg_rm_ring_cfg ring_cfg = { 0 };
 	struct k3_ringacc *ringacc = ring->parent;
 	int ret;
+	u32 reg;
 
 	ring_cfg.nav_id = ringacc->tisci_dev_id;
 	ring_cfg.index = ring->ring_id;
 	ring_cfg.valid_params = TI_SCI_MSG_VALUE_RM_RING_MODE_VALID;
 	ring_cfg.mode = mode;
 
-	ret = ringacc->tisci_ring_ops->set_cfg(ringacc->tisci, &ring_cfg);
-	if (ret)
-		dev_err(ringacc->dev, "TISCI reconf qmode fail (%d) ring_idx %d\n",
-			ret, ring->ring_id);
+	if (!ringacc->tisci) {
+		writel(ring_cfg.addr_lo, &ring->cfg->ba_lo);
+		writel((ring_cfg.addr_hi & K3_DMARING_CFG_ADDR_HI_MASK) +
+				(ring_cfg.asel << K3_DMARING_CFG_ASEL_SHIFT),
+				&ring->cfg->ba_hi);
+
+		reg = readl(&ring->cfg->size);
+		reg &= ~K3_DMARING_CFG_SIZE_MASK;
+		reg |= ring_cfg.count & K3_DMARING_CFG_SIZE_MASK;
+
+		writel(reg, &ring->cfg->size);
+	} else {
+		ret = ringacc->tisci_ring_ops->set_cfg(ringacc->tisci, &ring_cfg);
+		if (ret)
+			dev_err(ringacc->dev, "TISCI reconf qmode fail (%d) ring_idx %d\n",
+					ret, ring->ring_id);
+	}
 }
 
 void k3_ringacc_ring_reset_dma(struct k3_ring *ring, u32 occ)
@@ -543,15 +595,29 @@ static void k3_ringacc_ring_free_sci(struct k3_ring *ring)
 	struct ti_sci_msg_rm_ring_cfg ring_cfg = { 0 };
 	struct k3_ringacc *ringacc = ring->parent;
 	int ret;
+	u32 reg;
 
 	ring_cfg.nav_id = ringacc->tisci_dev_id;
 	ring_cfg.index = ring->ring_id;
 	ring_cfg.valid_params = TI_SCI_MSG_VALUE_RM_ALL_NO_ORDER;
 
-	ret = ringacc->tisci_ring_ops->set_cfg(ringacc->tisci, &ring_cfg);
-	if (ret)
-		dev_err(ringacc->dev, "TISCI ring free fail (%d) ring_idx %d\n",
-			ret, ring->ring_id);
+	if (!ringacc->tisci) {
+		writel(ring_cfg.addr_lo, &ring->cfg->ba_lo);
+		writel((ring_cfg.addr_hi & K3_DMARING_CFG_ADDR_HI_MASK) +
+				(ring_cfg.asel << K3_DMARING_CFG_ASEL_SHIFT),
+				&ring->cfg->ba_hi);
+
+		reg = readl(&ring->cfg->size);
+		reg &= ~K3_DMARING_CFG_SIZE_MASK;
+		reg |= ring_cfg.count & K3_DMARING_CFG_SIZE_MASK;
+
+		writel(reg, &ring->cfg->size);
+	} else {
+		ret = ringacc->tisci_ring_ops->set_cfg(ringacc->tisci, &ring_cfg);
+		if (ret)
+			dev_err(ringacc->dev, "TISCI ring free fail (%d) ring_idx %d\n",
+					ret, ring->ring_id);
+	}
 }
 
 int k3_ringacc_ring_free(struct k3_ring *ring)
@@ -626,15 +692,31 @@ u32 k3_ringacc_get_tisci_dev_id(struct k3_ring *ring)
 }
 EXPORT_SYMBOL_GPL(k3_ringacc_get_tisci_dev_id);
 
+u32 k3_ringacc_ring_get_irq_status(struct k3_ring *ring)
+{
+	struct k3_ringacc *ringacc = ring->parent;
+	struct k3_ring *ring2 = &ringacc->rings[ring->ring_id];
+
+	return readl(&ring2->intr->status);
+}
+EXPORT_SYMBOL_GPL(k3_ringacc_ring_get_irq_status);
+
+void k3_ringacc_ring_clear_irq(struct k3_ring *ring)
+{
+	struct k3_ringacc *ringacc = ring->parent;
+	struct k3_ring *ring2 = &ringacc->rings[ring->ring_id];
+
+	writel(0xFF, &ring2->intr->status);
+}
+EXPORT_SYMBOL_GPL(k3_ringacc_ring_clear_irq);
+
 static int k3_ringacc_ring_cfg_sci(struct k3_ring *ring)
 {
 	struct ti_sci_msg_rm_ring_cfg ring_cfg = { 0 };
 	struct k3_ringacc *ringacc = ring->parent;
+	u32 reg;
 	int ret;
 
-	if (!ringacc->tisci)
-		return -EINVAL;
-
 	ring_cfg.nav_id = ringacc->tisci_dev_id;
 	ring_cfg.index = ring->ring_id;
 	ring_cfg.valid_params = TI_SCI_MSG_VALUE_RM_ALL_NO_ORDER;
@@ -645,11 +727,26 @@ static int k3_ringacc_ring_cfg_sci(struct k3_ring *ring)
 	ring_cfg.size = ring->elm_size;
 	ring_cfg.asel = ring->asel;
 
+	if (!ringacc->tisci) {
+		writel(ring_cfg.addr_lo, &ring->cfg->ba_lo);
+		writel((ring_cfg.addr_hi & K3_DMARING_CFG_ADDR_HI_MASK) +
+				(ring_cfg.asel << K3_DMARING_CFG_ASEL_SHIFT),
+				&ring->cfg->ba_hi);
+
+		reg = readl(&ring->cfg->size);
+		reg &= ~K3_DMARING_CFG_SIZE_MASK;
+		reg |= ring_cfg.count & K3_DMARING_CFG_SIZE_MASK;
+
+		writel(reg, &ring->cfg->size);
+		writel(K3_RINGACC_RT_INT_ENABLE_SET_COMPLETE | K3_RINGACC_RT_INT_ENABLE_SET_TR,
+				&ring->intr->enable_set);
+		return 0;
+	}
+
 	ret = ringacc->tisci_ring_ops->set_cfg(ringacc->tisci, &ring_cfg);
 	if (ret)
 		dev_err(ringacc->dev, "TISCI config ring fail (%d) ring_idx %d\n",
-			ret, ring->ring_id);
-
+				ret, ring->ring_id);
 	return ret;
 }
 
@@ -1426,6 +1523,10 @@ struct k3_ringacc *k3_ringacc_dmarings_init(struct device *dev,
 		struct k3_ring *ring = &ringacc->rings[i];
 
 		ring->rt = base_rt + K3_DMARING_RT_REGS_STEP * i;
+		ring->cfg = base_rt + K3_RINGACC_RT_CFG_REGS_OFS +
+			    K3_DMARING_RT_REGS_STEP * i;
+		ring->intr = base_rt + K3_RINGACC_RT_INT_REGS_OFS +
+			     K3_DMARING_RT_REGS_STEP * i;
 		ring->parent = ringacc;
 		ring->ring_id = i;
 		ring->proxy_id = K3_RINGACC_PROXY_NOT_USED;
diff --git a/include/soc/ti/k3-navss-ringacc.h b/include/soc/ti/k3-navss-ringacc.h
index 80b14b98622480d5c6927afc6e5b5407eae5c7f5..96a89113c100b409aef77bc0ee55c07597196223 100644
--- a/include/soc/ti/k3-navss-ringacc.h
+++ b/include/soc/ti/k3-navss-ringacc.h
@@ -158,6 +158,9 @@ u32 k3_ringacc_get_ring_id(struct k3_ring *ring);
  */
 int k3_ringacc_get_ring_irq_num(struct k3_ring *ring);
 
+u32 k3_ringacc_ring_get_irq_status(struct k3_ring *ring);
+void k3_ringacc_ring_clear_irq(struct k3_ring *ring);
+
 /**
  * k3_ringacc_ring_cfg - ring configure
  * @ring: pointer on ring

-- 
2.39.5



