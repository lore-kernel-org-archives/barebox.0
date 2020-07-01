Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqYmA-0001BG-Ck
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 09:11:42 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 11:10:56 +0200
Message-Id: <20200701091122.3437-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200701091122.3437-1-a.fatoum@pengutronix.de>
References: <20200701091122.3437-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 02/28] ARM: at91: sama5d2: cast peripheral base addresses to
 __iomem pointers
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The peripheral addresses should be always cast with IOMEM() anyway, so do
this directly in the header to make user code less verbose.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../arm/boards/sama5d27-giantboard/lowlevel.c |   6 +-
 arch/arm/boards/sama5d27-som1/lowlevel.c      |  14 +-
 arch/arm/mach-at91/include/mach/sama5d2.h     | 169 +++++++++---------
 3 files changed, 96 insertions(+), 93 deletions(-)

diff --git a/arch/arm/boards/sama5d27-giantboard/lowlevel.c b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
index 0236c424c195..50bc2613c652 100644
--- a/arch/arm/boards/sama5d27-giantboard/lowlevel.c
+++ b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
@@ -20,7 +20,7 @@
 
 static inline void sama5d2_pmc_enable_periph_clock(int clk)
 {
-	at91_pmc_sam9x5_enable_periph_clock(IOMEM(SAMA5D2_BASE_PMC), clk);
+	at91_pmc_sam9x5_enable_periph_clock(SAMA5D2_BASE_PMC, clk);
 }
 
 static void dbgu_init(void)
@@ -29,12 +29,12 @@ static void dbgu_init(void)
 
 	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_PIOD);
 
-	at91_mux_pio4_set_A_periph(IOMEM(SAMA5D2_BASE_PIOD),
+	at91_mux_pio4_set_A_periph(SAMA5D2_BASE_PIOD,
 				   pin_to_mask(AT91_PIN_PD3)); /* DBGU TXD */
 
 	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_UART1);
 
-	at91_dbgu_setup_ll(IOMEM(SAMA5D2_BASE_UART1), mck, 115200);
+	at91_dbgu_setup_ll(SAMA5D2_BASE_UART1, mck, 115200);
 
 	putc_ll('>');
 }
diff --git a/arch/arm/boards/sama5d27-som1/lowlevel.c b/arch/arm/boards/sama5d27-som1/lowlevel.c
index 62d35be9123d..569960be445d 100644
--- a/arch/arm/boards/sama5d27-som1/lowlevel.c
+++ b/arch/arm/boards/sama5d27-som1/lowlevel.c
@@ -24,13 +24,13 @@
 
 static inline void sama5d2_pmc_enable_periph_clock(int clk)
 {
-	at91_pmc_sam9x5_enable_periph_clock(IOMEM(SAMA5D2_BASE_PMC), clk);
+	at91_pmc_sam9x5_enable_periph_clock(SAMA5D2_BASE_PMC, clk);
 }
 
 static void ek_turn_led(unsigned color)
 {
 	struct {
-		unsigned long pio;
+		void __iomem *pio;
 		unsigned bit;
 		unsigned color;
 	} *led, leds[] = {
@@ -41,9 +41,9 @@ static void ek_turn_led(unsigned color)
 	};
 
 	for (led = leds; led->pio; led++) {
-		at91_mux_gpio4_enable(IOMEM(led->pio), BIT(led->bit));
-		at91_mux_gpio4_input(IOMEM(led->pio), BIT(led->bit), false);
-		at91_mux_gpio4_set(IOMEM(led->pio), BIT(led->bit), led->color);
+		at91_mux_gpio4_enable(led->pio, BIT(led->bit));
+		at91_mux_gpio4_input(led->pio, BIT(led->bit), false);
+		at91_mux_gpio4_set(led->pio, BIT(led->bit), led->color);
 	}
 }
 
@@ -53,12 +53,12 @@ static void ek_dbgu_init(void)
 
 	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_PIOD);
 
