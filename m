Delivery-date: Tue, 22 Apr 2025 07:27:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76AF-003utJ-35
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 07:27:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76AD-0004Hi-Rj
	for lore@pengutronix.de; Tue, 22 Apr 2025 07:27:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c7NPv0QkvV2V0l6FyPPXOaRpBgStUZ8BNPtLe/Z9bOY=; b=Zd9G66slgQwRjeIzJzXtZCAgff
	TenIcy1diVdgaNdiZFXyiv4//YdTo/v0uKD0ZvpsGm+B94RERUAJ8culcr5hYZVYzK23c3zb5Z/y9
	7QsIo2wjYF1Iob5eMdb0qPeKcKbw+3+jhq7Tt4XlnMM06yiEojPsyuasH5pr/F7EnFYQsHJG6Y1O8
	PVihl2ml8xdbiDIf9msMxSxwpQzuqeu6YPQNE7RPlDsftkQFOeU4nyyZdawN7dG01urxVDrxME4nl
	xp0BiZA3pYehd1bW1yKQH4LHAJGjlXFUI9wA/yKRLCta7o/9Evo1Y9wKvY2zP9Jpr+rNy2kgi1eI9
	AyovbZQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769h-00000005rKo-1A9d;
	Tue, 22 Apr 2025 05:26:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769f-00000005rGt-0yHi
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 05:26:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769W-0003jI-0q; Tue, 22 Apr 2025 07:26:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-001UvI-2V;
	Tue, 22 Apr 2025 07:26:37 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-00EN4R-2D;
	Tue, 22 Apr 2025 07:26:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Apr 2025 07:26:33 +0200
Message-Id: <20250422052635.3423961-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
References: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_222647_299909_B7CC71BC 
X-CRM114-Status: GOOD (  21.47  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/9] ARM: OMAP: add am33xx_hsmmc_start_image for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have had a separate am335x_mlo_defconfig for a long time, but it
frequently breaks, because barebox keeps getting bigger and then is
slimmed down a bit again.

To counteract that, there is a am335x_mlo_sdmmc_defconfig, but the
downside is that this still requires two barebox builds: One for MLO
and one for barebox proper, because the MLO needs to fit into the
on-chip SRAM.

Reworking drivers for all supported boot media, including raw flash,
to be usable in PBL is a big undertaking, but supporting just SD is easy
enough, so add an entry point exclusively for that.

The end goal is to allow an easier integration for a future
beaglebone-yocto support in openembedded-core.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-omap/Makefile         |  1 +
 arch/arm/mach-omap/am33xx_generic.c | 38 ++++++++---------
 arch/arm/mach-omap/am33xx_xload.c   | 66 +++++++++++++++++++++++++++++
 include/mach/omap/am33xx-generic.h  |  2 +
 include/mach/omap/xload.h           | 14 ++++++
 5 files changed, 102 insertions(+), 19 deletions(-)
 create mode 100644 arch/arm/mach-omap/am33xx_xload.c
 create mode 100644 include/mach/omap/xload.h

diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 6b42196b2373..83722dfa9ca1 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -21,6 +21,7 @@ obj-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 pbl-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
+pbl-$(CONFIG_MCI_OMAP_HSMMC_PBL) += am33xx_xload.o
 obj-pbl-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o am3xxx.o emif4.o
 obj-pbl-$(CONFIG_ARCH_AM35XX) += am3xxx.o emif4.o
 obj-$(CONFIG_ARCH_AM33XX) += am33xx_scrm.o
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index bcafc0677e38..007daccdfbe1 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -120,40 +120,40 @@ u32 am33xx_running_in_sdram(void)
 	return 0;		/* running in SRAM or FLASH */
 }
 
-static int am33xx_bootsource(void)
+enum bootsource am33xx_get_bootsource(int *instance)
 {
-	enum bootsource src;
-	int instance = 0;
 	uint32_t *am33xx_bootinfo = (void *)AM33XX_SRAM_SCRATCH_SPACE;
 
 	switch (am33xx_bootinfo[2] & 0xFF) {
 	case 0x05:
-		src = BOOTSOURCE_NAND;
-		break;
+		return BOOTSOURCE_NAND;
 	case 0x08:
-		src = BOOTSOURCE_MMC;
 		instance = 0;
-		break;
+		return BOOTSOURCE_MMC;
 	case 0x09:
-		src = BOOTSOURCE_MMC;
-		instance = 1;
-		break;
+		*instance = 1;
+		return BOOTSOURCE_MMC;
 	case 0x0b:
-		src = BOOTSOURCE_SPI;
-		break;
+		return BOOTSOURCE_SPI;
 	case 0x41:
-		src = BOOTSOURCE_SERIAL;
-		break;
+		return BOOTSOURCE_SERIAL;
 	case 0x44:
-		src = BOOTSOURCE_USB;
-		break;
+		return BOOTSOURCE_USB;
 	case 0x46:
-		src = BOOTSOURCE_NET;
-		break;
+		return BOOTSOURCE_NET;
 	default:
-		src = BOOTSOURCE_UNKNOWN;
+		return BOOTSOURCE_UNKNOWN;
 	}
+}
+
+static int am33xx_bootsource(void)
+{
+	enum bootsource src;
+	int instance = 0;
+
+	src = am33xx_get_bootsource(&instance);
 	bootsource_set_raw(src, instance);
+
 	return 0;
 }
 
