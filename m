Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eW0wS-0004dQ-Qf
 for barebox@lists.infradead.org; Mon, 01 Jan 2018 14:19:58 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon,  1 Jan 2018 15:19:31 +0100
Message-Id: <20180101141939.20606-1-sam@ravnborg.org>
In-Reply-To: <20171231083407.GA16645@ravnborg.org>
References: <20171231083407.GA16645@ravnborg.org>
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
Subject: [PATCH 17/25] sama5d{3, 4}{xek,
 xplained}: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Include deletion of now unused sama5d3_lowlevel_init.c
and related CONFIG symbols

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/sama5d3_xplained/Makefile          |  1 +
 .../sama5d3_xplained/lowlevel.c}                   | 10 ++++------
 arch/arm/boards/sama5d3xek/Makefile                |  1 +
 arch/arm/boards/sama5d3xek/lowlevel.c              | 23 ++++++++++++++++++++++
 arch/arm/boards/sama5d4_xplained/Makefile          |  1 +
 arch/arm/boards/sama5d4_xplained/lowlevel.c        | 23 ++++++++++++++++++++++
 arch/arm/boards/sama5d4ek/Makefile                 |  1 +
 arch/arm/boards/sama5d4ek/lowlevel.c               | 23 ++++++++++++++++++++++
 arch/arm/mach-at91/Kconfig                         |  8 --------
 arch/arm/mach-at91/Makefile                        |  2 --
 10 files changed, 77 insertions(+), 16 deletions(-)
 rename arch/arm/{mach-at91/sama5d3_lowlevel_init.c => boards/sama5d3_xplained/lowlevel.c} (86%)
 create mode 100644 arch/arm/boards/sama5d3xek/lowlevel.c
 create mode 100644 arch/arm/boards/sama5d4_xplained/lowlevel.c
 create mode 100644 arch/arm/boards/sama5d4ek/lowlevel.c

diff --git a/arch/arm/boards/sama5d3_xplained/Makefile b/arch/arm/boards/sama5d3_xplained/Makefile
index 3c301cb0c..fc6d83be8 100644
--- a/arch/arm/boards/sama5d3_xplained/Makefile
+++ b/arch/arm/boards/sama5d3_xplained/Makefile
@@ -1,2 +1,3 @@
 obj-y += init.o
+lwl-y += lowlevel.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-sama5d3_xplained
diff --git a/arch/arm/mach-at91/sama5d3_lowlevel_init.c b/arch/arm/boards/sama5d3_xplained/lowlevel.c
similarity index 86%
rename from arch/arm/mach-at91/sama5d3_lowlevel_init.c
rename to arch/arm/boards/sama5d3_xplained/lowlevel.c
index 01d28514d..161b473a7 100644
--- a/arch/arm/mach-at91/sama5d3_lowlevel_init.c
+++ b/arch/arm/boards/sama5d3_xplained/lowlevel.c
@@ -4,16 +4,14 @@
  * Under GPLv2
   */
 
-#define __LOWLEVEL_INIT__
-
 #include <common.h>
-#include <linux/sizes.h>
 #include <init.h>
-#include <asm/system.h>
-#include <asm/barebox-arm.h>
+
 #include <asm/barebox-arm-head.h>
-#include <mach/hardware.h>
+#include <asm/barebox-arm.h>
+
 #include <mach/at91sam9_ddrsdr.h>
