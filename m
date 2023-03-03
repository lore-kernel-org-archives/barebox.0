Delivery-date: Fri, 03 Mar 2023 10:23:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1d6-007NTv-Ev
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:23:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1d5-0000m1-DV
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:23:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gf3OMBGwzlX7NR4qSSAI2Ezzxxjm6McvhVYuINxm0l4=; b=YYUnHSpvF9Jye/cKCMDsrbRx4r
	022afyljRh9DowEqp6Qg6x+vZ9oeuYXTSDH8J9IhYVJjh+3gm35BBk1Eg/bN5Hy6+2gAG1zwGI3G2
	oOEdowbIBC23FJXC1+71zmF28SJaGJ4sF28Um4f10fy0sN4cUvbZet4sSrveusdGfSX7pkfHMhmry
	pg7Fu5nzyZMFrjS5yd2qOndwYW6BgFa0l9jOjylr7IFCbHgm6UHEkmWUp6B61y/1P6GlOAdLj1oiS
	Gjsvr40MCc2zQNiFZHfWRHk0n0ssj/F3Rc4sk3Co6/5YLVZ8zY08AQ6/nrApRQN+mSpiqnHDm/g3O
	NLfk4Nbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bq-005eSG-EN; Fri, 03 Mar 2023 09:21:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1be-005eKH-Ga
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bd-00009g-5I; Fri, 03 Mar 2023 10:21:37 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bc-001WhO-AQ; Fri, 03 Mar 2023 10:21:36 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2gR-GI; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:00 +0100
Message-Id: <20230303092131.3063587-20-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012138_633987_57954EE2 
X-CRM114-Status: GOOD (  13.45  )
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
Subject: [PATCH 19/50] ARM: ep93xx: Move mach header files to include/mach/ep93xx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
longer possible as there won't be a single mach anymore.

Move all ep93xx specific header files to include/mach/ep93xx/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/edb93xx/edb93xx.c                               | 2 +-
 arch/arm/boards/edb93xx/flash_cfg.c                             | 2 +-
 arch/arm/boards/edb93xx/pll_cfg.h                               | 2 +-
 arch/arm/boards/edb93xx/sdram_cfg.h                             | 2 +-
 arch/arm/include/asm/barebox.lds.h                              | 2 +-
 arch/arm/include/asm/debug_ll.h                                 | 2 ++
 arch/arm/mach-ep93xx/clocksource.c                              | 2 +-
 arch/arm/mach-ep93xx/gpio.c                                     | 2 +-
 arch/arm/mach-ep93xx/led.c                                      | 2 +-
 arch/arm/mach-ep93xx/lowlevel_init.S                            | 2 +-
 drivers/net/ep93xx.c                                            | 2 +-
 .../include/mach => include/mach/ep93xx}/barebox.lds.h          | 0
 .../include/mach => include/mach/ep93xx}/ep93xx-regs.h          | 0
 13 files changed, 12 insertions(+), 10 deletions(-)
 rename {arch/arm/mach-ep93xx/include/mach => include/mach/ep93xx}/barebox.lds.h (100%)
 rename {arch/arm/mach-ep93xx/include/mach => include/mach/ep93xx}/ep93xx-regs.h (100%)

diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index 0112866c30..8f7b5ede12 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -10,7 +10,7 @@
 #include <io.h>
 #include <malloc.h>
 #include <generated/mach-types.h>
-#include <mach/ep93xx-regs.h>
+#include <mach/ep93xx/ep93xx-regs.h>
 #include <platform_data/eth-ep93xx.h>
 #include "edb93xx.h"
 
diff --git a/arch/arm/boards/edb93xx/flash_cfg.c b/arch/arm/boards/edb93xx/flash_cfg.c
index 8400db69de..2c471c7721 100644
--- a/arch/arm/boards/edb93xx/flash_cfg.c
+++ b/arch/arm/boards/edb93xx/flash_cfg.c
@@ -4,7 +4,7 @@
 /* Flash setup for Cirrus edb93xx boards */
 
 #include <common.h>
-#include <mach/ep93xx-regs.h>
+#include <mach/ep93xx/ep93xx-regs.h>
 #include <io.h>
 
 #define SMC_BCR6_VALUE	(2 << SMC_BCR_IDCY_SHIFT | 5 << SMC_BCR_WST1_SHIFT | \
diff --git a/arch/arm/boards/edb93xx/pll_cfg.h b/arch/arm/boards/edb93xx/pll_cfg.h
index b3258b5f7e..662c92337a 100644
--- a/arch/arm/boards/edb93xx/pll_cfg.h
+++ b/arch/arm/boards/edb93xx/pll_cfg.h
@@ -4,7 +4,7 @@
 /* PLL register values for Cirrus edb93xx boards */
 
 #include <config.h>
