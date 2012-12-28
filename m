Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TofRK-0004Id-Bd
 for barebox@lists.infradead.org; Fri, 28 Dec 2012 19:18:13 +0000
Received: from mail637.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 17700FF9749
 for <barebox@lists.infradead.org>; Fri, 28 Dec 2012 20:30:33 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 28 Dec 2012 20:16:10 +0100
Message-Id: <1356722174-22598-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121228191327.GC7216@game.jcrosoft.org>
 <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/13] at91: autodetect the soc one time at postcore_initcall
To: barebox@lists.infradead.org

and then register a device

The code is take from linux

drop AT91_BASE_SYS for dbgu

factorise the soc type in the Kconfig but keep the ARCH_ so far
as the device code have the same function accross soc which for now does not
allow us to compile soc together

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig                  |   99 ++++++++----
 arch/arm/mach-at91/Makefile                 |    2 +-
 arch/arm/mach-at91/at91rm9200.c             |   17 +-
 arch/arm/mach-at91/at91sam9260.c            |   17 +-
 arch/arm/mach-at91/at91sam9261.c            |   17 +-
 arch/arm/mach-at91/at91sam9263.c            |   17 +-
 arch/arm/mach-at91/at91sam9g45.c            |   18 +--
 arch/arm/mach-at91/at91sam9n12.c            |   17 +-
 arch/arm/mach-at91/at91sam9x5.c             |   17 +-
 arch/arm/mach-at91/include/mach/at91_dbgu.h |   26 +--
 arch/arm/mach-at91/include/mach/cpu.h       |  190 +++++++++++-----------
 arch/arm/mach-at91/setup.c                  |  226 +++++++++++++++++++++++++++
 arch/arm/mach-at91/soc.h                    |   66 ++++++++
 13 files changed, 515 insertions(+), 214 deletions(-)
 create mode 100644 arch/arm/mach-at91/setup.c
 create mode 100644 arch/arm/mach-at91/soc.h

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 0ab7e7e..d470e5c 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -49,69 +49,108 @@ config AT91SAM9G45_RESET
 
 comment "Atmel AT91 System-on-Chip"
 
-choice
-	prompt "Atmel AT91 Processor"
-
-config ARCH_AT91RM9200
-	bool "AT91RM9200"
+config SOC_AT91RM9200
+	bool
 	select CPU_ARM920T
 	select HAVE_AT91_DBGU0
 	select HAS_AT91_ETHER
 	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 
-config ARCH_AT91SAM9260
-	bool "AT91SAM9260"
+config SOC_AT91SAM9260
+	bool
 	select CPU_ARM926T
 	select HAVE_AT91_DBGU0
 	select HAS_MACB
 	select AT91SAM9_RESET
+	help
+	  Select this if you are using one of Atmel's AT91SAM9260, AT91SAM9XE
+	  or AT91SAM9G20 SoC.
 
-config ARCH_AT91SAM9261
-	bool "AT91SAM9261"
+config SOC_AT91SAM9261
+	bool
 	select CPU_ARM926T
 	select HAVE_AT91_DBGU0
 	select AT91SAM9_RESET
+	help
+	  Select this if you are using one of Atmel's AT91SAM9261 or AT91SAM9G10 SoC.
 
-config ARCH_AT91SAM9263
-	bool "AT91SAM9263"
+config SOC_AT91SAM9263
+	bool
 	select CPU_ARM926T
 	select HAVE_AT91_DBGU1
 	select HAS_MACB
 	select AT91SAM9_RESET
 
-config ARCH_AT91SAM9G10
-	bool "AT91SAM9G10"
+config SOC_AT91SAM9G45
+	bool
 	select CPU_ARM926T
-	select HAVE_AT91_DBGU0
-	select AT91SAM9_RESET
+	select HAVE_AT91_DBGU1
+	select HAS_MACB
+	select AT91SAM9G45_RESET
+	help
+	  Select this if you are using one of Atmel's AT91SAM9G45 family SoC.
+	  This support covers AT91SAM9G45, AT91SAM9G46, AT91SAM9M10 and AT91SAM9M11.
 
-config ARCH_AT91SAM9G20
-	bool "AT91SAM9G20"
+config SOC_AT91SAM9X5
+	bool
 	select CPU_ARM926T
 	select HAVE_AT91_DBGU0
 	select HAS_MACB
-	select AT91SAM9_RESET
+	select AT91SAM9G45_RESET
+	help
+	  Select this if you are using one of Atmel's AT91SAM9x5 family SoC.
+	  This means that your SAM9 name finishes with a '5' (except if it is
+	  AT91SAM9G45!).
+	  This support covers AT91SAM9G15, AT91SAM9G25, AT91SAM9X25, AT91SAM9G35
+	  and AT91SAM9X35.
 
-config ARCH_AT91SAM9G45
-	bool "AT91SAM9G45 or AT91SAM9M10"
+config SOC_AT91SAM9N12
+	bool
 	select CPU_ARM926T
-	select HAVE_AT91_DBGU1
-	select HAS_MACB
+	select HAVE_AT91_DBGU0
 	select AT91SAM9G45_RESET
+	help
+	  Select this if you are using Atmel's AT91SAM9N12 SoC.
+
+choice
+	prompt "Atmel AT91 Processor"
+
+config ARCH_AT91RM9200
+	bool "AT91RM9200"
+	select MACH_DO_LOWLEVEL_INIT
+	select SOC_AT91RM9200
+
+config ARCH_AT91SAM9260
+	bool "AT91SAM9260"
+	select SOC_AT91SAM9260
+
+config ARCH_AT91SAM9261
+	bool "AT91SAM9261"
+	select SOC_AT91SAM9261
+
+config ARCH_AT91SAM9263
+	bool "AT91SAM9263"
+	select SOC_AT91SAM9263
+
+config ARCH_AT91SAM9G10
+	bool "AT91SAM9G10"
+	select SOC_AT91SAM9261
+
+config ARCH_AT91SAM9G20
+	bool "AT91SAM9G20"
+	select SOC_AT91SAM9260
+
+config ARCH_AT91SAM9G45
+	bool "AT91SAM9G45 or AT91SAM9M10"
+	select SOC_AT91SAM9G45
 
 config ARCH_AT91SAM9X5
 	bool "AT91SAM9X5"
