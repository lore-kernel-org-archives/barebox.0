Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dTS93-0007Hq-2O
 for barebox@lists.infradead.org; Fri, 07 Jul 2017 12:14:05 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Fri,  7 Jul 2017 14:12:35 +0200
Message-Id: <20170707121242.18499-16-sam@ravnborg.org>
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
Subject: [PATCH 16/23] at91sam{9260, 9G20, 9m10g45,
 9n12}ek: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Include deletion of now unused at91sam9n12_lowlevel_init.c
and related CONFIG symbols

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/at91sam9260ek/Makefile             |  1 +
 arch/arm/boards/at91sam9260ek/lowlevel.c           | 26 ++++++++++++++++++++++
 arch/arm/boards/at91sam9m10g45ek/Makefile          |  1 +
 arch/arm/boards/at91sam9m10g45ek/lowlevel.c        | 24 ++++++++++++++++++++
 arch/arm/boards/at91sam9n12ek/Makefile             |  1 +
 .../at91sam9n12ek/lowlevel.c}                      | 13 +++++------
 arch/arm/mach-at91/Kconfig                         |  6 -----
 arch/arm/mach-at91/Makefile                        |  1 -
 8 files changed, 58 insertions(+), 15 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9260ek/lowlevel.c
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/lowlevel.c
 rename arch/arm/{mach-at91/at91sam9n12_lowlevel_init.c => boards/at91sam9n12ek/lowlevel.c} (84%)

diff --git a/arch/arm/boards/at91sam9260ek/Makefile b/arch/arm/boards/at91sam9260ek/Makefile
index 6e07f189f..9225ba08b 100644
--- a/arch/arm/boards/at91sam9260ek/Makefile
+++ b/arch/arm/boards/at91sam9260ek/Makefile
@@ -1,2 +1,3 @@
 obj-y += init.o
+lwl-y += lowlevel.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9260ek
diff --git a/arch/arm/boards/at91sam9260ek/lowlevel.c b/arch/arm/boards/at91sam9260ek/lowlevel.c
new file mode 100644
index 000000000..02896856d
--- /dev/null
+++ b/arch/arm/boards/at91sam9260ek/lowlevel.c
@@ -0,0 +1,26 @@
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
diff --git a/arch/arm/boards/at91sam9m10g45ek/Makefile b/arch/arm/boards/at91sam9m10g45ek/Makefile
index dd8052157..8a7f2fdbb 100644
--- a/arch/arm/boards/at91sam9m10g45ek/Makefile
+++ b/arch/arm/boards/at91sam9m10g45ek/Makefile
@@ -1,2 +1,3 @@
 obj-y += init.o
+lwl-y += lowlevel.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9m10g45ek
diff --git a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
new file mode 100644
index 000000000..9be195837
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
@@ -0,0 +1,24 @@
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
+#include <mach/hardware.h>
+#include <mach/at91sam9_ddrsdr.h>
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
diff --git a/arch/arm/boards/at91sam9n12ek/Makefile b/arch/arm/boards/at91sam9n12ek/Makefile
index f5d125a0e..f42fbb979 100644
--- a/arch/arm/boards/at91sam9n12ek/Makefile
+++ b/arch/arm/boards/at91sam9n12ek/Makefile
@@ -1,2 +1,3 @@
 obj-y += init.o
+lwl-y += lowlevel.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9n12ek
diff --git a/arch/arm/mach-at91/at91sam9n12_lowlevel_init.c b/arch/arm/boards/at91sam9n12ek/lowlevel.c
similarity index 84%
rename from arch/arm/mach-at91/at91sam9n12_lowlevel_init.c
rename to arch/arm/boards/at91sam9n12ek/lowlevel.c
index 2b5cb158b..3c5234eb5 100644
--- a/arch/arm/mach-at91/at91sam9n12_lowlevel_init.c
+++ b/arch/arm/boards/at91sam9n12ek/lowlevel.c
@@ -4,17 +4,14 @@
  * Under GPLv2
   */
 
-#define __LOWLEVEL_INIT__
-
 #include <common.h>
-#include <asm/system.h>
-#include <asm/barebox-arm.h>
+#include <init.h>
+
 #include <asm/barebox-arm-head.h>
-#include <mach/hardware.h>
-#include <mach/io.h>
+#include <asm/barebox-arm.h>
+
 #include <mach/at91sam9_ddrsdr.h>
-#include <init.h>
-#include <linux/sizes.h>
+#include <mach/hardware.h>
 
 void __naked __bare_init barebox_arm_reset_vector(void)
 {
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 8122cf367..cf59f0ce4 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -39,8 +39,6 @@ config AT91SAM9260_LWL
 	bool
 config AT91SAM9G45_LWL
 	bool
-config AT91SAM9N12_LWL
-	bool
 config AT91RM9200_LWL
 	bool
 
@@ -268,7 +266,6 @@ config MACH_ANIMEO_IP
 config MACH_AT91SAM9260EK
 	bool "Atmel AT91SAM9260-EK"
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
-	select AT91SAM9260_LWL
 	help
 	  Say y here if you are using Atmel's AT91SAM9260-EK Evaluation board
 
@@ -360,7 +357,6 @@ choice
 config MACH_AT91SAM9G20EK
 	bool "Atmel AT91SAM9G20-EK Evaluation Kit"
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
-	select AT91SAM9260_LWL
 	help
 	  Select this if you are using Atmel's AT91SAM9G20-EK Evaluation Kit
 	  that embeds only one SD/MMC slot.
@@ -460,7 +456,6 @@ config MACH_AT91SAM9M10IHD
 config MACH_AT91SAM9M10G45EK
 	bool "Atmel AT91SAM9M10G45-EK Evaluation Kit"
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
-	select AT91SAM9G45_LWL
 	help
 	  Select this if you are using Atmel's AT91SAM9M10G45-EK Evaluation Kit
 	  or AT91SAM9G45-EKES or AT91SAM9M10-EKES (for those 2 select the LG LCD)
@@ -485,7 +480,6 @@ choice
 
 config MACH_AT91SAM9N12EK
 	bool "Atmel AT91SAM9N12 Evaluation Kit"
-	select AT91SAM9N12_LWL
 	help
 	  Select this if you are using Atmel's AT91SAM9N12-EK Evaluation Kit.
 
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index bde9e898f..89a88bf03 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -10,7 +10,6 @@ obj-$(CONFIG_AT91_BOOTSTRAP) += bootstrap.o
 
 lwl-$(CONFIG_AT91SAM9260_LWL) += at91sam9260_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9G45_LWL) += at91sam9g45_lowlevel_init.o
-lwl-$(CONFIG_AT91SAM9N12_LWL) += at91sam9n12_lowlevel_init.o
 lwl-$(CONFIG_AT91RM9200_LWL) += at91rm9200_lowlevel_init.o
 
 obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
