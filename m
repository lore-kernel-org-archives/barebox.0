Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJhAN-0000g9-Iw
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:52:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:51:12 +0100
Message-Id: <20181105155113.3434-22-s.hauer@pengutronix.de>
In-Reply-To: <20181105155113.3434-1-s.hauer@pengutronix.de>
References: <20181105155113.3434-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 21/22] ARM: at91: separate restart handler registration into
 SoC specific code
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig                    | 14 -------------
 arch/arm/mach-at91/Makefile                   |  6 +++---
 arch/arm/mach-at91/at91sam9260.c              | 11 ++++++++++
 arch/arm/mach-at91/at91sam9261.c              | 11 ++++++++++
 arch/arm/mach-at91/at91sam9263.c              | 11 ++++++++++
 arch/arm/mach-at91/at91sam9_reset.S           | 12 ++---------
 arch/arm/mach-at91/at91sam9g45.c              | 11 ++++++++++
 arch/arm/mach-at91/at91sam9g45_reset.S        | 12 ++---------
 arch/arm/mach-at91/at91sam9n12.c              | 11 ++++++++++
 arch/arm/mach-at91/at91sam9x5.c               | 20 +++++++++++++++++++
 .../include/mach/at91sam926x_board_init.h     |  2 ++
 arch/arm/mach-at91/include/mach/at91sam9x5.h  |  2 +-
 arch/arm/mach-at91/include/mach/board.h       |  3 +++
 arch/arm/mach-at91/include/mach/sama5d3.h     |  1 +
 arch/arm/mach-at91/include/mach/sama5d4.h     |  1 +
 arch/arm/mach-at91/sama5d3.c                  | 11 ++++++++++
 arch/arm/mach-at91/sama5d4.c                  | 11 ++++++++++
 arch/arm/mach-at91/setup.c                    |  8 --------
 18 files changed, 112 insertions(+), 46 deletions(-)
 create mode 100644 arch/arm/mach-at91/at91sam9x5.c

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 2c949098f0..7a895c2689 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -74,12 +74,6 @@ config HAVE_NAND_ATMEL_BUSWIDTH_16
 config HAVE_AT91_DATAFLASH_CARD
 	bool
 
-config AT91SAM9_RESET
-	bool
-
-config AT91SAM9G45_RESET
-	bool
-
 config HAVE_AT91_LOAD_BAREBOX_SRAM
 	bool
 
@@ -96,7 +90,6 @@ config SOC_AT91SAM9260
 	select SOC_AT91SAM9
 	select HAVE_AT91_DBGU0
 	select HAS_MACB
-	select AT91SAM9_RESET
 	help
 	  Select this if you are using one of Atmel's AT91SAM9260, AT91SAM9XE
 	  or AT91SAM9G20 SoC.
@@ -105,7 +98,6 @@ config SOC_AT91SAM9261
 	bool
 	select SOC_AT91SAM9
 	select HAVE_AT91_DBGU0
-	select AT91SAM9_RESET
 	help
 	  Select this if you are using one of Atmel's AT91SAM9261 or AT91SAM9G10 SoC.
 
@@ -114,7 +106,6 @@ config SOC_AT91SAM9263
 	select SOC_AT91SAM9
 	select HAVE_AT91_DBGU1
 	select HAS_MACB
-	select AT91SAM9_RESET
 	select HAVE_AT91_LOAD_BAREBOX_SRAM
 
 config SOC_AT91SAM9G45
@@ -122,7 +113,6 @@ config SOC_AT91SAM9G45
 	select SOC_AT91SAM9
 	select HAVE_AT91_DBGU1
 	select HAS_MACB
-	select AT91SAM9G45_RESET
 	help
 	  Select this if you are using one of Atmel's AT91SAM9G45 family SoC.
 	  This support covers AT91SAM9G45, AT91SAM9G46, AT91SAM9M10 and AT91SAM9M11.
@@ -132,7 +122,6 @@ config SOC_AT91SAM9X5
 	select SOC_AT91SAM9
 	select HAVE_AT91_DBGU0
 	select HAS_MACB
