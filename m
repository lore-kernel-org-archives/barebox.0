Delivery-date: Tue, 26 Sep 2023 20:40:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlCyb-00CK0p-EA
	for lore@lore.pengutronix.de; Tue, 26 Sep 2023 20:40:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlCyZ-0001qW-EL
	for lore@pengutronix.de; Tue, 26 Sep 2023 20:40:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9Yi3t2gBVymmBYTgHh6BsuyDDCeWuPRDDFmLNBM75pI=; b=djwhjmhRODqgv7IQ4EEpHkee+K
	uxlKmWqbnEgqVz/iATbt91tAl5dd6gEvDuIWkRjsry5ZGVRCM6uaN2YASecJxPi0xpECk0jfX1j/D
	SGk1oGAb+2hcsTgsYK+O7PItMF1TeR7PCrPX+YEOzZIG8Kwkju+EqRUrAMY7xwovo8UZXRgjpMyzO
	E18YWHwwK+ZzsCgPcVpVB1cXc+pta2dKOdEDCDsEGkGNFKaFaK+NilQ/UdEaeEC3XhEFrdfWxRPsP
	JcVRBiC/GkmSd/4Ct32DJRymQxNU/aH/S+4In5Py8T3qZbncTGVmxxCTPig+5j9OiNodMQFE0+ea7
	y6R7DEwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlCxK-00GrMD-1p;
	Tue, 26 Sep 2023 18:38:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlCxF-00GrJn-2x
	for barebox@lists.infradead.org;
	Tue, 26 Sep 2023 18:38:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qlCxB-0000og-2A; Tue, 26 Sep 2023 20:38:37 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qlCxA-009AQF-Jh; Tue, 26 Sep 2023 20:38:36 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qlCxA-00Az2x-1o;
	Tue, 26 Sep 2023 20:38:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: wsa@kernel.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 26 Sep 2023 20:38:32 +0200
Message-Id: <20230926183835.2617909-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230926183835.2617909-1-a.fatoum@pengutronix.de>
References: <20230926183835.2617909-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230926_113841_951584_C9D2A269 
X-CRM114-Status: GOOD (  18.22  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] ARM: at91: add SDRAMC driver for memory detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have support to read back memory size from the SDRAM
controller on older AT91 processor via the at91_get_sdram_size()
function, but that's mostly called from board code.

Add a proper driver that can probe the SDRAM device in the DT to
dynamically detect the memory without hardcoding.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig          |  3 ++
 arch/arm/mach-at91/Makefile         |  1 +
 arch/arm/mach-at91/sdramc.c         | 47 +++++++++++++++++++++++++++++
 include/mach/at91/at91sam9_sdramc.h |  4 +++
 4 files changed, 55 insertions(+)
 create mode 100644 arch/arm/mach-at91/sdramc.c

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index d2499747252d..1197e06670c7 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -42,6 +42,9 @@ config HAVE_AT91_I2S_MUX_CLK
 config HAVE_AT91_SAM9X60_PLL
 	bool
 
+config HAVE_AT91_SDRAMC
+	bool
+
 config HAVE_AT91_DDRAMC
 	bool
 
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 301e0b761b26..777dc6d1aa3c 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -16,6 +16,7 @@ obj-$(CONFIG_BOOTM) += bootm-barebox.o
 obj-y += at91sam9_reset.o
 obj-y += at91sam9g45_reset.o
 obj-pbl-$(CONFIG_HAVE_AT91_DDRAMC) += ddramc.o
+obj-pbl-$(CONFIG_HAVE_AT91_SDRAMC) += sdramc.o
 pbl-$(CONFIG_AT91_MCI_PBL) +=  xload-mmc.o
 pbl-$(CONFIG_AT91_MCI_PBL) +=  at91sam9_xload_mmc.o
 
diff --git a/arch/arm/mach-at91/sdramc.c b/arch/arm/mach-at91/sdramc.c
new file mode 100644
index 000000000000..655f24ecd9ad
--- /dev/null
+++ b/arch/arm/mach-at91/sdramc.c
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2020 Ahmad Fatoum <a.fatoum@pengutronix.de>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mach/at91/hardware.h>
+#include <asm/barebox-arm.h>
+#include <mach/at91/at91sam9_sdramc.h>
+#include <asm/memory.h>
+#include <pbl.h>
+#include <io.h>
+
+void __noreturn at91sam9260_barebox_entry(void *boarddata)
+{
+	barebox_arm_entry(AT91_CHIPSELECT_1,
+			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
+			  boarddata);
+}
+
+static int at91_sdramc_probe(struct device *dev)
+{
+	struct resource *iores;
+	void __iomem *base;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	base = IOMEM(iores->start);
+
+	return arm_add_mem_device("ram0", AT91_CHIPSELECT_1,
+				  at91_get_sdram_size(base));
+}
+
+static struct of_device_id at91_sdramc_dt_ids[] = {
+	{ .compatible = "atmel,at91sam9260-sdramc" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, at91_sdramc_dt_ids);
+
+static struct driver at91_sdramc_driver = {
+	.name   = "at91sam9260-sdramc",
+	.probe  = at91_sdramc_probe,
+	.of_compatible = at91_sdramc_dt_ids,
+};
+mem_platform_driver(at91_sdramc_driver);
diff --git a/include/mach/at91/at91sam9_sdramc.h b/include/mach/at91/at91sam9_sdramc.h
index a4c88b24d4a0..2ba73cd2f2dc 100644
--- a/include/mach/at91/at91sam9_sdramc.h
+++ b/include/mach/at91/at91sam9_sdramc.h
@@ -13,6 +13,8 @@
 #ifndef AT91SAM9_SDRAMC_H
 #define AT91SAM9_SDRAMC_H
 
+#include <linux/compiler.h>
+
 /* SDRAM Controller (SDRAMC) registers */
 #define AT91_SDRAMC_MR		0x00	/* SDRAM Controller Mode Register */
 #define		AT91_SDRAMC_MODE	(0xf << 0)		/* Command Mode */
@@ -268,5 +270,7 @@ static inline bool at91sam9263_is_low_power_sdram(int bank)
 	}
 }
 
+void __noreturn at91sam9260_barebox_entry(void *boarddata);
+
 #endif
 #endif
-- 
2.39.2



