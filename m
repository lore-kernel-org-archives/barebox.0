Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJh9z-0000P1-H8
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:51:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:51:13 +0100
Message-Id: <20181105155113.3434-23-s.hauer@pengutronix.de>
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
Subject: [PATCH 22/22] ARM: at91: remove unused defines
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/include/mach/at91rm9200.h    | 16 ----------------
 arch/arm/mach-at91/include/mach/at91sam9260.h   | 15 ---------------
 arch/arm/mach-at91/include/mach/at91sam9261.h   | 14 --------------
 arch/arm/mach-at91/include/mach/at91sam9263.h   | 17 -----------------
 .../include/mach/at91sam926x_board_init.h       |  4 ----
 arch/arm/mach-at91/include/mach/at91sam9g45.h   | 16 ----------------
 arch/arm/mach-at91/include/mach/at91sam9n12.h   | 16 ----------------
 arch/arm/mach-at91/include/mach/at91sam9x5.h    | 16 ----------------
 arch/arm/mach-at91/include/mach/sama5d3.h       | 11 -----------
 arch/arm/mach-at91/include/mach/sama5d4.h       |  8 --------
 10 files changed, 133 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/at91rm9200.h b/arch/arm/mach-at91/include/mach/at91rm9200.h
index e2af3585af..01f5d23e0c 100644
--- a/arch/arm/mach-at91/include/mach/at91rm9200.h
+++ b/arch/arm/mach-at91/include/mach/at91rm9200.h
@@ -74,7 +74,6 @@
 #define AT91RM9200_BASE_SSC1	0xfffd4000
 #define AT91RM9200_BASE_SSC2	0xfffd8000
 #define AT91RM9200_BASE_SPI	0xfffe0000
-#define AT91_BASE_SYS		0xfffff000
 
 /*
  * System Peripherals
@@ -89,21 +88,6 @@
 #define AT91RM9200_BASE_RTC	0xfffffe00	/* Real-Time Clock */
 #define AT91RM9200_BASE_MC	0xffffff00	/* Memory Controllers */
 
-
-/*
- * System Peripherals (offset from AT91_BASE_SYS)
- */
-#define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)	/* Debug Unit */
-#define AT91_ST		(0xfffffd00 - AT91_BASE_SYS)	/* System Timer */
-#define AT91_RTC	(0xfffffe00 - AT91_BASE_SYS)	/* Real-Time Clock */
-#define AT91_MC		(0xffffff00 - AT91_BASE_SYS)	/* Memory Controllers */
-
-#define AT91_TC		(AT91RM9200_BASE_TC0 - AT91_BASE_SYS)
-
-#define AT91_MATRIX	0	/* not supported */
-
-#define AT91_PMC	0xfffffc00
-
 /*
  * Internal Memory.
  */
diff --git a/arch/arm/mach-at91/include/mach/at91sam9260.h b/arch/arm/mach-at91/include/mach/at91sam9260.h
index a816c448ba..708e661b4d 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9260.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9260.h
@@ -73,7 +73,6 @@
 #define AT91SAM9260_BASE_TC4		0xfffdc040
 #define AT91SAM9260_BASE_TC5		0xfffdc080
 #define AT91SAM9260_BASE_ADC		0xfffe0000
-#define AT91_BASE_SYS			0xffffe800
 
 /*
  * System Peripherals
@@ -93,20 +92,6 @@
 #define AT91SAM9260_BASE_WDT	0xfffffd40
 #define AT91SAM9260_BASE_GPBR	0xfffffd50
 
-/*
- * System Peripherals (offset from AT91_BASE_SYS)
- */
-#define AT91_ECC	(0xffffe800 - AT91_BASE_SYS)
-#define AT91_SDRAMC	(0xffffea00 - AT91_BASE_SYS)
-#define AT91_MATRIX	(0xffffee00 - AT91_BASE_SYS)
-#define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
-#define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
-#define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
-
-#define AT91_BASE_SMC	AT91SAM9260_BASE_SMC
-
-#define AT91_PMC	0xfffffc00
-
 /*
  * Internal Memory.
  */
diff --git a/arch/arm/mach-at91/include/mach/at91sam9261.h b/arch/arm/mach-at91/include/mach/at91sam9261.h
index acd39f28de..df948d3e72 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9261.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9261.h
@@ -60,7 +60,6 @@
 #define AT91SAM9261_BASE_SSC2		0xfffc4000
 #define AT91SAM9261_BASE_SPI0		0xfffc8000
 #define AT91SAM9261_BASE_SPI1		0xfffcc000
-#define AT91_BASE_SYS			0xffffea00
 
 
 /*
@@ -80,19 +79,6 @@
 #define AT91SAM9261_BASE_WDT	0xfffffd40
 #define AT91SAM9261_BASE_GPBR	0xfffffd50
 
-/*
- * System Peripherals (offset from AT91_BASE_SYS)
- */
-#define AT91_SDRAMC	(0xffffea00 - AT91_BASE_SYS)
-#define AT91_MATRIX	(0xffffee00 - AT91_BASE_SYS)
-#define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
-#define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
-#define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
-
-#define AT91_BASE_SMC	AT91SAM9261_BASE_SMC
-
-#define AT91_PMC	0xfffffc00
-
 /*
  * Internal Memory.
  */