-	at91_mux_pio4_set_A_periph(IOMEM(SAMA5D2_BASE_PIOD),
+	at91_mux_pio4_set_A_periph(SAMA5D2_BASE_PIOD,
 				   pin_to_mask(AT91_PIN_PD3)); /* DBGU TXD */
 
 	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_UART1);
 
-	at91_dbgu_setup_ll(IOMEM(SAMA5D2_BASE_UART1), mck, 115200);
+	at91_dbgu_setup_ll(SAMA5D2_BASE_UART1, mck, 115200);
 
 	putc_ll('>');
 }
diff --git a/arch/arm/mach-at91/include/mach/sama5d2.h b/arch/arm/mach-at91/include/mach/sama5d2.h
index 3dad7d9c9c2c..ada9c59e0370 100644
--- a/arch/arm/mach-at91/include/mach/sama5d2.h
+++ b/arch/arm/mach-at91/include/mach/sama5d2.h
@@ -14,6 +14,9 @@
 #ifndef SAMA5D2_H
 #define SAMA5D2_H
 
+#include <asm/io.h>
+#include <linux/sizes.h>
+
 /*
  * Peripheral identifiers/interrupts. (Table 18-9)
  */
@@ -101,100 +104,100 @@
  * User Peripheral physical base addresses.
  */
 
-#define	SAMA5D2_BASE_LCDC	0xf0000000
-#define	SAMA5D2_BASE_XDMAC1	0xf0004000
-#define	SAMA5D2_BASE_HXISI	0xf0008000
-#define	SAMA5D2_BASE_MPDDRC	0xf000c000
-#define	SAMA5D2_BASE_XDMAC0	0xf0010000
-#define	SAMA5D2_BASE_PMC	0xf0014000
-#define	SAMA5D2_BASE_MATRIX64	0xf0018000	/* MATRIX0 */
-#define	SAMA5D2_BASE_AESB	0xf001c000
-#define	SAMA5D2_BASE_QSPI0	0xf0020000
-#define	SAMA5D2_BASE_QSPI1	0xf0024000
-#define	SAMA5D2_BASE_SHA	0xf0028000
-#define	SAMA5D2_BASE_AES	0xf002c000
+#define	SAMA5D2_BASE_LCDC	IOMEM(0xf0000000)
+#define	SAMA5D2_BASE_XDMAC1	IOMEM(0xf0004000)
+#define	SAMA5D2_BASE_HXISI	IOMEM(0xf0008000)
+#define	SAMA5D2_BASE_MPDDRC	IOMEM(0xf000c000)
+#define	SAMA5D2_BASE_XDMAC0	IOMEM(0xf0010000)
+#define	SAMA5D2_BASE_PMC	IOMEM(0xf0014000)
+#define	SAMA5D2_BASE_MATRIX64	IOMEM(0xf0018000)	/* MATRIX0 */
+#define	SAMA5D2_BASE_AESB	IOMEM(0xf001c000)
+#define	SAMA5D2_BASE_QSPI0	IOMEM(0xf0020000)
+#define	SAMA5D2_BASE_QSPI1	IOMEM(0xf0024000)
+#define	SAMA5D2_BASE_SHA	IOMEM(0xf0028000)
+#define	SAMA5D2_BASE_AES	IOMEM(0xf002c000)
 
