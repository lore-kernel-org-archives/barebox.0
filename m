Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eVzwL-00031f-39
 for barebox@lists.infradead.org; Mon, 01 Jan 2018 13:15:58 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon,  1 Jan 2018 14:15:21 +0100
Message-Id: <20180101131523.1508-2-sam@ravnborg.org>
In-Reply-To: <20171231100244.GA16379@ravnborg.org>
References: <20171231100244.GA16379@ravnborg.org>
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
Subject: [PATCH 2/4] arm: at91: simplify soc setup
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

The at91 soc support inherited a complex scheme
from the kernel.
This schme did not really give any benefits, and when
migrating at91sam9263ek to use DT it started to
get in the way for a proper way to do things.

Replace the former setup with a simple function
pointer that can be called from setup.c.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/mach-at91/at91rm9200.c  | 10 +++---
 arch/arm/mach-at91/at91sam9260.c | 10 +++---
 arch/arm/mach-at91/at91sam9261.c | 10 +++---
 arch/arm/mach-at91/at91sam9263.c | 10 +++---
 arch/arm/mach-at91/at91sam9g45.c | 10 +++---
 arch/arm/mach-at91/at91sam9n12.c | 10 +++---
 arch/arm/mach-at91/generic.h     |  9 ++++-
 arch/arm/mach-at91/sama5d3.c     | 10 +++---
 arch/arm/mach-at91/sama5d4.c     | 10 +++---
 arch/arm/mach-at91/setup.c       | 26 +++-----------
 arch/arm/mach-at91/soc.h         | 76 ----------------------------------------
 11 files changed, 60 insertions(+), 131 deletions(-)
 delete mode 100644 arch/arm/mach-at91/soc.h

diff --git a/arch/arm/mach-at91/at91rm9200.c b/arch/arm/mach-at91/at91rm9200.c
index d12e8d97b..ba680eb81 100644
--- a/arch/arm/mach-at91/at91rm9200.c
+++ b/arch/arm/mach-at91/at91rm9200.c
@@ -4,7 +4,6 @@
 #include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 
-#include "soc.h"
 #include "clock.h"
 #include "generic.h"
 
@@ -235,6 +234,9 @@ static void __init at91rm9200_initialize(void)
 	at91_add_rm9200_gpio(3, AT91RM9200_BASE_PIOD);
 }
 
-AT91_SOC_START(rm9200)
-	.init = at91rm9200_initialize,
-AT91_SOC_END
+static int at91rm9200_setup(void)
+{
+	at91_boot_soc = at91rm9200_initialize;
+	return 0;
+}
+pure_initcall(at91rm9200_setup);
diff --git a/arch/arm/mach-at91/at91sam9260.c b/arch/arm/mach-at91/at91sam9260.c
index fbd788414..8975bf466 100644
--- a/arch/arm/mach-at91/at91sam9260.c
+++ b/arch/arm/mach-at91/at91sam9260.c
@@ -4,7 +4,6 @@
 #include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 
-#include "soc.h"
 #include "generic.h"
 #include "clock.h"
 
@@ -236,6 +235,9 @@ static void at91sam9260_initialize(void)
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9260_BASE_SMC, 0x200);
 }
 
-AT91_SOC_START(sam9260)
-	.init = at91sam9260_initialize,
-AT91_SOC_END
+static int at91sam9260_setup(void)
+{
+	at91_boot_soc = at91sam9260_initialize;
+	return 0;
+}
+pure_initcall(at91sam9260_setup);
diff --git a/arch/arm/mach-at91/at91sam9261.c b/arch/arm/mach-at91/at91sam9261.c
index 37a65ecd3..35aaa9c96 100644
--- a/arch/arm/mach-at91/at91sam9261.c
+++ b/arch/arm/mach-at91/at91sam9261.c
@@ -4,7 +4,6 @@
 #include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 
-#include "soc.h"
 #include "generic.h"
 #include "clock.h"
 
@@ -228,6 +227,9 @@ static void at91sam9261_initialize(void)
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9261_BASE_SMC, 0x200);
 }
 