-	select CPU_ARM926T
-	select HAVE_AT91_DBGU0
-	select HAS_MACB
-	select AT91SAM9G45_RESET
+	select SOC_AT91SAM9X5
 
 config ARCH_AT91SAM9N12
 	bool "AT91SAM9N12"
-	select CPU_ARM926T
-	select HAVE_AT91_DBGU0
-	select AT91SAM9G45_RESET
+	select SOC_AT91SAM9N12
 
 endchoice
 
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 7a1e506..865988e 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,4 +1,4 @@
-obj-y += clock.o gpio.o
+obj-y += setup.o clock.o gpio.o
 
 lowlevel_init-y = at91sam926x_lowlevel_init.o
 lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
diff --git a/arch/arm/mach-at91/at91rm9200.c b/arch/arm/mach-at91/at91rm9200.c
index e298c97..d3aedea 100644
--- a/arch/arm/mach-at91/at91rm9200.c
+++ b/arch/arm/mach-at91/at91rm9200.c
@@ -4,6 +4,7 @@
 #include <asm/hardware.h>
 #include <mach/at91_pmc.h>
 
+#include "soc.h"
 #include "clock.h"
 #include "generic.h"
 
@@ -222,27 +223,21 @@ static void __init at91rm9200_register_clocks(void)
 /* --------------------------------------------------------------------
  *  AT91RM9200 processor initialization
  * -------------------------------------------------------------------- */
-static int __init at91rm9200_initialize(void)
+static void __init at91rm9200_initialize(void)
 {
-
 	/* Init clock subsystem */
 	at91_clock_init(AT91_MAIN_CLOCK);
 
 	/* Register the processor-specific clocks */
 	at91rm9200_register_clocks();
 
-	return 0;
-}
-core_initcall(at91rm9200_initialize);
-
-static int at91rm9200_gpio_init(void)
-{
 	/* Register GPIO subsystem */
 	at91_add_rm9200_gpio(0, AT91_BASE_PIOA);
 	at91_add_rm9200_gpio(1, AT91_BASE_PIOB);
 	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
 	at91_add_rm9200_gpio(3, AT91_BASE_PIOD);
-
-	return 0;
 }
-postcore_initcall(at91rm9200_gpio_init);
+
+AT91_SOC_START(rm9200)
+	.init = at91rm9200_initialize,
+AT91_SOC_END
diff --git a/arch/arm/mach-at91/at91sam9260.c b/arch/arm/mach-at91/at91sam9260.c
index b76bfb2..4c76d94 100644
--- a/arch/arm/mach-at91/at91sam9260.c
+++ b/arch/arm/mach-at91/at91sam9260.c
@@ -4,6 +4,7 @@
 #include <asm/hardware.h>
 #include <mach/at91_pmc.h>
 
+#include "soc.h"
 #include "generic.h"
 #include "clock.h"
 
@@ -221,7 +222,7 @@ static void __init at91sam9260_register_clocks(void)
 	clk_register(&pck1);
 }
 
-static int at91sam9260_initialize(void)
+static void at91sam9260_initialize(void)
 {
 	/* Init clock subsystem */
 	at91_clock_init(AT91_MAIN_CLOCK);
@@ -229,18 +230,14 @@ static int at91sam9260_initialize(void)
 	/* Register the processor-specific clocks */
 	at91sam9260_register_clocks();
 
-	return 0;
-}
-core_initcall(at91sam9260_initialize);
-
-static int at91sam9260_gpio_init(void)
-{
 	/* Register GPIO subsystem */
 	at91_add_rm9200_gpio(0, AT91_BASE_PIOA);
 	at91_add_rm9200_gpio(1, AT91_BASE_PIOB);
 	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
-	at91_add_pit(AT91SAM9260_BASE_PIT);
 
-	return 0;
+	at91_add_pit(AT91SAM9260_BASE_PIT);
 }
-postcore_initcall(at91sam9260_gpio_init);
+
+AT91_SOC_START(sam9260)
+	.init = at91sam9260_initialize,
+AT91_SOC_END
diff --git a/arch/arm/mach-at91/at91sam9261.c b/arch/arm/mach-at91/at91sam9261.c
index b449236..1efbbee 100644
--- a/arch/arm/mach-at91/at91sam9261.c
+++ b/arch/arm/mach-at91/at91sam9261.c
@@ -4,6 +4,7 @@
 #include <asm/hardware.h>
 #include <mach/at91_pmc.h>
 
+#include "soc.h"
 #include "generic.h"
 #include "clock.h"
 
@@ -213,7 +214,7 @@ static void at91sam9261_register_clocks(void)
 	clk_register(&hck1);
 }
 
-static int at91sam9261_initialize(void)
+static void at91sam9261_initialize(void)
 {
 	/* Init clock subsystem */
 	at91_clock_init(AT91_MAIN_CLOCK);
@@ -221,18 +222,14 @@ static int at91sam9261_initialize(void)
 	/* Register the processor-specific clocks */
 	at91sam9261_register_clocks();
 
-	return 0;
-}
-core_initcall(at91sam9261_initialize);
-
-static int at91sam9261_gpio_init(void)
-{
 	/* Register GPIO subsystem */
 	at91_add_rm9200_gpio(0, AT91_BASE_PIOA);
 	at91_add_rm9200_gpio(1, AT91_BASE_PIOB);
 	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
-	at91_add_pit(AT91SAM9261_BASE_PIT);
 
-	return 0;
+	at91_add_pit(AT91SAM9261_BASE_PIT);
 }
-postcore_initcall(at91sam9261_gpio_init);
+
+AT91_SOC_START(sam9261)
+	.init = at91sam9261_initialize,
+AT91_SOC_END
diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
index b1522ba..e1fbe6f 100644
--- a/arch/arm/mach-at91/at91sam9263.c
+++ b/arch/arm/mach-at91/at91sam9263.c
@@ -4,6 +4,7 @@
 #include <asm/hardware.h>
 #include <mach/at91_pmc.h>
 
+#include "soc.h"
 #include "clock.h"
 #include "generic.h"
 
