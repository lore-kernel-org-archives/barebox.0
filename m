Delivery-date: Thu, 23 Jul 2026 16:02:14 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wmu05-001zDg-1r
	for lore@lore.pengutronix.de;
	Thu, 23 Jul 2026 16:02:14 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9FEDD20299C
	for <lore@pengutronix.de>; Thu, 23 Jul 2026 16:02:13 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4hBg72BE;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=HSvr8Bb+;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3OQ5l0v1fVTzxMlrt2WJnL+2MwuKUv3TI36r8hNH0/E=; b=4hBg72BEWF3fMEjxcSleZrV7vN
	HlVvRaZzqLCa2Vuld3kkSrBa38qEIK7EXieQSaAYyyuU4QX/BTrgp6iMZi7BxRCoGS8MaVxp++kEO
	M+tfuXTcdIJTrmYVBetTTDOnKSqkShdJqnswRe7aJWwli5KBH3ZD9jaZDUR0p/vk+rRmXvdVeb8gT
	nFuYb0NyK/+5XYNeOJ05dn2/rVcGUftNafBKnVcHkDjhPixwm/ztHO+SqK3snr0cV0ildDK68IVtp
	Eh0nqiIGkuji1Q+6nAcplQbKddmRLz1IxeX5bUL8ph2OWcM/LK/fc4BGcL7ntcUPC+PXnD8jcqi3L
	v2kcgyOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtvC-0000000EQOm-21Kp;
	Thu, 23 Jul 2026 13:57:10 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtvA-0000000EQMI-3CFw
	for barebox@lists.infradead.org;
	Thu, 23 Jul 2026 13:57:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8451144E8C;
	Thu, 23 Jul 2026 13:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67725C2BCC7;
	Thu, 23 Jul 2026 13:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784815028;
	bh=eK8jUQ4Ft7mRR+TkSNvE8m9GrhYWjDgwR3q4V08b6+s=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=HSvr8Bb+F5sMGt/7mMqRzILoQBxoCsRlcLeDovBCb5uHAzSQvXisBavsG534Yg7KV
	 ApOyC0QTrKNS3vD3vE8ALuSKSTdYDeBVyswINBfw7gfKMX8zmfpbD1uxUH7sD0a5CO
	 CP09wzxvW5bqItQCtQpvJePgrGVynyyoM7SwLub3XA59Y1Lhl3NtRvTXiK9EebTPfY
	 /SgAmFBAoMYYuyPnYhlw4QH/FM/Em/MRFD0mPuUuW96hftDitI9Z5O8aRIlcW4F73m
	 Wde1llt7mEKXBfR6g50/mlxJVX0d1Ett7hJESXFF7D122D7CV0TGUG5dblnN62esqa
	 CeD+iCulm1yXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E89C531F5;
	Thu, 23 Jul 2026 13:57:08 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 23 Jul 2026 15:57:54 +0200
Subject: [PATCH 16/19] usb: ehci: add Marvell EHCI host controller driver
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260723-rn102-rn104-series-v1-16-7698d25df866@gmail.com>
References: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
In-Reply-To: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784815061; l=8932;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=p9e7IvWK3WNBPa7+pjQ4WPcMRAPUx8lvXrcNrL5Og1k=;
 b=wIkua8cj1sJW7hnbCjERzK/vwrABX6hwVsTQRJIKB4+cKw9hYpLOgeMqm6UvZkIgFvP/ZmaNH
 WO16MtXqTOYBmjnEsH2L3s/+M/hh5/wwKi63Gp1kOQu/tBPPHKMxR4z
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
X-Spamd-Result: default: False [-6.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[kernel.org:dkim,infradead.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 9FEDD20299C
X-Rspamd-Server: mx1
X-Stat-Signature: 5u3u8fjygje1nbypyabyhub6hzpwttob

From: Luca Lauro <famlauro93l@gmail.com>

---
 drivers/usb/host/Kconfig        |   7 ++
 drivers/usb/host/Makefile       |  13 +--
 drivers/usb/host/ehci-marvell.c | 229 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 243 insertions(+), 6 deletions(-)

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
index 0000000000..8accfd697d
--- /dev/null
+++ b/drivers/usb/host/ehci-marvell.c
@@ -0,0 +1,229 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Marvell Orion / Kirkwood / Armada EHCI host for barebox
+ *
+ * Porting basato su ehci-marvell.c di U-Boot moderno,
+ * adattato al modello ehci_register() di barebox.
+ */
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
+/* AC5 special window mapping (copiato da U-Boot) */
+#define USB_TO_DRAM_TARGET_ID  0x2
+#define USB_TO_DRAM_ATTR_ID    0x0
+#define USB_DRAM_BASE          0x00000000
+#define USB_DRAM_SIZE          0xfff   /* non oltrepassare lo spazio sorgente */
+
+/*
+ * Stato privato per questa istanza EHCI Marvell.
+ * Non serve conoscere struct ehci_host: basta il puntatore.
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
+ * Programma le decoding windows USB -> DRAM usando le info MBUS.
+ * Per AC5 replica lo speciale mapping 0x0..USB_DRAM_SIZE.
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
+        /* mappa DRAM vista da USB a 0x0 (come in U-Boot) */
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
+        /* caso generico mvebu: una window per ciascun CS DRAM */
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
+ * Hook di init chiamato da ehci-hcd.c prima di avviare l'host.
+ * Qui facciamo solo la parte “bridge address decoding”.
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
+     * La programmazione di SBUSCFG (BAWR/BARD/AHBBRST) in U-Boot
+     * serve solo per SoC senza hlock (Armada3700, ecc.).
+     * Per ora la lasciamo fuori: se in futuro servirà, possiamo
+     * aggiungere un post_init o un hook dedicato nel core EHCI.
+     */
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
+    struct ehci_data data;
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
+    memset(&data, 0, sizeof(data));
+
+    /*
+     * Sui controller Marvell il blocco EHCI inizia a offset 0x100
+     * rispetto alla base USB.
+     */
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




