Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo4.mail-out.ovh.net ([46.105.40.176]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21Ea-0000aQ-Fw
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:12:11 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 56AAD104ECA5
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:22:02 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:10:21 +0100
Message-Id: <1359904236-11622-21-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 21/36] ARM AT91: switch at91sam9x5 to barebox_arm_entry
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig                    |    2 ++
 arch/arm/mach-at91/Makefile                   |    1 +
 arch/arm/mach-at91/at91sam9x5_lowlevel_init.c |   26 +++++++++++++++++++++++++
 3 files changed, 29 insertions(+)
 create mode 100644 arch/arm/mach-at91/at91sam9x5_lowlevel_init.c

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 69426e4..21949e7 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -139,6 +139,8 @@ config SOC_AT91SAM9X5
 	select HAVE_AT91_DBGU0
 	select HAS_MACB
 	select AT91SAM9G45_RESET
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 	help
 	  Select this if you are using one of Atmel's AT91SAM9x5 family SoC.
 	  This means that your SAM9 name finishes with a '5' (except if it is
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 0ead23c..a03398e 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -8,6 +8,7 @@ lowlevel_init-$(CONFIG_SOC_AT91SAM9260) += at91sam9260_lowlevel_init.o
 lowlevel_init-$(CONFIG_SOC_AT91SAM9261) += at91sam9261_lowlevel_init.o
 lowlevel_init-$(CONFIG_SOC_AT91SAM9263) += at91sam9263_lowlevel_init.o
 lowlevel_init-$(CONFIG_SOC_AT91SAM9G45) += at91sam9g45_lowlevel_init.o
+lowlevel_init-$(CONFIG_SOC_AT91SAM9X5) += at91sam9x5_lowlevel_init.o
 lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
 obj-y += $(lowlevel_init-y)
 
diff --git a/arch/arm/mach-at91/at91sam9x5_lowlevel_init.c b/arch/arm/mach-at91/at91sam9x5_lowlevel_init.c
new file mode 100644
index 0000000..e1befcb
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam9x5_lowlevel_init.c
@@ -0,0 +1,26 @@
+/*
+ * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+  */
+
+#define __LOWLEVEL_INIT__
+
+#include <common.h>
+#include <asm/system.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/hardware.h>
+#include <mach/io.h>
+#include <mach/at91sam9_ddrsdr.h>
+#include <init.h>
+#include <sizes.h>
+
+void __naked __bare_init reset(void)
+{
+	common_reset();
+
+	arm_setup_stack(AT91SAM9X5_SRAM_BASE + AT91SAM9X5_SRAM_SIZE - 16);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91sam9x5_get_ddram_size(), 0);
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