diff --git a/arch/arm/mach-at91/include/mach/at91sam9263.h b/arch/arm/mach-at91/include/mach/at91sam9263.h
index ef3424a6c5..a357ea83fe 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9263.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9263.h
@@ -70,7 +70,6 @@
 #define AT91SAM9263_BASE_EMAC		0xfffbc000
 #define AT91SAM9263_BASE_ISI		0xfffc4000
 #define AT91SAM9263_BASE_2DGE		0xfffc8000
-#define AT91_BASE_SYS			0xffffe000
 
 
 /*
@@ -97,22 +96,6 @@
 #define AT91SAM9263_BASE_RTT1	0xfffffd50
 #define AT91SAM9263_BASE_GPBR	0xfffffd60
 
-/*
- * System Peripherals (offset from AT91_BASE_SYS)
- */
-#define AT91_ECC0	(0xffffe000 - AT91_BASE_SYS)
-#define AT91_SDRAMC0	(0xffffe200 - AT91_BASE_SYS)
-#define AT91_MATRIX	(0xffffec00 - AT91_BASE_SYS)
-#define AT91_DBGU	(0xffffee00 - AT91_BASE_SYS)
-#define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
-#define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
-
-#define AT91_BASE_SMC	AT91SAM9263_BASE_SMC0
-
-#define AT91_SDRAMC	AT91_SDRAMC0
-
-#define AT91_PMC	0xfffffc00
-
 /*
  * Internal Memory.
  */
diff --git a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
index 0a036a9db2..9ab0eef728 100644
--- a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
+++ b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
@@ -20,10 +20,6 @@
 #include <mach/gpio.h>
 #include <mach/at91sam926x.h>
 
