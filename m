Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjpGO-00063D-UK
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 17:46:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gjpGL-0006gc-D7
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 18:46:01 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC4)
 (envelope-from <afa@pengutronix.de>) id 1gjpGK-0007rD-TL
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 18:46:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Jan 2019 18:45:58 +0100
Message-Id: <20190116174559.17416-11-a.fatoum@pengutronix.de>
In-Reply-To: <20190116174559.17416-1-a.fatoum@pengutronix.de>
References: <20190116174559.17416-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 10/11] ARM: at91: microchip-ksz9477-evb: import low level init
 from at91bootstrap
To: barebox@lists.infradead.org

This imports
https://github.com/linux4sam/at91bootstrap/blob/v3.8.12/board/sama5d3_xplained/sama5d3_xplained.c

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../boards/microchip-ksz9477-evb/lowlevel.c   | 196 +++++++++++++++++-
 arch/arm/mach-at91/include/mach/at91_pmc.h    |  19 ++
 arch/arm/mach-at91/include/mach/sama5d3.h     |   1 +
 3 files changed, 211 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
index 639958a459ad..110a93e8cd13 100644
--- a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
+++ b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
@@ -10,19 +10,205 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/hardware.h>
+#include <debug_ll.h>
+#include <linux/kconfig.h>
+#include <mach/at91_dbgu.h>
+#include <mach/at91_ddrsdrc.h>
+#include <mach/at91_lowlevel_clock.h>
+#include <mach/at91_pio.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91_wdt.h>
+#include <mach/ddramc.h>
+#include <mach/early_udelay.h>
+#include <mach/gpio.h>
+#include <mach/iomux.h>
 
-extern char __dtb_at91_microchip_ksz9477_evb_start[];
+/* PCK = 528MHz, MCK = 132MHz */
+#define MASTER_CLOCK	132000000
 
