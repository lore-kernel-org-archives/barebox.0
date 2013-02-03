Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
 helo=mo4.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21Ee-0007Qs-6K
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:12:04 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id A0EAE104ED26
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:22:04 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:10:23 +0100
Message-Id: <1359904236-11622-23-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130203150333.GE18068@game.jcrosoft.org>
 <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 23/36] ARM AT91: switch sama5d3 to barebox_arm_entry
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig                 |    2 ++
 arch/arm/mach-at91/Makefile                |    1 +
 arch/arm/mach-at91/sama5d3_lowlevel_init.c |   25 +++++++++++++++++++++++++
 3 files changed, 28 insertions(+)
 create mode 100644 arch/arm/mach-at91/sama5d3_lowlevel_init.c

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index f4b8f9f..723d25e 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -26,6 +26,8 @@ config SOC_SAMA5
 	select CPU_V7
 	select AT91SAM9_SMC
 	select AT91SAM9_TIMER
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_TEXT_BASE
 	hex
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index c4cbe36..53ca570 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -11,6 +11,7 @@ lowlevel_init-$(CONFIG_SOC_AT91SAM9G45) += at91sam9g45_lowlevel_init.o
 lowlevel_init-$(CONFIG_SOC_AT91SAM9X5) += at91sam9x5_lowlevel_init.o
 lowlevel_init-$(CONFIG_SOC_AT91SAM9N12) += at91sam9n12_lowlevel_init.o
 lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
+lowlevel_init-$(CONFIG_ARCH_SAMA5D3) += sama5d3_lowlevel_init.o
 obj-y += $(lowlevel_init-y)
 
 pbl-y += $(lowlevel_init-y)
diff --git a/arch/arm/mach-at91/sama5d3_lowlevel_init.c b/arch/arm/mach-at91/sama5d3_lowlevel_init.c
new file mode 100644
index 0000000..1d30da6
--- /dev/null
+++ b/arch/arm/mach-at91/sama5d3_lowlevel_init.c
@@ -0,0 +1,25 @@
+/*
+ * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+  */
+
+#define __LOWLEVEL_INIT__
+
+#include <common.h>
+#include <sizes.h>
+#include <init.h>
+#include <asm/system.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/hardware.h>
+#include <mach/at91sam9_ddrsdr.h>
+
+void __naked __bare_init reset(void)
+{
+	common_reset();
+
+	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
+
+	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(), 0);
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
