Delivery-date: Fri, 17 May 2024 08:00:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qdx-000rev-1u
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 08:00:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qdt-0008Fz-RB
	for lore@pengutronix.de; Fri, 17 May 2024 08:00:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kW6reY0QIUdiaaf2k5+20ySmeMU8EZLY0NwZ7ANlA6Y=; b=r5ZXSnGz7+nw7xygJKec1p/Zvl
	KZNzRBc8Dy0YwZyRvQL2vhVG4zzboUrkatCzsLv0T7t4aI98+B2Bj/XFHoR+kYsJXvtxOg9MPQTDe
	gZl0nzW1Bdzok1wCAkm5lGmjS30WAYoRMqAe0uxn1u4k137upDt0l/zehYBZrbmec0TtZeEY2XZAN
	c4QeBxopMrGB7yxw+rvtz14nd2UfJSsFrMdPJIG3ntBR9+et9r6965kFYezAQ4SQlH875UvGN1B/P
	SoWtFYib4zuqbsIMiLGNFdnwOtsZ1ErQRPekmHwGVNxkl0XJoHcfw4sCIL0nrRRds295Rc5Fn/YY8
	ANF0PSFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qdJ-00000006u7W-3PVc;
	Fri, 17 May 2024 05:59:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qdG-00000006u6o-3PAE
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 05:59:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qdF-0007zV-2K; Fri, 17 May 2024 07:59:53 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qdE-001pKt-MJ; Fri, 17 May 2024 07:59:52 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qdE-00AFKL-1q;
	Fri, 17 May 2024 07:59:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 07:59:51 +0200
Message-Id: <20240517055951.2437582-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_225954_876279_249AFD1D 
X-CRM114-Status: GOOD (  18.10  )
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
Subject: [PATCH] mci: imx-esdhc: retire esdhc_platform_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have no board in-tree that doesn't probe the imx-esdhc from DT.
The platform data is thus unused as the PBL usage happens without it,
therefore remove that struct definition and the dead code handling it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/ls1028ardb/lowlevel.c |  1 -
 arch/arm/boards/ls1046ardb/lowlevel.c |  1 -
 arch/arm/boards/tqmls1046a/lowlevel.c |  1 -
 drivers/mci/imx-esdhc.c               | 34 +------------------
 include/platform_data/mmc-esdhc-imx.h | 48 ---------------------------
 5 files changed, 1 insertion(+), 84 deletions(-)
 delete mode 100644 include/platform_data/mmc-esdhc-imx.h

diff --git a/arch/arm/boards/ls1028ardb/lowlevel.c b/arch/arm/boards/ls1028ardb/lowlevel.c
index 00db0b1cf869..e903d9d30196 100644
--- a/arch/arm/boards/ls1028ardb/lowlevel.c
+++ b/arch/arm/boards/ls1028ardb/lowlevel.c
@@ -4,7 +4,6 @@
 #include <debug_ll.h>
 #include <ddr_spd.h>
 #include <image-metadata.h>
-#include <platform_data/mmc-esdhc-imx.h>
 #include <soc/fsl/fsl_ddr_sdram.h>
 #include <soc/fsl/immap_lsch2.h>
 #include <asm/barebox-arm-head.h>
diff --git a/arch/arm/boards/ls1046ardb/lowlevel.c b/arch/arm/boards/ls1046ardb/lowlevel.c
index 408e6017f6cc..56b8320eddb4 100644
--- a/arch/arm/boards/ls1046ardb/lowlevel.c
+++ b/arch/arm/boards/ls1046ardb/lowlevel.c
@@ -4,7 +4,6 @@
 #include <debug_ll.h>
 #include <ddr_spd.h>
 #include <image-metadata.h>
-#include <platform_data/mmc-esdhc-imx.h>
 #include <pbl/i2c.h>
 #include <soc/fsl/fsl_ddr_sdram.h>
 #include <soc/fsl/immap_lsch2.h>
diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index 4a1496078a61..9fcb52ea3902 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0+
 #include <common.h>
 #include <debug_ll.h>
-#include <platform_data/mmc-esdhc-imx.h>
 #include <soc/fsl/fsl_ddr_sdram.h>
 #include <soc/fsl/immap_lsch2.h>
 #include <asm/barebox-arm-head.h>
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index b05934a20113..54309aec2f74 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -18,7 +18,6 @@
 #include <io.h>
 #include <linux/clk.h>
 #include <linux/err.h>
