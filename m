Delivery-date: Fri, 03 Mar 2023 10:29:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1ip-007Nua-Sm
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:29:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1io-0003jL-FX
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:29:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j09kiHwjfZj1v+Y2TENKOBtVj4UF1VUuHE2D999/8dQ=; b=W359GrU+8B2KFxKmPFGdpqSenv
	3VbpWgBWjugkQH4/I+CLXnBbxe/YbDxHNXemdZRdpVfCF1aMhOMFUys4AhbVYLe79l3OUxTkzakdd
	F1+NX+tx/Un2wZZ3Ttes93sEyzYCJV45ob3sSGmAMdl92enb9LfNO85+ZlqdSjOunz+NQpnKdQVWX
	JGSltiRrXSR0x8GtZ5nLzWSr/SVDd9BfVVOOUaD1ghDAwgmus94u7Q0a7rBbIva1glLX+sDZ3Uc3u
	1xT71/MlEQlfvJ5vJwRQ5bWzFjV+GAmjVwYMh7R2rGPGc33lUn7lrwkoS2kN6vT8JPcHCLxKJeevy
	e8T+MRFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1ha-005ikr-Of; Fri, 03 Mar 2023 09:27:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bv-005eXS-M1
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:21:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=j09kiHwjfZj1v+Y2TENKOBtVj4UF1VUuHE2D999/8dQ=; b=PhzkaK3avnupZFSrs+Pgs94eFP
	05SyvUsdTRwCPDVFo6liSs0C9D6Ra5G069PLdX9lR7juLK4xQbflI4s1QDI9BJpnxEbsRMllmCEWd
	5GS2OtnNQDdIoqtOab2enEWt+X/M7Y98UhxhDgNWlf83JASZiOE4vMrxJwikPmz9Cm7SNZ4SDwygn
	C9YQGrSclPHAlleqmT8SQ6LjWsSh3PGO+CCGO0vy4NdrY0SoNjWFogM2MrVL3OlvgdKK9k6SjsBA0
	lNUZvc5DEJWQKE+rNGXvcYPTJKVGy5oz43DLVyZT2VgS4K49ZQHghp0zA0pa1gsbZfThDNbRCE+Dq
	TU/UbLDw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY1bn-00FdKt-0k
	for barebox@lists.infradead.org;
	Fri, 03 Mar 2023 09:21:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bf-0000CE-Kn; Fri, 03 Mar 2023 10:21:39 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1be-001Wi8-NX; Fri, 03 Mar 2023 10:21:38 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2dy-1Y; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:20:47 +0100
Message-Id: <20230303092131.3063587-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092150_202429_87C0399C 
X-CRM114-Status: GOOD (  12.75  )
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
Subject: [PATCH 06/50] ARM: bcm283x: Move mach header files to include/mach/bcm283x
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
longer possible as there won't be a single mach anymore.

Move all bcm283x specific header files to include/mach/bcm283x/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/lowlevel.c                     | 4 ++--
 arch/arm/boards/raspberry-pi/mbox-helpers.c                 | 2 +-
 arch/arm/boards/raspberry-pi/rpi-common.c                   | 6 +++---
 arch/arm/include/asm/debug_ll.h                             | 2 ++
 arch/arm/mach-bcm283x/core.c                                | 2 +-
 arch/arm/mach-bcm283x/mbox.c                                | 4 ++--
 drivers/clk/clk-rpi.c                                       | 6 +++---
 drivers/gpio/gpio-raspberrypi-exp.c                         | 2 +-
 drivers/regulator/bcm2835.c                                 | 2 +-
 drivers/video/bcm2835.c                                     | 2 +-
 .../include/mach => include/mach/bcm283x}/core.h            | 2 +-
 .../include/mach => include/mach/bcm283x}/debug_ll.h        | 2 +-
 .../include/mach => include/mach/bcm283x}/mbox.h            | 2 +-
 .../include/mach => include/mach/bcm283x}/platform.h        | 0
 14 files changed, 20 insertions(+), 18 deletions(-)
 rename {arch/arm/mach-bcm283x/include/mach => include/mach/bcm283x}/core.h (93%)
 rename {arch/arm/mach-bcm283x/include/mach => include/mach/bcm283x}/debug_ll.h (98%)
 rename {arch/arm/mach-bcm283x/include/mach => include/mach/bcm283x}/mbox.h (99%)
 rename {arch/arm/mach-bcm283x/include/mach => include/mach/bcm283x}/platform.h (100%)

diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index 5ead895767..449dfa4575 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -5,9 +5,9 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/unaligned.h>
-#include <mach/platform.h>
+#include <mach/bcm283x/platform.h>
 #include <debug_ll.h>
-#include <mach/mbox.h>
+#include <mach/bcm283x/mbox.h>
 #include <of.h>
 
 #include "lowlevel.h"
diff --git a/arch/arm/boards/raspberry-pi/mbox-helpers.c b/arch/arm/boards/raspberry-pi/mbox-helpers.c
index 9f252c68ff..3a76ac2b01 100644
--- a/arch/arm/boards/raspberry-pi/mbox-helpers.c
+++ b/arch/arm/boards/raspberry-pi/mbox-helpers.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 // SPDX-FileCopyrightText: 2009 Carlo Caione <carlo@carlocaione.org>
 
-#include <mach/mbox.h>
+#include <mach/bcm283x/mbox.h>
 #include "lowlevel.h"
 
 struct msg_get_arm_mem {
diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 13df6a140c..367033c02a 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -25,9 +25,9 @@
 #include <asm/system_info.h>
 #include <reset_source.h>
 
-#include <mach/core.h>
-#include <mach/mbox.h>
-#include <mach/platform.h>
+#include <mach/bcm283x/core.h>
+#include <mach/bcm283x/mbox.h>
+#include <mach/bcm283x/platform.h>
 
 #include <soc/bcm283x/wdt.h>
 
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 42160295e3..77a959c93b 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -16,6 +16,8 @@
 #include <mach/mvebu/debug_ll.h>
 #elif defined CONFIG_ARCH_DAVINCI
 #include <mach/davinci/debug_ll.h>
+#elif defined CONFIG_ARCH_BCM283X
+#include <mach/bcm283x/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-bcm283x/core.c b/arch/arm/mach-bcm283x/core.c
index 40882fb6d6..1091ad0b56 100644
--- a/arch/arm/mach-bcm283x/core.c
+++ b/arch/arm/mach-bcm283x/core.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <linux/types.h>
-#include <mach/core.h>
+#include <mach/bcm283x/core.h>
 #include <asm/system_info.h>
 
 void __iomem *bcm2835_get_mmio_base_by_cpuid(void)
diff --git a/arch/arm/mach-bcm283x/mbox.c b/arch/arm/mach-bcm283x/mbox.c
index 4959a1a652..3abb81cc9b 100644
--- a/arch/arm/mach-bcm283x/mbox.c
+++ b/arch/arm/mach-bcm283x/mbox.c
@@ -16,8 +16,8 @@
 #include <of_address.h>
 #include <pbl.h>
 
-#include <mach/mbox.h>
-#include <mach/core.h>
+#include <mach/bcm283x/mbox.h>
+#include <mach/bcm283x/core.h>
 
 #define TIMEOUT (MSECOND * 1000)
 
diff --git a/drivers/clk/clk-rpi.c b/drivers/clk/clk-rpi.c
index 49d69709d2..14359c5eb1 100644
--- a/drivers/clk/clk-rpi.c
+++ b/drivers/clk/clk-rpi.c
@@ -8,9 +8,9 @@
 #include <linux/clkdev.h>
 #include <linux/err.h>
 
-#include <mach/core.h>
-#include <mach/mbox.h>
-#include <mach/platform.h>
+#include <mach/bcm283x/core.h>
+#include <mach/bcm283x/mbox.h>
+#include <mach/bcm283x/platform.h>
 #include <dt-bindings/clock/bcm2835.h>
 
 #define BCM2711_CLOCK_END			(BCM2711_CLOCK_EMMC2 + 1)
diff --git a/drivers/gpio/gpio-raspberrypi-exp.c b/drivers/gpio/gpio-raspberrypi-exp.c
index c6344996db..3eba43a918 100644
--- a/drivers/gpio/gpio-raspberrypi-exp.c
+++ b/drivers/gpio/gpio-raspberrypi-exp.c
@@ -11,7 +11,7 @@
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
-#include <mach/mbox.h>
+#include <mach/bcm283x/mbox.h>
 
 #define NUM_GPIO 8
 
diff --git a/drivers/regulator/bcm2835.c b/drivers/regulator/bcm2835.c
index 61dc7cda1f..34e0429dfd 100644
--- a/drivers/regulator/bcm2835.c
+++ b/drivers/regulator/bcm2835.c
@@ -9,7 +9,7 @@
 #include <init.h>
 #include <regulator.h>
 
-#include <mach/mbox.h>
+#include <mach/bcm283x/mbox.h>
 
 #define REG_DEV(_id, _name)		\
 	{				\
diff --git a/drivers/video/bcm2835.c b/drivers/video/bcm2835.c
index 43593785f3..070d1b4902 100644
--- a/drivers/video/bcm2835.c
+++ b/drivers/video/bcm2835.c
@@ -15,7 +15,7 @@
 #include <xfuncs.h>
 
 #include <of_address.h>
-#include <mach/mbox.h>
+#include <mach/bcm283x/mbox.h>
 
 struct bcm2835fb_info {
 	struct fb_info fbi;
diff --git a/arch/arm/mach-bcm283x/include/mach/core.h b/include/mach/bcm283x/core.h
similarity index 93%
rename from arch/arm/mach-bcm283x/include/mach/core.h
rename to include/mach/bcm283x/core.h
index c8547351a3..c6edee2a8c 100644
--- a/arch/arm/mach-bcm283x/include/mach/core.h
+++ b/include/mach/bcm283x/core.h
@@ -10,7 +10,7 @@
 #include <linux/types.h>
 #include <linux/sizes.h>
 #include <asm/memory.h>
-#include <mach/platform.h>
+#include <mach/bcm283x/platform.h>
 
 static void inline bcm2835_add_device_sdram(u32 size)
 {
diff --git a/arch/arm/mach-bcm283x/include/mach/debug_ll.h b/include/mach/bcm283x/debug_ll.h
similarity index 98%
rename from arch/arm/mach-bcm283x/include/mach/debug_ll.h
rename to include/mach/bcm283x/debug_ll.h
index fdb63b4f5a..424de8be4e 100644
--- a/arch/arm/mach-bcm283x/include/mach/debug_ll.h
+++ b/include/mach/bcm283x/debug_ll.h
@@ -17,7 +17,7 @@
 #ifndef __MACH_BCM2835_DEBUG_LL_H__
 #define __MACH_BCM2835_DEBUG_LL_H__
 
-#include <mach/platform.h>
+#include <mach/bcm283x/platform.h>
 #include <io.h>
 
 #ifdef CONFIG_DEBUG_RPI1_UART
diff --git a/arch/arm/mach-bcm283x/include/mach/mbox.h b/include/mach/bcm283x/mbox.h
similarity index 99%
rename from arch/arm/mach-bcm283x/include/mach/mbox.h
rename to include/mach/bcm283x/mbox.h
index 92cadba62c..908ba17dba 100644
--- a/arch/arm/mach-bcm283x/include/mach/mbox.h
+++ b/include/mach/bcm283x/mbox.h
@@ -11,7 +11,7 @@
 
 #include <common.h>
 
-#include <mach/platform.h>
+#include <mach/bcm283x/platform.h>
 
 /*
  * The BCM2835 SoC contains (at least) two CPUs; the VideoCore (a/k/a "GPU")
diff --git a/arch/arm/mach-bcm283x/include/mach/platform.h b/include/mach/bcm283x/platform.h
similarity index 100%
rename from arch/arm/mach-bcm283x/include/mach/platform.h
rename to include/mach/bcm283x/platform.h
-- 
2.30.2



