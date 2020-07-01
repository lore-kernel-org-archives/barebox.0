Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqYmM-0001Ef-1Y
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 09:11:52 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 11:11:16 +0200
Message-Id: <20200701091122.3437-23-a.fatoum@pengutronix.de>
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
Subject: [PATCH 22/28] ARM: at91: sama5d2: reduce UART setup boilerplate with
 new helpers
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The sama5d2 can be fused for one of 9 preset UART iosets. This is then
used by the BootROM for printing the `RomBOOT' header and for the XMODEM
protocol implemented by the SAM-BA monitor. Add two new sama5d2 specific
helpers:

- sama5d2_dbgu_setup_ll for setting up the port with only pinmux and
  master clock as arguments
- sama5d2_resetup_uart_console for resetup of the uart console with
  same pinmux used by the ROM code

The default value, when unfused, is UART_1_IOSET_1 (RX@PD2, TX@PD3),
which are the same ones used on the two sama5d2 board supported so far.

With this change, the DEBUG_LL baudrate is also no longer fixed at 115200,
but instead comes from the CONFIG_BAUDRATE symbol.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../arm/boards/sama5d27-giantboard/lowlevel.c |  11 +-
 arch/arm/boards/sama5d27-som1/lowlevel.c      |  11 +-
 arch/arm/mach-at91/include/mach/debug_ll.h    |  17 ++-
 arch/arm/mach-at91/include/mach/sama5d2.h     |  56 ++++++++++
 arch/arm/mach-at91/include/mach/sama5d2_ll.h  | 101 ++++++++++++++++++
 5 files changed, 172 insertions(+), 24 deletions(-)

diff --git a/arch/arm/boards/sama5d27-giantboard/lowlevel.c b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
index 4419e946f1a8..a30441d7ccfa 100644
--- a/arch/arm/boards/sama5d27-giantboard/lowlevel.c
+++ b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
@@ -18,16 +18,7 @@
 
 static void dbgu_init(void)
 {
-	unsigned mck = MASTER_CLOCK / 2;
-
-	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_PIOD);
-
-	at91_mux_pio4_set_A_periph(SAMA5D2_BASE_PIOD,
-				   pin_to_mask(AT91_PIN_PD3)); /* DBGU TXD */
-
-	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_UART1);
-
-	at91_dbgu_setup_ll(SAMA5D2_BASE_UART1, mck, 115200);
+	sama5d2_resetup_uart_console(MASTER_CLOCK);
 
 	putc_ll('>');
 }
diff --git a/arch/arm/boards/sama5d27-som1/lowlevel.c b/arch/arm/boards/sama5d27-som1/lowlevel.c
index b7780ec8ae43..2e408ce832f7 100644
--- a/arch/arm/boards/sama5d27-som1/lowlevel.c
+++ b/arch/arm/boards/sama5d27-som1/lowlevel.c
@@ -42,16 +42,7 @@ static void ek_turn_led(unsigned color)
 
 static void ek_dbgu_init(void)
 {
-	unsigned mck = MASTER_CLOCK / 2;
-
-	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_PIOD);
-
-	at91_mux_pio4_set_A_periph(SAMA5D2_BASE_PIOD,
-				   pin_to_mask(AT91_PIN_PD3)); /* DBGU TXD */
-
-	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_UART1);
-
-	at91_dbgu_setup_ll(SAMA5D2_BASE_UART1, mck, 115200);
+	sama5d2_resetup_uart_console(MASTER_CLOCK);
 
 	putc_ll('>');
 }
diff --git a/arch/arm/mach-at91/include/mach/debug_ll.h b/arch/arm/mach-at91/include/mach/debug_ll.h
index b71393042463..b3cbdbc26f1d 100644
--- a/arch/arm/mach-at91/include/mach/debug_ll.h
+++ b/arch/arm/mach-at91/include/mach/debug_ll.h
@@ -9,6 +9,9 @@
 #define __MACH_DEBUG_LL_H__
 
 #include <asm/io.h>
+#include <mach/gpio.h>
+#include <mach/hardware.h>
+#include <mach/at91_dbgu.h>
 
 #define ATMEL_US_CSR		0x0014
 #define ATMEL_US_THR		0x001c
@@ -22,13 +25,19 @@
  *
  * This does not append a newline
  */
-static inline void PUTC_LL(char c)
+static inline void at91_dbgu_putc(void __iomem *base, int c)
 {
-	while (!(readl(CONFIG_DEBUG_AT91_UART_BASE + ATMEL_US_CSR) & ATMEL_US_TXRDY))
+	while (!(readl(base + ATMEL_US_CSR) & ATMEL_US_TXRDY))
 		barrier();
-	writel(c, CONFIG_DEBUG_AT91_UART_BASE + ATMEL_US_THR);
+	writel(c, base + ATMEL_US_THR);
 
-	while (!(readl(CONFIG_DEBUG_AT91_UART_BASE + ATMEL_US_CSR) & ATMEL_US_TXEMPTY))
+	while (!(readl(base + ATMEL_US_CSR) & ATMEL_US_TXEMPTY))
 		barrier();
 }
+
+static inline void PUTC_LL(char c)
+{
+	at91_dbgu_putc(IOMEM(CONFIG_DEBUG_AT91_UART_BASE), c);
+}
+
 #endif
diff --git a/arch/arm/mach-at91/include/mach/sama5d2.h b/arch/arm/mach-at91/include/mach/sama5d2.h
index ada9c59e0370..90b566ffc4ab 100644
--- a/arch/arm/mach-at91/include/mach/sama5d2.h
+++ b/arch/arm/mach-at91/include/mach/sama5d2.h
@@ -16,6 +16,8 @@
 
 #include <asm/io.h>
 #include <linux/sizes.h>
+#include <linux/bitops.h>
+#include <linux/bitfield.h>
 
 /*
  * Peripheral identifiers/interrupts. (Table 18-9)
@@ -261,4 +263,58 @@
 #define	SAMA5D2_SRAM_BASE			SAMA5D2_BASE_SRAM0
 #define	SAMA5D2_SRAM_SIZE			(128 * SZ_1K)
 
+static inline void __iomem *sama5d2_pio_map_bank(int bank, unsigned *id)
+{
+	switch(bank + 'A') {
+	case 'A':
+		*id = SAMA5D2_ID_PIOA;
+		return SAMA5D2_BASE_PIOA;
+	case 'B':
+		*id = SAMA5D2_ID_PIOB;
+		return SAMA5D2_BASE_PIOB;
+	case 'C':
+		*id = SAMA5D2_ID_PIOC;
+		return SAMA5D2_BASE_PIOC;
+	case 'D':
+		*id = SAMA5D2_ID_PIOD;
+		return SAMA5D2_BASE_PIOD;
+	}
+
+	return NULL;
+}
+
+#define SAMA5D2_BUREG_INDEX	GENMASK(1, 0)
+#define SAMA5D2_BUREG_VALID	BIT(2)
+
+#define SAMA5D2_SFC_DR(x)	(SAMA5D2_BASE_SFC + 0x20 + 4 * (x))
+
+#define SAMA5D2_BOOTCFG_QSPI_0		GENMASK(1, 0)
+#define SAMA5D2_BOOTCFG_QSPI_1		GENMASK(3, 2)
+#define SAMA5D2_BOOTCFG_SPI_0		GENMASK(5, 4)
+#define SAMA5D2_BOOTCFG_SPI_1		GENMASK(7, 6)
+#define SAMA5D2_BOOTCFG_NFC		GENMASK(9, 8)
+#define SAMA5D2_BOOTCFG_SDMMC_0		BIT(10)
+#define SAMA5D2_BOOTCFG_SDMMC_1		BIT(11)
+#define SAMA5D2_BOOTCFG_UART		GENMASK(15, 12)
+#define SAMA5D2_BOOTCFG_JTAG		GENMASK(17, 16)
+#define SAMA5D2_BOOTCFG_EXT_MEM_BOOT_EN	BIT(18)
+#define SAMA5D2_BOOTCFG_QSPI_XIP	BIT(21)
+#define SAMA5D2_DISABLE_BSC_CR		BIT(22)
+#define SAMA5D2_DISABLE_MONITOR		BIT(24)
+#define SAMA5D2_SECURE_MODE		BIT(29)
+
+static inline u32 sama5d2_bootcfg(void)
+{
+	u32 __iomem *bureg = SAMA5D2_BASE_SECURAM + 0x1400;
+	u32 bsc_cr = readl(SAMA5D2_BASE_SYSC + 0x54);
+	u32 __iomem *bootcfg;
+
+	if (bsc_cr & SAMA5D2_BUREG_VALID)
+		bootcfg = &bureg[FIELD_GET(SAMA5D2_BUREG_INDEX, bsc_cr)];
+	else
+		bootcfg = SAMA5D2_SFC_DR(512 / 32);
+
+	return readl(bootcfg);
+}
+
 #endif
diff --git a/arch/arm/mach-at91/include/mach/sama5d2_ll.h b/arch/arm/mach-at91/include/mach/sama5d2_ll.h
index e6fa3914250b..96f3bc545284 100644
--- a/arch/arm/mach-at91/include/mach/sama5d2_ll.h
+++ b/arch/arm/mach-at91/include/mach/sama5d2_ll.h
@@ -3,6 +3,8 @@
 
 #include <mach/sama5d2.h>
 #include <mach/at91_pmc_ll.h>
+#include <mach/iomux.h>
+#include <mach/debug_ll.h>
 #include <mach/early_udelay.h>
 #include <mach/ddramc.h>
 
@@ -35,4 +37,103 @@ static inline int sama5d2_pmc_enable_generic_clock(unsigned int periph_id,
 					     AT91_PMC_LL_SAMA5D2);
 }
 
+static inline int sama5d2_dbgu_setup_ll(unsigned dbgu_id,
+					unsigned pin, unsigned periph,
+					unsigned mck)
+{
+	unsigned mask, bank, pio_id;
+	void __iomem *dbgu_base, *pio_base;
+
+	mask = pin_to_mask(pin);
+	bank = pin_to_bank(pin);
+
+	switch (dbgu_id) {
+	case SAMA5D2_ID_UART0:
+		dbgu_base = SAMA5D2_BASE_UART0;
+		break;
+	case SAMA5D2_ID_UART1:
+		dbgu_base = SAMA5D2_BASE_UART1;
+		break;
+	case SAMA5D2_ID_UART2:
+		dbgu_base = SAMA5D2_BASE_UART2;
+		break;
+	case SAMA5D2_ID_UART3:
+		dbgu_base = SAMA5D2_BASE_UART3;
+		break;
+	case SAMA5D2_ID_UART4:
+		dbgu_base = SAMA5D2_BASE_UART4;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	pio_base = sama5d2_pio_map_bank(bank, &pio_id);
+	if (!pio_base)
+		return -EINVAL;
+
+	sama5d2_pmc_enable_periph_clock(pio_id);
+
+	at91_mux_pio4_set_periph(pio_base, mask, periph);
+
+	sama5d2_pmc_enable_periph_clock(dbgu_id);
+
+	at91_dbgu_setup_ll(dbgu_base, mck / 2, CONFIG_BAUDRATE);
+
+	return 0;
+}
+
+struct sama5d2_uart_pinmux {
+	void __iomem *base;
+	u8 id, dtxd, periph;
+};
+
+#define SAMA5D2_UART(idx, pio, periph) (struct sama5d2_uart_pinmux) {  \
+	SAMA5D2_BASE_UART##idx, SAMA5D2_ID_UART##idx, \
+	AT91_PIN_##pio, AT91_MUX_PERIPH_##periph }
+
+static inline void __iomem *sama5d2_resetup_uart_console(unsigned mck)
+{
+	struct sama5d2_uart_pinmux pinmux;
+
+	/* Table 48-2 I/O Lines and 16.4.4 Boot Configuration Word */
+
+	switch (FIELD_GET(SAMA5D2_BOOTCFG_UART, sama5d2_bootcfg())) {
+	case 0: /* UART_1_IOSET_1 */
+		pinmux = SAMA5D2_UART(1, PD3,  A);
+		break;
+	case 1: /* UART_0_IOSET_1 */
+		pinmux = SAMA5D2_UART(0, PB27, C);
+		break;
+	case 2: /* UART_1_IOSET_2 */
+		pinmux = SAMA5D2_UART(1, PC8,  E);
+		break;
+	case 3: /* UART_2_IOSET_1 */
+		pinmux = SAMA5D2_UART(2, PD5,  B);
+		break;
+	case 4: /* UART_2_IOSET_2 */
+		pinmux = SAMA5D2_UART(2, PD24, A);
+		break;
+	case 5: /* UART_2_IOSET_3 */
+		pinmux = SAMA5D2_UART(2, PD20, C);
+		break;
+	case 6: /* UART_3_IOSET_1 */
+		pinmux = SAMA5D2_UART(3, PC13, D);
+		break;
+	case 7: /* UART_3_IOSET_2 */
+		pinmux = SAMA5D2_UART(3, PD0,  C);
+		break;
+	case 8: /* UART_3_IOSET_3 */
+		pinmux = SAMA5D2_UART(3, PB12, C);
+		break;
+	case 9: /* UART_4_IOSET_1 */
+		pinmux = SAMA5D2_UART(4, PB4,  A);
+		break;
+	default:
+		return NULL;
+	}
+
+	sama5d2_dbgu_setup_ll(pinmux.id, pinmux.dtxd, pinmux.periph, mck);
+	return pinmux.base;
+}
+
 #endif
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