-ENTRY_FUNCTION(start_sama5d3_xplained_ung8071, r0, r1, r2)
+#define sama5d3_pmc_enable_periph_clock(clk) \
+	at91_pmc_enable_periph_clock(IOMEM(SAMA5D3_BASE_PMC), clk)
+
+#define at91_pmc_write(off, val) writel(val, IOMEM(SAMA5D3_BASE_PMC) + off)
+#define at91_pmc_read(off) readl(IOMEM(SAMA5D3_BASE_PMC) + off)
+
+#define BAUDRATE(mck, baud) \
+	(((((mck) * 10) / ((baud) * 16)) % 10) >= 5) ? \
+	(mck / (baud * 16) + 1) : ((mck) / (baud * 16))
+
+
+static void configure_pin(unsigned pin)
+{
+	void __iomem *pio = IOMEM(SAMA5D3_BASE_PIOB);
+	unsigned mask = pin_to_mask(pin);
+
+	at91_mux_disable_interrupt(pio, mask);
+	at91_mux_set_pullup(pio, mask, 0);
+	at91_mux_pio3_set_pulldown(pio, mask, 0);
+
+	at91_mux_pio3_set_A_periph(pio, mask);
+
+	at91_mux_gpio_disable(pio, mask);
+}
+
+static void dbgu_init(void)
+{
+	sama5d3_pmc_enable_periph_clock(SAMA5D3_ID_PIOB);
+
+	configure_pin(AT91_PIN_PB30);
+	configure_pin(AT91_PIN_PB31);
+
+	sama5d3_pmc_enable_periph_clock(SAMA5D3_ID_DBGU);
+	at91_dbgu_setup_ll(AT91_BASE_DBGU1, BAUDRATE(MASTER_CLOCK, 115200));
+
+	putc_ll('>');
+}
+
+static void ddramc_reg_config(struct ddramc_register *ddramc_config)
+{
+	ddramc_config->mdr = (AT91C_DDRC2_DBW_32_BITS
+				| AT91C_DDRC2_MD_DDR2_SDRAM);
+
+	ddramc_config->cr = (AT91C_DDRC2_NC_DDR10_SDR9
+				| AT91C_DDRC2_NR_13
+				| AT91C_DDRC2_CAS_3
+				| AT91C_DDRC2_DISABLE_RESET_DLL
+				| AT91C_DDRC2_ENABLE_DLL
+				| AT91C_DDRC2_ENRDM_ENABLE
+				| AT91C_DDRC2_NB_BANKS_8
+				| AT91C_DDRC2_NDQS_DISABLED
+				| AT91C_DDRC2_DECOD_INTERLEAVED
+				| AT91C_DDRC2_UNAL_SUPPORTED);
+
+	/*
+	 * The DDR2-SDRAM device requires a refresh every 15.625 us or 7.81 us.
+	 * With a 133 MHz frequency, the refresh timer count register must to be
+	 * set with (15.625 x 133 MHz) ~ 2084 i.e. 0x824
+	 * or (7.81 x 133 MHz) ~ 1039 i.e. 0x40F.
+	 */
+	ddramc_config->rtr = 0x40F;     /* Refresh timer: 7.812us */
+
+	/* One clock cycle @ 133 MHz = 7.5 ns */
+	ddramc_config->t0pr = (AT91C_DDRC2_TRAS_(6)	/* 6 * 7.5 = 45 ns */
+			| AT91C_DDRC2_TRCD_(2)		/* 2 * 7.5 = 22.5 ns */
+			| AT91C_DDRC2_TWR_(2)		/* 2 * 7.5 = 15   ns */
+			| AT91C_DDRC2_TRC_(8)		/* 8 * 7.5 = 75   ns */
+			| AT91C_DDRC2_TRP_(2)		/* 2 * 7.5 = 15   ns */
+			| AT91C_DDRC2_TRRD_(2)		/* 2 * 7.5 = 15   ns */
+			| AT91C_DDRC2_TWTR_(2)		/* 2 clock cycles min */
+			| AT91C_DDRC2_TMRD_(2));	/* 2 clock cycles */
+
+	ddramc_config->t1pr = (AT91C_DDRC2_TXP_(2)	/* 2 clock cycles */
+			| AT91C_DDRC2_TXSRD_(200)	/* 200 clock cycles */
+			| AT91C_DDRC2_TXSNR_(19)	/* 19 * 7.5 = 142.5 ns */
+			| AT91C_DDRC2_TRFC_(17));	/* 17 * 7.5 = 127.5 ns */
+
+	ddramc_config->t2pr = (AT91C_DDRC2_TFAW_(6)	/* 6 * 7.5 = 45 ns */
+			| AT91C_DDRC2_TRTP_(2)		/* 2 clock cycles min */
+			| AT91C_DDRC2_TRPA_(2)		/* 2 * 7.5 = 15 ns */
+			| AT91C_DDRC2_TXARDS_(8)	/* = TXARD */
+			| AT91C_DDRC2_TXARD_(8));	/* MR12 = 1 */
+}
+
+static void sama5d3_ddramc_init(void)
 {
+	struct ddramc_register ddramc_reg;
+	unsigned int reg;
+
+	ddramc_reg_config(&ddramc_reg);
+
+	/* enable ddr2 clock */
+	sama5d3_pmc_enable_periph_clock(SAMA5D3_ID_MPDDRC);
+	at91_pmc_write(AT91_PMC_SCER, AT91CAP9_PMC_DDR);
+
+
+	/* Init the special register for sama5d3x */
+	/* MPDDRC DLL Slave Offset Register: DDR2 configuration */
+	reg = AT91C_MPDDRC_S0OFF_1
+		| AT91C_MPDDRC_S2OFF_1
+		| AT91C_MPDDRC_S3OFF_1;
+	writel(reg, (SAMA5D3_BASE_MPDDRC + MPDDRC_DLL_SOR));
+
+	/* MPDDRC DLL Master Offset Register */
+	/* write master + clk90 offset */
+	reg = AT91C_MPDDRC_MOFF_7
+		| AT91C_MPDDRC_CLK90OFF_31
+		| AT91C_MPDDRC_SELOFF_ENABLED | AT91C_MPDDRC_KEY;
+	writel(reg, (SAMA5D3_BASE_MPDDRC + MPDDRC_DLL_MOR));
+
+	/* MPDDRC I/O Calibration Register */
+	/* DDR2 RZQ = 50 Ohm */
+	/* TZQIO = 4 */
+	reg = AT91C_MPDDRC_RDIV_DDR2_RZQ_50
+		| AT91C_MPDDRC_TZQIO_4;
+	writel(reg, (SAMA5D3_BASE_MPDDRC + MPDDRC_IO_CALIBR));
+
+	/* DDRAM2 Controller initialize */
+	ddram_initialize(SAMA5D3_BASE_MPDDRC, SAMA5_DDRCS, &ddramc_reg);
+}
+
+extern char __dtb_at91_microchip_ksz9477_evb_start[];
+
+static void noinline board_init(void) {
 	void *fdt;
 
+	if (get_pc() < SAMA5_DDRCS) {
+		at91_wdt_disable(IOMEM(SAMA5D3_BASE_WDT));
+		at91_lowlevel_clock_init(IOMEM(SAMA5D3_BASE_PMC));
+
+		/* At this stage the main oscillator
+		 * is supposed to be enabled PCK = MCK = MOSC
+		 */
+
+		/* Configure PLLA = MOSC * (PLL_MULA + 1) / PLL_DIVA */
+		at91_pmc_write(AT91_CKGR_PLLAR, AT91_PMC_PLLA_WR_ERRATA);
+		at91_pmc_write(AT91_CKGR_PLLAR, AT91_PMC_PLLA_WR_ERRATA
+			       | AT91_PMC3_MUL_(43) | AT91_PMC_OUT_0
+			       | AT91_PMC_PLLCOUNT
+			       | AT91_PMC_DIV_BYPASS);
+
+		while (!(at91_pmc_read(AT91_PMC_SR) & AT91_PMC_LOCKA))
+			;
+
+		/* Initialize PLLA charge pump */
+		at91_pmc_write(AT91_PMC_PLLICPR, AT91_PMC_IPLLA_3);
+
+		/* Switch PCK/MCK on Main clock output */
+		at91_pmc_cfg_mck(IOMEM(SAMA5D3_BASE_PMC), AT91SAM9_PMC_MDIV_4
+				 | AT91_PMC_CSS_MAIN);
+
+		/* Switch PCK/MCK on PLLA output */
+		at91_pmc_cfg_mck(IOMEM(SAMA5D3_BASE_PMC), AT91SAM9_PMC_MDIV_4
+				 | AT91_PMC_CSS_PLLA);
+
+		early_udelay_init(IOMEM(SAMA5D3_BASE_PMC), IOMEM(SAMA5D3_BASE_PIT),
+				  SAMA5D3_ID_PIT, MASTER_CLOCK);
+	}
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		dbgu_init();
+
+	if (get_pc() < SAMA5_DDRCS)
+		sama5d3_ddramc_init();
+
+	if (IS_ENABLED(CONFIG_MACH_MICROCHIP_KSZ9477_EVB_DT))
+		fdt = __dtb_at91_microchip_ksz9477_evb_start + get_runtime_offset();
+	else
+		fdt = NULL;
+
+	barebox_arm_entry(SAMA5_DDRCS, SZ_256M, fdt);
+}
+
+
+ENTRY_FUNCTION(start_sama5d3_xplained_ung8071, r0, r1, r2)
+{
 	arm_cpu_lowlevel_init();
 
 	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
 
-	fdt = __dtb_at91_microchip_ksz9477_evb_start + get_runtime_offset();
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
 
-	barebox_arm_entry(SAMA5_DDRCS, SZ_256M, fdt);
+	board_init();
 }
