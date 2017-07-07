Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dTS98-0007Hw-2w
 for barebox@lists.infradead.org; Fri, 07 Jul 2017 12:14:11 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Fri,  7 Jul 2017 14:12:37 +0200
Message-Id: <20170707121242.18499-18-sam@ravnborg.org>
In-Reply-To: <20170707121000.GA16920@ravnborg.org>
References: <20170707121000.GA16920@ravnborg.org>
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
Subject: [PATCH 18/23] at91sam9m10ihd: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/at91sam9m10ihd/Makefile   |  2 ++
 arch/arm/boards/at91sam9m10ihd/lowlevel.c | 25 +++++++++++++++++++++++++
 arch/arm/mach-at91/Kconfig                |  1 -
 3 files changed, 27 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/at91sam9m10ihd/lowlevel.c

diff --git a/arch/arm/boards/at91sam9m10ihd/Makefile b/arch/arm/boards/at91sam9m10ihd/Makefile
index f2acf201b..741fd861b 100644
--- a/arch/arm/boards/at91sam9m10ihd/Makefile
+++ b/arch/arm/boards/at91sam9m10ihd/Makefile
@@ -1,2 +1,4 @@
 obj-y += init.o
 obj-y += hw_version.o
+lwl-y += lowlevel.o
+
diff --git a/arch/arm/boards/at91sam9m10ihd/lowlevel.c b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
new file mode 100644
index 000000000..624f7e800
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
@@ -0,0 +1,25 @@
+/*
+ * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+  */
+
+#include <common.h>
+#include <init.h>
+
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91sam9g45.h>
+#include <mach/hardware.h>
+
+void __naked __bare_init barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(AT91SAM9G45_SRAM_BASE + AT91SAM9G45_SRAM_SIZE - 16);
+
+	barebox_arm_entry(AT91_CHIPSELECT_6, at91sam9g45_get_ddram_size(1),
+	                  NULL);
+}
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 14cfa4759..4ce4e6078 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -446,7 +446,6 @@ choice
 
 config MACH_AT91SAM9M10IHD
 	bool "Atmel AT91SAM9M10IDH Tablet"
-	select AT91SAM9G45_LWL
 	help
 	  Select this if you are using Atmel's AT91SAM9M10IHD Tablet
 
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