-	select AT91SAM9G45_RESET
 	select HAVE_AT91_SMD
 	select HAVE_AT91_USB_CLK
 	select HAVE_AT91_UTMI
@@ -148,7 +137,6 @@ config SOC_AT91SAM9N12
 	bool
 	select SOC_AT91SAM9
 	select HAVE_AT91_DBGU0
-	select AT91SAM9G45_RESET
 	help
 	  Select this if you are using Atmel's AT91SAM9N12 SoC.
 
@@ -203,7 +191,6 @@ config ARCH_SAMA5D3
 	select SOC_SAMA5
 	select HAVE_AT91_DBGU1
 	select HAS_MACB
-	select AT91SAM9G45_RESET
 	select HAVE_MACH_ARM_HEAD
 
 config ARCH_SAMA5D4
@@ -211,7 +198,6 @@ config ARCH_SAMA5D4
 	select SOC_SAMA5
 	select HAVE_AT91_DBGU2
 	select HAS_MACB
-	select AT91SAM9G45_RESET
 	select HAVE_MACH_ARM_HEAD
 
 endchoice
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index afbc896eea..d81683ac12 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -8,8 +8,8 @@ obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
 
 obj-$(CONFIG_AT91_BOOTSTRAP)	+= bootstrap.o
 
-obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
-obj-$(CONFIG_AT91SAM9G45_RESET) += at91sam9g45_reset.o
+obj-y += at91sam9_reset.o
+obj-y += at91sam9g45_reset.o
 
 obj-$(CONFIG_AT91SAM9_SMC) += sam9_smc.o
 
@@ -24,6 +24,6 @@ obj-$(CONFIG_ARCH_SAMA5D3)	+= sama5d3.o sama5d3_devices.o
 endif
 obj-$(CONFIG_ARCH_AT91SAM9G20) += at91sam9260.o at91sam9260_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o
-obj-$(CONFIG_ARCH_AT91SAM9X5)	+= at91sam9x5_devices.o
+obj-$(CONFIG_ARCH_AT91SAM9X5)	+= at91sam9x5.o at91sam9x5_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9N12)	+= at91sam9n12.o at91sam9n12_devices.o
 obj-$(CONFIG_ARCH_SAMA5D4)	+= sama5d4.o sama5d4_devices.o
diff --git a/arch/arm/mach-at91/at91sam9260.c b/arch/arm/mach-at91/at91sam9260.c
index 8975bf4665..56327a2c47 100644
--- a/arch/arm/mach-at91/at91sam9260.c
+++ b/arch/arm/mach-at91/at91sam9260.c
@@ -1,8 +1,11 @@
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
+#include <restart.h>
 #include <mach/hardware.h>
 #include <mach/at91_pmc.h>
+#include <mach/board.h>
+#include <mach/at91_rstc.h>
 
 #include "generic.h"
 #include "clock.h"
@@ -221,6 +224,12 @@ static void __init at91sam9260_register_clocks(void)
 	clk_register(&pck1);
 }
 
+static void at91sam9260_restart(struct restart_handler *rst)
+{
+	at91sam9_reset(IOMEM(AT91SAM9260_BASE_SDRAMC),
+		       IOMEM(AT91SAM9260_BASE_RSTC + AT91_RSTC_CR));
+}
+
 static void at91sam9260_initialize(void)
 {
 	/* Register the processor-specific clocks */
@@ -233,6 +242,8 @@ static void at91sam9260_initialize(void)
 
 	at91_add_pit(AT91SAM9260_BASE_PIT);
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9260_BASE_SMC, 0x200);
+
+	restart_handler_register_fn(at91sam9260_restart);
 }
 
 static int at91sam9260_setup(void)
diff --git a/arch/arm/mach-at91/at91sam9261.c b/arch/arm/mach-at91/at91sam9261.c
index 35aaa9c96a..4abc556354 100644
--- a/arch/arm/mach-at91/at91sam9261.c
+++ b/arch/arm/mach-at91/at91sam9261.c
@@ -1,8 +1,11 @@
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
+#include <restart.h>
 #include <mach/hardware.h>
 #include <mach/at91_pmc.h>