@@ -230,7 +231,7 @@ static void __init at91sam9263_register_clocks(void)
 	clk_register(&pck3);
 }
 
-static int at91sam9263_initialize(void)
+static void at91sam9263_initialize(void)
 {
 	/* Init clock subsystem */
 	at91_clock_init(AT91_MAIN_CLOCK);
@@ -238,20 +239,16 @@ static int at91sam9263_initialize(void)
 	/* Register the processor-specific clocks */
 	at91sam9263_register_clocks();
 
-	return 0;
-}
-core_initcall(at91sam9263_initialize);
-
-static int at91sam9263_gpio_init(void)
-{
 	/* Register GPIO subsystem */
 	at91_add_rm9200_gpio(0, AT91_BASE_PIOA);
 	at91_add_rm9200_gpio(1, AT91_BASE_PIOB);
 	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
 	at91_add_rm9200_gpio(3, AT91_BASE_PIOD);
 	at91_add_rm9200_gpio(4, AT91_BASE_PIOE);
-	at91_add_pit(AT91SAM9263_BASE_PIT);
 
-	return 0;
+	at91_add_pit(AT91SAM9263_BASE_PIT);
 }
-postcore_initcall(at91sam9263_gpio_init);
+
+AT91_SOC_START(sam9263)
+	.init = at91sam9263_initialize,
+AT91_SOC_END
diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index 7dcf93e..94fee59 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -6,6 +6,7 @@
 #include <mach/at91_pmc.h>
 #include <mach/cpu.h>
 
+#include "soc.h"
 #include "generic.h"
 #include "clock.h"
 
@@ -242,7 +243,7 @@ static void __init at91sam9g45_register_clocks(void)
 	clk_register(&pck1);
 }
 
-static int at91sam9g45_initialize(void)
+static void at91sam9g45_initialize(void)
 {
 	/* Init clock subsystem */
 	at91_clock_init(AT91_MAIN_CLOCK);
@@ -250,21 +251,16 @@ static int at91sam9g45_initialize(void)
 	/* Register the processor-specific clocks */
 	at91sam9g45_register_clocks();
 
-	return 0;
-}
-
-core_initcall(at91sam9g45_initialize);
-
-static int at91sam9g45_gpio_init(void)
-{
 	/* Register GPIO subsystem */
 	at91_add_rm9200_gpio(0, AT91_BASE_PIOA);
 	at91_add_rm9200_gpio(1, AT91_BASE_PIOB);
 	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
 	at91_add_rm9200_gpio(3, AT91_BASE_PIOD);
 	at91_add_rm9200_gpio(4, AT91_BASE_PIOE);
-	at91_add_pit(AT91SAM9G45_BASE_PIT);
 
-	return 0;
+	at91_add_pit(AT91SAM9G45_BASE_PIT);
 }
-postcore_initcall(at91sam9g45_gpio_init);
+
+AT91_SOC_START(sam9g45)
+	.init = at91sam9g45_initialize,
+AT91_SOC_END
diff --git a/arch/arm/mach-at91/at91sam9n12.c b/arch/arm/mach-at91/at91sam9n12.c
index 3777f70..d1b7ce1 100644
--- a/arch/arm/mach-at91/at91sam9n12.c
+++ b/arch/arm/mach-at91/at91sam9n12.c
@@ -6,6 +6,7 @@
 #include <mach/io.h>
 #include <mach/cpu.h>
 
+#include "soc.h"
 #include "generic.h"
 #include "clock.h"
 
@@ -203,7 +204,7 @@ static void __init at91sam9n12_register_clocks(void)
  *  AT91SAM9N12 processor initialization
  * -------------------------------------------------------------------- */
 
-static int at91sam9n12_initialize(void)
+static void at91sam9n12_initialize(void)
 {
 	/* Init clock subsystem */
 	at91_clock_init(AT91_MAIN_CLOCK);
@@ -211,19 +212,15 @@ static int at91sam9n12_initialize(void)
 	/* Register the processor-specific clocks */
 	at91sam9n12_register_clocks();
 
-	return 0;
-}
-core_initcall(at91sam9n12_initialize);
-
-static int at91sam9n12_gpio_init(void)
-{
 	/* Register GPIO subsystem */
 	at91_add_sam9x5_gpio(0, AT91_BASE_PIOA);
 	at91_add_sam9x5_gpio(1, AT91_BASE_PIOB);
 	at91_add_sam9x5_gpio(2, AT91_BASE_PIOC);
 	at91_add_sam9x5_gpio(3, AT91_BASE_PIOD);
-	at91_add_pit(AT91SAM9N12_BASE_PIT);
 
-	return 0;
+	at91_add_pit(AT91SAM9N12_BASE_PIT);
 }
-postcore_initcall(at91sam9n12_gpio_init);
+
+AT91_SOC_START(sam9n12)
+	.init = at91sam9n12_initialize,
+AT91_SOC_END
diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
index 306d3f3..7b58e12 100644
--- a/arch/arm/mach-at91/at91sam9x5.c
+++ b/arch/arm/mach-at91/at91sam9x5.c
@@ -6,6 +6,7 @@
 #include <mach/io.h>
 #include <mach/cpu.h>
 
+#include "soc.h"
 #include "generic.h"
 #include "clock.h"
 
@@ -288,7 +289,7 @@ static void __init at91sam9x5_register_clocks(void)
  *  AT91SAM9x5 processor initialization
  * -------------------------------------------------------------------- */
 
-static int at91sam9x5_initialize(void)
+static void at91sam9x5_initialize(void)
 {
 	/* Init clock subsystem */
 	at91_clock_init(AT91_MAIN_CLOCK);
@@ -296,19 +297,15 @@ static int at91sam9x5_initialize(void)
 	/* Register the processor-specific clocks */
 	at91sam9x5_register_clocks();
 
-	return 0;
-}
-core_initcall(at91sam9x5_initialize);
-
-static int at91sam9x5_gpio_init(void)
-{
 	/* Register GPIO subsystem */
 	at91_add_sam9x5_gpio(0, AT91_BASE_PIOA);
 	at91_add_sam9x5_gpio(1, AT91_BASE_PIOB);
 	at91_add_sam9x5_gpio(2, AT91_BASE_PIOC);
 	at91_add_sam9x5_gpio(3, AT91_BASE_PIOD);
-	at91_add_pit(AT91SAM9X5_BASE_PIT);
 
-	return 0;
+	at91_add_pit(AT91SAM9X5_BASE_PIT);
 }