diff --git a/arch/arm/mach-at91/include/mach/at91_pmc.h b/arch/arm/mach-at91/include/mach/at91_pmc.h
index 0f13e4f4d391..1e708f78d555 100644
--- a/arch/arm/mach-at91/include/mach/at91_pmc.h
+++ b/arch/arm/mach-at91/include/mach/at91_pmc.h
@@ -63,9 +63,17 @@
 #define	AT91_CKGR_PLLAR		0x28			/* PLL A Register */
 #define	AT91_CKGR_PLLBR		0x2c			/* PLL B Register */
 #define		AT91_PMC_DIV		(0xff  <<  0)		/* Divider */
+#define			AT91_PMC_DIV_BYPASS	(1 << 0)		/* Divider bypass */
 #define		AT91_PMC_PLLCOUNT	(0x3f  <<  8)		/* PLL Counter */
 #define		AT91_PMC_OUT		(3     << 14)		/* PLL Clock Frequency Range */
+#define			AT91_PMC_OUT_0		(0 << 14)
+#define			AT91_PMC_OUT_1		(1 << 14)
+#define			AT91_PMC_OUT_2		(2 << 14)
+#define			AT91_PMC_OUT_3		(3 << 14)
 #define		AT91_PMC_MUL		(0x7ff << 16)		/* PLL Multiplier */
