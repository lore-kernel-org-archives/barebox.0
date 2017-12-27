Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eUIfK-0003cH-Bd
 for barebox@lists.infradead.org; Wed, 27 Dec 2017 20:51:34 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Wed, 27 Dec 2017 21:50:22 +0100
Message-Id: <20171227205033.26012-13-sam@ravnborg.org>
In-Reply-To: <20171227204842.GA20040@ravnborg.org>
References: <20171227204842.GA20040@ravnborg.org>
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
Subject: [PATCH 13/24] tny-a926x: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Create two files (one for each CPU type) that
contains the reset vector.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/tny-a926x/Makefile             |  4 ++++
 arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c | 26 ++++++++++++++++++++++++++
 arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c | 26 ++++++++++++++++++++++++++
 arch/arm/mach-at91/Kconfig                     |  3 ---
 4 files changed, 56 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
 create mode 100644 arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c

diff --git a/arch/arm/boards/tny-a926x/Makefile b/arch/arm/boards/tny-a926x/Makefile
index 49e0d4649..a96d02061 100644
--- a/arch/arm/boards/tny-a926x/Makefile
+++ b/arch/arm/boards/tny-a926x/Makefile
@@ -2,4 +2,8 @@ obj-y += init.o
 
 obj-$(CONFIG_AT91_BOOTSTRAP) += tny_a9263_bootstrap.o
 
+lwl-$(CONFIG_MACH_TNY_A9260) += tny_a9260_lowlevel.o
+lwl-$(CONFIG_MACH_TNY_A9G20) += tny_a9260_lowlevel.o
+lwl-$(CONFIG_MACH_TNY_A9263) += tny_a9263_lowlevel.o
+
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-tny-a926x
diff --git a/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
new file mode 100644
index 000000000..02896856d
--- /dev/null
+++ b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
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
diff --git a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
new file mode 100644
index 000000000..3ba24ce4c
--- /dev/null
+++ b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
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
+#include <mach/at91sam9263.h>
+#include <mach/hardware.h>
+
+void __naked __bare_init barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1,
+			  at91_get_sdram_size(IOMEM(AT91SAM9263_BASE_SDRAMC0)),
+	                  NULL);
+}
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 4dd608f0e..2410ff8a9 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -297,7 +297,6 @@ config MACH_QIL_A9260
 config MACH_TNY_A9260
 	bool "CALAO TNY-A9260"
 	select SUPPORT_CALAO_MOB_TNY_MD2
-	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems TNY-A9260.
 	  <http://www.calao-systems.com>
@@ -387,7 +386,6 @@ config MACH_AT91SAM9G20EK
 config MACH_TNY_A9G20
 	select SUPPORT_CALAO_MOB_TNY_MD2
 	bool "CALAO TNY-A9G20"
-	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems TNY-A9G20.
 	  <http://www.calao-systems.com>
@@ -455,7 +453,6 @@ config MACH_TNY_A9263
 	bool "CALAO TNY-A9263"
 	select SUPPORT_CALAO_MOB_TNY_MD2
 	select HAVE_AT91_BOOTSTRAP
-	select AT91SAM9263_LWL
 	help
 	  Select this if you are using a Calao Systems TNY-A9263.
 	  <http://www.calao-systems.com>
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