-postcore_initcall(at91sam9x5_gpio_init);
+
+AT91_SOC_START(sam9x5)
+	.init = at91sam9x5_initialize,
+AT91_SOC_END
diff --git a/arch/arm/mach-at91/include/mach/at91_dbgu.h b/arch/arm/mach-at91/include/mach/at91_dbgu.h
index 6dcaa77..3b59485 100644
--- a/arch/arm/mach-at91/include/mach/at91_dbgu.h
+++ b/arch/arm/mach-at91/include/mach/at91_dbgu.h
@@ -16,22 +16,22 @@
 #ifndef AT91_DBGU_H
 #define AT91_DBGU_H
 
-#ifdef AT91_DBGU
-#define AT91_DBGU_CR		(AT91_DBGU + 0x00)	/* Control Register */
-#define AT91_DBGU_MR		(AT91_DBGU + 0x04)	/* Mode Register */
-#define AT91_DBGU_IER		(AT91_DBGU + 0x08)	/* Interrupt Enable Register */
+#if !defined(CONFIG_ARCH_AT91X40)
+#define AT91_DBGU_CR		(0x00)	/* Control Register */
+#define AT91_DBGU_MR		(0x04)	/* Mode Register */
+#define AT91_DBGU_IER		(0x08)	/* Interrupt Enable Register */
 #define		AT91_DBGU_TXRDY		(1 << 1)		/* Transmitter Ready */
 #define		AT91_DBGU_TXEMPTY	(1 << 9)		/* Transmitter Empty */
-#define AT91_DBGU_IDR		(AT91_DBGU + 0x0c)	/* Interrupt Disable Register */
-#define AT91_DBGU_IMR		(AT91_DBGU + 0x10)	/* Interrupt Mask Register */
-#define AT91_DBGU_SR		(AT91_DBGU + 0x14)	/* Status Register */
-#define AT91_DBGU_RHR		(AT91_DBGU + 0x18)	/* Receiver Holding Register */
-#define AT91_DBGU_THR		(AT91_DBGU + 0x1c)	/* Transmitter Holding Register */
-#define AT91_DBGU_BRGR		(AT91_DBGU + 0x20)	/* Baud Rate Generator Register */
+#define AT91_DBGU_IDR		(0x0c)	/* Interrupt Disable Register */
+#define AT91_DBGU_IMR		(0x10)	/* Interrupt Mask Register */
+#define AT91_DBGU_SR		(0x14)	/* Status Register */
+#define AT91_DBGU_RHR		(0x18)	/* Receiver Holding Register */
+#define AT91_DBGU_THR		(0x1c)	/* Transmitter Holding Register */
+#define AT91_DBGU_BRGR		(0x20)	/* Baud Rate Generator Register */
 
-#define AT91_DBGU_CIDR		(AT91_DBGU + 0x40)	/* Chip ID Register */
-#define AT91_DBGU_EXID		(AT91_DBGU + 0x44)	/* Chip ID Extension Register */
-#define AT91_DBGU_FNR		(AT91_DBGU + 0x48)	/* Force NTRST Register [SAM9 only] */
+#define AT91_DBGU_CIDR		(0x40)	/* Chip ID Register */
+#define AT91_DBGU_EXID		(0x44)	/* Chip ID Extension Register */
+#define AT91_DBGU_FNR		(0x48)	/* Force NTRST Register [SAM9 only] */
 #define		AT91_DBGU_FNTRST	(1 << 0)		/* Force NTRST */
 
 #endif /* AT91_DBGU */
diff --git a/arch/arm/mach-at91/include/mach/cpu.h b/arch/arm/mach-at91/include/mach/cpu.h
index 636fe03..b6504c1 100644
--- a/arch/arm/mach-at91/include/mach/cpu.h
+++ b/arch/arm/mach-at91/include/mach/cpu.h
@@ -1,7 +1,8 @@
 /*
  * arch/arm/mach-at91/include/mach/cpu.h
  *
- *  Copyright (C) 2006 SAN People
+ * Copyright (C) 2006 SAN People
+ * Copyright (C) 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  *
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
@@ -10,12 +11,8 @@
  *
  */
 
-#ifndef __ASM_ARCH_CPU_H
-#define __ASM_ARCH_CPU_H
-
-#include <mach/hardware.h>
-#include <mach/at91_dbgu.h>
-
+#ifndef __MACH_CPU_H__
+#define __MACH_CPU_H__
 
 #define ARCH_ID_AT91RM9200	0x09290780
 #define ARCH_ID_AT91SAM9260	0x019803a0
@@ -29,29 +26,16 @@
 #define ARCH_ID_AT91SAM9G45ES	0x819b05a1	/* 9G45-ES (Engineering Sample) */
 #define ARCH_ID_AT91SAM9X5	0x819a05a0
 #define ARCH_ID_AT91SAM9N12	0x819a07a0
-#define ARCH_ID_AT91CAP9	0x039A03A0
 
 #define ARCH_ID_AT91SAM9XE128	0x329973a0
 #define ARCH_ID_AT91SAM9XE256	0x329a93a0
 #define ARCH_ID_AT91SAM9XE512	0x329aa3a0
 
-#define ARCH_ID_AT572D940HF	0x0e0303e0
-
 #define ARCH_ID_AT91M40800	0x14080044
 #define ARCH_ID_AT91R40807	0x44080746
 #define ARCH_ID_AT91M40807	0x14080745
 #define ARCH_ID_AT91R40008	0x44000840
 
-static inline unsigned long at91_cpu_identify(void)
-{
-	return (at91_sys_read(AT91_DBGU_CIDR) & ~AT91_CIDR_VERSION);
-}
-
-static inline unsigned long at91_cpu_fully_identify(void)
-{
-	return at91_sys_read(AT91_DBGU_CIDR);
-}
-
 #define ARCH_EXID_AT91SAM9M11	0x00000001
 #define ARCH_EXID_AT91SAM9M10	0x00000002
 #define ARCH_EXID_AT91SAM9G46	0x00000003
