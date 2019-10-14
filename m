Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzKq-0003TZ-9x
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 12:20:28 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2019 14:19:00 +0200
Message-Id: <20191014121901.19471-12-a.fatoum@pengutronix.de>
In-Reply-To: <20191014121901.19471-1-a.fatoum@pengutronix.de>
References: <20191014121901.19471-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 11/12] ARM: at91: add basic sama5d2 support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Add hardware description, chip identification and clock changes to
support the sama5d2 SoC.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/sama5d2.dtsi                  |   0
 arch/arm/mach-at91/Kconfig                 |   7 +
 arch/arm/mach-at91/clock.c                 |  15 +-
 arch/arm/mach-at91/include/mach/cpu.h      |  56 +++++
 arch/arm/mach-at91/include/mach/hardware.h |   1 +
 arch/arm/mach-at91/include/mach/sama5d2.h  | 261 +++++++++++++++++++++
 arch/arm/mach-at91/sam9_smc.c              |   5 +-
 arch/arm/mach-at91/setup.c                 | 104 +++++++-
 common/Kconfig                             |   1 +
 9 files changed, 443 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/dts/sama5d2.dtsi
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d2.h

diff --git a/arch/arm/dts/sama5d2.dtsi b/arch/arm/dts/sama5d2.dtsi
new file mode 100644
index 000000000000..e69de29bb2d1
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 070f2f6893dc..6be9bf646d05 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -61,6 +61,13 @@ config SOC_SAMA5D2
 	select SOC_SAMA5
 	select AT91SAM9_SMC
 	select CLOCKSOURCE_ATMEL_PIT
+	select HAVE_AT91_H32MX
+	select HAVE_AT91_UTMI
+	select HAVE_AT91_USB_CLK
+	select HAVE_AT91_GENERATED_CLK
+	select PINCTRL_AT91PIO4
+	select HAS_MACB
+	select HAVE_MACH_ARM_HEAD
 
 config SOC_SAMA5D3
 	bool
diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index d2691acae39f..9a58b243d8c5 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -46,6 +46,7 @@
 #define cpu_has_utmi()		(  cpu_is_at91sam9rl() \
 				|| cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
+				|| cpu_is_sama5d2() \
 				|| cpu_is_sama5d3() \
 				|| cpu_is_sama5d4())
 
@@ -69,11 +70,13 @@
 #define cpu_has_pllb()		(!(cpu_is_at91sam9rl() \
 				|| cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
+				|| cpu_is_sama5d2() \
 				|| cpu_is_sama5d3() \
 				|| cpu_is_sama5d4()))
 
 #define cpu_has_upll()		(cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
+				|| cpu_is_sama5d2() \
 				|| cpu_is_sama5d3() \
 				|| cpu_is_sama5d4())
 
@@ -84,30 +87,36 @@
 #define cpu_has_udpfs()		(!(cpu_is_at91sam9rl() \
 				|| cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
+				|| cpu_is_sama5d2() \
 				|| cpu_is_sama5d3() \
 				|| cpu_is_sama5d4()))
 
 #define cpu_has_plladiv2()	(cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
 				|| cpu_is_at91sam9n12() \
+				|| cpu_is_sama5d2() \
 				|| cpu_is_sama5d3() \
 				|| cpu_is_sama5d4())
 
 #define cpu_has_mdiv3()		(cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
 				|| cpu_is_at91sam9n12() \
+				|| cpu_is_sama5d2() \
 				|| cpu_is_sama5d3() \
 				|| cpu_is_sama5d4())
 
 #define cpu_has_alt_prescaler()	(cpu_is_at91sam9x5() \
 				|| cpu_is_at91sam9n12() \
+				|| cpu_is_sama5d2() \
 				|| cpu_is_sama5d3() \
 				|| cpu_is_sama5d4())
 
-#define cpu_has_pcr()		(cpu_is_sama5d3() \
+#define cpu_has_pcr()		(cpu_is_sama5d2() \
+				|| cpu_is_sama5d3() \
 				|| cpu_is_sama5d4())
 
-#define cpu_has_dual_matrix()	(cpu_is_sama5d4())
+#define cpu_has_dual_matrix()	(cpu_is_sama5d2() \
+				|| cpu_is_sama5d4())
 
 static void *pmc;
 
@@ -663,6 +672,8 @@ int at91_clock_init(void)
 
 	if (cpu_is_sama5d4())
 		pmc = IOMEM(0xf0018000);
