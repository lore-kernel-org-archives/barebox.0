Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXvkd-0007ok-Gp
 for barebox@lists.infradead.org; Sat, 06 Jan 2018 21:11:37 +0000
Received: by mail-lf0-x241.google.com with SMTP id d19so177796lfj.5
 for <barebox@lists.infradead.org>; Sat, 06 Jan 2018 13:11:34 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Sat,  6 Jan 2018 22:10:59 +0100
Message-Id: <20180106211118.24249-3-sam@ravnborg.org>
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
Subject: [PATCH v5 03/22] arm: at91: drop unused at91sam9x5_lowlevel_init.c
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

After refactoring of how we select lowlevel_init
it was apparent that at91sam9x5_lowlevel_init.c was no
longer used.
Delete the file and the now unused CONFIG symbol and it uses

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-at91/Kconfig                    |  2 --
 arch/arm/mach-at91/Makefile                   |  1 -
 arch/arm/mach-at91/at91sam9x5_lowlevel_init.c | 26 --------------------------
 3 files changed, 29 deletions(-)
 delete mode 100644 arch/arm/mach-at91/at91sam9x5_lowlevel_init.c

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 3291293ad..234257eb9 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -51,8 +51,6 @@ config AT91SAM9263_LWL
 	bool
 config AT91SAM9G45_LWL
 	bool
-config AT91SAM9X5_LWL
-	bool
 config AT91SAM9N12_LWL
 	bool
 config AT91RM9200_LWL
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 71851d26c..66b83000a 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -15,7 +15,6 @@ lwl-$(CONFIG_AT91SAM9260_LWL)	+= at91sam9260_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9261_LWL)	+= at91sam9261_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9263_LWL)	+= at91sam9263_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9G45_LWL)	+= at91sam9g45_lowlevel_init.o
-lwl-$(CONFIG_AT91SAM9X5_LWL)	+= at91sam9x5_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9N12_LWL)	+= at91sam9n12_lowlevel_init.o
 lwl-$(CONFIG_SAMA5D3_LWL)	+= sama5d3_lowlevel_init.o
 lwl-$(CONFIG_SAMA5D4_LWL)	+= sama5d3_lowlevel_init.o
diff --git a/arch/arm/mach-at91/at91sam9x5_lowlevel_init.c b/arch/arm/mach-at91/at91sam9x5_lowlevel_init.c
deleted file mode 100644
index 48e69f947..000000000
--- a/arch/arm/mach-at91/at91sam9x5_lowlevel_init.c
+++ /dev/null
@@ -1,26 +0,0 @@
-/*
- * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * Under GPLv2
-  */
-
-#define __LOWLEVEL_INIT__
-
-#include <common.h>
-#include <asm/system.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-#include <mach/hardware.h>
-#include <mach/io.h>
-#include <mach/at91sam9_ddrsdr.h>
-#include <init.h>
-#include <linux/sizes.h>
-
-void __naked __bare_init barebox_arm_reset_vector(void)
-{
-	arm_cpu_lowlevel_init();
-
-	arm_setup_stack(AT91SAM9X5_SRAM_BASE + AT91SAM9X5_SRAM_SIZE - 16);
-
-	barebox_arm_entry(AT91_CHIPSELECT_1, at91sam9x5_get_ddram_size(), NULL);
-}
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