-#define	SAMA5D2_BASE_SPI0	0xf8000000
-#define	SAMA5D2_BASE_SSC0	0xf8004000
-#define	SAMA5D2_BASE_GMAC	0xf8008000
-#define	SAMA5D2_BASE_TC0	0xf800c000
-#define	SAMA5D2_BASE_TC1	0xf8010000
-#define	SAMA5D2_BASE_HSMC	0xf8014000
-#define	SAMA5D2_BASE_PDMIC	0xf8018000
-#define	SAMA5D2_BASE_UART0	0xf801c000
-#define	SAMA5D2_BASE_UART1	0xf8020000
-#define	SAMA5D2_BASE_UART2	0xf8024000
-#define	SAMA5D2_BASE_TWI0	0xf8028000
-#define	SAMA5D2_BASE_PWMC	0xf802c000
-#define	SAMA5D2_BASE_SFR	0xf8030000
-#define	SAMA5D2_BASE_FLEXCOM0	0xf8034000
-#define	SAMA5D2_BASE_FLEXCOM1	0xf8038000
-#define	SAMA5D2_BASE_SAIC	0xf803c000
-#define	SAMA5D2_BASE_ICM	0xf8040000
-#define	SAMA5D2_BASE_SECURAM	0xf8044000
-#define	SAMA5D2_BASE_SYSC	0xf8048000
-#define	SAMA5D2_BASE_ACC	0xf804a000
-#define	SAMA5D2_BASE_SFC	0xf804c000
-#define	SAMA5D2_BASE_I2SC0	0xf8050000
-#define	SAMA5D2_BASE_CAN0	0xf8054000
+#define	SAMA5D2_BASE_SPI0	IOMEM(0xf8000000)
+#define	SAMA5D2_BASE_SSC0	IOMEM(0xf8004000)
+#define	SAMA5D2_BASE_GMAC	IOMEM(0xf8008000)
+#define	SAMA5D2_BASE_TC0	IOMEM(0xf800c000)
+#define	SAMA5D2_BASE_TC1	IOMEM(0xf8010000)
+#define	SAMA5D2_BASE_HSMC	IOMEM(0xf8014000)
+#define	SAMA5D2_BASE_PDMIC	IOMEM(0xf8018000)
+#define	SAMA5D2_BASE_UART0	IOMEM(0xf801c000)
+#define	SAMA5D2_BASE_UART1	IOMEM(0xf8020000)
+#define	SAMA5D2_BASE_UART2	IOMEM(0xf8024000)
+#define	SAMA5D2_BASE_TWI0	IOMEM(0xf8028000)
+#define	SAMA5D2_BASE_PWMC	IOMEM(0xf802c000)
+#define	SAMA5D2_BASE_SFR	IOMEM(0xf8030000)
+#define	SAMA5D2_BASE_FLEXCOM0	IOMEM(0xf8034000)
+#define	SAMA5D2_BASE_FLEXCOM1	IOMEM(0xf8038000)
+#define	SAMA5D2_BASE_SAIC	IOMEM(0xf803c000)
+#define	SAMA5D2_BASE_ICM	IOMEM(0xf8040000)
+#define	SAMA5D2_BASE_SECURAM	IOMEM(0xf8044000)
+#define	SAMA5D2_BASE_SYSC	IOMEM(0xf8048000)
+#define	SAMA5D2_BASE_ACC	IOMEM(0xf804a000)
+#define	SAMA5D2_BASE_SFC	IOMEM(0xf804c000)
+#define	SAMA5D2_BASE_I2SC0	IOMEM(0xf8050000)
+#define	SAMA5D2_BASE_CAN0	IOMEM(0xf8054000)
 