-AT91_SOC_START(sam9261)
-	.init = at91sam9261_initialize,
-AT91_SOC_END
+static int at91sam9261_setup(void)
+{
+	at91_boot_soc = at91sam9261_initialize;
+	return 0;
+}
+pure_initcall(at91sam9261_setup);
diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
index 35d187b4b..ee48115ea 100644
--- a/arch/arm/mach-at91/at91sam9263.c
+++ b/arch/arm/mach-at91/at91sam9263.c
@@ -4,7 +4,6 @@
 #include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 
-#include "soc.h"
 #include "clock.h"
 #include "generic.h"
 
@@ -249,6 +248,9 @@ static void at91sam9263_initialize(void)
 	at91_add_sam9_smc(1, AT91SAM9263_BASE_SMC1, 0x200);
 }
 
-AT91_SOC_START(sam9263)
-	.init = at91sam9263_initialize,
-AT91_SOC_END
+static int at91sam9263_setup(void)
+{
+	at91_boot_soc = at91sam9263_initialize;
+	return 0;
+}
+pure_initcall(at91sam9263_setup);
diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index ce6ce90db..c70036b38 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -6,7 +6,6 @@
 #include <mach/at91_pmc.h>
 #include <mach/cpu.h>
 
-#include "soc.h"
 #include "generic.h"
 #include "clock.h"
 
@@ -264,6 +263,9 @@ static void at91sam9g45_initialize(void)
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9G45_BASE_SMC, 0x200);
 }
 
-AT91_SOC_START(sam9g45)
-	.init = at91sam9g45_initialize,
-AT91_SOC_END
+static int at91sam9g45_setup(void)
+{
+	at91_boot_soc = at91sam9g45_initialize;
+	return 0;
+}
+pure_initcall(at91sam9g45_setup);
diff --git a/arch/arm/mach-at91/at91sam9n12.c b/arch/arm/mach-at91/at91sam9n12.c
index c551f9a74..7ab44e496 100644
--- a/arch/arm/mach-at91/at91sam9n12.c
+++ b/arch/arm/mach-at91/at91sam9n12.c
@@ -6,7 +6,6 @@
 #include <mach/io.h>
 #include <mach/cpu.h>
 
-#include "soc.h"
 #include "generic.h"
 #include "clock.h"
 
@@ -220,6 +219,9 @@ static void at91sam9n12_initialize(void)
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9N12_BASE_SMC, 0x200);
 }
 
-AT91_SOC_START(sam9n12)
-	.init = at91sam9n12_initialize,
-AT91_SOC_END
+static int at91sam9n12_setup(void)
+{
+	at91_boot_soc = at91sam9n12_initialize;
+	return 0;
+}
+pure_initcall(at91sam9n12_setup);
diff --git a/arch/arm/mach-at91/generic.h b/arch/arm/mach-at91/generic.h
index deba01924..d125e5ffd 100644
--- a/arch/arm/mach-at91/generic.h
+++ b/arch/arm/mach-at91/generic.h
@@ -8,8 +8,15 @@
  * published by the Free Software Foundation.
  */
 
- /* Clocks */
+/* function called by setup to perform late init */
+extern void (*at91_boot_soc)(void);
+
+/* Clocks */
+#ifdef CONFIG_COMMON_CLK_OF_PROVIDER
+static inline int __init at91_clock_init(void) { return 0; }
+#else
 extern int __init at91_clock_init(void);
+#endif
 
 static inline struct device_d *at91_add_rm9200_gpio(int id, resource_size_t start)
 {
diff --git a/arch/arm/mach-at91/sama5d3.c b/arch/arm/mach-at91/sama5d3.c
index 85efb2d78..b52c6b49b 100644
--- a/arch/arm/mach-at91/sama5d3.c
+++ b/arch/arm/mach-at91/sama5d3.c
@@ -7,7 +7,6 @@
 #include <mach/cpu.h>
 #include <linux/clk.h>
 
-#include "soc.h"
 #include "generic.h"
 #include "clock.h"
 
@@ -391,6 +390,9 @@ static void sama5d3_initialize(void)
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, SAMA5D3_BASE_HSMC + 0x600, 0xa0);
 }
 
