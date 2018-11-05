Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJhA7-0000PO-DS
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:51:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:50:57 +0100
Message-Id: <20181105155113.3434-7-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/22] ARM: at91: drop AT91_NB_USART
To: Barebox List <barebox@lists.infradead.org>

AT91_NB_USART only used to return an error from at91_register_uart() if
an invalid UART number is passed. This will never happen as the linker
fails earlier in that case, so the runtime check can be removed and with
it the now unused AT91_NB_USART define.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/include/mach/at91rm9200.h  | 2 --
 arch/arm/mach-at91/include/mach/at91sam9260.h | 2 --
 arch/arm/mach-at91/include/mach/at91sam9261.h | 2 --
 arch/arm/mach-at91/include/mach/at91sam9263.h | 2 --
 arch/arm/mach-at91/include/mach/at91sam9g45.h | 2 --
 arch/arm/mach-at91/include/mach/at91sam9n12.h | 2 --
 arch/arm/mach-at91/include/mach/at91sam9x5.h  | 2 --
 arch/arm/mach-at91/include/mach/board.h       | 3 ---
 arch/arm/mach-at91/include/mach/sama5d3.h     | 2 --
 arch/arm/mach-at91/include/mach/sama5d4.h     | 1 -
 10 files changed, 20 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/at91rm9200.h b/arch/arm/mach-at91/include/mach/at91rm9200.h
index 8e323ea615..d06dfa7388 100644
--- a/arch/arm/mach-at91/include/mach/at91rm9200.h
+++ b/arch/arm/mach-at91/include/mach/at91rm9200.h
@@ -97,8 +97,6 @@
 #define AT91_RTC	(0xfffffe00 - AT91_BASE_SYS)	/* Real-Time Clock */
 #define AT91_MC		(0xffffff00 - AT91_BASE_SYS)	/* Memory Controllers */
 
-#define AT91_NB_USART	5
-
 #define AT91_TC		(AT91RM9200_BASE_TC0 - AT91_BASE_SYS)
 
 #define AT91_MATRIX	0	/* not supported */
diff --git a/arch/arm/mach-at91/include/mach/at91sam9260.h b/arch/arm/mach-at91/include/mach/at91sam9260.h
index 1cff76b4ee..a816c448ba 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9260.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9260.h
@@ -105,8 +105,6 @@
 
 #define AT91_BASE_SMC	AT91SAM9260_BASE_SMC
 
-#define AT91_NB_USART	7
-
 #define AT91_PMC	0xfffffc00
 
 /*
diff --git a/arch/arm/mach-at91/include/mach/at91sam9261.h b/arch/arm/mach-at91/include/mach/at91sam9261.h
index d9172879b9..acd39f28de 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9261.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9261.h
@@ -91,8 +91,6 @@
 
 #define AT91_BASE_SMC	AT91SAM9261_BASE_SMC
 
-#define AT91_NB_USART	4
-
 #define AT91_PMC	0xfffffc00
 
 /*
diff --git a/arch/arm/mach-at91/include/mach/at91sam9263.h b/arch/arm/mach-at91/include/mach/at91sam9263.h
index f1dd848cc0..ef3424a6c5 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9263.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9263.h
@@ -109,8 +109,6 @@
 
 #define AT91_BASE_SMC	AT91SAM9263_BASE_SMC0
 
-#define AT91_NB_USART	4
-
 #define AT91_SDRAMC	AT91_SDRAMC0
 
 #define AT91_PMC	0xfffffc00
diff --git a/arch/arm/mach-at91/include/mach/at91sam9g45.h b/arch/arm/mach-at91/include/mach/at91sam9g45.h
index 2847541f9a..e9c7d7572a 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9g45.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9g45.h
@@ -120,8 +120,6 @@
 
 #define AT91_BASE_SMC	AT91SAM9G45_BASE_SMC
 
-#define AT91_NB_USART	5
-
 #define AT91_PMC	0xfffffc00
 
 /*
diff --git a/arch/arm/mach-at91/include/mach/at91sam9n12.h b/arch/arm/mach-at91/include/mach/at91sam9n12.h
index 7fdd7528a0..cb84e4cf76 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9n12.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9n12.h
@@ -116,8 +116,6 @@
 
 #define AT91_BASE_SMC	AT91SAM9N12_BASE_SMC
 
-#define AT91_NB_USART	5
-
 #define AT91_PMC	0xfffffc00
 
 /*
diff --git a/arch/arm/mach-at91/include/mach/at91sam9x5.h b/arch/arm/mach-at91/include/mach/at91sam9x5.h
index 112cda0aef..3ea2501b4c 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9x5.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9x5.h
@@ -123,8 +123,6 @@
 
 #define AT91_BASE_SMC	AT91SAM9X5_BASE_SMC
 
-#define AT91_NB_USART	5
-
 #define AT91_PMC	0xfffffc00
 
 /*
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 5d76e00aef..7735a6f38b 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -107,9 +107,6 @@ static inline struct device_d * at91_register_uart(unsigned id, unsigned pins)
 	resource_size_t start;
 	resource_size_t size = SZ_16K;
 
-	if (id >= AT91_NB_USART)
-		return NULL;
-
 	switch (id) {
 		case 0:		/* DBGU */
 			start = at91_configure_dbgu();
diff --git a/arch/arm/mach-at91/include/mach/sama5d3.h b/arch/arm/mach-at91/include/mach/sama5d3.h
index 00fd88dd72..2c64fdf48a 100644
--- a/arch/arm/mach-at91/include/mach/sama5d3.h
+++ b/arch/arm/mach-at91/include/mach/sama5d3.h
@@ -104,8 +104,6 @@
 #define SAMA5D3_BASE_PMECC	0xffffc070
 #define SAMA5D3_BASE_PMERRLOC	0xffffc500
 
-#define AT91_NB_USART	3
-
 #define AT91_PMC	0xfffffc00
 
 /*
diff --git a/arch/arm/mach-at91/include/mach/sama5d4.h b/arch/arm/mach-at91/include/mach/sama5d4.h
index 046fdb0426..5ff0ffa131 100644
--- a/arch/arm/mach-at91/include/mach/sama5d4.h
+++ b/arch/arm/mach-at91/include/mach/sama5d4.h
@@ -122,7 +122,6 @@
 #define SAMA5D4_SRAM_BASE	0x00200000	/* Internal SRAM base address */
 #define SAMA5D4_SRAM_SIZE	(128 * SZ_1K)	/* Internal SRAM size */
 
-#define AT91_NB_USART		7
 #define AT91_BASE_SYS		0xf0000000
 #define AT91_PMC		SAMA5D4_BASE_PMC
 #define AT91_DDRSDRC0		(0xf0010000 - AT91_BASE_SYS)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
