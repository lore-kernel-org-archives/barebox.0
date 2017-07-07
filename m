Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dTS8j-0006h7-09
 for barebox@lists.infradead.org; Fri, 07 Jul 2017 12:13:44 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Fri,  7 Jul 2017 14:12:31 +0200
Message-Id: <20170707121242.18499-12-sam@ravnborg.org>
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
Subject: [PATCH 12/23] qil-a926x: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/qil-a926x/Makefile   |  3 +++
 arch/arm/boards/qil-a926x/lowlevel.c | 26 ++++++++++++++++++++++++++
 arch/arm/mach-at91/Kconfig           |  2 --
 3 files changed, 29 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/qil-a926x/lowlevel.c

diff --git a/arch/arm/boards/qil-a926x/Makefile b/arch/arm/boards/qil-a926x/Makefile
index 0c7bc3f04..82e46b369 100644
--- a/arch/arm/boards/qil-a926x/Makefile
+++ b/arch/arm/boards/qil-a926x/Makefile
@@ -1,2 +1,5 @@
 obj-y += init.o
+
+lwl-y += lowlevel.o
+
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-qil-a926x
diff --git a/arch/arm/boards/qil-a926x/lowlevel.c b/arch/arm/boards/qil-a926x/lowlevel.c
new file mode 100644
index 000000000..02896856d
--- /dev/null
+++ b/arch/arm/boards/qil-a926x/lowlevel.c
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
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index c48923ba6..ed961593b 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -280,7 +280,6 @@ config MACH_AT91SAM9260EK
 
 config MACH_QIL_A9260
 	bool "CALAO QIL-A9260 board"
-	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems QIL-A9260 Board.
 	  <http://www.calao-systems.com>
@@ -396,7 +395,6 @@ config MACH_DSS11
 
 config MACH_QIL_A9G20
 	bool "CALAO QIL-A9G20 board"
-	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems QIL-A9G20 Board.
 	  <http://www.calao-systems.com>
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
