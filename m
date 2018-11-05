Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJh9z-0000Ot-26
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:51:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:50:56 +0100
Message-Id: <20181105155113.3434-6-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/22] ARM: at91: remove unused defines
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/include/mach/at91rm9200.h  | 20 -------------
 arch/arm/mach-at91/include/mach/at91sam9260.h | 29 +------------------
 arch/arm/mach-at91/include/mach/at91sam9261.h | 14 ---------
 arch/arm/mach-at91/include/mach/at91sam9263.h | 23 +--------------
 .../include/mach/at91sam926x_board_init.h     |  3 +-
 arch/arm/mach-at91/include/mach/at91sam9g45.h | 17 -----------
 arch/arm/mach-at91/include/mach/at91sam9n12.h | 11 -------
 arch/arm/mach-at91/include/mach/at91sam9x5.h  | 11 -------
 arch/arm/mach-at91/include/mach/sama5d3.h     |  2 --
 9 files changed, 4 insertions(+), 126 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/at91rm9200.h b/arch/arm/mach-at91/include/mach/at91rm9200.h
index 4fe8fd891c..8e323ea615 100644
--- a/arch/arm/mach-at91/include/mach/at91rm9200.h
+++ b/arch/arm/mach-at91/include/mach/at91rm9200.h
@@ -19,8 +19,6 @@
 /*
  * Peripheral identifiers/interrupts.
  */
-#define AT91_ID_FIQ		0	/* Advanced Interrupt Controller (FIQ) */
-#define AT91_ID_SYS		1	/* System Peripheral */
 #define AT91RM9200_ID_PIOA	2	/* Parallel IO Controller A */
 #define AT91RM9200_ID_PIOB	3	/* Parallel IO Controller B */
 #define AT91RM9200_ID_PIOC	4	/* Parallel IO Controller C */
@@ -99,21 +97,8 @@
 #define AT91_RTC	(0xfffffe00 - AT91_BASE_SYS)	/* Real-Time Clock */
 #define AT91_MC		(0xffffff00 - AT91_BASE_SYS)	/* Memory Controllers */
 
-#define AT91_BASE_PIOA	AT91RM9200_BASE_PIOA	/* PIO Controller A */
-#define AT91_BASE_PIOB	AT91RM9200_BASE_PIOB	/* PIO Controller B */
-#define AT91_BASE_PIOC	AT91RM9200_BASE_PIOC	/* PIO Controller C */
-#define AT91_BASE_PIOD	AT91RM9200_BASE_PIOD	/* PIO Controller D */
-
-#define AT91_USART0	AT91RM9200_BASE_US0
-#define AT91_USART1	AT91RM9200_BASE_US1
-#define AT91_USART2	AT91RM9200_BASE_US2
-#define AT91_USART3	AT91RM9200_BASE_US3
 #define AT91_NB_USART	5
 
-#define AT91_BASE_SPI	AT91RM9200_BASE_SPI
-#define AT91_BASE_TWI	AT91RM9200_BASE_TWI
-#define AT91_ID_UHP	AT91RM9200_ID_UHP
-#define AT91_PMC_UHP	AT91RM9200_PMC_UHP
 #define AT91_TC		(AT91RM9200_BASE_TC0 - AT91_BASE_SYS)
 
 #define AT91_MATRIX	0	/* not supported */
@@ -133,9 +118,4 @@
 
 #define AT91_VA_BASE_EMAC	AT91RM9200_BASE_EMAC
 
-/*
- * Cpu Name
- */
-#define AT91_CPU_NAME	"AT91RM9200"
-
 #endif
diff --git a/arch/arm/mach-at91/include/mach/at91sam9260.h b/arch/arm/mach-at91/include/mach/at91sam9260.h
index 919901d6da..1cff76b4ee 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9260.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9260.h
@@ -18,8 +18,6 @@
 /*
  * Peripheral identifiers/interrupts.
  */
-#define AT91_ID_FIQ		0	/* Advanced Interrupt Controller (FIQ) */
-#define AT91_ID_SYS		1	/* System Peripherals */
 #define AT91SAM9260_ID_PIOA	2	/* Parallel IO Controller A */
 #define AT91SAM9260_ID_PIOB	3	/* Parallel IO Controller B */
 #define AT91SAM9260_ID_PIOC	4	/* Parallel IO Controller C */
@@ -105,25 +103,9 @@
 #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
 
-#define AT91_BASE_WDT	AT91SAM9260_BASE_WDT
 #define AT91_BASE_SMC	AT91SAM9260_BASE_SMC
