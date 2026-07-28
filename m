Delivery-date: Tue, 28 Jul 2026 19:48:04 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1woluN-003rsK-0x
	for lore@lore.pengutronix.de;
	Tue, 28 Jul 2026 19:48:03 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 46576201D85
	for <lore@pengutronix.de>; Tue, 28 Jul 2026 19:47:59 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=LTaQJLmw;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=o8+G1Et3;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bLS0bAzDN19wImQ86e1eBnCadx5cOQ5jq7Ng40s3d3o=; b=LTaQJLmweivRF/o7EF9PAMSamK
	zflINd60X6PypCLRJ8eY5SaFhXOEcFoPClAr63Bvgp7bidZlHL/r967LxjyPF9rOaIs35Gf8/ET4+
	ESoXjh2VmrEZJRhbDaAJfnJ6MW4SsmFdW3cFGZxvdUQTMZB+7mTQCKj143VFDVZVX3aXuYW4mpTYe
	/xAcTDXZpWs54yV+bcpVwsTDldKDf+X/m1wGKWiYCrgi3WhpkNaRxY2pt2d1S4Db0tKp924RXos+5
	T0/J55OcxMGtTx6d1DEGJr502Anm2PPr+kYdyXEN94cURqPcLBI8L59AAS/mI90JQjq2HINgIqygt
	WwRAVTSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wolp9-0000000613A-48p9;
	Tue, 28 Jul 2026 17:42:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wolp8-0000000611W-0Vuc
	for barebox@lists.infradead.org;
	Tue, 28 Jul 2026 17:42:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C7A7B43DF3;
	Tue, 28 Jul 2026 17:42:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7859C2BCC6;
	Tue, 28 Jul 2026 17:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785260557;
	bh=uTWZaQFd5/QISkqk8tqSrlESwQlRzAqs/9wQZugd6S0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=o8+G1Et3H9oRMSZfCZCxhJ1nQoygjpZ7bAYvLdN+yoauPcwXP/PHRE9tU2/ITYzqV
	 kXgI2aKlu768laLI2ZnwICnmpLiCTrjs2DCyjPtDbkHEqNh+dMRtaV7yfNpl3Zaw3n
	 N63r59mNsnk6XAeA3civ+hbgxZBBMlLDy3y2kM34nkVKhci/8l3bA1zLvviLav4lx0
	 Mt7yHAioPwCHHFIGEYnlpkUrl04yhxWLHOpUtcqmUorb34xm/sFCark/OlTHYWuXtS
	 TH2jQ3aPxHN+S4d5WCDX6BQorKBbfkeLtoZ5E5U+vx9z76qW+pfpxqfFFj3ouE+aXm
	 8DW1jrq6DXTsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96081C53219;
	Tue, 28 Jul 2026 17:42:37 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Tue, 28 Jul 2026 19:43:20 +0200
Subject: [PATCH v2 08/10] usb: ehci: add Marvell EHCI host controller
 driver
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260728-rn102-rn104-series-v2-8-ae31f55b7bc8@gmail.com>
References: <20260728-rn102-rn104-series-v2-0-ae31f55b7bc8@gmail.com>
In-Reply-To: <20260728-rn102-rn104-series-v2-0-ae31f55b7bc8@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785260594; l=8979;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=c0RnRbN/G+B1BFY1cijIbVbUyGHcO68KziOOSMgUBVI=;
 b=lLraZ2aDEFpjhtyIvWlOSvCGi6VSJPsiTYT48u8OoLhlTa5gB3hdtN/N4OEi1qNolAWqEaA8B
 wC/Xmbfp2jhAZ4s0LMMb6X6gQcFahTTxdei7u2Qw5u1Uz4YgxdQmpc7
X-Developer-Key: i=famlauro93l@gmail.com; a=ed25519;
 pk=OAJlcD69ugQCl99Vy6w+Aeu+ZUb1IVGcz1Ijxo6Ch78=
X-Endpoint-Received: by B4 Relay for famlauro93l@gmail.com/20260723 with
 auth_id=892