-#include <platform_data/mmc-esdhc-imx.h>
 #include <gpio.h>
 #include <of_device.h>
 #include <mach/imx/generic.h>
@@ -195,27 +194,7 @@ static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 
 static int esdhc_card_present(struct mci_host *mci)
 {
-	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	struct esdhc_platform_data *pdata = host->dev->platform_data;
-	int ret;
-
-	if (!pdata)
-		return 1;
-
-	switch (pdata->cd_type) {
-	case ESDHC_CD_NONE:
-	case ESDHC_CD_PERMANENT:
-		return 1;
-	case ESDHC_CD_CONTROLLER:
-		return !(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & SDHCI_WRITE_PROTECT);
-	case ESDHC_CD_GPIO:
-		ret = gpio_direction_input(pdata->cd_gpio);
-		if (ret)
-			return ret;
-		return gpio_get_value(pdata->cd_gpio) ? 0 : 1;
-	}
-
-	return 0;
+	return 1;
 }
 
 static int esdhc_reset(struct fsl_esdhc_host *host)
@@ -302,7 +281,6 @@ static int fsl_esdhc_probe(struct device *dev)
 	struct mci_host *mci;
 	int ret;
 	unsigned long rate;
-	struct esdhc_platform_data *pdata = dev->platform_data;
 	const struct esdhc_soc_data *socdata;
 
 	ret = dev_get_drvdata(dev, (const void **)&socdata);
@@ -338,12 +316,6 @@ static int fsl_esdhc_probe(struct device *dev)
 
 	esdhc_populate_sdhci(host);
 
-	if (pdata) {
-		mci->host_caps = pdata->caps;
-		if (pdata->devname)
-			mci->devname = pdata->devname;
-	}
-
 	host->mci.ops = fsl_esdhc_ops;
 	host->mci.hw_dev = dev;
 	host->sdhci.mci = &host->mci;
@@ -360,10 +332,6 @@ static int fsl_esdhc_probe(struct device *dev)
 	if (host->mci.f_min < 200000)
 		host->mci.f_min = 200000;
 	host->mci.f_max = rate;
-	if (pdata) {
-		host->mci.use_dsr = pdata->use_dsr;
-		host->mci.dsr_val = pdata->dsr_val;
-	}
 
 	mci_of_parse(&host->mci);
 
diff --git a/include/platform_data/mmc-esdhc-imx.h b/include/platform_data/mmc-esdhc-imx.h
deleted file mode 100644
index fb7380a18201..000000000000
--- a/include/platform_data/mmc-esdhc-imx.h
+++ /dev/null
@@ -1,48 +0,0 @@
-/*
- * Copyright 2010 Wolfram Sang <w.sang@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * as published by the Free Software Foundation; version 2
- * of the License.
- */
-
-#ifndef __ASM_ARCH_IMX_ESDHC_H
-#define __ASM_ARCH_IMX_ESDHC_H
-
-enum wp_types {
-	ESDHC_WP_NONE,		/* no WP, neither controller nor gpio */
-	ESDHC_WP_CONTROLLER,	/* mmc controller internal WP */
-	ESDHC_WP_GPIO,		/* external gpio pin for WP */
-};
-
-enum cd_types {
-	ESDHC_CD_NONE,		/* no CD, neither controller nor gpio */
-	ESDHC_CD_CONTROLLER,	/* mmc controller internal CD */
-	ESDHC_CD_GPIO,		/* external gpio pin for CD */
-	ESDHC_CD_PERMANENT,	/* no CD, card permanently wired to host */
-};
-
-/**
- * struct esdhc_platform_data - platform data for esdhc on i.MX
- *
- * ESDHC_WP(CD)_CONTROLLER type is not available on i.MX25/35.
- *
- * @wp_gpio:	gpio for write_protect
- * @cd_gpio:	gpio for card_detect interrupt
- * @wp_type:	type of write_protect method (see wp_types enum above)
- * @cd_type:	type of card_detect method (see cd_types enum above)
- * @caps:	supported bus width capabilities (MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA)
- */
-
-struct esdhc_platform_data {
-	unsigned int wp_gpio;
-	unsigned int cd_gpio;
-	enum wp_types wp_type;
-	enum cd_types cd_type;
-	unsigned caps;
-	char *devname;
-	unsigned dsr_val;
-	int use_dsr;
-};
-#endif /* __ASM_ARCH_IMX_ESDHC_H */
-- 
2.39.2



