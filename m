Delivery-date: Fri, 03 Mar 2023 10:29:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1jW-007Nxk-GX
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:29:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1jV-0003zd-2B
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:29:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tu/BY49MOEwd7bpWumBWq99jUkISCbd2y8GLugvK8rI=; b=yyP+vw7QyY6XI7MriNB1CpNuk8
	neiK+5d2yIIB+An42NPHbFXTEaUJpmRr2O9t8qG1wFyOyM/sRqFonixfls7cntxXth8WJj+xFZehu
	XhWMcF7/s9lspAy8Abg0ip5ocu9jpah6odx79Q9xJAoEji/y/SCOB+2TuLkwaVF73uz5IeHa8y9Iq
	hwJvqzKqwvZ1q3Pummf+D8keGlCItb3WxC8etyhCiIkb955oTGj976g8ePpQ6HNSa8MlDK+A9TSWz
	9mbuKXzn75OmCAOncnB4tMbBZQNG9iMXNDMNt2CDnTIhhBkmdQhuuT4GTfJK7SOPNHJhULv3p+IJq
	sscGVGMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1i8-005j7u-Ba; Fri, 03 Mar 2023 09:28:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bx-005eYn-Hp
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:21:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Tu/BY49MOEwd7bpWumBWq99jUkISCbd2y8GLugvK8rI=; b=UoUutyLGKRAULWpdArntPgx7H6
	znTfYO9w0uXteMJeJm2BRam2/uRXpsk4s5vXrVWtWPokQDutbLi9FW9H3VYvYWf3fsHrZm4zEsoIV
	D2bA4YiH0VTtozHr9MicyGZnmzkoKZqM/8TEAcJEgczy6NeOisSYaJS/wj1idEa2WkSutG9FEcKhD
	jikPjZdVVx1VpvTvXgzkcYzPR56CeJR3CydhIscG1JEdYZf9jGmcuJix4zo1rScvw/K5rmEspr+jW
	IN83nwn8mcbRGm5UkIi95nBz2MghJ0SJKBx6RIEBN04BoYlIpFcEXNrV5ULUI624HZ6OXldx76FEW
	lb7/t88g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY1bn-00FdL9-01
	for barebox@lists.infradead.org;
	Fri, 03 Mar 2023 09:21:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bi-0000Fo-Ps; Fri, 03 Mar 2023 10:21:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bi-001WjB-1l; Fri, 03 Mar 2023 10:21:42 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2fl-6A; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:20:53 +0100
Message-Id: <20230303092131.3063587-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092150_767189_B33AF1AE 
X-CRM114-Status: GOOD (  14.35  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/50] ARM: tegra: Move mach header files to include/mach/tegra
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
longer possible as there won't be a single mach anymore.