@@ -63,86 +47,116 @@ static inline unsigned long at91_cpu_fully_identify(void)
 #define ARCH_EXID_AT91SAM9G25	0x00000003
 #define ARCH_EXID_AT91SAM9X25	0x00000004
 
-static inline unsigned long at91_exid_identify(void)
-{
-	return at91_sys_read(AT91_DBGU_EXID);
-}
-
-
 #define ARCH_FAMILY_AT91X92	0x09200000
 #define ARCH_FAMILY_AT91SAM9	0x01900000
 #define ARCH_FAMILY_AT91SAM9XE	0x02900000
 
-static inline unsigned long at91_arch_identify(void)
-{
-	return (at91_sys_read(AT91_DBGU_CIDR) & AT91_CIDR_ARCH);
-}
+/* RM9200 type */
+#define ARCH_REVISON_9200_BGA	(0 << 0)
+#define ARCH_REVISON_9200_PQFP	(1 << 0)
+
+#ifndef __ASSEMBLY__
+enum at91_soc_type {
+	/* 920T */
+	AT91_SOC_RM9200,
+
+	/* SAM92xx */
+	AT91_SOC_SAM9260, AT91_SOC_SAM9261, AT91_SOC_SAM9263,
+
+	/* SAM9Gxx */
+	AT91_SOC_SAM9G10, AT91_SOC_SAM9G20, AT91_SOC_SAM9G45,
+
+	/* SAM9RL */
+	AT91_SOC_SAM9RL,
+
+	/* SAM9X5 */
+	AT91_SOC_SAM9X5,
+
+	/* SAM9N12 */
+	AT91_SOC_SAM9N12,
 
-#ifdef CONFIG_ARCH_AT91CAP9
-#include <mach/at91_pmc.h>
+	/* Unknown type */
+	AT91_SOC_NONE
+};
 
-#define ARCH_REVISION_CAP9_B	0x399
-#define ARCH_REVISION_CAP9_C	0x601
+enum at91_soc_subtype {
+	/* RM9200 */
+	AT91_SOC_RM9200_BGA, AT91_SOC_RM9200_PQFP,
 
-static inline unsigned long at91cap9_rev_identify(void)
+	/* SAM9260 */
+	AT91_SOC_SAM9XE,
+
+	/* SAM9G45 */
+	AT91_SOC_SAM9G45ES, AT91_SOC_SAM9M10, AT91_SOC_SAM9G46, AT91_SOC_SAM9M11,
+
+	/* SAM9X5 */
+	AT91_SOC_SAM9G15, AT91_SOC_SAM9G35, AT91_SOC_SAM9X35,
+	AT91_SOC_SAM9G25, AT91_SOC_SAM9X25,
+
+	/* Unknown subtype */
+	AT91_SOC_SUBTYPE_NONE
+};
+
+struct at91_socinfo {
+	unsigned int type, subtype;
+	unsigned int cidr, exid;
+};
+
+extern struct at91_socinfo at91_soc_initdata;
+const char *at91_get_soc_type(struct at91_socinfo *c);
+const char *at91_get_soc_subtype(struct at91_socinfo *c);
+
+static inline int at91_soc_is_detected(void)
 {
-	return (at91_pmc_read(AT91_PMC_VER));
+	return at91_soc_initdata.type != AT91_SOC_NONE;
 }
-#endif
 
-#ifdef CONFIG_ARCH_AT91RM9200
-#define cpu_is_at91rm9200()	(at91_cpu_identify() == ARCH_ID_AT91RM9200)
+#ifdef CONFIG_SOC_AT91RM9200
+#define cpu_is_at91rm9200()	(at91_soc_initdata.type == AT91_SOC_RM9200)
+#define cpu_is_at91rm9200_bga()	(at91_soc_initdata.subtype == AT91_SOC_RM9200_BGA)
+#define cpu_is_at91rm9200_pqfp() (at91_soc_initdata.subtype == AT91_SOC_RM9200_PQFP)
 #else
 #define cpu_is_at91rm9200()	(0)
+#define cpu_is_at91rm9200_bga()	(0)
+#define cpu_is_at91rm9200_pqfp() (0)
 #endif
 
-#ifdef CONFIG_ARCH_AT91SAM9260
-#define cpu_is_at91sam9xe()	(at91_arch_identify() == ARCH_FAMILY_AT91SAM9XE)
-#define cpu_is_at91sam9260()	((at91_cpu_identify() == ARCH_ID_AT91SAM9260) || cpu_is_at91sam9xe())
+#ifdef CONFIG_SOC_AT91SAM9260
+#define cpu_is_at91sam9xe()	(at91_soc_initdata.subtype == AT91_SOC_SAM9XE)
+#define cpu_is_at91sam9260()	(at91_soc_initdata.type == AT91_SOC_SAM9260)
+#define cpu_is_at91sam9g20()	(at91_soc_initdata.type == AT91_SOC_SAM9G20)
 #else
 #define cpu_is_at91sam9xe()	(0)
 #define cpu_is_at91sam9260()	(0)
-#endif
-
-#ifdef CONFIG_ARCH_AT91SAM9G20
-#define cpu_is_at91sam9g20()	(at91_cpu_identify() == ARCH_ID_AT91SAM9G20)
-#else
 #define cpu_is_at91sam9g20()	(0)
 #endif
 
-#ifdef CONFIG_ARCH_AT91SAM9261
-#define cpu_is_at91sam9261()	(at91_cpu_identify() == ARCH_ID_AT91SAM9261)
+#ifdef CONFIG_SOC_AT91SAM9261
+#define cpu_is_at91sam9261()	(at91_soc_initdata.type == AT91_SOC_SAM9261)
+#define cpu_is_at91sam9g10()	(at91_soc_initdata.type == AT91_SOC_SAM9G10)
 #else
 #define cpu_is_at91sam9261()	(0)
-#endif
-
-#ifdef CONFIG_ARCH_AT91SAM9G10
-#define cpu_is_at91sam9g10()	((at91_cpu_identify() & ~AT91_CIDR_EXT)	== ARCH_ID_AT91SAM9G10)
-#else
 #define cpu_is_at91sam9g10()	(0)
 #endif
 