-#define AT91_BASE_PIOA	AT91SAM9260_BASE_PIOA
-#define AT91_BASE_PIOA	AT91SAM9260_BASE_PIOA
-#define AT91_BASE_PIOB	AT91SAM9260_BASE_PIOB
-#define AT91_BASE_PIOC	AT91SAM9260_BASE_PIOC
-
-#define AT91_USART0	AT91SAM9260_BASE_US0
-#define AT91_USART1	AT91SAM9260_BASE_US1
-#define AT91_USART2	AT91SAM9260_BASE_US2
-#define AT91_USART3	AT91SAM9260_BASE_US3
-#define AT91_USART4	AT91SAM9260_BASE_US4
-#define AT91_USART5	AT91SAM9260_BASE_US5
-#define AT91_NB_USART	7
 
-#define AT91_BASE_SPI	AT91SAM9260_BASE_SPI0
-#define AT91_BASE_TWI	AT91SAM9260_BASE_TWI
-#define AT91_ID_UHP	AT91SAM9260_ID_UHP
-#define AT91_PMC_UHP	AT91SAM926x_PMC_UHP
+#define AT91_NB_USART	7
 
 #define AT91_PMC	0xfffffc00
 
@@ -157,13 +139,4 @@
 
 #define AT91SAM9G20_UHP_BASE	0x00500000	/* USB Host controller */
 
-/*
- * Cpu Name
- */
-#if defined(CONFIG_AT91SAM9260)
-#define AT91_CPU_NAME	"AT91SAM9260"
-#elif defined(CONFIG_AT91SAM9G20)
-#define AT91_CPU_NAME	"AT91SAM9G20"
-#endif
-
 #endif
diff --git a/arch/arm/mach-at91/include/mach/at91sam9261.h b/arch/arm/mach-at91/include/mach/at91sam9261.h
index 9124df5caa..d9172879b9 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9261.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9261.h
@@ -18,8 +18,6 @@
 /*
  * Peripheral identifiers/interrupts.
  */
-#define AT91_ID_FIQ		0	/* Advanced Interrupt Controller (FIQ) */
-#define AT91_ID_SYS		1	/* System Peripherals */
 #define AT91SAM9261_ID_PIOA	2	/* Parallel IO Controller A */
 #define AT91SAM9261_ID_PIOB	3	/* Parallel IO Controller B */
 #define AT91SAM9261_ID_PIOC	4	/* Parallel IO Controller C */
@@ -91,15 +89,8 @@
 #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
 
-#define AT91_BASE_WDT	AT91SAM9261_BASE_WDT
 #define AT91_BASE_SMC	AT91SAM9261_BASE_SMC
-#define AT91_BASE_PIOA	AT91SAM9261_BASE_PIOA
-#define AT91_BASE_PIOB	AT91SAM9261_BASE_PIOB
-#define AT91_BASE_PIOC	AT91SAM9261_BASE_PIOC
 
-#define AT91_USART0	AT91SAM9261_BASE_US0
-#define AT91_USART1	AT91SAM9261_BASE_US1
-#define AT91_USART2	AT91SAM9261_BASE_US2
 #define AT91_NB_USART	4
 
 #define AT91_PMC	0xfffffc00
@@ -119,9 +110,4 @@
 #define AT91SAM9261_UHP_BASE	0x00500000	/* USB Host controller */
 #define AT91SAM9261_LCDC_BASE	0x00600000	/* LDC controller */
 
-/*
- * Cpu Name
- */
-#define AT91_CPU_NAME	"AT91SAM9261"
-
 #endif
diff --git a/arch/arm/mach-at91/include/mach/at91sam9263.h b/arch/arm/mach-at91/include/mach/at91sam9263.h
index e7ca8b63aa..f1dd848cc0 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9263.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9263.h
@@ -18,8 +18,6 @@
 /*
  * Peripheral identifiers/interrupts.
  */
-#define AT91_ID_FIQ		0	/* Advanced Interrupt Controller (FIQ) */
-#define AT91_ID_SYS		1	/* System Peripherals */
 #define AT91SAM9263_ID_PIOA	2	/* Parallel IO Controller A */
 #define AT91SAM9263_ID_PIOB	3	/* Parallel IO Controller B */
 #define AT91SAM9263_ID_PIOCDE	4	/* Parallel IO Controller C, D and E */
@@ -109,26 +107,12 @@
 #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
 
-#define AT91_BASE_WDT	AT91SAM9263_BASE_WDT
 #define AT91_BASE_SMC	AT91SAM9263_BASE_SMC0