Move all tegra specific header files to include/mach/tegra/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nvidia-beaver/board.c                |  2 +-
 arch/arm/boards/nvidia-beaver/entry.c                |  4 ++--
 arch/arm/boards/nvidia-jetson-tk1/board.c            |  2 +-
 arch/arm/boards/nvidia-jetson-tk1/entry.c            |  4 ++--
 arch/arm/boards/toradex-colibri-t20/entry.c          |  2 +-
 arch/arm/boards/toshiba-ac100/board.c                |  2 +-
 arch/arm/boards/toshiba-ac100/entry.c                |  2 +-
 arch/arm/include/asm/debug_ll.h                      |  2 ++
 arch/arm/mach-tegra/tegra-bbu.c                      |  2 +-
 arch/arm/mach-tegra/tegra20-pmc.c                    |  6 +++---
 arch/arm/mach-tegra/tegra20-timer.c                  |  2 +-
 arch/arm/mach-tegra/tegra20.c                        |  6 +++---
 arch/arm/mach-tegra/tegra_avp_init.c                 | 12 ++++++------
 arch/arm/mach-tegra/tegra_maincomplex_init.c         |  6 +++---
 drivers/clk/tegra/clk-pll.c                          |  2 +-
 drivers/clk/tegra/clk-tegra124.c                     |  6 +++---
 drivers/clk/tegra/clk-tegra20.c                      |  4 ++--
 drivers/clk/tegra/clk-tegra30.c                      |  6 +++---
 drivers/clk/tegra/clk.c                              |  2 +-
 drivers/pci/pci-tegra.c                              |  2 +-
 .../include/mach => include/mach/tegra}/debug_ll.h   |  2 +-
 .../include/mach => include/mach/tegra}/iomap.h      |  0
 .../mach => include/mach/tegra}/lowlevel-dvc.h       |  4 ++--
 .../include/mach => include/mach/tegra}/lowlevel.h   |  2 +-
 .../include/mach => include/mach/tegra}/tegra-bbu.h  |  0
 .../mach => include/mach/tegra}/tegra-powergate.h    |  0
 .../mach => include/mach/tegra}/tegra114-sysctr.h    |  0
 .../mach => include/mach/tegra}/tegra124-car.h       |  0
 .../mach => include/mach/tegra}/tegra20-car.h        |  0
 .../mach => include/mach/tegra}/tegra20-pmc.h        |  0
 .../mach => include/mach/tegra}/tegra30-car.h        |  0
 .../mach => include/mach/tegra}/tegra30-flow.h       |  0
 32 files changed, 43 insertions(+), 41 deletions(-)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/debug_ll.h (97%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/iomap.h (100%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/lowlevel-dvc.h (98%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/lowlevel.h (99%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/tegra-bbu.h (100%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/tegra-powergate.h (100%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/tegra114-sysctr.h (100%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/tegra124-car.h (100%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/tegra20-car.h (100%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/tegra20-pmc.h (100%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/tegra30-car.h (100%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/tegra30-flow.h (100%)

diff --git a/arch/arm/boards/nvidia-beaver/board.c b/arch/arm/boards/nvidia-beaver/board.c
index 0ef37780b4..2537e75337 100644
--- a/arch/arm/boards/nvidia-beaver/board.c
+++ b/arch/arm/boards/nvidia-beaver/board.c
@@ -6,7 +6,7 @@
 #include <gpio.h>
 #include <i2c/i2c.h>
 #include <init.h>
-#include <mach/tegra-bbu.h>
+#include <mach/tegra/tegra-bbu.h>
 
 static int nvidia_beaver_fs_init(void)
 {
diff --git a/arch/arm/boards/nvidia-beaver/entry.c b/arch/arm/boards/nvidia-beaver/entry.c
index a89d419797..c79057cd9d 100644
--- a/arch/arm/boards/nvidia-beaver/entry.c
+++ b/arch/arm/boards/nvidia-beaver/entry.c
@@ -2,8 +2,8 @@
 // SPDX-FileCopyrightText: 2014 Lucas Stach <l.stach@pengutronix.de>
 
 #include <common.h>
-#include <mach/lowlevel.h>
-#include <mach/lowlevel-dvc.h>
+#include <mach/tegra/lowlevel.h>
+#include <mach/tegra/lowlevel-dvc.h>
 
 extern char __dtb_tegra30_beaver_start[];
 
diff --git a/arch/arm/boards/nvidia-jetson-tk1/board.c b/arch/arm/boards/nvidia-jetson-tk1/board.c
index fca3038170..6f72466d76 100644
--- a/arch/arm/boards/nvidia-jetson-tk1/board.c
+++ b/arch/arm/boards/nvidia-jetson-tk1/board.c
@@ -6,7 +6,7 @@
 #include <gpio.h>
 #include <i2c/i2c.h>
 #include <init.h>
-#include <mach/tegra-bbu.h>
+#include <mach/tegra/tegra-bbu.h>
 
 #define AS3722_SD_VOLTAGE(n)	(0x00 + (n))
 #define AS3722_GPIO_CONTROL(n)	(0x08 + (n))
diff --git a/arch/arm/boards/nvidia-jetson-tk1/entry.c b/arch/arm/boards/nvidia-jetson-tk1/entry.c
index 22b6c743ee..db9b1d9ebf 100644
--- a/arch/arm/boards/nvidia-jetson-tk1/entry.c
+++ b/arch/arm/boards/nvidia-jetson-tk1/entry.c
@@ -2,8 +2,8 @@
 // SPDX-FileCopyrightText: 2014 Lucas Stach <l.stach@pengutronix.de>
 
 #include <common.h>
-#include <mach/lowlevel.h>
-#include <mach/lowlevel-dvc.h>
+#include <mach/tegra/lowlevel.h>
+#include <mach/tegra/lowlevel-dvc.h>
 
 extern char __dtb_tegra124_jetson_tk1_start[];
 
diff --git a/arch/arm/boards/toradex-colibri-t20/entry.c b/arch/arm/boards/toradex-colibri-t20/entry.c
index 955052f03f..af55689402 100644
--- a/arch/arm/boards/toradex-colibri-t20/entry.c
+++ b/arch/arm/boards/toradex-colibri-t20/entry.c
@@ -2,7 +2,7 @@
 // SPDX-FileCopyrightText: 2013 Lucas Stach <l.stach@pengutronix.de>
 
 #include <common.h>
-#include <mach/lowlevel.h>
+#include <mach/tegra/lowlevel.h>
 
 extern char __dtb_tegra20_colibri_iris_start[];
 
diff --git a/arch/arm/boards/toshiba-ac100/board.c b/arch/arm/boards/toshiba-ac100/board.c
index 01aaf47034..0248bf1cc5 100644
--- a/arch/arm/boards/toshiba-ac100/board.c
+++ b/arch/arm/boards/toshiba-ac100/board.c
@@ -6,7 +6,7 @@
 #include <common.h>
 #include <init.h>
 #include <usb/ehci.h>
-#include <mach/iomap.h>
+#include <mach/tegra/iomap.h>
 
 static struct ehci_platform_data ehci_pdata = {
 	.flags = EHCI_HAS_TT,
diff --git a/arch/arm/boards/toshiba-ac100/entry.c b/arch/arm/boards/toshiba-ac100/entry.c
index 918ca4b9d8..1cb5b1c0d0 100644
--- a/arch/arm/boards/toshiba-ac100/entry.c
+++ b/arch/arm/boards/toshiba-ac100/entry.c
@@ -2,7 +2,7 @@
 // SPDX-FileCopyrightText: 2013 Lucas Stach <l.stach@pengutronix.de>
 
 #include <common.h>
-#include <mach/lowlevel.h>
+#include <mach/tegra/lowlevel.h>
 
 extern char __dtb_tegra20_paz00_start[];
 
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 4ba0d932f6..b3bd8530de 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -28,6 +28,8 @@
 #include <mach/versatile/debug_ll.h>
 #elif defined CONFIG_ARCH_LAYERSCAPE
 #include <mach/layerscape/debug_ll.h>
+#elif defined CONFIG_ARCH_TEGRA
+#include <mach/tegra/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-tegra/tegra-bbu.c b/arch/arm/mach-tegra/tegra-bbu.c
index 089e6c736a..0a59da04db 100644
--- a/arch/arm/mach-tegra/tegra-bbu.c
+++ b/arch/arm/mach-tegra/tegra-bbu.c
@@ -17,7 +17,7 @@
 #include <common.h>
 #include <fcntl.h>
 #include <fs.h>
-#include <mach/tegra-bbu.h>
+#include <mach/tegra/tegra-bbu.h>
 #include <malloc.h>
 
 static int tegra_bbu_emmc_handler(struct bbu_handler *handler,
diff --git a/arch/arm/mach-tegra/tegra20-pmc.c b/arch/arm/mach-tegra/tegra20-pmc.c
index 6efff56746..9965d41383 100644
--- a/arch/arm/mach-tegra/tegra20-pmc.c
+++ b/arch/arm/mach-tegra/tegra20-pmc.c
@@ -27,11 +27,11 @@
 #include <linux/err.h>
 #include <linux/clk.h>
 #include <linux/reset.h>
-#include <mach/lowlevel.h>
-#include <mach/tegra-powergate.h>
+#include <mach/tegra/lowlevel.h>
+#include <mach/tegra/tegra-powergate.h>
 #include <reset_source.h>
 
-#include <mach/tegra20-pmc.h>
+#include <mach/tegra/tegra20-pmc.h>
 
 static void __iomem *pmc_base;
 static int tegra_num_powerdomains;
diff --git a/arch/arm/mach-tegra/tegra20-timer.c b/arch/arm/mach-tegra/tegra20-timer.c
index 0dc6fc2d11..3dbb2a8fc4 100644
--- a/arch/arm/mach-tegra/tegra20-timer.c
+++ b/arch/arm/mach-tegra/tegra20-timer.c
@@ -25,7 +25,7 @@
 #include <io.h>
 #include <linux/clk.h>
 #include <linux/err.h>
-#include <mach/lowlevel.h>
+#include <mach/tegra/lowlevel.h>
 
 /* register definitions */
 #define TIMERUS_CNTR_1US	0x10
diff --git a/arch/arm/mach-tegra/tegra20.c b/arch/arm/mach-tegra/tegra20.c
index 10c149a955..d27f775cf9 100644
--- a/arch/arm/mach-tegra/tegra20.c
+++ b/arch/arm/mach-tegra/tegra20.c
@@ -17,9 +17,9 @@
 #include <common.h>
 #include <init.h>
 #include <asm/memory.h>
-#include <mach/iomap.h>
-#include <mach/lowlevel.h>
-#include <mach/tegra114-sysctr.h>
+#include <mach/tegra/iomap.h>
+#include <mach/tegra/lowlevel.h>
+#include <mach/tegra/tegra114-sysctr.h>
 
 static int tegra20_mem_init(void)
 {
diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index 8a11e06c53..021bcb6d95 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -20,12 +20,12 @@
 #include <common.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/lowlevel.h>
-#include <mach/tegra20-car.h>
-#include <mach/tegra20-pmc.h>
-#include <mach/tegra30-car.h>
-#include <mach/tegra30-flow.h>
-#include <mach/tegra124-car.h>
+#include <mach/tegra/lowlevel.h>
+#include <mach/tegra/tegra20-car.h>
+#include <mach/tegra/tegra20-pmc.h>
+#include <mach/tegra/tegra30-car.h>
+#include <mach/tegra/tegra30-flow.h>
+#include <mach/tegra/tegra124-car.h>
 
 /* instruct the PMIC to enable the CPU power rail */
 static void enable_maincomplex_powerrail(void)
diff --git a/arch/arm/mach-tegra/tegra_maincomplex_init.c b/arch/arm/mach-tegra/tegra_maincomplex_init.c
index 27bb3363a3..2a2272a99f 100644
--- a/arch/arm/mach-tegra/tegra_maincomplex_init.c
+++ b/arch/arm/mach-tegra/tegra_maincomplex_init.c
@@ -19,9 +19,9 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <asm/errata.h>
-#include <mach/lowlevel.h>
-#include <mach/tegra20-pmc.h>
-#include <mach/tegra20-car.h>
+#include <mach/tegra/lowlevel.h>
+#include <mach/tegra/tegra20-pmc.h>
+#include <mach/tegra/tegra20-car.h>
 
 void tegra_maincomplex_entry(char *fdt)
 {
diff --git a/drivers/clk/tegra/clk-pll.c b/drivers/clk/tegra/clk-pll.c
index 0d364f318d..32f57cc2e4 100644
--- a/drivers/clk/tegra/clk-pll.c
+++ b/drivers/clk/tegra/clk-pll.c
@@ -13,7 +13,7 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 
-#include <mach/iomap.h>
+#include <mach/tegra/iomap.h>
 
 #include "clk.h"
 
diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk-tegra124.c
index 18cfac33e9..bad8110829 100644
--- a/drivers/clk/tegra/clk-tegra124.c
+++ b/drivers/clk/tegra/clk-tegra124.c
@@ -12,9 +12,9 @@
 #include <linux/clk.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/lowlevel.h>
-#include <mach/tegra20-car.h>
-#include <mach/tegra30-car.h>
+#include <mach/tegra/lowlevel.h>
+#include <mach/tegra/tegra20-car.h>
+#include <mach/tegra/tegra30-car.h>
 
 #include "clk.h"
 
diff --git a/drivers/clk/tegra/clk-tegra20.c b/drivers/clk/tegra/clk-tegra20.c
index 2ecfa33561..319c7bc7c1 100644
--- a/drivers/clk/tegra/clk-tegra20.c
+++ b/drivers/clk/tegra/clk-tegra20.c
@@ -12,8 +12,8 @@
 #include <linux/clk.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/lowlevel.h>
-#include <mach/tegra20-car.h>
+#include <mach/tegra/lowlevel.h>
+#include <mach/tegra/tegra20-car.h>
 
 #include "clk.h"
 
diff --git a/drivers/clk/tegra/clk-tegra30.c b/drivers/clk/tegra/clk-tegra30.c
index b602832bc6..0cecc19b66 100644
--- a/drivers/clk/tegra/clk-tegra30.c
+++ b/drivers/clk/tegra/clk-tegra30.c
@@ -12,9 +12,9 @@
 #include <linux/clk.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/lowlevel.h>
-#include <mach/tegra20-car.h>
-#include <mach/tegra30-car.h>
+#include <mach/tegra/lowlevel.h>
+#include <mach/tegra/tegra20-car.h>
+#include <mach/tegra/tegra30-car.h>
 
 #include "clk.h"
 
diff --git a/drivers/clk/tegra/clk.c b/drivers/clk/tegra/clk.c
index 26ff9f2580..ad384d8d4d 100644
--- a/drivers/clk/tegra/clk.c
+++ b/drivers/clk/tegra/clk.c
@@ -8,7 +8,7 @@
 #include <common.h>
 #include <linux/clk.h>
 #include <linux/reset-controller.h>
-#include <mach/lowlevel.h>
+#include <mach/tegra/lowlevel.h>
 
 #include "clk.h"
 
diff --git a/drivers/pci/pci-tegra.c b/drivers/pci/pci-tegra.c
index 06a5bd9d82..afff5f6138 100644
--- a/drivers/pci/pci-tegra.c
+++ b/drivers/pci/pci-tegra.c
@@ -22,7 +22,7 @@
 #include <linux/phy/phy.h>
 #include <linux/reset.h>
 #include <linux/sizes.h>
-#include <mach/tegra-powergate.h>
+#include <mach/tegra/tegra-powergate.h>
 #include <regulator.h>
 
 /* register definitions */
diff --git a/arch/arm/mach-tegra/include/mach/debug_ll.h b/include/mach/tegra/debug_ll.h
similarity index 97%
rename from arch/arm/mach-tegra/include/mach/debug_ll.h
rename to include/mach/tegra/debug_ll.h
index 86218df63e..ff0439e5f3 100644
--- a/arch/arm/mach-tegra/include/mach/debug_ll.h
+++ b/include/mach/tegra/debug_ll.h
@@ -21,7 +21,7 @@
 #define __INCLUDE_ARCH_DEBUG_LL_H__
 
 #include <asm/io.h>
-#include <mach/iomap.h>
+#include <mach/tegra/iomap.h>
 
 #define DEBUG_LL_UART_ADDR	TEGRA_UARTA_BASE
 #define DEBUG_LL_UART_RSHFT	2
diff --git a/arch/arm/mach-tegra/include/mach/iomap.h b/include/mach/tegra/iomap.h
similarity index 100%
rename from arch/arm/mach-tegra/include/mach/iomap.h
rename to include/mach/tegra/iomap.h
diff --git a/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h b/include/mach/tegra/lowlevel-dvc.h
similarity index 98%
rename from arch/arm/mach-tegra/include/mach/lowlevel-dvc.h
rename to include/mach/tegra/lowlevel-dvc.h
index 1deae4e565..ec2f0c3112 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h
+++ b/include/mach/tegra/lowlevel-dvc.h
@@ -15,8 +15,8 @@
  */
 
 #include <linux/compiler.h>
-#include "mach/tegra20-car.h"
-#include "mach/lowlevel.h"
+#include <mach/tegra/tegra20-car.h>
+#include <mach/tegra/lowlevel.h>
 
 static __always_inline
 void tegra_dvc_init(void)
diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/include/mach/tegra/lowlevel.h
similarity index 99%
rename from arch/arm/mach-tegra/include/mach/lowlevel.h
rename to include/mach/tegra/lowlevel.h
index 31f99eb175..26228e48a8 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/include/mach/tegra/lowlevel.h
@@ -28,7 +28,7 @@
 #include <linux/compiler.h>
 #include <linux/sizes.h>
 #include <io.h>
-#include <mach/iomap.h>
+#include <mach/tegra/iomap.h>
 
 /* Bootinfotable */
 
diff --git a/arch/arm/mach-tegra/include/mach/tegra-bbu.h b/include/mach/tegra/tegra-bbu.h
similarity index 100%
rename from arch/arm/mach-tegra/include/mach/tegra-bbu.h
rename to include/mach/tegra/tegra-bbu.h
diff --git a/arch/arm/mach-tegra/include/mach/tegra-powergate.h b/include/mach/tegra/tegra-powergate.h
similarity index 100%
rename from arch/arm/mach-tegra/include/mach/tegra-powergate.h
rename to include/mach/tegra/tegra-powergate.h
diff --git a/arch/arm/mach-tegra/include/mach/tegra114-sysctr.h b/include/mach/tegra/tegra114-sysctr.h
similarity index 100%
rename from arch/arm/mach-tegra/include/mach/tegra114-sysctr.h
rename to include/mach/tegra/tegra114-sysctr.h
diff --git a/arch/arm/mach-tegra/include/mach/tegra124-car.h b/include/mach/tegra/tegra124-car.h
similarity index 100%
rename from arch/arm/mach-tegra/include/mach/tegra124-car.h
rename to include/mach/tegra/tegra124-car.h
diff --git a/arch/arm/mach-tegra/include/mach/tegra20-car.h b/include/mach/tegra/tegra20-car.h
similarity index 100%
rename from arch/arm/mach-tegra/include/mach/tegra20-car.h
rename to include/mach/tegra/tegra20-car.h
diff --git a/arch/arm/mach-tegra/include/mach/tegra20-pmc.h b/include/mach/tegra/tegra20-pmc.h
similarity index 100%
rename from arch/arm/mach-tegra/include/mach/tegra20-pmc.h
rename to include/mach/tegra/tegra20-pmc.h
diff --git a/arch/arm/mach-tegra/include/mach/tegra30-car.h b/include/mach/tegra/tegra30-car.h
similarity index 100%
rename from arch/arm/mach-tegra/include/mach/tegra30-car.h
rename to include/mach/tegra/tegra30-car.h
diff --git a/arch/arm/mach-tegra/include/mach/tegra30-flow.h b/include/mach/tegra/tegra30-flow.h
similarity index 100%
rename from arch/arm/mach-tegra/include/mach/tegra30-flow.h
rename to include/mach/tegra/tegra30-flow.h
-- 
2.30.2