+#include <mach/hardware.h>
 
 void __naked __bare_init barebox_arm_reset_vector(void)
 {
diff --git a/arch/arm/boards/sama5d3xek/Makefile b/arch/arm/boards/sama5d3xek/Makefile
index 32dcb4283..6ed914fc0 100644
--- a/arch/arm/boards/sama5d3xek/Makefile
+++ b/arch/arm/boards/sama5d3xek/Makefile
@@ -1,3 +1,4 @@
 obj-y += init.o
 obj-$(CONFIG_W1) += hw_version.o
+lwl-y += lowlevel.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-sama5d3xek
diff --git a/arch/arm/boards/sama5d3xek/lowlevel.c b/arch/arm/boards/sama5d3xek/lowlevel.c
new file mode 100644
index 000000000..161b473a7
--- /dev/null
+++ b/arch/arm/boards/sama5d3xek/lowlevel.c
@@ -0,0 +1,23 @@
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
+#include <mach/hardware.h>
+
+void __naked __bare_init barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
+
+	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(), NULL);
+}
diff --git a/arch/arm/boards/sama5d4_xplained/Makefile b/arch/arm/boards/sama5d4_xplained/Makefile
index 44550f528..8873dfc22 100644
--- a/arch/arm/boards/sama5d4_xplained/Makefile
+++ b/arch/arm/boards/sama5d4_xplained/Makefile
@@ -1 +1,2 @@
 obj-y += sama5d4_xplained.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/sama5d4_xplained/lowlevel.c b/arch/arm/boards/sama5d4_xplained/lowlevel.c
new file mode 100644
index 000000000..161b473a7
--- /dev/null
+++ b/arch/arm/boards/sama5d4_xplained/lowlevel.c
@@ -0,0 +1,23 @@
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
+#include <mach/hardware.h>
+
+void __naked __bare_init barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
+
+	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(), NULL);
+}
diff --git a/arch/arm/boards/sama5d4ek/Makefile b/arch/arm/boards/sama5d4ek/Makefile
index 4363b3924..152750bbe 100644
--- a/arch/arm/boards/sama5d4ek/Makefile
+++ b/arch/arm/boards/sama5d4ek/Makefile
@@ -1 +1,2 @@
 obj-y += sama5d4ek.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/sama5d4ek/lowlevel.c b/arch/arm/boards/sama5d4ek/lowlevel.c
new file mode 100644
index 000000000..161b473a7
--- /dev/null
+++ b/arch/arm/boards/sama5d4ek/lowlevel.c
@@ -0,0 +1,23 @@
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
+#include <mach/hardware.h>
+
+void __naked __bare_init barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
+
+	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(), NULL);
+}
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 4ca99282a..991600fe4 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -53,10 +53,6 @@ config AT91SAM9N12_LWL
 	bool
 config AT91RM9200_LWL
 	bool
-config SAMA5D3_LWL
-	bool
-config SAMA5D4_LWL
-	bool
 
 config AT91SAM9_SMC
 	bool
@@ -522,13 +518,11 @@ choice
 
 config MACH_SAMA5D3XEK
 	bool "Atmel SAMA5D3X Evaluation Kit"
-	select SAMA5D3_LWL
 	help
 	  Select this if you are using Atmel's SAMA5D3X-EK Evaluation Kit.
 
 config MACH_SAMA5D3_XPLAINED
 	bool "Atmel SAMA5D3_XPLAINED Evaluation Kit"
-	select SAMA5D3_LWL
 	help
 	  Select this if you are using Atmel's SAMA5D3_XPLAINED Evaluation Kit.
 
@@ -545,13 +539,11 @@ choice
 
 config MACH_SAMA5D4EK
 	bool "Atmel SAMA5D4 Evaluation Kit"
-	select SAMA5D4_LWL
 	help
 	  Select this if you are using Atmel's SAMA5D4-EK Evaluation Kit.
 
 config MACH_SAMA5D4_XPLAINED
 	bool "Atmel SAMA5D4 XPLAINED ULTRA Evaluation Kit"
-	select SAMA5D4_LWL
 	help
 	  Select this if you are using Atmel's SAMA5D4_XPLAINED ULTRA Evaluation Kit.
 
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 1c7921914..cb8dade6d 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -15,8 +15,6 @@ lwl-$(CONFIG_AT91SAM9260_LWL)	+= at91sam9260_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9263_LWL)	+= at91sam9263_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9G45_LWL)	+= at91sam9g45_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9N12_LWL)	+= at91sam9n12_lowlevel_init.o
-lwl-$(CONFIG_SAMA5D3_LWL)	+= sama5d3_lowlevel_init.o
-lwl-$(CONFIG_SAMA5D4_LWL)	+= sama5d3_lowlevel_init.o
 
 obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
 obj-$(CONFIG_AT91SAM9G45_RESET) += at91sam9g45_reset.o
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