+#define			AT91_PMC_MUL_(n)		(((n) << 16) & AT91_PMC_MUL)
+#define		AT91_PMC3_MUL		(0x7f << 18)		/* PLL Multiplier [SAMA5 only]*/
+#define			AT91_PMC3_MUL_(n)		(((n) << 18) & AT91_PMC3_MUL)
 #define		AT91_PMC_USBDIV		(3     << 28)		/* USB Divisor (PLLB only) */
 #define			AT91_PMC_USBDIV_1		(0 << 28)
 #define			AT91_PMC_USBDIV_2		(1 << 28)
@@ -151,6 +159,17 @@
 #define		AT91_PMC_MOSCRCS	(1 << 17)		/* Main On-Chip RC [some SAM9] */
 #define		AT91_PMC_CFDEV		(1 << 18)		/* Clock Failure Detector Event [some SAM9] */
 #define	AT91_PMC_IMR		0x6c			/* Interrupt Mask Register */
+#define	AT91_PMC_PLLICPR	0x80		/* PLL Charge Pump Current Register */
+#define		AT91C_PMC_ICPPLLA	(0xf <<  0)
+#define			AT91_PMC_ICPPLLA_0		(0 << 0)
+#define			AT91_PMC_ICPPLLA_1		(1 << 0)
+#define		AT91_PMC_REALLOCK	(0x1 <<  7)
+#define		AT91_PMC_IPLLA		(0xf <<  8)
+#define			AT91_PMC_IPLLA_0		(0 <<  8)
+#define			AT91_PMC_IPLLA_1		(1 <<  8)
+#define			AT91_PMC_IPLLA_2		(2 <<  8)
+#define			AT91_PMC_IPLLA_3		(3 <<  8)
+
 
 #define AT91_PMC_PROT		0xe4			/* Write Protect Mode Register [some SAM9] */
 #define		AT91_PMC_WPEN		(0x1  <<  0)		/* Write Protect Enable */
diff --git a/arch/arm/mach-at91/include/mach/sama5d3.h b/arch/arm/mach-at91/include/mach/sama5d3.h
index f0e53610c6c0..da6e825593e6 100644
--- a/arch/arm/mach-at91/include/mach/sama5d3.h
+++ b/arch/arm/mach-at91/include/mach/sama5d3.h
@@ -87,6 +87,7 @@
 #define SAMA5D3_BASE_PIOC	0xfffff600
 #define SAMA5D3_BASE_PIOD	0xfffff800
 #define SAMA5D3_BASE_PIOE	0xfffffa00
+#define SAMA5D3_BASE_PMC	0xfffffc00
 #define SAMA5D3_BASE_MPDDRC	0xffffea00
 #define	SAMA5D3_BASE_HSMC	0xffffc000
 #define SAMA5D3_BASE_RSTC	0xfffffe00
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