+	else if (cpu_is_sama5d2())
+		pmc = IOMEM(0xf0014000);
 	else
 		pmc = IOMEM(0xfffffc00); /*
 					  * All other supported SoCs use this
diff --git a/arch/arm/mach-at91/include/mach/cpu.h b/arch/arm/mach-at91/include/mach/cpu.h
index 6c904efb8bef..6e0f25f32562 100644
--- a/arch/arm/mach-at91/include/mach/cpu.h
+++ b/arch/arm/mach-at91/include/mach/cpu.h
@@ -52,6 +52,22 @@
 #define ARCH_EXID_AT91SAM9CN11	0x00000009
 #define ARCH_EXID_AT91SAM9CN12	0x00000005
 
+#define ARCH_EXID_SAMA5D21CU		0x0000005a
+#define ARCH_EXID_SAMA5D225C_D1M	0x00000053
+#define ARCH_EXID_SAMA5D22CU		0x00000059
+#define ARCH_EXID_SAMA5D22CN		0x00000069
+#define ARCH_EXID_SAMA5D23CU		0x00000058
+#define ARCH_EXID_SAMA5D24CX		0x00000004
+#define ARCH_EXID_SAMA5D24CU		0x00000014
+#define ARCH_EXID_SAMA5D26CU		0x00000012
+#define ARCH_EXID_SAMA5D27C_D1G 	0x00000033
+#define ARCH_EXID_SAMA5D27C_D5M 	0x00000032
+#define ARCH_EXID_SAMA5D27CU		0x00000011
+#define ARCH_EXID_SAMA5D27CN		0x00000021
+#define ARCH_EXID_SAMA5D28C_D1G 	0x00000013
+#define ARCH_EXID_SAMA5D28CU		0x00000010
+#define ARCH_EXID_SAMA5D28CN		0x00000020
+
 #define ARCH_EXID_SAMA5D3	0x00004300
 #define ARCH_EXID_SAMA5D31	0x00444300
 #define ARCH_EXID_SAMA5D33	0x00414300
@@ -93,6 +109,9 @@ enum at91_soc_type {
 	/* SAM9N12 */
 	AT91_SOC_SAM9N12,
 
+	/* SAMA5D2 */
+	AT91_SOC_SAMA5D2,
+
 	/* SAMA5D3 */
 	AT91_SOC_SAMA5D3,
 
@@ -120,6 +139,14 @@ enum at91_soc_subtype {
 	/* SAM9N12 */
 	AT91_SOC_SAM9CN11, AT91_SOC_SAM9CN12,
 
+	/* SAMA5D2 */
+	AT91_SOC_SAMA5D21CU,
+	AT91_SOC_SAMA5D225C_D1M, AT91_SOC_SAMA5D22CU, AT91_SOC_SAMA5D22CN,
+	AT91_SOC_SAMA5D23CU, AT91_SOC_SAMA5D24CX, AT91_SOC_SAMA5D24CU,
+	AT91_SOC_SAMA5D26CU, AT91_SOC_SAMA5D27C_D1G, AT91_SOC_SAMA5D27C_D5M,
+	AT91_SOC_SAMA5D27CU, AT91_SOC_SAMA5D27CN, AT91_SOC_SAMA5D28C_D1G,
+	AT91_SOC_SAMA5D28CU, AT91_SOC_SAMA5D28CN,
+
 	/* SAMA5D3 */
 	AT91_SOC_SAMA5D31, AT91_SOC_SAMA5D33, AT91_SOC_SAMA5D34,
 	AT91_SOC_SAMA5D35, AT91_SOC_SAMA5D36,
@@ -222,6 +249,35 @@ static inline int at91_soc_is_detected(void)
 #define cpu_is_at91sam9n12()	(0)
 #endif
 
+#ifdef CONFIG_SOC_SAMA5D2
+#define cpu_is_sama5d2()	(at91_soc_initdata.type == AT91_SOC_SAMA5D2)
+#define cpu_is_sama5d21()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D21CU)
+#define cpu_is_sama5d22()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D225C_D1M \
+				|| at91_soc_initdata.subtype == AT91_SOC_SAMA5D225C_D1M \
+				|| at91_soc_initdata.subtype == AT91_SOC_SAMA5D22CU \
+				|| at91_soc_initdata.subtype == AT91_SOC_SAMA5D22CN)
+#define cpu_is_sama5d23()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D23CU)
+#define cpu_is_sama5d24()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D24CX \
+				|| at91_soc_initdata.subtype == AT91_SOC_SAMA5D24CU)
+#define cpu_is_sama5d26()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D26CU)
+#define cpu_is_sama5d27()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D27C_D1G \
+				|| at91_soc_initdata.subtype == AT91_SOC_SAMA5D27C_D5M \
+				|| at91_soc_initdata.subtype == AT91_SOC_SAMA5D27CU \
+				|| at91_soc_initdata.subtype == AT91_SOC_SAMA5D27CN)
+#define cpu_is_sama5d28()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D28C_D1G \
+				|| at91_soc_initdata.subtype == AT91_SOC_SAMA5D28CU \
+				|| at91_soc_initdata.subtype == AT91_SOC_SAMA5D28CN)
+#else
+#define cpu_is_sama5d2()	(0)
+#define cpu_is_sama5d21()	(0)
+#define cpu_is_sama5d22()	(0)
+#define cpu_is_sama5d23()	(0)
+#define cpu_is_sama5d24()	(0)
+#define cpu_is_sama5d26()	(0)
+#define cpu_is_sama5d27()	(0)
+#define cpu_is_sama5d28()	(0)
+#endif
+
 #ifdef CONFIG_SOC_SAMA5D3
 #define cpu_is_sama5d3()	(at91_soc_initdata.type == AT91_SOC_SAMA5D3)
 #define cpu_is_sama5d31()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D31)