X-Original-From: Luca Lauro <famlauro93l@gmail.com>
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
Reply-To: famlauro93l@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 7yy6rng7f5y4mpszgizueg1yxcp7tooa
X-Spamd-Result: default: False [-6.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[kernel.org:dkim,infradead.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	FREEMAIL_CC(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Queue-Id: 46576201D85

From: Luca Lauro <famlauro93l@gmail.com>

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
---
 drivers/usb/host/Kconfig        |   7 ++
 drivers/usb/host/Makefile       |  13 +--
 drivers/usb/host/ehci-marvell.c | 228 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 242 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index 58f276cdb4..21bf876d69 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -22,6 +22,13 @@ config USB_EHCI_ZYNQ
 	help
 	  Enable support for Zynq on-chip EHCI USB controller
 
+config USB_EHCI_MARVELL
+    bool "Marvell USB EHCI driver"
+	depends on ARCH_MVEBU
+	depends on USB_EHCI
+    help
+      Enable support for Marvell USB EHCI controller
+
 config USB_OHCI
 	bool "OHCI driver"
 	depends on !MMU && HAS_DMA
diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
index cbddfbe923..932581d691 100644
--- a/drivers/usb/host/Makefile
+++ b/drivers/usb/host/Makefile
@@ -1,8 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_USB_EHCI)		+= ehci-hcd.o
-obj-$(CONFIG_USB_EHCI_OMAP)	+= ehci-omap.o
+obj-$(CONFIG_USB_EHCI)			+= ehci-hcd.o
+obj-$(CONFIG_USB_EHCI_OMAP)		+= ehci-omap.o
 obj-$(CONFIG_USB_EHCI_ATMEL)	+= ehci-atmel.o
-obj-$(CONFIG_USB_EHCI_ZYNQ)	+= ehci-zynq.o
-obj-$(CONFIG_USB_OHCI)		+= ohci-hcd.o
-obj-$(CONFIG_USB_OHCI_AT91)	+= ohci-at91.o
-obj-$(CONFIG_USB_XHCI)		+= xhci.o xhci-mem.o xhci-ring.o
+obj-$(CONFIG_USB_EHCI_ZYNQ)		+= ehci-zynq.o
+obj-$(CONFIG_USB_EHCI_MARVELL) 	+= ehci-marvell.o
+obj-$(CONFIG_USB_OHCI)			+= ohci-hcd.o
+obj-$(CONFIG_USB_OHCI_AT91)		+= ohci-at91.o
+obj-$(CONFIG_USB_XHCI)			+= xhci.o xhci-mem.o xhci-ring.o
diff --git a/drivers/usb/host/ehci-marvell.c b/drivers/usb/host/ehci-marvell.c
new file mode 100644
index 0000000000..0d0ad13c82
--- /dev/null
+++ b/drivers/usb/host/ehci-marvell.c
@@ -0,0 +1,228 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Marvell Orion / Kirkwood / Armada EHCI host controller for barebox
+ *
+ * Ported from the modern U-Boot ehci-marvell.c implementation and
+ * adapted to the barebox ehci_register() model.
+ */
+
+/*#define DEBUG*/
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/ehci.h>
+#include <linux/mbus.h>
+
+#include "ehci.h"
+
+#define USB_WINDOW_CTRL(i)   (0x320 + ((i) << 4))
+#define USB_WINDOW_BASE(i)   (0x324 + ((i) << 4))
+#define USB_TARGET_DRAM      0x0
+
+#define USB2_SBUSCFG_OFF     0x90
+
+#define USB_SBUSCFG_BAWR_OFF     0x6
+#define USB_SBUSCFG_BARD_OFF     0x3
+#define USB_SBUSCFG_AHBBRST_OFF  0x0
+
+#define USB_SBUSCFG_BAWR_ALIGN_64B   0x4
+#define USB_SBUSCFG_BARD_ALIGN_64B   0x4
+#define USB_SBUSCFG_AHBBRST_INCR16   0x7
+
+/* AC5 special window mapping (taken from U-Boot) */
+#define USB_TO_DRAM_TARGET_ID  0x2
+#define USB_TO_DRAM_ATTR_ID    0x0
+#define USB_DRAM_BASE          0x00000000
+#define USB_DRAM_SIZE          0xfff   /* do not exceed the source address space */
+
+/*
+ * Private state for this Marvell EHCI instance.
+ * The driver only needs the pointer to struct ehci_host.
+ */
+struct marvell_ehci {
+    struct ehci_host *ehci;
+    void __iomem *base;
+    struct device *dev;
+    u32 dram_bus_base;
+};
+
+static void marvell_ehci_sbuscfg_fixup(void __iomem *base)
+{
+    /*
+     * SBUSCFG: Control for the AMBA system bus interface:
+     * BAWR = BARD = 4 : Align rd/wr bursts packets larger than 64 bytes
+     * AHBBRST = 7     : Align AHB burst for packets larger than 64 bytes
+     */
+    writel((USB_SBUSCFG_BAWR_ALIGN_64B << USB_SBUSCFG_BAWR_OFF) |
+           (USB_SBUSCFG_BARD_ALIGN_64B << USB_SBUSCFG_BARD_OFF) |
+           (USB_SBUSCFG_AHBBRST_INCR16 << USB_SBUSCFG_AHBBRST_OFF),
+           base + USB2_SBUSCFG_OFF);
+}
+
+/*
+ * Program the USB → DRAM decoding windows using MBUS information.
+ * For AC5, replicate the special 0x0..USB_DRAM_SIZE mapping.
+ */
+static void marvell_usb_brg_adrdec_setup(struct marvell_ehci *priv)
+{
+    const struct mbus_dram_target_info *dram;
+    void __iomem *base = priv->base;
+    int i;
+
+    dev_info(priv->dev, "USB adrdec setup: ENTER\n");
+
+    dram = mvebu_mbus_dram_info();
+    if (!dram) {
+        dev_err(priv->dev, "no MBUS DRAM info\n");
+        return;
+    }
+
+    for (i = 0; i < 4; i++) {
+		writel(0, base + USB_WINDOW_CTRL(i));
+		writel(0, base + USB_WINDOW_BASE(i));
+	}
+
+    if (priv->dev->of_node &&
+        of_device_is_compatible(priv->dev->of_node, "marvell,ac5-ehci")) {
+        /* map DRAM as seen by USB at address 0x0 (as done in U-Boot) */
+        writel((USB_DRAM_SIZE << 16) |
+               (USB_TO_DRAM_ATTR_ID << 8) |
+               (USB_TO_DRAM_TARGET_ID << 4) | 1,
+               base + USB_WINDOW_CTRL(0));
+        writel(USB_DRAM_BASE, base + USB_WINDOW_BASE(0));
+
+        dev_dbg(priv->dev,
+            "AC5 decoding windows: ctrl=0x%08x base=0x%08x\n",
+            readl(base + USB_WINDOW_CTRL(0)),
+            readl(base + USB_WINDOW_BASE(0)));
+    } else {
+        /* generic mvebu case: one window per each DRAM chip-select */
+
+        for (i = 0; i < dram->num_cs; i++) {
+            const struct mbus_dram_window *cs = dram->cs + i;
+
+			/* Write size, attributes and target id to control register */
+			writel(((cs->size - 1) & 0xffff0000) |
+                   (cs->mbus_attr << 8) |
+				   (dram->mbus_dram_target_id << 4) | 1,
+				   base + USB_WINDOW_CTRL(i));
+
+			/* Write base address to base register */
+			writel(cs->base, base + USB_WINDOW_BASE(i));
+        }
+    }
+
+    for (i = 0; i < 4; i++) {
+        u32 ctrl = readl(base + USB_WINDOW_CTRL(i));
+        u32 winb = readl(base + USB_WINDOW_BASE(i));
+        dev_info(priv->dev, "WIN%d: CTRL=0x%08x BASE=0x%08x\n", i, ctrl, winb);
+    }
+}
+
+/*
+ * Initialization hook called by ehci-hcd.c before starting the host.
+ * Only the bridge address decoding is performed here.
+ */
+static int marvell_ehci_init(void *drvdata)
+{
+    struct marvell_ehci *priv = drvdata;
+
+    marvell_usb_brg_adrdec_setup(priv);
+    
+    writel((USB_SBUSCFG_BAWR_ALIGN_64B << USB_SBUSCFG_BAWR_OFF) |
+       (USB_SBUSCFG_BARD_ALIGN_64B << USB_SBUSCFG_BARD_OFF) |
+       (USB_SBUSCFG_AHBBRST_INCR16 << USB_SBUSCFG_AHBBRST_OFF),
+       priv->base + 0x100 + 0x90);
+    mdelay(50);
+
+    /*
+    * The SBUSCFG programming (BAWR/BARD/AHBBRST) in U-Boot is only
+    * required for SoCs without hlock (e.g. Armada3700).
+    * It is currently omitted; if needed in the future, a dedicated
+    * post_init or EHCI core hook can be added.
+    */
+
+    dev_dbg(priv->dev, "marvell_ehci_init done\n");
+
+    return 0;
+}
+
+static int marvell_ehci_probe(struct device *dev)
+{
+    struct marvell_ehci *priv;
+    struct resource *iores;
+    struct ehci_data data = {};
+    void __iomem *base;
+    struct ehci_host *ehci;
+
+    priv = xzalloc(sizeof(*priv));
+    priv->dev = dev;
+    dev->priv = priv;
+
+    iores = dev_request_mem_resource(dev, 0);
+    if (IS_ERR(iores))
+        return PTR_ERR(iores);
+
+    base = IOMEM(iores->start);
+    priv->base = base;
+
+    /*
+    * On Marvell controllers the EHCI block starts at offset 0x100
+    * from the USB base address.
+    */
+    data.hccr = base + 0x100;
+
+    u32 capbase = readl(data.hccr);          /* HC_CAPBASE */
+    u8 caplength = capbase & 0xff;           /* CAPLENGTH */
+
+    data.hcor = (void __iomem *)((u8 *)data.hccr + caplength);
+
+    dev_info(dev, "EHCI probe: base=%p hccr=%p hcor=%p\n",
+         base, data.hccr, data.hcor);
+
+    dev_info(dev, "EHCI CAPBASE=0x%08x CAPLENGTH=0x%02x\n",
+            capbase, caplength);
+
+    data.init = marvell_ehci_init;
+    data.drvdata = priv;
+
+	if (of_device_is_compatible(dev->of_node, "marvell,armada-3700-ehci"))
+	    marvell_ehci_sbuscfg_fixup(base);
+
+    dev_dbg(dev, "marvell_ehci_probe: done\n");
+
+    ehci = ehci_register(dev, &data);
+    if (IS_ERR(ehci))
+        return PTR_ERR(ehci);
+
+    priv->ehci = ehci;
+
+    return 0;
+}
+
+static void marvell_ehci_remove(struct device *dev)
+{
+    struct marvell_ehci *priv = dev->priv;
+
+    if (priv && priv->ehci)
+        ehci_unregister(priv->ehci);
+}
+
+static const struct of_device_id marvell_ehci_dt_ids[] = {
+    { .compatible = "marvell,orion-ehci" },
+    { .compatible = "marvell,armada-3700-ehci" },
+    { .compatible = "marvell,ac5-ehci" },
+    { /* sentinel */ }
+};
+
+static struct driver marvell_ehci_driver = {
+    .name         = "marvell-ehci",
+    .probe        = marvell_ehci_probe,
+    .remove       = marvell_ehci_remove,
+    .of_compatible = DRV_OF_COMPAT(marvell_ehci_dt_ids),
+};
+device_platform_driver(marvell_ehci_driver);

-- 
2.47.3