-#ifdef CONFIG_ARCH_AT91SAM9263
-#define cpu_is_at91sam9263()	(at91_cpu_identify() == ARCH_ID_AT91SAM9263)
+#ifdef CONFIG_SOC_AT91SAM9263
+#define cpu_is_at91sam9263()	(at91_soc_initdata.type == AT91_SOC_SAM9263)
 #else
 #define cpu_is_at91sam9263()	(0)
 #endif
 
-#ifdef CONFIG_ARCH_AT91SAM9RL
-#define cpu_is_at91sam9rl()	(at91_cpu_identify() == ARCH_ID_AT91SAM9RL64)
+#ifdef CONFIG_SOC_AT91SAM9RL
+#define cpu_is_at91sam9rl()	(at91_soc_initdata.type == AT91_SOC_SAM9RL)
 #else
 #define cpu_is_at91sam9rl()	(0)
 #endif
 
-#ifdef CONFIG_ARCH_AT91SAM9G45
-#define cpu_is_at91sam9g45()	(at91_cpu_identify() == ARCH_ID_AT91SAM9G45)
-#define cpu_is_at91sam9g45es()	(at91_cpu_fully_identify() == ARCH_ID_AT91SAM9G45ES)
-#define cpu_is_at91sam9m10()    (cpu_is_at91sam9g45() && \
-                                (at91_exid_identify() == ARCH_EXID_AT91SAM9M10))
-#define cpu_is_at91sam9m46()    (cpu_is_at91sam9g45() && \
-                                (at91_exid_identify() == ARCH_EXID_AT91SAM9G46))
-#define cpu_is_at91sam9m11()    (cpu_is_at91sam9g45() && \
-                                (at91_exid_identify() == ARCH_EXID_AT91SAM9M11))
+#ifdef CONFIG_SOC_AT91SAM9G45
+#define cpu_is_at91sam9g45()	(at91_soc_initdata.type == AT91_SOC_SAM9G45)
+#define cpu_is_at91sam9g45es()	(at91_soc_initdata.subtype == AT91_SOC_SAM9G45ES)
+#define cpu_is_at91sam9m10()	(at91_soc_initdata.subtype == AT91_SOC_SAM9M10)
+#define cpu_is_at91sam9g46()	(at91_soc_initdata.subtype == AT91_SOC_SAM9G46)
+#define cpu_is_at91sam9m11()	(at91_soc_initdata.subtype == AT91_SOC_SAM9M11)
 #else
 #define cpu_is_at91sam9g45()	(0)
 #define cpu_is_at91sam9g45es()	(0)
@@ -151,18 +165,13 @@ static inline unsigned long at91cap9_rev_identify(void)
 #define cpu_is_at91sam9m11()	(0)
 #endif
 
-#ifdef CONFIG_ARCH_AT91SAM9X5
-#define cpu_is_at91sam9x5()	(at91_cpu_identify() == ARCH_ID_AT91SAM9X5)
-#define cpu_is_at91sam9g15()	(cpu_is_at91sam9x5() && \
-				(at91_exid_identify() == ARCH_EXID_AT91SAM9G15))
-#define cpu_is_at91sam9g35()	(cpu_is_at91sam9x5() && \
-				(at91_exid_identify() == ARCH_EXID_AT91SAM9G35))
-#define cpu_is_at91sam9x35()	(cpu_is_at91sam9x5() && \
-				(at91_exid_identify() == ARCH_EXID_AT91SAM9X35))
-#define cpu_is_at91sam9g25()	(cpu_is_at91sam9x5() && \
-				(at91_exid_identify() == ARCH_EXID_AT91SAM9G25))
-#define cpu_is_at91sam9x25()	(cpu_is_at91sam9x5() && \
-				(at91_exid_identify() == ARCH_EXID_AT91SAM9X25))
+#ifdef CONFIG_SOC_AT91SAM9X5
+#define cpu_is_at91sam9x5()	(at91_soc_initdata.type == AT91_SOC_SAM9X5)
+#define cpu_is_at91sam9g15()	(at91_soc_initdata.subtype == AT91_SOC_SAM9G15)
+#define cpu_is_at91sam9g35()	(at91_soc_initdata.subtype == AT91_SOC_SAM9G35)
+#define cpu_is_at91sam9x35()	(at91_soc_initdata.subtype == AT91_SOC_SAM9X35)
+#define cpu_is_at91sam9g25()	(at91_soc_initdata.subtype == AT91_SOC_SAM9G25)
+#define cpu_is_at91sam9x25()	(at91_soc_initdata.subtype == AT91_SOC_SAM9X25)
 #else
 #define cpu_is_at91sam9x5()	(0)
 #define cpu_is_at91sam9g15()	(0)
@@ -172,32 +181,17 @@ static inline unsigned long at91cap9_rev_identify(void)
 #define cpu_is_at91sam9x25()	(0)
 #endif
 
-#ifdef CONFIG_ARCH_AT91SAM9N12
-#define cpu_is_at91sam9n12()	(at91_cpu_identify() == ARCH_ID_AT91SAM9N12)
+#ifdef CONFIG_SOC_AT91SAM9N12
+#define cpu_is_at91sam9n12()	(at91_soc_initdata.type == AT91_SOC_SAM9N12)
 #else
 #define cpu_is_at91sam9n12()	(0)
 #endif
 
-#ifdef CONFIG_ARCH_AT91CAP9
-#define cpu_is_at91cap9()	(at91_cpu_identify() == ARCH_ID_AT91CAP9)
-#define cpu_is_at91cap9_revB()	(at91cap9_rev_identify() == ARCH_REVISION_CAP9_B)
-#define cpu_is_at91cap9_revC()	(at91cap9_rev_identify() == ARCH_REVISION_CAP9_C)
-#else
-#define cpu_is_at91cap9()	(0)
-#define cpu_is_at91cap9_revB()	(0)
-#define cpu_is_at91cap9_revC()	(0)
-#endif
-
-#ifdef CONFIG_ARCH_AT572D940HF
-#define cpu_is_at572d940hf() (at91_cpu_identify() == ARCH_ID_AT572D940HF)
-#else
-#define cpu_is_at572d940hf() (0)
-#endif
-
 /*
  * Since this is ARM, we will never run on any AVR32 CPU. But these
  * definitions may reduce clutter in common drivers.
  */
 #define cpu_is_at32ap7000()	(0)
