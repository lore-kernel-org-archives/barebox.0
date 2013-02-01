Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1BXM-00045s-VS
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 08:00:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Feb 2013 08:59:33 +0100
Message-Id: <1359705587-9762-21-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
References: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/34] ARM AT91: switch sama5d3 to barebox_arm_entry
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig                 |    2 ++
 arch/arm/mach-at91/Makefile                |    1 +
 arch/arm/mach-at91/sama5d3_lowlevel_init.c |   25 +++++++++++++++++++++++++
 3 files changed, 28 insertions(+)
 create mode 100644 arch/arm/mach-at91/sama5d3_lowlevel_init.c

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index f7f4cbc..da2768a 100644
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
index 38aeef6..6820f62 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -7,6 +7,7 @@ lowlevel_init-$(CONFIG_SOC_AT91SAM9260) += at91sam9260_lowlevel_init.o
 lowlevel_init-$(CONFIG_SOC_AT91SAM9261) += at91sam9261_lowlevel_init.o
 lowlevel_init-$(CONFIG_SOC_AT91SAM9263) += at91sam9263_lowlevel_init.o
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