+#include <mach/board.h>
+#include <mach/at91_rstc.h>
 
 #include "generic.h"
 #include "clock.h"
@@ -213,6 +216,12 @@ static void at91sam9261_register_clocks(void)
 	clk_register(&hck1);
 }
 
+static void at91sam9261_restart(struct restart_handler *rst)
+{
+	at91sam9_reset(IOMEM(AT91SAM9261_BASE_SDRAMC),
+		       IOMEM(AT91SAM9261_BASE_RSTC + AT91_RSTC_CR));
+}
+
 static void at91sam9261_initialize(void)
 {
 	/* Register the processor-specific clocks */
@@ -225,6 +234,8 @@ static void at91sam9261_initialize(void)
 
 	at91_add_pit(AT91SAM9261_BASE_PIT);
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9261_BASE_SMC, 0x200);
+
+	restart_handler_register_fn(at91sam9261_restart);
 }
 
 static int at91sam9261_setup(void)
diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
index ee48115ea8..690f8e06bb 100644
--- a/arch/arm/mach-at91/at91sam9263.c
+++ b/arch/arm/mach-at91/at91sam9263.c
@@ -1,8 +1,11 @@
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
+#include <restart.h>
 #include <mach/hardware.h>
 #include <mach/at91_pmc.h>
+#include <mach/board.h>
+#include <mach/at91_rstc.h>
 
 #include "clock.h"
 #include "generic.h"
@@ -231,6 +234,12 @@ static void __init at91sam9263_register_clocks(void)
 	clk_register(&pck3);
 }
 
+static void at91sam9263_restart(struct restart_handler *rst)
+{
+	at91sam9_reset(IOMEM(AT91SAM9263_BASE_SDRAMC0),
+		       IOMEM(AT91SAM9263_BASE_RSTC + AT91_RSTC_CR));
+}
+
 static void at91sam9263_initialize(void)
 {
 	/* Register the processor-specific clocks */
@@ -246,6 +255,8 @@ static void at91sam9263_initialize(void)
 	at91_add_pit(AT91SAM9263_BASE_PIT);
 	at91_add_sam9_smc(0, AT91SAM9263_BASE_SMC0, 0x200);
 	at91_add_sam9_smc(1, AT91SAM9263_BASE_SMC1, 0x200);
+
+	restart_handler_register_fn(at91sam9263_restart);
 }
 
 static int at91sam9263_setup(void)
diff --git a/arch/arm/mach-at91/at91sam9_reset.S b/arch/arm/mach-at91/at91sam9_reset.S
index c10674aa40..65e22f4fe7 100644
--- a/arch/arm/mach-at91/at91sam9_reset.S
+++ b/arch/arm/mach-at91/at91sam9_reset.S
@@ -20,12 +20,9 @@
 
 			.arm
 
-			.globl	restart_sam9
+			.globl	at91sam9_reset
 
-restart_sam9:		ldr	r0, .at91_va_base_sdramc			@ preload constants
-			ldr	r1, .at91_va_base_rstc_cr
-
-			mov	r2, #1
+at91sam9_reset:		mov	r2, #1
 			mov	r3, #AT91_SDRAMC_LPCB_POWER_DOWN
 			ldr	r4, =AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST
 
@@ -36,8 +33,3 @@ restart_sam9:		ldr	r0, .at91_va_base_sdramc			@ preload constants
 			str	r4, [r1]					@ reset processor
 
 			b	.
-
-.at91_va_base_sdramc:
-	.word AT91_BASE_SYS + AT91_SDRAMC
-.at91_va_base_rstc_cr:
-	.word AT91_BASE_SYS + AT91_RSTC + AT91_RSTC_CR
diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index 29294ae28f..569aa274fc 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -1,9 +1,12 @@
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
+#include <restart.h>
 #include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/cpu.h>