-#define AT91_BASE_PIOA	AT91SAM9263_BASE_PIOA
-#define AT91_BASE_PIOB	AT91SAM9263_BASE_PIOB
-#define AT91_BASE_PIOC	AT91SAM9263_BASE_PIOC
-#define AT91_BASE_PIOD	AT91SAM9263_BASE_PIOD
-#define AT91_BASE_PIOE	AT91SAM9263_BASE_PIOE
-
-#define AT91_USART0	AT91SAM9263_BASE_US0
-#define AT91_USART1	AT91SAM9263_BASE_US1
-#define AT91_USART2	AT91SAM9263_BASE_US2
+
 #define AT91_NB_USART	4
 
 #define AT91_SDRAMC	AT91_SDRAMC0
 
-#define AT91_BASE_SPI	AT91SAM9263_BASE_SPI0
-#define AT91_BASE_TWI	AT91SAM9263_BASE_TWI
-#define AT91_ID_UHP	AT91SAM9263_ID_UHP
-#define AT91_PMC_UHP	AT91SAM926x_PMC_UHP
-
 #define AT91_PMC	0xfffffc00
 
 /*
@@ -147,9 +131,4 @@
 #define AT91SAM9263_DMAC_BASE	0x00800000	/* DMA Controller */
 #define AT91SAM9263_UHP_BASE	0x00a00000	/* USB Host controller */
 
-/*
- * Cpu Name
- */
-#define AT91_CPU_NAME	"AT91SAM9263"
-
 #endif
diff --git a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
index 7cacc0c8d7..749baaa8a6 100644
--- a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
+++ b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
@@ -18,6 +18,7 @@
 #include <mach/at91_wdt.h>
 #include <mach/hardware.h>
 #include <mach/gpio.h>