-#define AT91SAM926X_BASE_PMC	0xfffffc00
-#define AT91SAM926X_BASE_RSTC	0xfffffd00
-#define AT91SAM926X_BASE_WDT	0xfffffd40
-
 struct at91sam926x_board_cfg {
 	/* SoC specific */
 	void __iomem *pio;
diff --git a/arch/arm/mach-at91/include/mach/at91sam9g45.h b/arch/arm/mach-at91/include/mach/at91sam9g45.h
index 7b19d92ad3..f79df0b8c3 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9g45.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9g45.h
@@ -82,7 +82,6 @@
 #define AT91SAM9G45_BASE_TC3		0xfffd4000
 #define AT91SAM9G45_BASE_TC4		0xfffd4040
 #define AT91SAM9G45_BASE_TC5		0xfffd4080
-#define AT91_BASE_SYS			0xffffe200
 
 /*
  * System Peripherals
@@ -107,21 +106,6 @@
 #define AT91SAM9G45_BASE_RTC	0xfffffdb0
 #define AT91SAM9G45_BASE_GPBR	0xfffffd60
 
-/*
- * System Peripherals (offset from AT91_BASE_SYS)
- */
-#define AT91_ECC	(0xffffe200 - AT91_BASE_SYS)
-#define AT91_DDRSDRC1	(0xffffe400 - AT91_BASE_SYS)
-#define AT91_DDRSDRC0	(0xffffe600 - AT91_BASE_SYS)
-#define AT91_MATRIX	(0xffffea00 - AT91_BASE_SYS)
-#define AT91_DBGU	(0xffffee00 - AT91_BASE_SYS)
-#define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
-#define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
-
-#define AT91_BASE_SMC	AT91SAM9G45_BASE_SMC
-
-#define AT91_PMC	0xfffffc00
-
 /*
  * Internal Memory.
  */
diff --git a/arch/arm/mach-at91/include/mach/at91sam9n12.h b/arch/arm/mach-at91/include/mach/at91sam9n12.h
index 0bb105b910..dd9c0fc4e0 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9n12.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9n12.h
@@ -77,7 +77,6 @@
 #define AT91SAM9N12_BASE_UART1		0xf8044000
 #define AT91SAM9N12_BASE_TRNG		0xf8048000
 #define AT91SAM9N12_BASE_ADC		0xf804c000
-#define AT91_BASE_SYS			0xffffc000
 
 /*
  * System Peripherals
@@ -103,21 +102,6 @@
 #define AT91SAM9N12_BASE_GPBR		0xfffffe60
 #define AT91SAM9N12_BASE_RTC		0xfffffeb0
 
-/*
- * System Peripherals (offset from AT91_BASE_SYS)
- */
-#define AT91_MATRIX	(0xffffde00 - AT91_BASE_SYS)
-#define AT91_PMECC	(0xffffe000 - AT91_BASE_SYS)
-#define AT91_PMERRLOC	(0xffffe600 - AT91_BASE_SYS)
-#define AT91_DDRSDRC0	(0xffffe800 - AT91_BASE_SYS)
-#define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
-#define AT91_RSTC	(0xfffffe00 - AT91_BASE_SYS)
-#define AT91_SHDWC	(0xfffffe10 - AT91_BASE_SYS)
-
-#define AT91_BASE_SMC	AT91SAM9N12_BASE_SMC
-
-#define AT91_PMC	0xfffffc00
-
 /*
  * Internal Memory.
  */
diff --git a/arch/arm/mach-at91/include/mach/at91sam9x5.h b/arch/arm/mach-at91/include/mach/at91sam9x5.h
index 54544968f5..f9d54df601 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9x5.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9x5.h
@@ -84,7 +84,6 @@
 #define AT91SAM9X5_BASE_UART1		0xf8044000
 #define AT91SAM9X5_BASE_ISI		0xf8048000
 #define AT91SAM9X5_BASE_ADC		0xf804c000
-#define AT91_BASE_SYS			0xffffc000
 
 /*
  * System Peripherals
@@ -110,21 +109,6 @@
 #define AT91SAM9X5_BASE_GPBR		0xfffffe60
 #define AT91SAM9X5_BASE_RTC		0xfffffeb0
 
-/*
- * System Peripherals (offset from AT91_BASE_SYS)
- */
-#define AT91_MATRIX	(0xffffde00 - AT91_BASE_SYS)
-#define AT91_PMECC	(0xffffe000 - AT91_BASE_SYS)
-#define AT91_PMERRLOC	(0xffffe600 - AT91_BASE_SYS)
-#define AT91_DDRSDRC0	(0xffffe800 - AT91_BASE_SYS)
-#define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
-#define AT91_RSTC	(0xfffffe00 - AT91_BASE_SYS)
-#define AT91_SHDWC	(0xfffffe10 - AT91_BASE_SYS)
-
-#define AT91_BASE_SMC	AT91SAM9X5_BASE_SMC
-
-#define AT91_PMC	0xfffffc00
-
 /*
  * Internal Memory.
  */
diff --git a/arch/arm/mach-at91/include/mach/sama5d3.h b/arch/arm/mach-at91/include/mach/sama5d3.h
index 69f4f3d5df..f0e53610c6 100644
--- a/arch/arm/mach-at91/include/mach/sama5d3.h
+++ b/arch/arm/mach-at91/include/mach/sama5d3.h
@@ -81,15 +81,6 @@
 #define SAMA5D3_BASE_SPI1	0xf8008000
 #define SAMA5D3_BASE_EMAC	0xf802c000 /* (EMAC) Base Address */
 #define SAMA5D3_BASE_UDPHS	0xf8030000
-#define AT91_BASE_SYS		0xffffc000
-
-/*
- * System Peripherals (offset from AT91_BASE_SYS)
- */
-#define AT91_MATRIX	(0xffffec00 - AT91_BASE_SYS)
-#define AT91_GPBR	(0xfffffe60 - AT91_BASE_SYS) // KO OAR_TEMP, NO GPBR, error while building in "drivers/rtc/rtc-at91sam9.c"
-#define AT91_DDRSDRC0	(0xffffea00 - AT91_BASE_SYS)
-#define AT91_RSTC	(0xfffffe00 - AT91_BASE_SYS)
 
 #define SAMA5D3_BASE_PIOA	0xfffff200
 #define SAMA5D3_BASE_PIOB	0xfffff400
@@ -105,8 +96,6 @@
 #define SAMA5D3_BASE_PMECC	0xffffc070
 #define SAMA5D3_BASE_PMERRLOC	0xffffc500
 
-#define AT91_PMC	0xfffffc00
-
 /*
  * Internal Memory.
  */
diff --git a/arch/arm/mach-at91/include/mach/sama5d4.h b/arch/arm/mach-at91/include/mach/sama5d4.h
index 022530e9f9..6d621e0111 100644
--- a/arch/arm/mach-at91/include/mach/sama5d4.h
+++ b/arch/arm/mach-at91/include/mach/sama5d4.h
@@ -123,12 +123,4 @@
 #define SAMA5D4_SRAM_BASE	0x00200000	/* Internal SRAM base address */
 #define SAMA5D4_SRAM_SIZE	(128 * SZ_1K)	/* Internal SRAM size */
 
-#define AT91_BASE_SYS		0xf0000000
-#define AT91_PMC		SAMA5D4_BASE_PMC
-#define AT91_DDRSDRC0		(0xf0010000 - AT91_BASE_SYS)
-#define AT91_RSTC		(0xfc068600 - AT91_BASE_SYS)
-#define SAMA5D3_BASE_MPDDRC	SAMA5D4_BASE_MPDDRC
-#define SAMA5D3_SRAM_BASE	SAMA5D4_SRAM_BASE
-#define SAMA5D3_SRAM_SIZE	SAMA5D4_SRAM_SIZE
-
 #endif
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