-AT91_SOC_START(sama5d3)
-	.init = sama5d3_initialize,
-AT91_SOC_END
+static int sama5d3_setup(void)
+{
+	at91_boot_soc = sama5d3_initialize;
+	return 0;
+}
+pure_initcall(sama5d3_setup);
diff --git a/arch/arm/mach-at91/sama5d4.c b/arch/arm/mach-at91/sama5d4.c
index 4d380ed88..d6b18fca2 100644
--- a/arch/arm/mach-at91/sama5d4.c
+++ b/arch/arm/mach-at91/sama5d4.c
@@ -16,7 +16,6 @@
 #include <mach/cpu.h>
 #include <linux/clk.h>
 
-#include "soc.h"
 #include "generic.h"
 #include "clock.h"
 
@@ -299,6 +298,9 @@ static void sama5d4_initialize(void)
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, SAMA5D4_BASE_HSMC + 0x600, 0xa0);
 }
 
-AT91_SOC_START(sama5d4)
-	.init = sama5d4_initialize,
-AT91_SOC_END
+static int sama5d4_setup(void)
+{
+	at91_boot_soc = sama5d4_initialize;
+	return 0;
+}
+pure_initcall(sama5d4_setup);
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 8f32af043..7a19c45ea 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -14,10 +14,10 @@
 #include <mach/cpu.h>
 #include <mach/at91_dbgu.h>
 
-#include "soc.h"
 #include "generic.h"
 
-struct at91_init_soc __initdata at91_boot_soc;
+/* function called by at91_detect() - if assigned */
+void __initdata (*at91_boot_soc)(void);
 
 struct at91_socinfo at91_soc_initdata;
 EXPORT_SYMBOL(at91_soc_initdata);
@@ -48,39 +48,32 @@ static void __init soc_detect(u32 dbgu_base)
 		at91_soc_initdata.type = AT91_SOC_RM9200;
 		if (at91_soc_initdata.subtype == AT91_SOC_SUBTYPE_NONE)
 			at91_soc_initdata.subtype = AT91_SOC_RM9200_BGA;
-		at91_boot_soc = at91rm9200_soc;
 		break;
 
 	case ARCH_ID_AT91SAM9260:
 		at91_soc_initdata.type = AT91_SOC_SAM9260;
-		at91_boot_soc = at91sam9260_soc;
 		break;
 
 	case ARCH_ID_AT91SAM9261:
 		at91_soc_initdata.type = AT91_SOC_SAM9261;
-		at91_boot_soc = at91sam9261_soc;
 		break;
 
 	case ARCH_ID_AT91SAM9263:
 		at91_soc_initdata.type = AT91_SOC_SAM9263;
-		at91_boot_soc = at91sam9263_soc;
 		break;
 
 	case ARCH_ID_AT91SAM9G20:
 		at91_soc_initdata.type = AT91_SOC_SAM9G20;
-		at91_boot_soc = at91sam9260_soc;
 		break;
 
 	case ARCH_ID_AT91SAM9G45:
 		at91_soc_initdata.type = AT91_SOC_SAM9G45;
 		if (cidr == ARCH_ID_AT91SAM9G45ES)
 			at91_soc_initdata.subtype = AT91_SOC_SAM9G45ES;
-		at91_boot_soc = at91sam9g45_soc;
 		break;
 
 	case ARCH_ID_AT91SAM9RL64:
 		at91_soc_initdata.type = AT91_SOC_SAM9RL;
-		at91_boot_soc = at91sam9rl_soc;
 		break;
 
 	case ARCH_ID_AT91SAM9X5:
@@ -89,17 +82,14 @@ static void __init soc_detect(u32 dbgu_base)
 
 	case ARCH_ID_AT91SAM9N12:
 		at91_soc_initdata.type = AT91_SOC_SAM9N12;
-		at91_boot_soc = at91sam9n12_soc;
 		break;
 
 	case ARCH_ID_SAMA5:
 		if (at91_soc_initdata.exid & ARCH_EXID_SAMA5D3) {
 			at91_soc_initdata.type = AT91_SOC_SAMA5D3;
-			at91_boot_soc = at91sama5d3_soc;
 		} else {
 			if (at91_soc_initdata.exid & ARCH_EXID_SAMA5D4) {
 				at91_soc_initdata.type = AT91_SOC_SAMA5D4;
-				at91_boot_soc = at91sama5d4_soc;
 			}
 		}
 		break;
