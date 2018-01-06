Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXvkn-0007qo-7D
 for barebox@lists.infradead.org; Sat, 06 Jan 2018 21:11:52 +0000
Received: by mail-lf0-x243.google.com with SMTP id m8so2393358lfc.6
 for <barebox@lists.infradead.org>; Sat, 06 Jan 2018 13:11:42 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Sat,  6 Jan 2018 22:11:08 +0100
Message-Id: <20180106211118.24249-12-sam@ravnborg.org>
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
Subject: [PATCH v5 12/22] qil-a926x: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Create new file lowlevel.c that contains the reset vector.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Andrey Smirnov <andrew.smirnov@gmail.com>
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
index 000000000..b16ef31bf
--- /dev/null
+++ b/arch/arm/boards/qil-a926x/lowlevel.c
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
index dc3503af0..1d614074e 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -289,7 +289,6 @@ config MACH_AT91SAM9260EK
 
 config MACH_QIL_A9260
 	bool "CALAO QIL-A9260 board"
-	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems QIL-A9260 Board.
 	  <http://www.calao-systems.com>
@@ -407,7 +406,6 @@ config MACH_DSS11
 
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