diff --git a/arch/arm/mach-at91/include/mach/hardware.h b/arch/arm/mach-at91/include/mach/hardware.h
index 21462030e98b..3ae54247e0fc 100644
--- a/arch/arm/mach-at91/include/mach/hardware.h
+++ b/arch/arm/mach-at91/include/mach/hardware.h
@@ -29,6 +29,7 @@
 #include <mach/at91sam9g45.h>
 #include <mach/at91sam9n12.h>
 #include <mach/at91sam9x5.h>
+#include <mach/sama5d2.h>
 #include <mach/sama5d3.h>
 #include <mach/sama5d4.h>
 
diff --git a/arch/arm/mach-at91/include/mach/sama5d2.h b/arch/arm/mach-at91/include/mach/sama5d2.h
new file mode 100644
index 000000000000..3dad7d9c9c2c
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/sama5d2.h
@@ -0,0 +1,261 @@
+// SPDX-License-Identifier: BSD-1-Clause
+/*
+ * Chip-specific header file for the SAMA5D2 family
+ *
+ * Copyright (c) 2015, Atmel Corporation
+ * Copyright (c) 2019 Ahmad Fatoum, Pengutronix
+ *
+ * Common definitions.
+ * Based on SAMA5D2 datasheet:
+ * http://ww1.microchip.com/downloads/en/DeviceDoc/SAMA5D2-Series-Data-Sheet-DS60001476C.pdf
+ *
+ */
+
+#ifndef SAMA5D2_H
+#define SAMA5D2_H
+
+/*
+ * Peripheral identifiers/interrupts. (Table 18-9)
+ */
+#define	SAMA5D2_ID_FIQ		0	/* FIQ Interrupt ID */
+/* 1 */
+#define	SAMA5D2_ID_ARM		2	/* Performance Monitor Unit */
+#define	SAMA5D2_ID_PIT		3	/* Periodic Interval Timer Interrupt */
+#define	SAMA5D2_ID_WDT		4	/* Watchdog Timer Interrupt */
+#define	SAMA5D2_ID_GMAC		5	/* Ethernet MAC */
+#define	SAMA5D2_ID_XDMAC0	6	/* DMA Controller 0 */
+#define	SAMA5D2_ID_XDMAC1	7	/* DMA Controller 1 */
+#define	SAMA5D2_ID_ICM		8	/* Integrity Check Monitor */
+#define	SAMA5D2_ID_AES		9	/* Advanced Encryption Standard */
+#define	SAMA5D2_ID_AESB		10	/* AES bridge */
+#define	SAMA5D2_ID_TDES		11	/* Triple Data Encryption Standard */
+#define	SAMA5D2_ID_SHA		12	/* SHA Signature */
+#define	SAMA5D2_ID_MPDDRC	13	/* MPDDR Controller */
+#define	SAMA5D2_ID_MATRIX1	14	/* H32MX, 32-bit AHB Matrix */
+#define	SAMA5D2_ID_MATRIX0	15	/* H64MX, 64-bit AHB Matrix */
+#define	SAMA5D2_ID_SECUMOD	16	/* Secure Module */
+#define	SAMA5D2_ID_HSMC		17	/* Multi-bit ECC interrupt */
+#define	SAMA5D2_ID_PIOA		18	/* Parallel I/O Controller A */
+#define	SAMA5D2_ID_FLEXCOM0	19	/* FLEXCOM0 */
+#define	SAMA5D2_ID_FLEXCOM1	20	/* FLEXCOM1 */
+#define	SAMA5D2_ID_FLEXCOM2	21	/* FLEXCOM2 */
+#define	SAMA5D2_ID_FLEXCOM3	22	/* FLEXCOM3 */
+#define	SAMA5D2_ID_FLEXCOM4	23	/* FLEXCOM4 */
+#define	SAMA5D2_ID_UART0	24	/* UART0 */
+#define	SAMA5D2_ID_UART1	25	/* UART1 */
+#define	SAMA5D2_ID_UART2	26	/* UART2 */
+#define	SAMA5D2_ID_UART3	27	/* UART3 */
+#define	SAMA5D2_ID_UART4	28	/* UART4 */
+#define	SAMA5D2_ID_TWI0		29	/* Two-wire Interface 0 */
+#define	SAMA5D2_ID_TWI1		30	/* Two-wire Interface 1 */
+#define	SAMA5D2_ID_SDMMC0	31	/* Secure Data Memory Card Controller 0 */
+#define	SAMA5D2_ID_SDMMC1	32	/* Secure Data Memory Card Controller 1 */
+#define	SAMA5D2_ID_SPI0		33	/* Serial Peripheral Interface 0 */
+#define	SAMA5D2_ID_SPI1		34	/* Serial Peripheral Interface 1 */
+#define	SAMA5D2_ID_TC0		35	/* Timer Counter 0 (ch.0,1,2) */
+#define	SAMA5D2_ID_TC1		36	/* Timer Counter 1 (ch.3,4,5) */
+/* 37 */
+#define	SAMA5D2_ID_PWM		38	/* Pulse Width Modulation Controller0 (ch. 0,1,2,3) */
+/* 39 */
+#define	SAMA5D2_ID_ADC		40	/* Touch Screen ADC Controller */
+#define	SAMA5D2_ID_UHPHS	41	/* USB Host High Speed */
+#define	SAMA5D2_ID_UDPHS	42	/* USB Device High Speed */
+#define	SAMA5D2_ID_SSC0		43	/* Serial Synchronous Controller 0 */
+#define	SAMA5D2_ID_SSC1		44	/* Serial Synchronous Controller 1 */
+#define	SAMA5D2_ID_LCDC		45	/* LCD Controller */
+#define	SAMA5D2_ID_ISI		46	/* Image Sensor Interface */
+#define	SAMA5D2_ID_TRNG		47	/* True Random Number Generator */
+#define	SAMA5D2_ID_PDMIC	48	/* Pulse Density Modulation Interface Controller */
+#define	SAMA5D2_ID_IRQ		49	/* IRQ Interrupt ID */
+#define	SAMA5D2_ID_SFC		50	/* Fuse Controller */
+#define	SAMA5D2_ID_SECURAM	51	/* Secure RAM */
+#define	SAMA5D2_ID_QSPI0	52	/* QSPI0 */
+#define	SAMA5D2_ID_QSPI1	53	/* QSPI1 */
+#define	SAMA5D2_ID_I2SC0	54	/* Inter-IC Sound Controller 0 */
+#define	SAMA5D2_ID_I2SC1	55	/* Inter-IC Sound Controller 1 */
+#define	SAMA5D2_ID_CAN0_INT0	56	/* MCAN 0 Interrupt0 */
+#define	SAMA5D2_ID_CAN1_INT0	57	/* MCAN 1 Interrupt0 */
+#define	SAMA5D2_ID_PTC		58	/* Peripheral Touch Controller */
+#define	SAMA5D2_ID_CLASSD	59	/* Audio Class D Amplifier */
+#define	SAMA5D2_ID_SFR		60	/* Special Function Register */
+#define	SAMA5D2_ID_SAIC		61	/* Secured Advanced Interrupt Controller */
+#define	SAMA5D2_ID_AIC		62	/* Advanced Interrupt Controller */
+#define	SAMA5D2_ID_L2CC		63	/* L2 Cache Controller */
+#define	SAMA5D2_ID_CAN0_INT1	64	/* MCAN 0 Interrupt1 */
+#define	SAMA5D2_ID_CAN1_INT1	65	/* MCAN 1 Interrupt1 */
+#define	SAMA5D2_ID_GMAC_Q1	66	/* GMAC Queue 1 Interrupt */
+#define	SAMA5D2_ID_GMAC_Q2	67	/* GMAC Queue 2 Interrupt */
+#define	SAMA5D2_ID_PIOB		68	/* Parallel I/O Controller B */
+#define	SAMA5D2_ID_PIOC		69	/* Parallel I/O Controller C */
+#define	SAMA5D2_ID_PIOD		70	/* Parallel I/O Controller D */
+#define	SAMA5D2_ID_SDMMC0_TIMER	71	/* Secure Data Memory Card Controller 0 */
+#define	SAMA5D2_ID_SDMMC1_TIMER	72	/* Secure Data Memory Card Controller 1 */
+/* 73 */
+#define	SAMA5D2_ID_SYS		74	/* System Controller Interrupt */
+#define	SAMA5D2_ID_ACC		75	/* Analog Comparator */
+#define	SAMA5D2_ID_RXLP		76	/* UART Low-Power */
+#define	SAMA5D2_ID_SFRBU	77	/* Special Function Register BackUp */
+#define	SAMA5D2_ID_CHIPID	78	/* Chip ID */
+
+/*
+ * User Peripheral physical base addresses.
+ */
+
+#define	SAMA5D2_BASE_LCDC	0xf0000000
+#define	SAMA5D2_BASE_XDMAC1	0xf0004000
+#define	SAMA5D2_BASE_HXISI	0xf0008000
+#define	SAMA5D2_BASE_MPDDRC	0xf000c000
+#define	SAMA5D2_BASE_XDMAC0	0xf0010000
+#define	SAMA5D2_BASE_PMC	0xf0014000
+#define	SAMA5D2_BASE_MATRIX64	0xf0018000	/* MATRIX0 */
+#define	SAMA5D2_BASE_AESB	0xf001c000
+#define	SAMA5D2_BASE_QSPI0	0xf0020000
+#define	SAMA5D2_BASE_QSPI1	0xf0024000
+#define	SAMA5D2_BASE_SHA	0xf0028000
+#define	SAMA5D2_BASE_AES	0xf002c000
+
+#define	SAMA5D2_BASE_SPI0	0xf8000000
+#define	SAMA5D2_BASE_SSC0	0xf8004000
+#define	SAMA5D2_BASE_GMAC	0xf8008000
+#define	SAMA5D2_BASE_TC0	0xf800c000
+#define	SAMA5D2_BASE_TC1	0xf8010000
+#define	SAMA5D2_BASE_HSMC	0xf8014000
+#define	SAMA5D2_BASE_PDMIC	0xf8018000
+#define	SAMA5D2_BASE_UART0	0xf801c000
+#define	SAMA5D2_BASE_UART1	0xf8020000
+#define	SAMA5D2_BASE_UART2	0xf8024000
+#define	SAMA5D2_BASE_TWI0	0xf8028000
+#define	SAMA5D2_BASE_PWMC	0xf802c000
+#define	SAMA5D2_BASE_SFR	0xf8030000
+#define	SAMA5D2_BASE_FLEXCOM0	0xf8034000
+#define	SAMA5D2_BASE_FLEXCOM1	0xf8038000
+#define	SAMA5D2_BASE_SAIC	0xf803c000
+#define	SAMA5D2_BASE_ICM	0xf8040000
+#define	SAMA5D2_BASE_SECURAM	0xf8044000
+#define	SAMA5D2_BASE_SYSC	0xf8048000
+#define	SAMA5D2_BASE_ACC	0xf804a000
+#define	SAMA5D2_BASE_SFC	0xf804c000
+#define	SAMA5D2_BASE_I2SC0	0xf8050000
+#define	SAMA5D2_BASE_CAN0	0xf8054000
+
+#define	SAMA5D2_BASE_SPI1	0xfc000000
+#define	SAMA5D2_BASE_SSC1	0xfc004000
+#define	SAMA5D2_BASE_UART3	0xfc008000
+#define	SAMA5D2_BASE_UART4	0xfc00c000
+#define	SAMA5D2_BASE_FLEXCOM2	0xfc010000
+#define	SAMA5D2_BASE_FLEXCOM3	0xfc014000
+#define	SAMA5D2_BASE_FLEXCOM4	0xfc018000
+#define	SAMA5D2_BASE_TRNG	0xfc01c000
+#define	SAMA5D2_BASE_AIC	0xfc020000
+#define	SAMA5D2_BASE_TWI1	0xfc028000
+#define	SAMA5D2_BASE_UDPHS	0xfc02c000
+#define	SAMA5D2_BASE_ADC	0xfc030000
+
+#define	SAMA5D2_BASE_PIOA	0xfc038000
+#define	SAMA5D2_BASE_MATRIX32	0xfc03c000	/* MATRIX1 */
+#define	SAMA5D2_BASE_SECUMOD	0xfc040000
+#define	SAMA5D2_BASE_TDES	0xfc044000
+#define	SAMA5D2_BASE_CLASSD	0xfc048000
+#define	SAMA5D2_BASE_I2SC1	0xfc04c000
+#define	SAMA5D2_BASE_CAN1	0xfc050000
+#define	SAMA5D2_BASE_SFRBU	0xfc05c000
+#define	SAMA5D2_BASE_CHIPID	0xfc069000
+
+/*
+ * Address Memory Space
+ */
+#define	SAMA5D2_BASE_INTERNAL_MEM	0x00000000
+#define	SAMA5D2_BASE_CS0		0x10000000
+#define	SAMA5D2_BASE_DDRCS		0x20000000
+#define	SAMA5D2_BASE_DDRCS_AES		0x40000000
+#define	SAMA5D2_BASE_CS1		0x60000000
+#define	SAMA5D2_BASE_CS2		0x70000000
+#define	SAMA5D2_BASE_CS3		0x80000000
+#define	SAMA5D2_BASE_QSPI0_AES_MEM	0x90000000
+#define	SAMA5D2_BASE_QSPI1_AES_MEM	0x98000000
+#define	SAMA5D2_BASE_SDHC0		0xa0000000
+#define	SAMA5D2_BASE_SDHC1		0xb0000000
+#define	SAMA5D2_BASE_NFC_CMD_REG	0xc0000000
+#define	SAMA5D2_BASE_QSPI0_MEM		0xd0000000
+#define	SAMA5D2_BASE_QSPI1_MEM		0xd8000000
+#define	SAMA5D2_BASE_PERIPH		0xf0000000
+
+/*
+ * Internal Memories
+ */
+#define	SAMA5D2_BASE_ROM		0x00000000	/* ROM */
+#define	SAMA5D2_BASE_ECC_ROM		0x00060000	/* ECC ROM */
+#define	SAMA5D2_BASE_NFC_SRAM		0x00100000	/* NFC SRAM */
+#define	SAMA5D2_BASE_SRAM0		0x00200000	/* SRAM0 */
+#define	SAMA5D2_BASE_SRAM1		0x00220000	/* SRAM1 */
+#define	SAMA5D2_BASE_UDPHS_SRAM		0x00300000	/* UDPHS RAM */
+#define	SAMA5D2_BASE_UHP_OHCI		0x00400000	/* UHP OHCI */
+#define	SAMA5D2_BASE_UHP_EHCI		0x00500000	/* UHP EHCI */
+#define	SAMA5D2_BASE_AXI_MATRIX		0x00600000	/* AXI Maxtrix */
+#define	SAMA5D2_BASE_DAP		0x00700000	/* DAP */
+#define	SAMA5D2_BASE_PTC		0x00800000	/* PTC */
+#define	SAMA5D2_BASE_L2CC		0x00A00000	/* L2CC */
+
+/*
+ * Other misc defines
+ */
+#define	SAMA5D2_BASE_PMECC	(SAMA5D2_BASE_HSMC + 0x70)
+#define	SAMA5D2_BASE_PMERRLOC	(SAMA5D2_BASE_HSMC + 0x500)
+
+#define	SAMA5D2_PMECC		(SAMA5D2_BASE_PMECC - SAMA5D2_BASE_SYS)
+#define	SAMA5D2_PMERRLOC	(SAMA5D2_BASE_PMERRLOC - SAMA5D2_BASE_SYS)
+
+#define	SAMA5D2_BASE_PIOB	(SAMA5D2_BASE_PIOA + 0x40)
+#define	SAMA5D2_BASE_PIOC	(SAMA5D2_BASE_PIOB + 0x40)
+#define	SAMA5D2_BASE_PIOD	(SAMA5D2_BASE_PIOC + 0x40)
+
+/* SYSC spawns */
+#define	SAMA5D2_BASE_RSTC	SAMA5D2_BASE_SYSC
+#define	SAMA5D2_BASE_SHDC	(SAMA5D2_BASE_SYSC + 0x10)
+#define	SAMA5D2_BASE_PITC	(SAMA5D2_BASE_SYSC + 0x30)
+#define	SAMA5D2_BASE_WDT	(SAMA5D2_BASE_SYSC + 0x40)
+#define	SAMA5D2_BASE_SCKCR	(SAMA5D2_BASE_SYSC + 0x50)
+#define	SAMA5D2_BASE_RTCC	(SAMA5D2_BASE_SYSC + 0xb0)
+
+#define SAMA5D2_BASE_SMC	(SAMA5D2_BASE_HSMC + 0x700)
+
+#define	SAMA5D2_NUM_PIO		4
+#define	SAMA5D2_NUM_TWI		2
+
+/* AICREDIR Unlock Key */
+#define	SAMA5D2_AICREDIR_KEY		0xB6D81C4D
+
+/*
+ * Matrix Slaves ID
+ */
+/* MATRIX0(H64MX) Matrix Slaves */
+/* Bridge from H64MX to AXIMX (Internal ROM, Cryto Library, PKCC RAM) */
+#define	SAMA5D2_H64MX_SLAVE_BRIDGE_TO_AXIMX	0
+#define	SAMA5D2_H64MX_SLAVE_PERI_BRIDGE		1	/* H64MX Peripheral Bridge */
+#define	SAMA5D2_H64MX_SLAVE_DDR2_PORT_0		2	/* DDR2 Port0-AESOTF */
+#define	SAMA5D2_H64MX_SLAVE_DDR2_PORT_1		3	/* DDR2 Port1 */
+#define	SAMA5D2_H64MX_SLAVE_DDR2_PORT_2		4	/* DDR2 Port2 */
+#define	SAMA5D2_H64MX_SLAVE_DDR2_PORT_3		5	/* DDR2 Port3 */
+#define	SAMA5D2_H64MX_SLAVE_DDR2_PORT_4		6	/* DDR2 Port4 */
+#define	SAMA5D2_H64MX_SLAVE_DDR2_PORT_5		7	/* DDR2 Port5 */
+#define	SAMA5D2_H64MX_SLAVE_DDR2_PORT_6		8	/* DDR2 Port6 */
+#define	SAMA5D2_H64MX_SLAVE_DDR2_PORT_7		9	/* DDR2 Port7 */
+#define	SAMA5D2_H64MX_SLAVE_INTERNAL_SRAM	10	/* Internal SRAM 128K */
+#define	SAMA5D2_H64MX_SLAVE_CACHE_L2		11	/* Internal SRAM 128K (Cache L2) */
+#define	SAMA5D2_H64MX_SLAVE_QSPI0		12	/* QSPI0 */
+#define	SAMA5D2_H64MX_SLAVE_QSPI1		13	/* QSPI1 */
+#define	SAMA5D2_H64MX_SLAVE_AESB		14	/* AESB */
+
+/* MATRIX1(H32MX) Matrix Slaves */
+#define	SAMA5D2_H32MX_BRIDGE_TO_H64MX		0	/* Bridge from H32MX to H64MX */
+#define	SAMA5D2_H32MX_PERI_BRIDGE_0		1	/* H32MX Peripheral Bridge 0 */
+#define	SAMA5D2_H32MX_PERI_BRIDGE_1		2	/* H32MX Peripheral Bridge 1 */
+#define	SAMA5D2_H32MX_EXTERNAL_EBI		3	/* External Bus Interface */
+#define	SAMA5D2_H32MX_NFC_CMD_REG		3	/* NFC command Register */
+#define	SAMA5D2_H32MX_NFC_SRAM			4	/* NFC SRAM */
+#define	SAMA5D2_H32MX_USB			5
+
+#define	SAMA5D2_SRAM_BASE			SAMA5D2_BASE_SRAM0
+#define	SAMA5D2_SRAM_SIZE			(128 * SZ_1K)
+
+#endif
diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
index a4d441f02385..05584c0711fa 100644
--- a/arch/arm/mach-at91/sam9_smc.c
+++ b/arch/arm/mach-at91/sam9_smc.c
@@ -19,7 +19,8 @@
 
 #define AT91_SAM9_SMC_CS_STRIDE		0x10
 #define AT91_SAMA5_SMC_CS_STRIDE	0x14