+#include <mach/board.h>
+#include <mach/at91_rstc.h>
 
 #include "generic.h"
 #include "clock.h"
@@ -246,6 +249,12 @@ static void __init at91sam9g45_register_clocks(void)
 	clk_register(&pck1);
 }
 
+static void at91sam9g45_restart(struct restart_handler *rst)
+{
+	at91sam9g45_reset(IOMEM(AT91SAM9G45_BASE_DDRSDRC0),
+			  IOMEM(AT91SAM9G45_BASE_RSTC + AT91_RSTC_CR));
+}
+
 static void at91sam9g45_initialize(void)
 {
 	/* Register the processor-specific clocks */
@@ -260,6 +269,8 @@ static void at91sam9g45_initialize(void)
 
 	at91_add_pit(AT91SAM9G45_BASE_PIT);
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9G45_BASE_SMC, 0x200);
+
+	restart_handler_register_fn(at91sam9g45_restart);
 }
 
 static int at91sam9g45_setup(void)
diff --git a/arch/arm/mach-at91/at91sam9g45_reset.S b/arch/arm/mach-at91/at91sam9g45_reset.S
index be2ad9d396..6a58de618c 100644
--- a/arch/arm/mach-at91/at91sam9g45_reset.S
+++ b/arch/arm/mach-at91/at91sam9g45_reset.S
@@ -17,12 +17,9 @@
 
 			.arm
 
-			.globl	restart_sam9g45
+			.globl	at91sam9g45_reset
 
-restart_sam9g45:	ldr	r0, .at91_va_base_sdramc	@ preload constants
-			ldr	r1, .at91_va_base_rstc_cr
-
-			mov	r2, #1
+at91sam9g45_reset:	mov	r2, #1
 			mov	r3, #AT91_DDRSDRC_LPCB_POWER_DOWN
 			ldr	r4, =AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST
 
@@ -33,8 +30,3 @@ restart_sam9g45:	ldr	r0, .at91_va_base_sdramc	@ preload constants
 			str	r4, [r1]			@ reset processor
 
 			b	.
-
-.at91_va_base_sdramc:
-	.word AT91_BASE_SYS + AT91_DDRSDRC0
-.at91_va_base_rstc_cr:
-	.word AT91_BASE_SYS + AT91_RSTC + AT91_RSTC_CR
diff --git a/arch/arm/mach-at91/at91sam9n12.c b/arch/arm/mach-at91/at91sam9n12.c
index f764af2861..365bded56e 100644
--- a/arch/arm/mach-at91/at91sam9n12.c
+++ b/arch/arm/mach-at91/at91sam9n12.c
@@ -1,9 +1,12 @@
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
+#include <restart.h>
 #include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/cpu.h>
+#include <mach/board.h>
+#include <mach/at91_rstc.h>
 
 #include "generic.h"
 #include "clock.h"
@@ -199,6 +202,12 @@ static void __init at91sam9n12_register_clocks(void)
 
 }
 
+static void at91sam9n12_restart(struct restart_handler *rst)
+{
+	at91sam9g45_reset(IOMEM(AT91SAM9N12_BASE_DDRSDRC0),
+			  IOMEM(AT91SAM9N12_BASE_RSTC + AT91_RSTC_CR));
+}
+
 /* --------------------------------------------------------------------
  *  AT91SAM9N12 processor initialization
  * -------------------------------------------------------------------- */
@@ -216,6 +225,8 @@ static void at91sam9n12_initialize(void)
 
 	at91_add_pit(AT91SAM9N12_BASE_PIT);
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9N12_BASE_SMC, 0x200);
+
+	restart_handler_register_fn(at91sam9n12_restart);
 }
 
 static int at91sam9n12_setup(void)
diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
new file mode 100644
index 0000000000..40ba9ed56e
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam9x5.c
@@ -0,0 +1,20 @@
+#include <common.h>
+#include <init.h>
+#include <restart.h>
+#include <mach/at91sam9x5.h>
+#include <mach/board.h>
+#include <mach/at91_rstc.h>
+
+static void at91sam9x5_restart(struct restart_handler *rst)
+{
+	at91sam9g45_reset(IOMEM(AT91SAM9X5_BASE_DDRSDRC0),
+			  IOMEM(AT91SAM9X5_BASE_RSTC + AT91_RSTC_CR));
+}
+
+static int at91sam9x5_initialize(void)
+{
+	restart_handler_register_fn(at91sam9x5_restart);
+
+	return 0;
+}
+coredevice_initcall(at91sam9x5_initialize);
diff --git a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
index cbb08b9c7e..0a036a9db2 100644
--- a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
+++ b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
@@ -21,6 +21,8 @@
 #include <mach/at91sam926x.h>
 
 #define AT91SAM926X_BASE_PMC	0xfffffc00
+#define AT91SAM926X_BASE_RSTC	0xfffffd00
+#define AT91SAM926X_BASE_WDT	0xfffffd40
 
 struct at91sam926x_board_cfg {
 	/* SoC specific */
diff --git a/arch/arm/mach-at91/include/mach/at91sam9x5.h b/arch/arm/mach-at91/include/mach/at91sam9x5.h
index 3ea2501b4c..54544968f5 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9x5.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9x5.h
@@ -90,7 +90,7 @@
  * System Peripherals
  */
 #define AT91SAM9X5_BASE_MATRIX		0xffffde00
-#define AT9SAM9X5_BASE1_PMECC		0xffffe000
+#define AT91SAM9X5_BASE_PMECC		0xffffe000
 #define AT91SAM9X5_BASE_PMERRLOC	0xffffe600
 #define AT91SAM9X5_BASE_DDRSDRC0	0xffffe800
 #define AT91SAM9X5_BASE_SMC		0xffffea00
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 56c86f0bfb..0f2c269732 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -167,4 +167,7 @@ void __init at91_add_device_lcdc(struct atmel_lcdfb_platform_data *data);
 
 void at91sam_phy_reset(void __iomem *rstc_base);
 
+void at91sam9_reset(void __iomem *sdram, void __iomem *rstc_cr);
+void at91sam9g45_reset(void __iomem *sdram, void __iomem *rstc_cr);
+
 #endif
diff --git a/arch/arm/mach-at91/include/mach/sama5d3.h b/arch/arm/mach-at91/include/mach/sama5d3.h
index 2c64fdf48a..69f4f3d5df 100644
--- a/arch/arm/mach-at91/include/mach/sama5d3.h
+++ b/arch/arm/mach-at91/include/mach/sama5d3.h
@@ -98,6 +98,7 @@
 #define SAMA5D3_BASE_PIOE	0xfffffa00
 #define SAMA5D3_BASE_MPDDRC	0xffffea00
 #define	SAMA5D3_BASE_HSMC	0xffffc000
+#define SAMA5D3_BASE_RSTC	0xfffffe00
 #define SAMA5D3_BASE_PIT	0xfffffe30
 #define SAMA5D3_BASE_WDT	0xfffffe40
 
diff --git a/arch/arm/mach-at91/include/mach/sama5d4.h b/arch/arm/mach-at91/include/mach/sama5d4.h
index 5ff0ffa131..022530e9f9 100644
--- a/arch/arm/mach-at91/include/mach/sama5d4.h
+++ b/arch/arm/mach-at91/include/mach/sama5d4.h
@@ -106,6 +106,7 @@
 #define SAMA5D4_BASE_PMECC	0xfc05c070 /* (PMECC) Base Address */
 #define SAMA5D4_BASE_PMERRLOC	0xfc05c500 /* (PMERRLOC) Base Address */
 #define SAMA5D4_BASE_PIOD	0xfc068000 /* (PIOD) Base Address */
+#define SAMA5D4_BASE_RSTC	0xfc068600
 #define SAMA5D4_BASE_PIT	0xfc068630 /* (PIT) Base Address */
 #define SAMA5D4_BASE_DBGU	0xfc069000 /* (DBGU) Base Address */
 #define SAMA5D4_BASE_PIOA	0xfc06a000 /* (PIOA) Base Address */
diff --git a/arch/arm/mach-at91/sama5d3.c b/arch/arm/mach-at91/sama5d3.c
index 01c724f940..a5d464eca0 100644
--- a/arch/arm/mach-at91/sama5d3.c
+++ b/arch/arm/mach-at91/sama5d3.c
@@ -1,9 +1,12 @@
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
+#include <restart.h>
 #include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/cpu.h>
+#include <mach/board.h>
+#include <mach/at91_rstc.h>
 #include <linux/clk.h>
 
 #include "generic.h"
@@ -369,6 +372,12 @@ static void __init sama5d3_register_clocks(void)
 	//clk_enable(&dma1_clk);
 }
 
