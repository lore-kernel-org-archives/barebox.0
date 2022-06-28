Delivery-date: Tue, 28 Jun 2022 22:40:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I0u-000bJZ-BO
	for lore@lore.pengutronix.de; Tue, 28 Jun 2022 22:40:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I0v-0004DA-Cv
	for lore@pengutronix.de; Tue, 28 Jun 2022 22:40:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vNeXSHnGtQrA+yLJAY8jihVn+45YFatd0szjWhTnmRE=; b=UHBpR+iO09xWBMREp7UOlfkcky
	P2wiZc74IzX2S73CXK7yDta9oCHi7b54F8/vpC1ytVlkgj1j6OR10yjn+l+N/JxmXewxdXtw9kdhV
	sd5IxJkrnMDzl6d2DLJBLF10Z8G9qc0Tm4ZIqvKemfDMTWLJxcyF/6J9p7RA2b+uTGePXBUWSlHTh
	Ct+TRMqh+Jy9wEJbpT0r/mM59T0a8AR+Tlks0WdsSSDk4U/uFE7Kbwn9FtT7gwdakB4UaU1gYRkPc
	bmZB3ZC2d2ytb01tgSzkO0MndrpkF5gswfQDvWP8/aDm1o5QIp7sgsKk9u0w6OFwa4QQxuytcj3zy
	bs+kxc2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6HzX-0084mb-JN; Tue, 28 Jun 2022 20:39:23 +0000
Received: from mailrelay3-1.pub.mailoutpod1-cph3.one.com ([46.30.210.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6HzH-0084iB-Hy
	for barebox@lists.infradead.org; Tue, 28 Jun 2022 20:39:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=vNeXSHnGtQrA+yLJAY8jihVn+45YFatd0szjWhTnmRE=;
	b=WCB6zlGKvMwSJBOOiWxpruDCsIX16xzj5nympl9rC7YtDLApoXnOe6fw4+LvuVCZnP1VyNBM3DBms
	 lT/bYqYOMOSitI/JsgL4VO6pGR5BW1U+36Z1RiQX2JXN195CHTUQomib43hWIBlCWwgWmyHwv9ckHQ
	 oZ331VjlWDsGzIfNbgCcOHwOULiX3UOZLpCc49kyh53cmNkmnk+anAzRV1TPlRB2Hv3GIVyW1XxD73
	 FTP23d6AlsWcj/pFUgajUkwzt8GL+R9uypuTaJE2I4rifU42vTDoK+4zZPwhZkvNlV6VeUTJifN3Kk
	 PH3FRPsmhQ2PEs0BDFd2i8/KZ+t32Cg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=vNeXSHnGtQrA+yLJAY8jihVn+45YFatd0szjWhTnmRE=;
	b=BLP6MMUPECjgvoqaEPjV8/K+V0oqKruFH9s/lo0H8YozlYVzZ4W+kKhO+XJO7hph8FGeP7M+tIzEr
	 uUnxXaqBQ==
X-HalOne-Cookie: a4f6cd90e601597a8d5dcfae42cd328e2c009848
X-HalOne-ID: 5a195bba-f722-11ec-be7c-d0431ea8bb03
Received: from mailproxy3.cst.dirpod4-cph3.one.com (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
	by mailrelay3.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 5a195bba-f722-11ec-be7c-d0431ea8bb03;
	Tue, 28 Jun 2022 20:39:05 +0000 (UTC)
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Tue, 28 Jun 2022 22:38:44 +0200
Message-Id: <20220628203849.2785611-7-sam@ravnborg.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220628203849.2785611-1-sam@ravnborg.org>
References: <20220628203849.2785611-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_133907_782337_4B96C41A 
X-CRM114-Status: GOOD (  20.09  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 06/11] ARM: at91: Add at91sam9 xload_mmc for PBL use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add xload support to at91sam9263 similar to what is already
present for the sama5d3.
The xload supports reading barebox.bin from a SDCARD from the
PBL and load the full barebox.bin and starts it.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/mach-at91/Makefile             |   1 +
 arch/arm/mach-at91/at91sam9_xload_mmc.c | 118 ++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/xload.h |   4 +
 3 files changed, 123 insertions(+)
 create mode 100644 arch/arm/mach-at91/at91sam9_xload_mmc.c

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 12e64291b..b171d682f 100644
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
index 000000000..64266757d
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam9_xload_mmc.c
@@ -0,0 +1,118 @@
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
+	/* at91sam9x do not support high capacity */
+	at91_mci_bio_set_highcapacity(false);
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
index 488279c1a..82db65e30 100644
--- a/arch/arm/mach-at91/include/mach/xload.h
+++ b/arch/arm/mach-at91/include/mach/xload.h
@@ -15,4 +15,8 @@ int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
 		      unsigned int clock, unsigned int slot);
 void at91_mci_bio_set_highcapacity(bool highcapacity_card);
 
+void __noreturn sam9263_atmci_start_image(u32 mmc_id, unsigned int clock,
+					  bool slot_b);
+
+
 #endif /* __MACH_XLOAD_H */
-- 
2.34.1



