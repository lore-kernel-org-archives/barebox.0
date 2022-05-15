Delivery-date: Sun, 15 May 2022 21:40:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqK6T-00EWUD-4d
	for lore@lore.pengutronix.de; Sun, 15 May 2022 21:40:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqK6P-0005xE-Ta
	for lore@pengutronix.de; Sun, 15 May 2022 21:40:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GKLwBKdnURJwCDJdef1y9LFVE9tkAIYFR9yUpG7HzLE=; b=QSgsV1F6bj443d
	WNqh2FLMdXyIBgZZx1DjtGT8w4hu1G92DTepOuCWnZoo9I8tn0Y7qSuznHUnfqKqhS9s+Ijers2UO
	dvhn39ynC6520X6STi+rJhsIbVIjVbTT6/G7qy1s2Ve/iAn1aHNr57BVQ67gjrM+qTWApXCRQQRaC
	YWxnnikWiVAOUXWmeC7sngA+T0Q/2BreIkNYB6PmyrnYF86XOCh0JB3wTbNhcOnBjam/oC9GHXz7x
	l0c896W2cNXQ+zMakK4KO5e9FwndgF9xblgCO3PvtBlw5XSW6Sk/dsYg2VrokhC0iVi/21dFFM8sM
	p06mQ7UXt4DNcTN3gsKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqK4Z-004nYL-L0; Sun, 15 May 2022 19:38:35 +0000
Received: from mailrelay2-1.pub.mailoutpod1-cph3.one.com ([46.30.210.183])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqK4R-004nUa-23
 for barebox@lists.infradead.org; Sun, 15 May 2022 19:38:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ravnborg.org; s=rsa1;
 h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
 subject:cc:to:from:from;
 bh=e8hEjgDOGtwf0SO4wfwR0wdr/DbJIH5md8qHydSQVtQ=;
 b=ud8KinXckOhaLLLgaujNRC/Zc0ryrYljRrE+ZeNH+B9neEKrUmhz1vonmUBy2UPXfm487BF77cWcy
 SWm6psVY08D+lqDsf8J+b6YVEu8+Wtl77/yyMKxBQMpk83VdrPsao1WHTLo/B7DO3VDNTECQL27JRz
 1Nwwh4N4d1fajzfAAmtKJibSDTogekIpFRbDZoGEUrb1+zrIeYo41Tkvk+JfJsXac5AzEDNJU8kbof
 TBTGeNw0e5cBx2+VtiPwm26IwLox2bRbUnPObHduAE5+zz/FB3V4yca/+q9iK+lgTHwYq2pwzClqrv
 w6CRleZ7Ba2mcWvcbrpgDYxWD8np4gA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=ravnborg.org; s=ed1;
 h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
 subject:cc:to:from:from;
 bh=e8hEjgDOGtwf0SO4wfwR0wdr/DbJIH5md8qHydSQVtQ=;
 b=eXXU44zxkKySpHiG6x2h/KtDZefkJEwAbiUuZTvJAEjzilGmiPj/auxadi2sTa7uPo5VEBnJK/eMu
 r7JFe2qDQ==