-#define AT91_SMC_CS_STRIDE	((at91_soc_initdata.type == AT91_SOC_SAMA5D3 \
+#define AT91_SMC_CS_STRIDE	((at91_soc_initdata.type == AT91_SOC_SAMA5D2 \
+				 || at91_soc_initdata.type == AT91_SOC_SAMA5D3 \
 				 || at91_soc_initdata.type == AT91_SOC_SAMA5D4) \
 				 ? AT91_SAMA5_SMC_CS_STRIDE : AT91_SAM9_SMC_CS_STRIDE)
 #define AT91_SMC_CS(id, n)	(smc_base_addr[id] + ((n) * AT91_SMC_CS_STRIDE))
@@ -32,6 +33,7 @@ static void sam9_smc_cs_write_mode(void __iomem *base,
 	void __iomem *mode_reg;
 
 	switch (at91_soc_initdata.type) {
+	case AT91_SOC_SAMA5D2:
 	case AT91_SOC_SAMA5D3:
 	case AT91_SOC_SAMA5D4:
 		mode_reg = base + AT91_SAMA5_SMC_MODE;
@@ -106,6 +108,7 @@ static void sam9_smc_cs_read_mode(void __iomem *base,
 	void __iomem *mode_reg;
 
 	switch (at91_soc_initdata.type) {
+	case AT91_SOC_SAMA5D2:
 	case AT91_SOC_SAMA5D3:
 	case AT91_SOC_SAMA5D4:
 		mode_reg = base + AT91_SAMA5_SMC_MODE;
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 4e30c78de78d..b7a66aa0ae80 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -25,7 +25,7 @@ void __initdata (*at91_boot_soc)(void);
 struct at91_socinfo at91_soc_initdata;
 EXPORT_SYMBOL(at91_soc_initdata);
 
-static void __init soc_detect(u32 dbgu_base)
+static void __init dbgu_soc_detect(u32 dbgu_base)
 {
 	u32 cidr, socid;
 
@@ -188,6 +188,84 @@ static void __init soc_detect(u32 dbgu_base)
 	}
 }
 
+static void __init chipid_soc_detect(u32 chipid_base)
+{
+	u32 cidr, socid;
+
+	cidr = readl(chipid_base);
+	socid = cidr & AT91_CIDR_ARCH;
+
+	if (!(cidr & AT91_CIDR_EXT))
+		return;
+
+	if (socid == (ARCH_ID_SAMA5 & AT91_CIDR_ARCH)) {
+		at91_soc_initdata.exid = readl(chipid_base + 4);
+
+		switch (at91_soc_initdata.exid) {
+			case ARCH_EXID_SAMA5D21CU:
+				at91_soc_initdata.type = AT91_SOC_SAMA5D2;
+				at91_soc_initdata.subtype = AT91_SOC_SAMA5D21CU;
+				break;
+			case ARCH_EXID_SAMA5D225C_D1M:
+				at91_soc_initdata.type = AT91_SOC_SAMA5D2;
+				at91_soc_initdata.subtype = AT91_SOC_SAMA5D225C_D1M;
+				break;
+			case ARCH_EXID_SAMA5D22CU:
+				at91_soc_initdata.type = AT91_SOC_SAMA5D2;
+				at91_soc_initdata.subtype = AT91_SOC_SAMA5D22CU;
+				break;
+			case ARCH_EXID_SAMA5D22CN:
+				at91_soc_initdata.type = AT91_SOC_SAMA5D2;
+				at91_soc_initdata.subtype = AT91_SOC_SAMA5D22CN;
+				break;
+			case ARCH_EXID_SAMA5D23CU:
+				at91_soc_initdata.type = AT91_SOC_SAMA5D2;
+				at91_soc_initdata.subtype = AT91_SOC_SAMA5D23CU;
+				break;
+			case ARCH_EXID_SAMA5D24CX:
+				at91_soc_initdata.type = AT91_SOC_SAMA5D2;
+				at91_soc_initdata.subtype = AT91_SOC_SAMA5D24CX;
+				break;
+			case ARCH_EXID_SAMA5D24CU:
+				at91_soc_initdata.type = AT91_SOC_SAMA5D2;
+				at91_soc_initdata.subtype = AT91_SOC_SAMA5D24CU;
+				break;
+			case ARCH_EXID_SAMA5D26CU:
+				at91_soc_initdata.type = AT91_SOC_SAMA5D2;
+				at91_soc_initdata.subtype = AT91_SOC_SAMA5D26CU;
+				break;
+			case ARCH_EXID_SAMA5D27C_D1G:
+				at91_soc_initdata.type = AT91_SOC_SAMA5D2;
+				at91_soc_initdata.subtype = AT91_SOC_SAMA5D27C_D1G;
+				break;
+			case ARCH_EXID_SAMA5D27C_D5M:
+				at91_soc_initdata.type = AT91_SOC_SAMA5D2;
+				at91_soc_initdata.subtype = AT91_SOC_SAMA5D27C_D5M;
+				break;
+			case ARCH_EXID_SAMA5D27CU:
+				at91_soc_initdata.type = AT91_SOC_SAMA5D2;
+				at91_soc_initdata.subtype = AT91_SOC_SAMA5D27CU;
+				break;
+			case ARCH_EXID_SAMA5D27CN:
+				at91_soc_initdata.type = AT91_SOC_SAMA5D2;
+				at91_soc_initdata.subtype = AT91_SOC_SAMA5D27CN;
+				break;
+			case ARCH_EXID_SAMA5D28C_D1G:
+				at91_soc_initdata.type = AT91_SOC_SAMA5D2;
+				at91_soc_initdata.subtype = AT91_SOC_SAMA5D28C_D1G;
+				break;
+			case ARCH_EXID_SAMA5D28CU:
+				at91_soc_initdata.type = AT91_SOC_SAMA5D2;
+				at91_soc_initdata.subtype = AT91_SOC_SAMA5D28CU;
+				break;
+			case ARCH_EXID_SAMA5D28CN:
+				at91_soc_initdata.type = AT91_SOC_SAMA5D2;
+				at91_soc_initdata.subtype = AT91_SOC_SAMA5D28CN;
+				break;
+		}
+	}
+}
+
 static const char *soc_name[] = {
 	[AT91_SOC_RM9200]	= "at91rm9200",
 	[AT91_SOC_SAM9260]	= "at91sam9260",
@@ -199,6 +277,7 @@ static const char *soc_name[] = {
 	[AT91_SOC_SAM9RL]	= "at91sam9rl",
 	[AT91_SOC_SAM9X5]	= "at91sam9x5",
 	[AT91_SOC_SAM9N12]	= "at91sam9n12",
+	[AT91_SOC_SAMA5D2]	= "sama5d2",
 	[AT91_SOC_SAMA5D3]	= "sama5d3",
 	[AT91_SOC_SAMA5D4]	= "sama5d4",
 	[AT91_SOC_NONE]		= "Unknown"
@@ -226,6 +305,21 @@ static const char *soc_subtype_name[] = {
 	[AT91_SOC_SAM9N12]	= "at91sam9n12",
 	[AT91_SOC_SAM9CN11]	= "at91sam9cn11",
 	[AT91_SOC_SAM9CN12]	= "at91sam9cn12",
+	[AT91_SOC_SAMA5D21CU]	= "sama5d21cu",
+	[AT91_SOC_SAMA5D225C_D1M]	= "sama5d225c_d1m",
+	[AT91_SOC_SAMA5D22CU]	= "sama5d22cu",
+	[AT91_SOC_SAMA5D22CN]	= "sama5d22cn",
+	[AT91_SOC_SAMA5D23CU]	= "sama5d23cu",
+	[AT91_SOC_SAMA5D24CX]	= "sama5d24cx",
+	[AT91_SOC_SAMA5D24CU]	= "sama5d24cu",
+	[AT91_SOC_SAMA5D26CU]	= "sama5d26cu",
+	[AT91_SOC_SAMA5D27C_D1G]	= "sama5d27c_d1g",
+	[AT91_SOC_SAMA5D27C_D5M]	= "sama5d27c_d5m",
+	[AT91_SOC_SAMA5D27CU]	= "sama5d27cu",
+	[AT91_SOC_SAMA5D27CN]	= "sama5d27cn",
+	[AT91_SOC_SAMA5D28C_D1G]	= "sama5d28c_d1g",
+	[AT91_SOC_SAMA5D28CU]	= "sama5d28cu",
+	[AT91_SOC_SAMA5D28CN]	= "sama5d28cn",
 	[AT91_SOC_SAMA5D31]	= "sama5d31",
 	[AT91_SOC_SAMA5D33]	= "sama5d33",
 	[AT91_SOC_SAMA5D34]	= "sama5d34",
@@ -249,11 +343,13 @@ static int at91_detect(void)
 	at91_soc_initdata.type = AT91_SOC_NONE;
 	at91_soc_initdata.subtype = AT91_SOC_SUBTYPE_NONE;
 
-	soc_detect(AT91_BASE_DBGU0);
+	dbgu_soc_detect(AT91_BASE_DBGU0);
+	if (!at91_soc_is_detected())
+		dbgu_soc_detect(AT91_BASE_DBGU1);
 	if (!at91_soc_is_detected())
-		soc_detect(AT91_BASE_DBGU1);
+		dbgu_soc_detect(AT91_BASE_DBGU2);
 	if (!at91_soc_is_detected())
-		soc_detect(AT91_BASE_DBGU2);
+		chipid_soc_detect(0xfc069000);
 
 	if (!at91_soc_is_detected())
 		panic("AT91: Impossible to detect the SOC type");
diff --git a/common/Kconfig b/common/Kconfig
index b1b3a05dc875..b840242ac9b6 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1294,6 +1294,7 @@ config DEBUG_AT91_UART_BASE
 			   || SOC_AT91SAM9N12
 	default 0xffffee00 if SOC_AT91SAM9263 || SOC_AT91SAM9G45 || SOC_SAMA5D3
 	default 0xfc069000 if SOC_SAMA5D4
+	default 0xf8020000 if SOC_SAMA5D2
 	default 0xfffff200
 	depends on ARCH_AT91
 	help
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