@@ -108,13 +98,11 @@ static void __init soc_detect(u32 dbgu_base)
 	/* at91sam9g10 */
 	if ((socid & ~AT91_CIDR_EXT) == ARCH_ID_AT91SAM9G10) {
 		at91_soc_initdata.type = AT91_SOC_SAM9G10;
-		at91_boot_soc = at91sam9261_soc;
 	}
 	/* at91sam9xe */
 	else if ((cidr & AT91_CIDR_ARCH) == ARCH_FAMILY_AT91SAM9XE) {
 		at91_soc_initdata.type = AT91_SOC_SAM9260;
 		at91_soc_initdata.subtype = AT91_SOC_SAM9XE;
-		at91_boot_soc = at91sam9260_soc;
 	}
 
 	if (!at91_soc_is_detected())
@@ -283,17 +271,11 @@ static int at91_detect(void)
 	pr_info("AT91: Detected soc subtype: %s\n",
 		at91_get_soc_subtype(&at91_soc_initdata));
 
-	if (IS_ENABLED(CONFIG_COMMON_CLK_OF_PROVIDER))
-		return 0;
-
-	if (!at91_soc_is_enabled())
-		panic("AT91: Soc not enabled");
-
 	/* Init clock subsystem */
 	at91_clock_init();
 
-	if (at91_boot_soc.init)
-		at91_boot_soc.init();
+	if (at91_boot_soc != NULL)
+		at91_boot_soc();
 
 	return 0;
 }
diff --git a/arch/arm/mach-at91/soc.h b/arch/arm/mach-at91/soc.h
deleted file mode 100644
index 76e4621f8..000000000
--- a/arch/arm/mach-at91/soc.h
+++ /dev/null
@@ -1,76 +0,0 @@
-/*
- * Copyright (C) 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * Under GPLv2
- */
-
-struct at91_init_soc {
-	int builtin;
-	void (*init)(void);
-};
-
-extern struct at91_init_soc at91_boot_soc;
-extern struct at91_init_soc at91rm9200_soc;
-extern struct at91_init_soc at91sam9260_soc;
-extern struct at91_init_soc at91sam9261_soc;
-extern struct at91_init_soc at91sam9263_soc;
-extern struct at91_init_soc at91sam9g45_soc;
-extern struct at91_init_soc at91sam9rl_soc;
-extern struct at91_init_soc at91sam9x5_soc;
-extern struct at91_init_soc at91sam9n12_soc;
-extern struct at91_init_soc at91sama5d3_soc;
-extern struct at91_init_soc at91sama5d4_soc;
-
-#define AT91_SOC_START(_name)				\
-struct at91_init_soc __initdata at91##_name##_soc	\
- __used							\
-						= {	\
-	.builtin	= 1,				\
-
-#define AT91_SOC_END					\
-};
-
-static inline int at91_soc_is_enabled(void)
-{
-	return at91_boot_soc.builtin;
-}
-
-#if !defined(CONFIG_SOC_AT91RM9200)
-#define at91rm9200_soc	at91_boot_soc
-#endif
-
-#if !defined(CONFIG_SOC_AT91SAM9260)
-#define at91sam9260_soc	at91_boot_soc
-#endif
-
-#if !defined(CONFIG_SOC_AT91SAM9261)
-#define at91sam9261_soc	at91_boot_soc
-#endif
-
-#if !defined(CONFIG_SOC_AT91SAM9263)
-#define at91sam9263_soc	at91_boot_soc
-#endif
-
-#if !defined(CONFIG_SOC_AT91SAM9G45)
-#define at91sam9g45_soc	at91_boot_soc
-#endif
-
-#if !defined(CONFIG_SOC_AT91SAM9RL)
-#define at91sam9rl_soc	at91_boot_soc
-#endif
-
-#if !defined(CONFIG_SOC_AT91SAM9X5)
-#define at91sam9x5_soc	at91_boot_soc
-#endif
-
-#if !defined(CONFIG_SOC_AT91SAM9N12)
-#define at91sam9n12_soc	at91_boot_soc
-#endif
-
-#if !defined(CONFIG_ARCH_SAMA5D3)
-#define at91sama5d3_soc	at91_boot_soc
-#endif
-
-#if !defined(CONFIG_ARCH_SAMA5D4)
-#define at91sama5d4_soc	at91_boot_soc
-#endif
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