+#endif /* __ASSEMBLY__ */
 
-#endif
+#endif /* __MACH_CPU_H__ */
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
new file mode 100644
index 0000000..9b73bcf
--- /dev/null
+++ b/arch/arm/mach-at91/setup.c
@@ -0,0 +1,226 @@
+/*
+ * Copyright (C) 2007 Atmel Corporation.
+ * Copyright (C) 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <io.h>
+#include <init.h>
+
+#include <mach/hardware.h>
+#include <mach/cpu.h>
+#include <mach/at91_dbgu.h>
+
+#include "soc.h"
+
+struct at91_init_soc __initdata at91_boot_soc;
+
+struct at91_socinfo at91_soc_initdata;
+EXPORT_SYMBOL(at91_soc_initdata);
+
+void __init at91rm9200_set_type(int type)
+{
+	if (type == ARCH_REVISON_9200_PQFP)
+		at91_soc_initdata.subtype = AT91_SOC_RM9200_PQFP;
+	else
+		at91_soc_initdata.subtype = AT91_SOC_RM9200_BGA;
+
+	pr_info("AT91: filled in soc subtype: %s\n",
+		at91_get_soc_subtype(&at91_soc_initdata));
+}
+
+static void __init soc_detect(u32 dbgu_base)
+{
+	u32 cidr, socid;
+
+	cidr = __raw_readl(dbgu_base + AT91_DBGU_CIDR);
+	socid = cidr & ~AT91_CIDR_VERSION;
+
+	switch (socid) {
+	case ARCH_ID_AT91RM9200:
+		at91_soc_initdata.type = AT91_SOC_RM9200;
+		if (at91_soc_initdata.subtype == AT91_SOC_SUBTYPE_NONE)
+			at91_soc_initdata.subtype = AT91_SOC_RM9200_BGA;
+		at91_boot_soc = at91rm9200_soc;
+		break;
+
+	case ARCH_ID_AT91SAM9260:
+		at91_soc_initdata.type = AT91_SOC_SAM9260;
+		at91_boot_soc = at91sam9260_soc;
+		break;
+
+	case ARCH_ID_AT91SAM9261:
+		at91_soc_initdata.type = AT91_SOC_SAM9261;
+		at91_boot_soc = at91sam9261_soc;
+		break;
+
+	case ARCH_ID_AT91SAM9263:
+		at91_soc_initdata.type = AT91_SOC_SAM9263;
+		at91_boot_soc = at91sam9263_soc;
+		break;
+
+	case ARCH_ID_AT91SAM9G20:
+		at91_soc_initdata.type = AT91_SOC_SAM9G20;
+		at91_boot_soc = at91sam9260_soc;
+		break;
+
+	case ARCH_ID_AT91SAM9G45:
+		at91_soc_initdata.type = AT91_SOC_SAM9G45;
+		if (cidr == ARCH_ID_AT91SAM9G45ES)
+			at91_soc_initdata.subtype = AT91_SOC_SAM9G45ES;
+		at91_boot_soc = at91sam9g45_soc;
+		break;
+
+	case ARCH_ID_AT91SAM9RL64:
+		at91_soc_initdata.type = AT91_SOC_SAM9RL;
+		at91_boot_soc = at91sam9rl_soc;
+		break;
+
+	case ARCH_ID_AT91SAM9X5:
+		at91_soc_initdata.type = AT91_SOC_SAM9X5;
+		at91_boot_soc = at91sam9x5_soc;
+		break;
+
+	case ARCH_ID_AT91SAM9N12:
+		at91_soc_initdata.type = AT91_SOC_SAM9N12;
+		at91_boot_soc = at91sam9n12_soc;
+		break;
+	}
+
+	/* at91sam9g10 */
+	if ((socid & ~AT91_CIDR_EXT) == ARCH_ID_AT91SAM9G10) {
+		at91_soc_initdata.type = AT91_SOC_SAM9G10;
+		at91_boot_soc = at91sam9261_soc;
+	}
+	/* at91sam9xe */
+	else if ((cidr & AT91_CIDR_ARCH) == ARCH_FAMILY_AT91SAM9XE) {
+		at91_soc_initdata.type = AT91_SOC_SAM9260;
+		at91_soc_initdata.subtype = AT91_SOC_SAM9XE;
+		at91_boot_soc = at91sam9260_soc;
+	}
+
+	if (!at91_soc_is_detected())
+		return;
+
+	at91_soc_initdata.cidr = cidr;
+
+	/* sub version of soc */
+	at91_soc_initdata.exid = __raw_readl(dbgu_base + AT91_DBGU_EXID);
+
+	if (at91_soc_initdata.type == AT91_SOC_SAM9G45) {
+		switch (at91_soc_initdata.exid) {
+		case ARCH_EXID_AT91SAM9M10:
+			at91_soc_initdata.subtype = AT91_SOC_SAM9M10;
+			break;
+		case ARCH_EXID_AT91SAM9G46:
+			at91_soc_initdata.subtype = AT91_SOC_SAM9G46;
+			break;
+		case ARCH_EXID_AT91SAM9M11:
+			at91_soc_initdata.subtype = AT91_SOC_SAM9M11;
+			break;
+		}
+	}
+
+	if (at91_soc_initdata.type == AT91_SOC_SAM9X5) {
+		switch (at91_soc_initdata.exid) {
+		case ARCH_EXID_AT91SAM9G15:
+			at91_soc_initdata.subtype = AT91_SOC_SAM9G15;
+			break;
+		case ARCH_EXID_AT91SAM9G35:
+			at91_soc_initdata.subtype = AT91_SOC_SAM9G35;
+			break;
+		case ARCH_EXID_AT91SAM9X35:
+			at91_soc_initdata.subtype = AT91_SOC_SAM9X35;
+			break;
+		case ARCH_EXID_AT91SAM9G25:
+			at91_soc_initdata.subtype = AT91_SOC_SAM9G25;
+			break;
+		case ARCH_EXID_AT91SAM9X25:
+			at91_soc_initdata.subtype = AT91_SOC_SAM9X25;
+			break;
+		}
+	}
+}
+
+static const char *soc_name[] = {
+	[AT91_SOC_RM9200]	= "at91rm9200",
+	[AT91_SOC_SAM9260]	= "at91sam9260",
+	[AT91_SOC_SAM9261]	= "at91sam9261",
+	[AT91_SOC_SAM9263]	= "at91sam9263",
+	[AT91_SOC_SAM9G10]	= "at91sam9g10",
+	[AT91_SOC_SAM9G20]	= "at91sam9g20",
+	[AT91_SOC_SAM9G45]	= "at91sam9g45",
+	[AT91_SOC_SAM9RL]	= "at91sam9rl",
+	[AT91_SOC_SAM9X5]	= "at91sam9x5",
+	[AT91_SOC_SAM9N12]	= "at91sam9n12",
+	[AT91_SOC_NONE]		= "Unknown"
+};
+
+const char *at91_get_soc_type(struct at91_socinfo *c)
+{
+	return soc_name[c->type];
+}
+EXPORT_SYMBOL(at91_get_soc_type);
+
+static const char *soc_subtype_name[] = {
+	[AT91_SOC_RM9200_BGA]	= "at91rm9200 BGA",
+	[AT91_SOC_RM9200_PQFP]	= "at91rm9200 PQFP",
+	[AT91_SOC_SAM9XE]	= "at91sam9xe",
+	[AT91_SOC_SAM9G45ES]	= "at91sam9g45es",
+	[AT91_SOC_SAM9M10]	= "at91sam9m10",
+	[AT91_SOC_SAM9G46]	= "at91sam9g46",
+	[AT91_SOC_SAM9M11]	= "at91sam9m11",
+	[AT91_SOC_SAM9G15]	= "at91sam9g15",
+	[AT91_SOC_SAM9G35]	= "at91sam9g35",
+	[AT91_SOC_SAM9X35]	= "at91sam9x35",
+	[AT91_SOC_SAM9G25]	= "at91sam9g25",
+	[AT91_SOC_SAM9X25]	= "at91sam9x25",
+	[AT91_SOC_SUBTYPE_NONE]	= "Unknown"
+};
+
+const char *at91_get_soc_subtype(struct at91_socinfo *c)
+{
+	return soc_subtype_name[c->subtype];
+}
+EXPORT_SYMBOL(at91_get_soc_subtype);
+
+static int at91_detect(void)
+{
+	at91_soc_initdata.type = AT91_SOC_NONE;
+	at91_soc_initdata.subtype = AT91_SOC_SUBTYPE_NONE;
+
+	soc_detect(AT91_BASE_DBGU0);
+	if (!at91_soc_is_detected())
+		soc_detect(AT91_BASE_DBGU1);
+
+	if (!at91_soc_is_detected())
+		panic("AT91: Impossible to detect the SOC type");
+
+	pr_info("AT91: Detected soc type: %s\n",
+		at91_get_soc_type(&at91_soc_initdata));
+	pr_info("AT91: Detected soc subtype: %s\n",
+		at91_get_soc_subtype(&at91_soc_initdata));
+
+	if (!at91_soc_is_enabled())
+		panic("AT91: Soc not enabled");
+
+	if (at91_boot_soc.init)
+		at91_boot_soc.init();
+
+	return 0;
+}
+postcore_initcall(at91_detect);
+
+static int at91_soc_device(void)
+{
+	struct device_d *dev;
+
+	dev = add_generic_device_res("soc", DEVICE_ID_SINGLE, NULL, 0, NULL);
+	dev_add_param_fixed(dev, "name", (char*)at91_get_soc_type(&at91_soc_initdata));
+	dev_add_param_fixed(dev, "subname", (char*)at91_get_soc_subtype(&at91_soc_initdata));
+
+	return 0;
+}
+coredevice_initcall(at91_soc_device);
diff --git a/arch/arm/mach-at91/soc.h b/arch/arm/mach-at91/soc.h
new file mode 100644
index 0000000..8019ced
--- /dev/null
+++ b/arch/arm/mach-at91/soc.h
@@ -0,0 +1,66 @@
+/*
+ * Copyright (C) 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+struct at91_init_soc {
+	int builtin;
+	void (*init)(void);
+};
+
+extern struct at91_init_soc at91_boot_soc;
+extern struct at91_init_soc at91rm9200_soc;
+extern struct at91_init_soc at91sam9260_soc;
+extern struct at91_init_soc at91sam9261_soc;
+extern struct at91_init_soc at91sam9263_soc;
+extern struct at91_init_soc at91sam9g45_soc;
+extern struct at91_init_soc at91sam9rl_soc;
+extern struct at91_init_soc at91sam9x5_soc;
+extern struct at91_init_soc at91sam9n12_soc;
+
+#define AT91_SOC_START(_name)				\
+struct at91_init_soc __initdata at91##_name##_soc	\
+ __used							\
+						= {	\
+	.builtin	= 1,				\
+
+#define AT91_SOC_END					\
+};
+
+static inline int at91_soc_is_enabled(void)
+{
+	return at91_boot_soc.builtin;
+}
+
+#if !defined(CONFIG_SOC_AT91RM9200)
+#define at91rm9200_soc	at91_boot_soc
+#endif
+
+#if !defined(CONFIG_SOC_AT91SAM9260)
+#define at91sam9260_soc	at91_boot_soc
+#endif
+
+#if !defined(CONFIG_SOC_AT91SAM9261)
+#define at91sam9261_soc	at91_boot_soc
+#endif
+
+#if !defined(CONFIG_SOC_AT91SAM9263)
+#define at91sam9263_soc	at91_boot_soc
+#endif
+
+#if !defined(CONFIG_SOC_AT91SAM9G45)
+#define at91sam9g45_soc	at91_boot_soc
+#endif
+
+#if !defined(CONFIG_SOC_AT91SAM9RL)
+#define at91sam9rl_soc	at91_boot_soc
+#endif
+
+#if !defined(CONFIG_SOC_AT91SAM9X5)
+#define at91sam9x5_soc	at91_boot_soc
+#endif
+
+#if !defined(CONFIG_SOC_AT91SAM9N12)
+#define at91sam9n12_soc	at91_boot_soc
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
