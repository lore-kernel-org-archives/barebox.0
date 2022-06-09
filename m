Delivery-date: Thu, 09 Jun 2022 11:21:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzEM5-008cF1-16
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 11:21:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzEM3-0000yE-07
	for lore@pengutronix.de; Thu, 09 Jun 2022 11:21:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qswVMX4IyP5dQAZmO7QpnLL0vEZ2fnhcJlO+2cL74uc=; b=KehFJH5TsJgapX
	e0zXT6whMZ2JEoBH4lJQesXGaPrOUtjuHw1Ulr0BpTDutoj1q6XQp5dUMkUpc2kLOCDb5UXS0jfQv
	k8Vh4+OnaU/GYdReZMd/tFMmqZmpS/oe227NTf09m82hLfk7Rhi3oZKD0Pq0NTTmImIRmM3xegr2/
	X10lbWfnx/UsOHbbxu8TXp/NIcA6JBtPEkY2siBxOgOC8ph2ir4/7MM2A4IKhWpjX9nTMJW862m+q
	AQtKFD7LYK4Q94nwjenZmUuSIXNs8m/bQn8v2uvKcEW948gZDKV9zUAMiti35vxeb00LClorSpDWv
	uWVqOTCqtif1l4lIcHZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzEKc-000cCW-G0; Thu, 09 Jun 2022 09:19:58 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzEKX-000cBi-0k
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 09:19:55 +0000
Received: by mail-lj1-x22e.google.com with SMTP id y15so20041594ljc.0
        for <barebox@lists.infradead.org>; Thu, 09 Jun 2022 02:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Omm1hUBhndT9ZsLueURTeqx68zySGqil1eRtwAz06QE=;
        b=Mw1ViBlzHGT2fJ1XzadtuZjBaJX0oz0vLf3k/28hSM7KbFOkfAHj5sYApLzxGOFU6j
         ZrpsnF//5ut4v2k2SRRkKTaOLIzqPM8pKCNik5xyXWWejGXlnhZzi3L7n7nMgnf7D+TV
         THWV5xVkNLMyp1cd55bRo2KQTEl2c+4TCPhflKWs5jwStR3Q3BDXU73YoOB4Nt2OClRY
         IKo8bDQBqlzh5LXcwbb++G68Ig2CmtQQUPvGO0p9qt7OzGHqGaJXLD7icbaanFiOFfcW
         43hk9yrLXH0LxDTfGDKrqVwG1BtomrhinHMyB+TvQ8wM7ABmVRE+nxmGEzEUqdLOIBC0
         vC0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Omm1hUBhndT9ZsLueURTeqx68zySGqil1eRtwAz06QE=;
        b=mdyO+oix0e+btEWfIw+RZqJ9xC3xZwM3Zv7uSxmHJqwfE5ZvtDqpMuapW+BVZ5lfvB
         4Bs8vA1lwLHSjxCwnTmQRWef3peS8xAmA8MR8QTiiEIXHIjC1rf/AHUf7GI1teLuDxCu
         vTnngxvAf+fxHz4+sTFdP336V8WGHh3O1HDpTn1d2keWlRyEPnlcj0IQKbJpbC5aRFnu
         Ew+xHCzHW1qQDepvdzcO0bh8KlSXwT2zgHfTqIgvnE6PCIQfyn/cFNTb2qnU9jQGtl9e
         bzMK0bKQ5sP5A99alJeD5MJjLoppDNmhAFVGDsbFQHtZk+TDq3598HG7YdsaWU+5NE3P
         6Wow==
X-Gm-Message-State: AOAM533cff4R0WLnsLPYScuokj8nRAxRxwBZ3ZOGVyKrNs0HykdxdolX
	cBP8Dl9079910KjnTX2y28PmT5CQUrM=
X-Google-Smtp-Source: ABdhPJxMo2UqVKJvWPCH94PhoBY3bcITdk79WfTVOGN7CQ8iiPPivjxPhiGksOcZZH9FjBm7UKva+g==
X-Received: by 2002:a2e:b88e:0:b0:255:953a:8d33 with SMTP id r14-20020a2eb88e000000b00255953a8d33mr10989518ljp.38.1654766390161;
        Thu, 09 Jun 2022 02:19:50 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id c4-20020a2e9d84000000b002555d6ca497sm3639178ljj.115.2022.06.09.02.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 02:19:49 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu,  9 Jun 2022 12:19:46 +0300