-#include <mach/ep93xx-regs.h>
+#include <mach/ep93xx/ep93xx-regs.h>
 
 #if defined(CONFIG_MACH_EDB9301)
 /*
diff --git a/arch/arm/boards/edb93xx/sdram_cfg.h b/arch/arm/boards/edb93xx/sdram_cfg.h
index e1f78443e4..ddb9e442ed 100644
--- a/arch/arm/boards/edb93xx/sdram_cfg.h
+++ b/arch/arm/boards/edb93xx/sdram_cfg.h
@@ -3,7 +3,7 @@
 // SPDX-FileCopyrightText: 2006 Dominic Rath <Dominic.Rath@gmx.de>
 
 #include <config.h>
-#include <mach/ep93xx-regs.h>
+#include <mach/ep93xx/ep93xx-regs.h>
 
 #define SDRAM_BASE_ADDR		CONFIG_EP93XX_SDRAM_BANK0_BASE
 
diff --git a/arch/arm/include/asm/barebox.lds.h b/arch/arm/include/asm/barebox.lds.h
index b9c824c4db..a5c74381d8 100644
--- a/arch/arm/include/asm/barebox.lds.h
+++ b/arch/arm/include/asm/barebox.lds.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
 #if defined CONFIG_ARCH_EP93XX
-#include <mach/barebox.lds.h>
+#include <mach/ep93xx/barebox.lds.h>
 #endif
 
 #ifdef CONFIG_CPU_32
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index e65c008de9..7e7241e908 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -42,6 +42,8 @@
 #include <mach/nomadik/debug_ll.h>
 #elif defined CONFIG_ARCH_MXS
 #include <mach/mxs/debug_ll.h>
+#elif defined CONFIG_ARCH_EP93XX
+#include <mach/ep93xx/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-ep93xx/clocksource.c b/arch/arm/mach-ep93xx/clocksource.c
index e2a3a39780..53aae437b3 100644
--- a/arch/arm/mach-ep93xx/clocksource.c
+++ b/arch/arm/mach-ep93xx/clocksource.c
@@ -18,7 +18,7 @@
 #include <clock.h>
 #include <io.h>
 #include <restart.h>
-#include <mach/ep93xx-regs.h>
+#include <mach/ep93xx/ep93xx-regs.h>
 
 #define TIMER_CLKSEL		(1 << 3)
 #define TIMER_MODE		(1 << 6)
diff --git a/arch/arm/mach-ep93xx/gpio.c b/arch/arm/mach-ep93xx/gpio.c
index 20477f83e6..f30798fd4b 100644
--- a/arch/arm/mach-ep93xx/gpio.c
+++ b/arch/arm/mach-ep93xx/gpio.c
@@ -19,7 +19,7 @@
 #include <init.h>
 #include <io.h>
 #include <gpio.h>
-#include <mach/ep93xx-regs.h>
+#include <mach/ep93xx/ep93xx-regs.h>
 
 #define EP93XX_GPIO_NUM_PORTS	8
 #define EP93XX_GPIO_NUM_GPIOS	(EP93XX_GPIO_NUM_PORTS * 8)
diff --git a/arch/arm/mach-ep93xx/led.c b/arch/arm/mach-ep93xx/led.c
index cbd035b64c..b2909fc070 100644
--- a/arch/arm/mach-ep93xx/led.c
+++ b/arch/arm/mach-ep93xx/led.c
@@ -15,7 +15,7 @@
 
 #include <common.h>
 #include <io.h>
-#include <mach/ep93xx-regs.h>
+#include <mach/ep93xx/ep93xx-regs.h>
 
 #include "led.h"
 
diff --git a/arch/arm/mach-ep93xx/lowlevel_init.S b/arch/arm/mach-ep93xx/lowlevel_init.S
index 8b0ce3792a..5cc24a1cc0 100644
--- a/arch/arm/mach-ep93xx/lowlevel_init.S
+++ b/arch/arm/mach-ep93xx/lowlevel_init.S
@@ -18,7 +18,7 @@
  */
 
 #include <linux/sizes.h>
-#include <mach/ep93xx-regs.h>
+#include <mach/ep93xx/ep93xx-regs.h>
 #include <asm/barebox-arm-head.h>
 
 .globl barebox_arm_reset_vector
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index ee650cdeea..77f8aa63db 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -21,7 +21,7 @@
 #include <malloc.h>
 #include <io.h>
 #include <linux/types.h>
-#include <mach/ep93xx-regs.h>
+#include <mach/ep93xx/ep93xx-regs.h>
 #include <linux/phy.h>
 #include <platform_data/eth-ep93xx.h>
 #include "ep93xx.h"
diff --git a/arch/arm/mach-ep93xx/include/mach/barebox.lds.h b/include/mach/ep93xx/barebox.lds.h
similarity index 100%
rename from arch/arm/mach-ep93xx/include/mach/barebox.lds.h
rename to include/mach/ep93xx/barebox.lds.h
diff --git a/arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h b/include/mach/ep93xx/ep93xx-regs.h
similarity index 100%
rename from arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h
rename to include/mach/ep93xx/ep93xx-regs.h
-- 
2.30.2



