Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXvkr-0007ux-Sv
 for barebox@lists.infradead.org; Sat, 06 Jan 2018 21:12:25 +0000
Received: by mail-lf0-x241.google.com with SMTP id u84so8482562lff.7
 for <barebox@lists.infradead.org>; Sat, 06 Jan 2018 13:11:47 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v5 17/22] at91sam9m10g45ek, at91sam9m10ihd,
 pm9g45: move reset vector to board code
Date: Sat,  6 Jan 2018 22:11:13 +0100
Message-Id: <20180106211118.24249-17-sam@ravnborg.org>
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

These three board share the same at91sam9g45_lowlevel_init.c file.

Introduce lowlevel.c file for the boards that contains the reset vector.
Delete the now unused at91sam9g45_lowlevel_init.c file
Drop unused CONFIG symbols and Makefile references

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/at91sam9m10g45ek/Makefile          |  3 +++
 .../at91sam9m10g45ek/lowlevel.c}                   | 13 +++++------
 arch/arm/boards/at91sam9m10ihd/Makefile            |  2 ++
 arch/arm/boards/at91sam9m10ihd/lowlevel.c          | 25 ++++++++++++++++++++++
 arch/arm/boards/pm9g45/Makefile                    |  3 +++
 arch/arm/boards/pm9g45/lowlevel.c                  | 24 +++++++++++++++++++++
 arch/arm/mach-at91/Kconfig                         |  5 -----
 arch/arm/mach-at91/Makefile                        |  1 -
 8 files changed, 62 insertions(+), 14 deletions(-)
 rename arch/arm/{mach-at91/at91sam9g45_lowlevel_init.c => boards/at91sam9m10g45ek/lowlevel.c} (83%)
 create mode 100644 arch/arm/boards/at91sam9m10ihd/lowlevel.c
 create mode 100644 arch/arm/boards/pm9g45/lowlevel.c

diff --git a/arch/arm/boards/at91sam9m10g45ek/Makefile b/arch/arm/boards/at91sam9m10g45ek/Makefile
index dd8052157..da011f825 100644
--- a/arch/arm/boards/at91sam9m10g45ek/Makefile
+++ b/arch/arm/boards/at91sam9m10g45ek/Makefile
@@ -1,2 +1,5 @@
 obj-y += init.o
+
+lwl-y += lowlevel.o
+
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9m10g45ek
diff --git a/arch/arm/mach-at91/at91sam9g45_lowlevel_init.c b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
similarity index 83%
rename from arch/arm/mach-at91/at91sam9g45_lowlevel_init.c
rename to arch/arm/boards/at91sam9m10g45ek/lowlevel.c
index 2cdb7a6a5..478ff11e1 100644
--- a/arch/arm/mach-at91/at91sam9g45_lowlevel_init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
@@ -2,19 +2,16 @@
  * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  *
  * Under GPLv2
-  */
-
-#define __LOWLEVEL_INIT__
+ */
 
 #include <common.h>
-#include <asm/system.h>
-#include <asm/barebox-arm.h>
+#include <init.h>
+
 #include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
 #include <mach/hardware.h>
-#include <mach/io.h>
 #include <mach/at91sam9_ddrsdr.h>
-#include <init.h>
-#include <linux/sizes.h>
 
 void __naked __bare_init barebox_arm_reset_vector(void)
 {
diff --git a/arch/arm/boards/at91sam9m10ihd/Makefile b/arch/arm/boards/at91sam9m10ihd/Makefile
index f2acf201b..06193007a 100644
--- a/arch/arm/boards/at91sam9m10ihd/Makefile
+++ b/arch/arm/boards/at91sam9m10ihd/Makefile
@@ -1,2 +1,4 @@
 obj-y += init.o
 obj-y += hw_version.o
+
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/at91sam9m10ihd/lowlevel.c b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
new file mode 100644
index 000000000..d5940b987
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
@@ -0,0 +1,25 @@
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
diff --git a/arch/arm/boards/pm9g45/Makefile b/arch/arm/boards/pm9g45/Makefile
index d81b1881b..abf50243e 100644
--- a/arch/arm/boards/pm9g45/Makefile
+++ b/arch/arm/boards/pm9g45/Makefile
@@ -1,2 +1,5 @@
 obj-y += init.o
+
+lwl-y += lowlevel.o
+
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-pm9g45
diff --git a/arch/arm/boards/pm9g45/lowlevel.c b/arch/arm/boards/pm9g45/lowlevel.c
new file mode 100644
index 000000000..67454bde2
--- /dev/null
+++ b/arch/arm/boards/pm9g45/lowlevel.c
@@ -0,0 +1,24 @@
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
+#include <mach/at91sam9_ddrsdr.h>
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
index cb692b813..2cffc74da 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -47,8 +47,6 @@ config AT91SAM9260_LWL
 	bool
 config AT91SAM9263_LWL
 	bool
-config AT91SAM9G45_LWL
-	bool
 config AT91RM9200_LWL
 	bool
 
@@ -461,14 +459,12 @@ choice
 
 config MACH_AT91SAM9M10IHD
 	bool "Atmel AT91SAM9M10IDH Tablet"
-	select AT91SAM9G45_LWL
 	help
 	  Select this if you are using Atmel's AT91SAM9M10IHD Tablet
 
 config MACH_AT91SAM9M10G45EK
 	bool "Atmel AT91SAM9M10G45-EK Evaluation Kit"
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
-	select AT91SAM9G45_LWL
 	help
 	  Select this if you are using Atmel's AT91SAM9M10G45-EK Evaluation Kit
 	  or AT91SAM9G45-EKES or AT91SAM9M10-EKES (for those 2 select the LG LCD)
@@ -476,7 +472,6 @@ config MACH_AT91SAM9M10G45EK
 
 config MACH_PM9G45
 	bool "Ronetix PM9G45"
-	select AT91SAM9G45_LWL
 	help
 	  Say y here if you are using the Ronetix PM9G45 Board
 
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index b51f1873b..c430498ff 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -13,7 +13,6 @@ lwl-$(CONFIG_AT91SAM926X_LWL)	+= at91sam926x_lowlevel_init.o
 lwl-$(CONFIG_AT91RM9200_LWL)	+= at91rm9200_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9260_LWL)	+= at91sam9260_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9263_LWL)	+= at91sam9263_lowlevel_init.o
-lwl-$(CONFIG_AT91SAM9G45_LWL)	+= at91sam9g45_lowlevel_init.o
 
 obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
 obj-$(CONFIG_AT91SAM9G45_RESET) += at91sam9g45_reset.o
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