+static void sama5d3_restart(struct restart_handler *rst)
+{
+	at91sam9g45_reset(IOMEM(SAMA5D3_BASE_MPDDRC),
+			  IOMEM(SAMA5D3_BASE_RSTC + AT91_RSTC_CR));
+}
+
 /* --------------------------------------------------------------------
  *  AT91SAM9x5 processor initialization
  * -------------------------------------------------------------------- */
@@ -387,6 +396,8 @@ static void sama5d3_initialize(void)
 
 	at91_add_pit(SAMA5D3_BASE_PIT);
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, SAMA5D3_BASE_HSMC + 0x600, 0xa0);
+
+	restart_handler_register_fn(sama5d3_restart);
 }
 
 static int sama5d3_setup(void)
diff --git a/arch/arm/mach-at91/sama5d4.c b/arch/arm/mach-at91/sama5d4.c
index 137800f825..ca09dfe425 100644
--- a/arch/arm/mach-at91/sama5d4.c
+++ b/arch/arm/mach-at91/sama5d4.c
@@ -10,9 +10,12 @@
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
+#include <restart.h>
 #include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/cpu.h>
+#include <mach/board.h>
+#include <mach/at91_rstc.h>
 #include <linux/clk.h>
 
 #include "generic.h"
@@ -278,6 +281,12 @@ static void __init sama5d4_register_clocks(void)
 	clk_register(&pck2);
 }
 
+static void sama5d4_restart(struct restart_handler *rst)
+{
+	at91sam9g45_reset(IOMEM(SAMA5D4_BASE_MPDDRC),
+			  IOMEM(SAMA5D4_BASE_RSTC + AT91_RSTC_CR));
+}
+
 /* --------------------------------------------------------------------
  *  Processor initialization
  * -------------------------------------------------------------------- */
@@ -295,6 +304,8 @@ static void sama5d4_initialize(void)
 
 	at91_add_pit(SAMA5D4_BASE_PIT);
 	at91_add_sam9_smc(DEVICE_ID_SINGLE, SAMA5D4_BASE_HSMC + 0x600, 0xa0);
+
+	restart_handler_register_fn(sama5d4_restart);
 }
 
 static int sama5d4_setup(void)
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 0cc3cc3dec..adc614c42c 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -283,9 +283,6 @@ static int at91_detect(void)
 }
 postcore_initcall(at91_detect);
 
-void restart_sam9(struct restart_handler *rst);
-void restart_sam9g45(struct restart_handler *rst);
-
 static int at91_soc_device(void)
 {
 	struct device_d *dev;
@@ -294,11 +291,6 @@ static int at91_soc_device(void)
 	dev_add_param_fixed(dev, "name", (char*)at91_get_soc_type(&at91_soc_initdata));
 	dev_add_param_fixed(dev, "subname", (char*)at91_get_soc_subtype(&at91_soc_initdata));
 
-	if (IS_ENABLED(CONFIG_AT91SAM9_RESET))
-		restart_handler_register_fn(restart_sam9);
-	if (IS_ENABLED(CONFIG_AT91SAM9G45_RESET))
-		restart_handler_register_fn(restart_sam9g45);
-
 	return 0;
 }
 coredevice_initcall(at91_soc_device);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