diff --git a/arch/arm/mach-omap/am33xx_xload.c b/arch/arm/mach-omap/am33xx_xload.c
new file mode 100644
index 000000000000..f0c8b451b308
--- /dev/null
+++ b/arch/arm/mach-omap/am33xx_xload.c
@@ -0,0 +1,66 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <filetype.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/xload.h>
+#include <mach/omap/am33xx-silicon.h>
+#include <mach/omap/am33xx-generic.h>
+#include <mach/omap/am33xx-clock.h>
+#include <bootsource.h>
+#include <linux/sizes.h>
+#include <asm/cache.h>
+#include <pbl/bio.h>
+
+struct xload_instance {
+	void __iomem *base;
+};
+
+static void omap_hsmmc_fat_start_image(struct pbl_bio *bio, void *buf)
+{
+	int ret;
+
+	ret = pbl_fat_load(bio, "barebox.bin", buf, SZ_2M);
+	if (ret < 0) {
+		pr_err("pbl_fat_load: error %d\n", ret);
+		return;
+	}
+
+	sync_caches_for_execution();
+
+	asm volatile ("bx  %0\n" : : "r"(buf) :);
+	__builtin_unreachable();
+}
+
+static const struct xload_instance am35xx_hsmmc_instances[] = {
+	[0] = { .base = IOMEM(AM33XX_MMCHS0_BASE), },
+	[1] = { .base = IOMEM(AM33XX_MMC1_BASE), },
+	[2] = { .base = IOMEM(AM33XX_MMCHS2_BASE), },
+};
+
+void __noreturn am33xx_hsmmc_start_image(void)
+{
+	void *buf = (void *)OMAP_DRAM_ADDR_SPACE_START;
+	const struct xload_instance *instance;
+	enum bootsource src;
+	struct pbl_bio bio;
+	int id = 0, ret;
+
+	omap_dmtimer_init(IOMEM(AM33XX_DMTIMER0_BASE),
+			  am33xx_get_osc_clock() * 1000);
+
+	src = am33xx_get_bootsource(&id);
+	if (src != BOOTSOURCE_MMC)
+		panic("This MLO was configured only for SD/MMC\n");
+
+	instance = &am35xx_hsmmc_instances[id];
+
+	ret = omap_hsmmc_bio_init(&bio, instance->base, 0x100);
+	if (ret)
+		goto out_panic;
+
+	omap_hsmmc_fat_start_image(&bio, buf);
+
+out_panic:
+	panic("FAT chainloading failed\n");
+}
diff --git a/include/mach/omap/am33xx-generic.h b/include/mach/omap/am33xx-generic.h
index 30aa13974111..a1ede96a30ff 100644
--- a/include/mach/omap/am33xx-generic.h
+++ b/include/mach/omap/am33xx-generic.h
@@ -30,6 +30,8 @@ u32 am33xx_running_in_flash(void);
 u32 am33xx_running_in_sram(void);
 u32 am33xx_running_in_sdram(void);
 
+enum bootsource am33xx_get_bootsource(int *instance);
+
 void am33xx_enable_per_clocks(void);
 int am33xx_init(void);
 int am33xx_devices_init(void);
diff --git a/include/mach/omap/xload.h b/include/mach/omap/xload.h
new file mode 100644
index 000000000000..d820d2602c22
--- /dev/null
+++ b/include/mach/omap/xload.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_OMAP_XLOAD_H
+#define __MACH_OMAP_XLOAD_H
+
+#include <linux/compiler.h>
+#include <pbl/bio.h>
+
+void __noreturn am33xx_hsmmc_start_image(void);
+
+int omap_hsmmc_bio_init(struct pbl_bio *bio, void __iomem *base,
+			unsigned reg_ofs);
+
+#endif /* __MACH_OMAP_XLOAD_H */
-- 
2.39.5