+#include <mach/at91sam926x.h>
 
 struct at91sam926x_board_cfg {
 	/* SoC specific */
@@ -124,7 +125,7 @@ static void __always_inline at91sam926x_board_init(struct at91sam926x_board_cfg
 	if (!IS_ENABLED(CONFIG_AT91SAM926X_BOARD_INIT))
 		return;
 
-	__raw_writel(cfg->wdt_mr, AT91_BASE_WDT + AT91_WDT_MR);
+	__raw_writel(cfg->wdt_mr, AT91SAM926X_BASE_WDT + AT91_WDT_MR);
 
 	/* configure PIOx as EBI0 D[16-31] */
 	at91_mux_gpio_disable(cfg->pio, cfg->ebi_pio_pdr);
diff --git a/arch/arm/mach-at91/include/mach/at91sam9g45.h b/arch/arm/mach-at91/include/mach/at91sam9g45.h
index 7faa435b83..2847541f9a 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9g45.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9g45.h
@@ -18,8 +18,6 @@
 /*
  * Peripheral identifiers/interrupts.
  */
-#define AT91_ID_FIQ		0	/* Advanced Interrupt Controller (FIQ) */
-#define AT91_ID_SYS		1	/* System Controller Interrupt */
 #define AT91SAM9G45_ID_PIOA	2	/* Parallel I/O Controller A */
 #define AT91SAM9G45_ID_PIOB	3	/* Parallel I/O Controller B */
 #define AT91SAM9G45_ID_PIOC	4	/* Parallel I/O Controller C */
@@ -120,18 +118,8 @@
 #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
 
-#define AT91_BASE_WDT	AT91SAM9G45_BASE_WDT
 #define AT91_BASE_SMC	AT91SAM9G45_BASE_SMC
-#define AT91_BASE_PIOA	AT91SAM9G45_BASE_PIOA
-#define AT91_BASE_PIOB	AT91SAM9G45_BASE_PIOB
-#define AT91_BASE_PIOC	AT91SAM9G45_BASE_PIOC
-#define AT91_BASE_PIOD	AT91SAM9G45_BASE_PIOD
-#define AT91_BASE_PIOE	AT91SAM9G45_BASE_PIOE
 
-#define AT91_USART0	AT91SAM9G45_BASE_US0
-#define AT91_USART1	AT91SAM9G45_BASE_US1
-#define AT91_USART2	AT91SAM9G45_BASE_US2
-#define AT91_USART3	AT91SAM9G45_BASE_US3
 #define AT91_NB_USART	5
 
 #define AT91_PMC	0xfffffc00
@@ -153,9 +141,4 @@
 
 #define CONFIG_DRAM_BASE	AT91_CHIPSELECT_6
 
-/*
- * Cpu Name
- */
-#define AT91_CPU_NAME	"AT91SAM9G45"
-
 #endif
diff --git a/arch/arm/mach-at91/include/mach/at91sam9n12.h b/arch/arm/mach-at91/include/mach/at91sam9n12.h
index cbb4f81da8..7fdd7528a0 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9n12.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9n12.h
@@ -18,8 +18,6 @@
 /*
  * Peripheral identifiers/interrupts.
  */
-#define AT91_ID_FIQ		0	/* Advanced Interrupt Controller (FIQ) */
-#define AT91_ID_SYS		1	/* System Controller Interrupt */
 #define AT91SAM9N12_ID_PIOAB	2	/* Parallel I/O Controller A and B */
 #define AT91SAM9N12_ID_PIOCD	3	/* Parallel I/O Controller C and D */
 /* Reserved			4	*/
@@ -116,17 +114,8 @@
 #define AT91_RSTC	(0xfffffe00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffe10 - AT91_BASE_SYS)
 
-#define AT91_BASE_WDT	AT91SAM9N12_BASE_WDT
 #define AT91_BASE_SMC	AT91SAM9N12_BASE_SMC
-#define AT91_BASE_PIOA	AT91SAM9N12_BASE_PIOA
-#define AT91_BASE_PIOB	AT91SAM9N12_BASE_PIOB
-#define AT91_BASE_PIOC	AT91SAM9N12_BASE_PIOC
-#define AT91_BASE_PIOD	AT91SAM9N12_BASE_PIOD
 
-#define AT91_USART0	AT91SAM9X5_BASE_US0
-#define AT91_USART1	AT91SAM9X5_BASE_US1
-#define AT91_USART2	AT91SAM9X5_BASE_US2
-#define AT91_USART3	AT91SAM9X5_BASE_US3
 #define AT91_NB_USART	5
 
 #define AT91_PMC	0xfffffc00
diff --git a/arch/arm/mach-at91/include/mach/at91sam9x5.h b/arch/arm/mach-at91/include/mach/at91sam9x5.h
index 0c26eab7e6..112cda0aef 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9x5.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9x5.h
@@ -18,8 +18,6 @@
 /*
  * Peripheral identifiers/interrupts.
  */
-#define AT91_ID_FIQ		0	/* Advanced Interrupt Controller (FIQ) */
-#define AT91_ID_SYS		1	/* System Controller Interrupt */
 #define AT91SAM9X5_ID_PIOAB	2	/* Parallel I/O Controller A and B */
 #define AT91SAM9X5_ID_PIOCD	3	/* Parallel I/O Controller C and D */
 #define AT91SAM9X5_ID_SMD	4	/* SMD Soft Modem (SMD) */
@@ -123,17 +121,8 @@
 #define AT91_RSTC	(0xfffffe00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffe10 - AT91_BASE_SYS)
 
-#define AT91_BASE_WDT	AT91SAM9X5_BASE_WDT
 #define AT91_BASE_SMC	AT91SAM9X5_BASE_SMC
-#define AT91_BASE_PIOA	AT91SAM9X5_BASE_PIOA
-#define AT91_BASE_PIOB	AT91SAM9X5_BASE_PIOB
-#define AT91_BASE_PIOC	AT91SAM9X5_BASE_PIOC
-#define AT91_BASE_PIOD	AT91SAM9X5_BASE_PIOD
 
-#define AT91_USART0	AT91SAM9X5_BASE_US0
-#define AT91_USART1	AT91SAM9X5_BASE_US1
-#define AT91_USART2	AT91SAM9X5_BASE_US2
-#define AT91_USART3	AT91SAM9X5_BASE_US3
 #define AT91_NB_USART	5
 
 #define AT91_PMC	0xfffffc00
diff --git a/arch/arm/mach-at91/include/mach/sama5d3.h b/arch/arm/mach-at91/include/mach/sama5d3.h
index d53bcaee1a..00fd88dd72 100644
--- a/arch/arm/mach-at91/include/mach/sama5d3.h
+++ b/arch/arm/mach-at91/include/mach/sama5d3.h
@@ -15,8 +15,6 @@
 /*
  * Peripheral identifiers/interrupts.
  */
-#define AT91_ID_FIQ		 0	/* Advanced Interrupt Controller (FIQ) */
-#define AT91_ID_SYS		 1	/* System Peripherals */
 #define SAMA5D3_ID_DBGU		 2	/* debug Unit (usually no special interrupt line) */
 #define SAMA5D3_ID_PIT		 3	/* Periodic Interval Timer Interrupt */
 #define SAMA5D3_ID_WDT		 4	/* Watchdog timer Interrupt */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