-#define	SAMA5D2_BASE_SPI1	0xfc000000
-#define	SAMA5D2_BASE_SSC1	0xfc004000
-#define	SAMA5D2_BASE_UART3	0xfc008000
-#define	SAMA5D2_BASE_UART4	0xfc00c000
-#define	SAMA5D2_BASE_FLEXCOM2	0xfc010000
-#define	SAMA5D2_BASE_FLEXCOM3	0xfc014000
-#define	SAMA5D2_BASE_FLEXCOM4	0xfc018000
-#define	SAMA5D2_BASE_TRNG	0xfc01c000
-#define	SAMA5D2_BASE_AIC	0xfc020000
-#define	SAMA5D2_BASE_TWI1	0xfc028000
-#define	SAMA5D2_BASE_UDPHS	0xfc02c000
-#define	SAMA5D2_BASE_ADC	0xfc030000
+#define	SAMA5D2_BASE_SPI1	IOMEM(0xfc000000)
+#define	SAMA5D2_BASE_SSC1	IOMEM(0xfc004000)
+#define	SAMA5D2_BASE_UART3	IOMEM(0xfc008000)
+#define	SAMA5D2_BASE_UART4	IOMEM(0xfc00c000)
+#define	SAMA5D2_BASE_FLEXCOM2	IOMEM(0xfc010000)
+#define	SAMA5D2_BASE_FLEXCOM3	IOMEM(0xfc014000)
+#define	SAMA5D2_BASE_FLEXCOM4	IOMEM(0xfc018000)
+#define	SAMA5D2_BASE_TRNG	IOMEM(0xfc01c000)
+#define	SAMA5D2_BASE_AIC	IOMEM(0xfc020000)
+#define	SAMA5D2_BASE_TWI1	IOMEM(0xfc028000)
+#define	SAMA5D2_BASE_UDPHS	IOMEM(0xfc02c000)
+#define	SAMA5D2_BASE_ADC	IOMEM(0xfc030000)
 
-#define	SAMA5D2_BASE_PIOA	0xfc038000
-#define	SAMA5D2_BASE_MATRIX32	0xfc03c000	/* MATRIX1 */
-#define	SAMA5D2_BASE_SECUMOD	0xfc040000
-#define	SAMA5D2_BASE_TDES	0xfc044000
-#define	SAMA5D2_BASE_CLASSD	0xfc048000
-#define	SAMA5D2_BASE_I2SC1	0xfc04c000
-#define	SAMA5D2_BASE_CAN1	0xfc050000
-#define	SAMA5D2_BASE_SFRBU	0xfc05c000
-#define	SAMA5D2_BASE_CHIPID	0xfc069000
+#define	SAMA5D2_BASE_PIOA	IOMEM(0xfc038000)
+#define	SAMA5D2_BASE_MATRIX32	IOMEM(0xfc03c000)	/* MATRIX1 */
+#define	SAMA5D2_BASE_SECUMOD	IOMEM(0xfc040000)
+#define	SAMA5D2_BASE_TDES	IOMEM(0xfc044000)
+#define	SAMA5D2_BASE_CLASSD	IOMEM(0xfc048000)
+#define	SAMA5D2_BASE_I2SC1	IOMEM(0xfc04c000)
+#define	SAMA5D2_BASE_CAN1	IOMEM(0xfc050000)
+#define	SAMA5D2_BASE_SFRBU	IOMEM(0xfc05c000)
+#define	SAMA5D2_BASE_CHIPID	IOMEM(0xfc069000)
 
 /*
  * Address Memory Space
  */