Message-Id: <20220609091946.20028-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_021953_124103_BE32B890 
X-CRM114-Status: GOOD (  24.22  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: OMAP: Rework watchdog code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This patch introduces the omap_watchdog_disable() function,
since the WDT core is the same for different OMAP variants,
it can be used for all supported SOCs.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/afi-gf/lowlevel.c            | 10 +----
 arch/arm/boards/beaglebone/lowlevel.c        |  9 +---
 arch/arm/boards/myirtech-x335x/lowlevel.c    |  9 +---
 arch/arm/boards/phytec-som-am335x/lowlevel.c | 11 +----
 arch/arm/boards/vscom-baltos/lowlevel.c      |  9 +---
 arch/arm/boards/wago-pfc-am35xx/lowlevel.c   |  1 -
 arch/arm/mach-omap/include/mach/generic.h    |  2 +
 arch/arm/mach-omap/include/mach/wdt.h        | 43 --------------------
 arch/arm/mach-omap/omap3_generic.c           | 12 +-----
 arch/arm/mach-omap/omap4_generic.c           | 22 +---------
 arch/arm/mach-omap/omap_generic.c            | 18 ++++++++
 11 files changed, 29 insertions(+), 117 deletions(-)
 delete mode 100644 arch/arm/mach-omap/include/mach/wdt.h

diff --git a/arch/arm/boards/afi-gf/lowlevel.c b/arch/arm/boards/afi-gf/lowlevel.c
index d28cc8fad3..294da66da5 100644
--- a/arch/arm/boards/afi-gf/lowlevel.c
+++ b/arch/arm/boards/afi-gf/lowlevel.c
@@ -11,11 +11,11 @@
 #include <mach/am33xx-silicon.h>
 #include <mach/am33xx-clock.h>
 #include <mach/emif4.h>
+#include <mach/gereric.h>
 #include <mach/sdrc.h>
 #include <mach/sys_info.h>
 #include <mach/syslib.h>
 #include <mach/am33xx-mux.h>
-#include <mach/wdt.h>
 #include <debug_ll.h>
 
 /* AM335X EMIF Register values */
@@ -211,13 +211,7 @@ static noinline int gf_sram_init(void)
 
 	fdt = __dtb_z_am335x_afi_gf_start;
 
-	/* WDT1 is already running when the bootloader gets control
-	 * Disable it to avoid "random" resets
-	 */
-	__raw_writel(WDT_DISABLE_CODE1, AM33XX_WDT_REG(WSPR));
-	while(__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
-	__raw_writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
-	while(__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
+	omap_watchdog_disable(IOMEM(AM33XX_WDT_BASE));
 
 	/* Setup the PLLs and the clocks for the peripherals */
 	am33xx_pll_init(MPUPLL_M_500, DDRPLL_M_200);
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 544e396e03..ebec4b5419 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -15,7 +15,6 @@
 #include <mach/syslib.h>
 #include <mach/am33xx-mux.h>
 #include <mach/am33xx-generic.h>
-#include <mach/wdt.h>
 
 #include "beaglebone.h"
 
@@ -118,13 +117,7 @@ static noinline int beaglebone_sram_init(void)
 	else
 		sdram_size = SZ_256M;
 
-	/* WDT1 is already running when the bootloader gets control
-	 * Disable it to avoid "random" resets
-	 */
-	__raw_writel(WDT_DISABLE_CODE1, AM33XX_WDT_REG(WSPR));
-	while(__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
-	__raw_writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
-	while(__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
+	omap_watchdog_disable(IOMEM(AM33XX_WDT_BASE));
 
 	/* Setup the PLLs and the clocks for the peripherals */
 	if (is_beaglebone_black()) {
diff --git a/arch/arm/boards/myirtech-x335x/lowlevel.c b/arch/arm/boards/myirtech-x335x/lowlevel.c
index c43761ca23..4d32d2da1e 100644
--- a/arch/arm/boards/myirtech-x335x/lowlevel.c
+++ b/arch/arm/boards/myirtech-x335x/lowlevel.c
@@ -14,7 +14,6 @@
 #include <mach/generic.h>
 #include <mach/sdrc.h>
 #include <mach/sys_info.h>
-#include <mach/wdt.h>
 
 #define AM335X_ZCZ_1000		0x1c2f
 
@@ -70,13 +69,7 @@ ENTRY_FUNCTION(start_am33xx_myirtech_sram, bootinfo, r1, r2)
 
 	fdt = __dtb_z_am335x_myirtech_myd_start;
 
-	/* WDT1 is already running when the bootloader gets control
-	 * Disable it to avoid "random" resets
-	 */
-	__raw_writel(WDT_DISABLE_CODE1, AM33XX_WDT_REG(WSPR));
-	while (__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
-	__raw_writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
-	while (__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
+	omap_watchdog_disable(IOMEM((AM33XX_WDT_BASE));
 
 	mpupll = MPUPLL_M_800;
 	if (am33xx_get_cpu_rev() == AM335X_ES2_1) {
diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index bffb3ad880..fe6a928ca2 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -15,7 +15,6 @@
 #include <mach/syslib.h>
 #include <mach/am33xx-mux.h>
 #include <mach/am33xx-generic.h>
-#include <mach/wdt.h>
 #include <debug_ll.h>
 
 #include "ram-timings.h"
@@ -136,15 +135,7 @@ static noinline void physom_board_init(void *fdt, int sdram, int module_family)
 	struct am335x_sdram_timings *timing = NULL;
 	u32 ramsize;
 
-	/*
-	 * WDT1 is already running when the bootloader gets control
-	 * Disable it to avoid "random" resets
-	 */
-	writel(WDT_DISABLE_CODE1, AM33XX_WDT_REG(WSPR));
-	while (readl(AM33XX_WDT_REG(WWPS)) != 0x0);
-
-	writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
-	while (readl(AM33XX_WDT_REG(WWPS)) != 0x0);
+	omap_watchdog_disable(IOMEM((AM33XX_WDT_BASE));
 
 	am33xx_pll_init(MPUPLL_M_600, DDRPLL_M_400);
 
diff --git a/arch/arm/boards/vscom-baltos/lowlevel.c b/arch/arm/boards/vscom-baltos/lowlevel.c
index 7da2f92efb..2fa8a0fdc3 100644
--- a/arch/arm/boards/vscom-baltos/lowlevel.c
+++ b/arch/arm/boards/vscom-baltos/lowlevel.c
@@ -16,7 +16,6 @@
 #include <mach/syslib.h>
 #include <mach/am33xx-mux.h>
 #include <mach/am33xx-generic.h>
-#include <mach/wdt.h>
 
 static const struct am33xx_ddr_data ddr3_data = {
 	.rd_slave_ratio0        = 0x38,
@@ -86,13 +85,7 @@ static noinline void baltos_sram_init(void)
 
 	fdt = __dtb_z_am335x_baltos_minimal_start;
 
-	/* WDT1 is already running when the bootloader gets control
-	 * Disable it to avoid "random" resets
-	 */
-	__raw_writel(WDT_DISABLE_CODE1, AM33XX_WDT_REG(WSPR));
-	while (__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
-	__raw_writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
-	while (__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
+	omap_watchdog_disable(IOMEM(AM33XX_WDT_BASE));
 
 	/* Setup the PLLs and the clocks for the peripherals */
 	am33xx_pll_init(MPUPLL_M_600, DDRPLL_M_400);
diff --git a/arch/arm/boards/wago-pfc-am35xx/lowlevel.c b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
index 63afd043a0..9018bedf22 100644
--- a/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
+++ b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
@@ -16,7 +16,6 @@
 #include <mach/sdrc.h>
 #include <mach/sys_info.h>
 #include <mach/syslib.h>
-#include <mach/wdt.h>
 #include <mach/omap3-mux.h>
 #include <mach/omap3-silicon.h>
 #include <mach/omap3-generic.h>
diff --git a/arch/arm/mach-omap/include/mach/generic.h b/arch/arm/mach-omap/include/mach/generic.h
index fa391c8d48..8b2b7a4f0c 100644
--- a/arch/arm/mach-omap/include/mach/generic.h
+++ b/arch/arm/mach-omap/include/mach/generic.h
@@ -79,6 +79,8 @@ static inline int omap_set_mmc_dev(const char *mmcdev)
 
 void __noreturn omap_start_barebox(void *barebox);
 
+void omap_watchdog_disable(const void __iomem *wdt);
+
 void omap_set_bootmmc_devname(const char *devname);
 const char *omap_get_bootmmc_devname(void);
 
diff --git a/arch/arm/mach-omap/include/mach/wdt.h b/arch/arm/mach-omap/include/mach/wdt.h
deleted file mode 100644
index 9a5288d386..0000000000
--- a/arch/arm/mach-omap/include/mach/wdt.h
+++ /dev/null
@@ -1,43 +0,0 @@
-/**
- * @file
- * @brief This file contains the Watchdog timer specific register definitions
- *
- * (C) Copyright 2008
- * Texas Instruments, <www.ti.com>
- * Nishanth Menon <x0nishan@ti.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#ifndef __ASM_ARCH_OMAP_WDT_H
-#define __ASM_ARCH_OMAP_WDT_H
-
-/** Watchdog Register defines */
-#define OMAP3_WDT_REG(REGNAME)	(OMAP3_MPU_WDTIMER_BASE + OMAP_WDT_##REGNAME)
-#define AM33XX_WDT_REG(REGNAME)	(AM33XX_WDT_BASE + OMAP_WDT_##REGNAME)
-
-#define OMAP_WDT_WIDR		(0x000)
-#define OMAP_WDT_SYSCONFIG	(0x010)
-#define OMAP_WDT_WD_SYSSTATUS	(0x014)
-#define OMAP_WDT_WISR		(0x018)
-#define OMAP_WDT_WIER		(0x01C)
-#define OMAP_WDT_WCLR		(0x024)
-#define OMAP_WDT_WCRR		(0x028)
-#define OMAP_WDT_WLDR		(0x02C)
-#define OMAP_WDT_WTGR		(0x030)
-#define OMAP_WDT_WWPS		(0x034)
-#define OMAP_WDT_WSPR		(0x048)
-
-/* Unlock Code for Watchdog timer to disable the same */
-#define WDT_DISABLE_CODE1	0xAAAA
-#define WDT_DISABLE_CODE2	0x5555
-
-#endif /* __ASM_ARCH_OMAP_WDT_H */
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 3f6a346277..69f2d51a62 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -40,7 +40,6 @@
 #include <mach/omap3-smx.h>
 #include <mach/clocks.h>
 #include <mach/omap3-clock.h>
-#include <mach/wdt.h>
 #include <mach/sys_info.h>
 #include <mach/syslib.h>
 #include <mach/omap3-generic.h>
@@ -379,19 +378,10 @@ static void secureworld_exit(void)
  */
 static void watchdog_init(void)
 {
-	int pending = 1;
-
 	sr32(OMAP3_CM_REG(FCLKEN_WKUP), 5, 1, 1);
 	sr32(OMAP3_CM_REG(ICLKEN_WKUP), 5, 1, 1);
-	wait_on_value((0x1 << 5), 0x20, OMAP3_CM_REG(IDLEST_WKUP), 5);
-
-	writel(WDT_DISABLE_CODE1, OMAP3_WDT_REG(WSPR));
-
-	do {
-		pending = readl(OMAP3_WDT_REG(WWPS));
-	} while (pending);
 
-	writel(WDT_DISABLE_CODE2, OMAP3_WDT_REG(WSPR));
+	omap_watchdog_disable(IOMEM(OMAP3_MPU_WDTIMER_BASE));
 }
 
 /**
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 406b686318..6d165b7f68 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -65,18 +65,6 @@ void omap4_set_warmboot_order(u32 *device_list)
 	writel(OMAP44XX_SAR_CH_START, OMAP44XX_SAR_CH_ADDRESS);
 }
 
-#define WATCHDOG_WSPR	0x48
-#define WATCHDOG_WWPS	0x34
-
-static void wait_for_command_complete(void)
-{
-	int pending = 1;
-
-	do {
-		pending = readl(OMAP44XX_WDT2_BASE + WATCHDOG_WWPS);
-	} while (pending);
-}
-
 /* EMIF */
 #define EMIF_MOD_ID_REV			0x0000
 #define EMIF_STATUS			0x0004
@@ -463,14 +451,8 @@ unsigned int omap4_revision(void)
  */
 static int watchdog_init(void)
 {
-	void __iomem *wd2_base = (void *)OMAP44XX_WDT2_BASE;
-
-	if (!cpu_is_omap4())
-		return 0;
-
-	writel(WD_UNLOCK1, wd2_base + WATCHDOG_WSPR);
-	wait_for_command_complete();
-	writel(WD_UNLOCK2, wd2_base + WATCHDOG_WSPR);
+	if (cpu_is_omap4())
+		omap_watchdog_disable(IOMEM(OMAP44XX_WDT2_BASE));
 
 	return 0;
 }
diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index a1c0aeb595..c0f8cea999 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -70,6 +70,24 @@ void __noreturn omap_start_barebox(void *barebox)
 	hang();
 }
 
+#define OMAP_WDT_WWPS		0x34
+#define OMAP_WDT_WSPR		0x48
+#define WDT_DISABLE_CODE1	0xaaaa
+#define WDT_DISABLE_CODE2	0x5555
+
+void omap_watchdog_disable(const void __iomem *wdt)
+{
+	/* WDT is already running when the bootloader gets control
+	 * Disable it to avoid "random" resets
+	 */
+	__raw_writel(WDT_DISABLE_CODE1, wdt + OMAP_WDT_WSPR);
+
+	do {
+	} while (__raw_readl(wdt + OMAP_WDT_WWPS));
+
+	__raw_writel(WDT_DISABLE_CODE2, wdt + WSPR);
+}
+
 #ifdef CONFIG_BOOTM
 static int do_bootm_omap_barebox(struct image_data *data)
 {
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

