Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXvkq-0007tM-NT
 for barebox@lists.infradead.org; Sat, 06 Jan 2018 21:12:08 +0000
Received: by mail-lf0-x244.google.com with SMTP id c19so8474527lfg.3
 for <barebox@lists.infradead.org>; Sat, 06 Jan 2018 13:11:45 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Sat,  6 Jan 2018 22:11:12 +0100
Message-Id: <20180106211118.24249-16-sam@ravnborg.org>
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
Subject: [PATCH v5 16/22] at91sam9260ek,
 at91sam9g20ek: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Create new lowlevel.c that contains the reset vector.
Drop unused CONFIG symbols

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/at91sam9260ek/Makefile   |  3 +++
 arch/arm/boards/at91sam9260ek/lowlevel.c | 26 ++++++++++++++++++++++++++
 arch/arm/mach-at91/Kconfig               |  2 --
 3 files changed, 29 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9260ek/lowlevel.c

diff --git a/arch/arm/boards/at91sam9260ek/Makefile b/arch/arm/boards/at91sam9260ek/Makefile
index 6e07f189f..9cc933a28 100644
--- a/arch/arm/boards/at91sam9260ek/Makefile
+++ b/arch/arm/boards/at91sam9260ek/Makefile
@@ -1,2 +1,5 @@
 obj-y += init.o
+
+lwl-y += lowlevel.o
+
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9260ek
diff --git a/arch/arm/boards/at91sam9260ek/lowlevel.c b/arch/arm/boards/at91sam9260ek/lowlevel.c
new file mode 100644
index 000000000..b16ef31bf
--- /dev/null
+++ b/arch/arm/boards/at91sam9260ek/lowlevel.c
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
index 44d57209f..cb692b813 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -276,7 +276,6 @@ config MACH_ANIMEO_IP
 
 config MACH_AT91SAM9260EK
 	bool "Atmel AT91SAM9260-EK"
-	select AT91SAM9260_LWL
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
 	help
 	  Say y here if you are using Atmel's AT91SAM9260-EK Evaluation board
@@ -371,7 +370,6 @@ choice
 config MACH_AT91SAM9G20EK
 	bool "Atmel AT91SAM9G20-EK Evaluation Kit"
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
-	select AT91SAM9260_LWL
 	help
 	  Select this if you are using Atmel's AT91SAM9G20-EK Evaluation Kit
 	  that embeds only one SD/MMC slot.
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