-#define	SAMA5D2_BASE_INTERNAL_MEM	0x00000000
-#define	SAMA5D2_BASE_CS0		0x10000000
-#define	SAMA5D2_BASE_DDRCS		0x20000000
-#define	SAMA5D2_BASE_DDRCS_AES		0x40000000
-#define	SAMA5D2_BASE_CS1		0x60000000
-#define	SAMA5D2_BASE_CS2		0x70000000
-#define	SAMA5D2_BASE_CS3		0x80000000
-#define	SAMA5D2_BASE_QSPI0_AES_MEM	0x90000000
-#define	SAMA5D2_BASE_QSPI1_AES_MEM	0x98000000
-#define	SAMA5D2_BASE_SDHC0		0xa0000000
-#define	SAMA5D2_BASE_SDHC1		0xb0000000
-#define	SAMA5D2_BASE_NFC_CMD_REG	0xc0000000
-#define	SAMA5D2_BASE_QSPI0_MEM		0xd0000000
-#define	SAMA5D2_BASE_QSPI1_MEM		0xd8000000
-#define	SAMA5D2_BASE_PERIPH		0xf0000000
+#define	SAMA5D2_BASE_INTERNAL_MEM	IOMEM(0x00000000)
+#define	SAMA5D2_BASE_CS0		IOMEM(0x10000000)
+#define	SAMA5D2_BASE_DDRCS		IOMEM(0x20000000)
+#define	SAMA5D2_BASE_DDRCS_AES		IOMEM(0x40000000)
+#define	SAMA5D2_BASE_CS1		IOMEM(0x60000000)
+#define	SAMA5D2_BASE_CS2		IOMEM(0x70000000)
+#define	SAMA5D2_BASE_CS3		IOMEM(0x80000000)
+#define	SAMA5D2_BASE_QSPI0_AES_MEM	IOMEM(0x90000000)
+#define	SAMA5D2_BASE_QSPI1_AES_MEM	IOMEM(0x98000000)
+#define	SAMA5D2_BASE_SDHC0		IOMEM(0xa0000000)
+#define	SAMA5D2_BASE_SDHC1		IOMEM(0xb0000000)
+#define	SAMA5D2_BASE_NFC_CMD_REG	IOMEM(0xc0000000)
+#define	SAMA5D2_BASE_QSPI0_MEM		IOMEM(0xd0000000)
+#define	SAMA5D2_BASE_QSPI1_MEM		IOMEM(0xd8000000)
+#define	SAMA5D2_BASE_PERIPH		IOMEM(0xf0000000)
 
 /*
  * Internal Memories
  */
-#define	SAMA5D2_BASE_ROM		0x00000000	/* ROM */
-#define	SAMA5D2_BASE_ECC_ROM		0x00060000	/* ECC ROM */
-#define	SAMA5D2_BASE_NFC_SRAM		0x00100000	/* NFC SRAM */
-#define	SAMA5D2_BASE_SRAM0		0x00200000	/* SRAM0 */
-#define	SAMA5D2_BASE_SRAM1		0x00220000	/* SRAM1 */
-#define	SAMA5D2_BASE_UDPHS_SRAM		0x00300000	/* UDPHS RAM */
-#define	SAMA5D2_BASE_UHP_OHCI		0x00400000	/* UHP OHCI */
-#define	SAMA5D2_BASE_UHP_EHCI		0x00500000	/* UHP EHCI */
-#define	SAMA5D2_BASE_AXI_MATRIX		0x00600000	/* AXI Maxtrix */
-#define	SAMA5D2_BASE_DAP		0x00700000	/* DAP */
-#define	SAMA5D2_BASE_PTC		0x00800000	/* PTC */
-#define	SAMA5D2_BASE_L2CC		0x00A00000	/* L2CC */
+#define	SAMA5D2_BASE_ROM		IOMEM(0x00000000)	/* ROM */
+#define	SAMA5D2_BASE_ECC_ROM		IOMEM(0x00060000)	/* ECC ROM */
+#define	SAMA5D2_BASE_NFC_SRAM		0x00100000		/* NFC SRAM */
+#define	SAMA5D2_BASE_SRAM0		0x00200000		/* SRAM0 */
+#define	SAMA5D2_BASE_SRAM1		0x00220000		/* SRAM1 */
+#define	SAMA5D2_BASE_UDPHS_SRAM		0x00300000		/* UDPHS RAM */
+#define	SAMA5D2_BASE_UHP_OHCI		IOMEM(0x00400000)	/* UHP OHCI */
+#define	SAMA5D2_BASE_UHP_EHCI		IOMEM(0x00500000)	/* UHP EHCI */
+#define	SAMA5D2_BASE_AXI_MATRIX		IOMEM(0x00600000)	/* AXI Maxtrix */
+#define	SAMA5D2_BASE_DAP		IOMEM(0x00700000)	/* DAP */
+#define	SAMA5D2_BASE_PTC		IOMEM(0x00800000)	/* PTC */
+#define	SAMA5D2_BASE_L2CC		IOMEM(0x00A00000)	/* L2CC */
 
 /*
  * Other misc defines
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
