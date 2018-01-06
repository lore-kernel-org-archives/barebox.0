Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXvkw-0007wm-T3
 for barebox@lists.infradead.org; Sat, 06 Jan 2018 21:12:26 +0000
Received: by mail-lf0-x242.google.com with SMTP id a12so8460661lfe.13
 for <barebox@lists.infradead.org>; Sat, 06 Jan 2018 13:11:49 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v5 20/22] dss11: move reset vector to board code
Date: Sat,  6 Jan 2018 22:11:16 +0100
Message-Id: <20180106211118.24249-20-sam@ravnborg.org>
In-Reply-To: <20180106210450.GA21127@ravnborg.org>
References: <20180106210450.GA21127@ravnborg.org>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/dss11/Makefile   |  2 ++
 arch/arm/boards/dss11/lowlevel.c | 26 ++++++++++++++++++++++++++
 arch/arm/mach-at91/Kconfig       |  1 -
 3 files changed, 28 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/dss11/lowlevel.c

diff --git a/arch/arm/boards/dss11/Makefile b/arch/arm/boards/dss11/Makefile
index eb072c016..e11fd5b69 100644
--- a/arch/arm/boards/dss11/Makefile
+++ b/arch/arm/boards/dss11/Makefile
@@ -1 +1,3 @@
 obj-y += init.o
+
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/dss11/lowlevel.c b/arch/arm/boards/dss11/lowlevel.c
new file mode 100644
index 000000000..b16ef31bf
--- /dev/null
+++ b/arch/arm/boards/dss11/lowlevel.c
@@ -0,0 +1,26 @@
+/*
+ * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <init.h>
+
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+#include <mach/at91sam9_sdramc.h>
+#include <mach/at91sam9260.h>
+#include <mach/hardware.h>
+
+void __naked __bare_init barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE - 16);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1,
+			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
+			  NULL);
+}
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index f0790da69..1d2ac085d 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -387,7 +387,6 @@ config MACH_USB_A9G20
 config MACH_DSS11
 	bool "aizo dSS11"
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
-	select AT91SAM9260_LWL
 	help
 	  Select this if you are using aizo dSS11
 	  that embeds only one SD/MMC slot.
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
