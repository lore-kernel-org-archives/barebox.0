Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXvkq-0007wJ-Nn
 for barebox@lists.infradead.org; Sat, 06 Jan 2018 21:12:18 +0000
Received: by mail-lf0-x244.google.com with SMTP id h137so8463172lfe.8
 for <barebox@lists.infradead.org>; Sat, 06 Jan 2018 13:11:48 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Sat,  6 Jan 2018 22:11:15 +0100
Message-Id: <20180106211118.24249-19-sam@ravnborg.org>
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
Subject: [PATCH v5 19/22] telit-evk-pro3: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/telit-evk-pro3/Makefile   |  2 ++
 arch/arm/boards/telit-evk-pro3/lowlevel.c | 26 ++++++++++++++++++++++++++
 arch/arm/mach-at91/Kconfig                |  1 -
 3 files changed, 28 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/telit-evk-pro3/lowlevel.c

diff --git a/arch/arm/boards/telit-evk-pro3/Makefile b/arch/arm/boards/telit-evk-pro3/Makefile
index eb072c016..e11fd5b69 100644
--- a/arch/arm/boards/telit-evk-pro3/Makefile
+++ b/arch/arm/boards/telit-evk-pro3/Makefile
@@ -1 +1,3 @@
 obj-y += init.o
+
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/telit-evk-pro3/lowlevel.c b/arch/arm/boards/telit-evk-pro3/lowlevel.c
new file mode 100644
index 000000000..b16ef31bf
--- /dev/null
+++ b/arch/arm/boards/telit-evk-pro3/lowlevel.c
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
index fd4ae3a62..f0790da69 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -299,7 +299,6 @@ config MACH_USB_A9260
 
 config MACH_GE863
 	bool "Telit EVK-PRO3"
-	select AT91SAM9260_LWL
 	help
 	  Say y here if you are using Telit EVK-PRO3 with GE863-PRO3
 	  <http://www.telit.com>
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