X-HalOne-Cookie: b54c89a80984b6cdc1eab97ad33962a849b034d9
X-HalOne-ID: 9626e5e4-d486-11ec-a908-d0431ea8a290
Received: from mailproxy4.cst.dirpod4-cph3.one.com
 (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
 by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
 id 9626e5e4-d486-11ec-a908-d0431ea8a290;
 Sun, 15 May 2022 19:38:25 +0000 (UTC)
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Sun, 15 May 2022 21:38:02 +0200
Message-Id: <20220515193807.354903-4-sam@ravnborg.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220515193807.354903-1-sam@ravnborg.org>
References: <20220515193807.354903-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_123828_051264_4ACE779A 
X-CRM114-Status: GOOD (  19.16  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 3/8] ARM: at91: Add at91sam9 xload_mmc for PBL use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add xload support to at91sam9263 similar to what is already
present for the sama5d3.
The xload supports reading barebox.bin from a SDCARD from the
PBL and load the full barebox.bin and starts it.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/mach-at91/Makefile             |   1 +
 arch/arm/mach-at91/at91sam9_xload_mmc.c | 115 ++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/xload.h |   4 +
 3 files changed, 120 insertions(+)
 create mode 100644 arch/arm/mach-at91/at91sam9_xload_mmc.c

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index bfdc89f68..72805d6ef 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -17,6 +17,7 @@ obj-y += at91sam9_reset.o
 obj-y += at91sam9g45_reset.o
 obj-pbl-$(CONFIG_HAVE_AT91_DDRAMC) += ddramc.o
 pbl-$(CONFIG_AT91_MCI_PBL) +=  xload-mmc.o
+pbl-$(CONFIG_AT91_MCI_PBL) +=  at91sam9_xload_mmc.o
 
 obj-$(CONFIG_AT91SAM9_SMC) += sam9_smc.o
 obj-$(CONFIG_HAVE_AT91SAM9_RST) += at91sam9_rst.o
diff --git a/arch/arm/mach-at91/at91sam9_xload_mmc.c b/arch/arm/mach-at91/at91sam9_xload_mmc.c
new file mode 100644
index 000000000..b1b46b317
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam9_xload_mmc.c
@@ -0,0 +1,115 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-FileCopyrightText: 2022 Sam Ravnborg */
+
+#include <debug_ll.h>
+#include <common.h>
+#include <pbl.h>
+
+#include <linux/sizes.h>
+#include <asm/cache.h>
+
+#include <mach/at91_pmc_ll.h>
+#include <mach/at91sam9263.h>
+#include <mach/at91sam926x.h>
+#include <mach/hardware.h>
+#include <mach/iomux.h>
+#include <mach/xload.h>
+#include <mach/gpio.h>
+
+typedef void (*func)(int zero, int arch, void *params);
+
+/*
+ * Load barebox.bin and start executing the first byte in the barebox image.
+ * barebox.bin is loaded to AT91_CHIPSELECT_1.
+ *
+ * To be able to load barebox.bin do a minimal init of the pheriferals
+ * used by MCI.
+ * This functions runs in PBL code and uses the PBL variant of the
+ * atmel_mci driver.
+ */
+void __noreturn sam9263_atmci_start_image(u32 mmc_id, unsigned int clock,
+					  bool slot_b)
+{
+	void __iomem *pio = IOMEM(AT91SAM9263_BASE_PIOA);
+	void *buf = (void *)AT91_CHIPSELECT_1;
+	void __iomem *base;
+	struct pbl_bio bio;
+	int ret;
+
+	at91_pmc_enable_periph_clock(IOMEM(AT91SAM926X_BASE_PMC), AT91SAM9263_ID_PIOA);
+
+	if (mmc_id == 0) {
+		base = IOMEM(AT91SAM9263_BASE_MCI0);
+
+		/* CLK */
+		at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA12), AT91_MUX_PERIPH_A, 0);
+
+		if (!slot_b) {
+			/* CMD */
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA1), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+
+			/* DAT0 to DAT3 */
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA0), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA3), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA4), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA5), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+		} else {
+			/* CMD */
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA16), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+
+			/* DAT0 to DAT3 */
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA17), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA18), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA19), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA20), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+		}
+
+		at91_pmc_enable_periph_clock(IOMEM(AT91SAM926X_BASE_PMC),  AT91SAM9263_ID_MCI0);
+	} else {
+		base = IOMEM(AT91SAM9263_BASE_MCI1);
+
+		/* CLK */
+		at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA6), AT91_MUX_PERIPH_A, 0);
+
+		if (!slot_b) {
+			/* CMD */
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA7), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+
+			/* DAT0 to DAT3 */
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA8), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA9), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA10), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA11), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+		} else {
+			/* CMD */
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA21), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+
+			/* DAT0 to DAT3 */
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA22), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA23), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA24), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA25), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
+		}
+
+		at91_pmc_enable_periph_clock(IOMEM(AT91SAM926X_BASE_PMC),  AT91SAM9263_ID_MCI1);
+	}
+
+	ret = at91_mci_bio_init(&bio, base, clock, (int)slot_b);
+	if (ret) {
+		pr_err("atmci_start_image: bio init faild: %d\n", ret);
+		goto out_panic;
+	}
+
+	ret = pbl_fat_load(&bio, "barebox.bin", buf, SZ_16M);
+	if (ret < 0) {
+		pr_err("pbl_fat_load: error %d\n", ret);
+		goto out_panic;
+	}
+
+	sync_caches_for_execution();
+
+	((func)buf)(0, 0, NULL);
+
+out_panic:
+	panic("FAT chainloading failed\n");
+}
diff --git a/arch/arm/mach-at91/include/mach/xload.h b/arch/arm/mach-at91/include/mach/xload.h
index e9336d59c..1256358dd 100644
--- a/arch/arm/mach-at91/include/mach/xload.h
+++ b/arch/arm/mach-at91/include/mach/xload.h
@@ -14,4 +14,8 @@ int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base);
 int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
 		      unsigned int clock, unsigned int slot);
 
+void __noreturn sam9263_atmci_start_image(u32 mmc_id, unsigned int clock,
+					  bool slot_b);
+
+
 #endif /* __MACH_XLOAD_H */
-- 
2.34.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

