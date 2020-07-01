Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqYm9-0001BO-Ql
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 09:11:43 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 11:11:05 +0200
Message-Id: <20200701091122.3437-12-a.fatoum@pengutronix.de>
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
Subject: [PATCH 11/28] ARM: at91: sama5d2: add sama5d2 matrix configuration
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Different peripherals, including the SDRAM, are unusable without prior
matrix configuration. Port over the necessary at91bootstrap parts for
sama5d2 use.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Makefile                 |   2 +-
 arch/arm/mach-at91/include/mach/matrix.h    |  21 +++
 arch/arm/mach-at91/include/mach/tz_matrix.h |  95 +++++++++++++
 arch/arm/mach-at91/matrix.c                 |  45 +++++++
 arch/arm/mach-at91/sama5d2_ll.c             | 140 ++++++++++++++++++++
 5 files changed, 302 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-at91/include/mach/matrix.h
 create mode 100644 arch/arm/mach-at91/include/mach/tz_matrix.h
 create mode 100644 arch/arm/mach-at91/matrix.c

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index ea39d7d8c240..6aaef7c531da 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,5 +1,5 @@
 obj-y += setup.o
-lwl-y += at91_pmc_ll.o ddramc_ll.o
+lwl-y += at91_pmc_ll.o ddramc_ll.o matrix.o
 lwl-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += early_udelay.o
 
 ifeq ($(CONFIG_COMMON_CLK_OF_PROVIDER),)
diff --git a/arch/arm/mach-at91/include/mach/matrix.h b/arch/arm/mach-at91/include/mach/matrix.h
new file mode 100644
index 000000000000..5dbfcfe41439
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/matrix.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: BSD-1-Clause */
+/*
+ * Copyright (c) 2013, Atmel Corporation
+ *
+ * Atmel's name may not be used to endorse or promote products derived from
+ * this software without specific prior written permission.
+ */
+#ifndef __MATRIX_H__
+#define __MATRIX_H__
+
+#include <linux/compiler.h>
+
+void at91_matrix_write_protect_enable(void __iomem *matrix_base);
+void at91_matrix_write_protect_disable(void __iomem *matrix_base);
+void at91_matrix_configure_slave_security(void __iomem *matrix_base,
+					  unsigned int slave,
+					  unsigned int srtop_setting,
+					  unsigned int srsplit_setting,
+					  unsigned int ssr_setting);
+
+#endif /* #ifndef __MATRIX_H__ */
diff --git a/arch/arm/mach-at91/include/mach/tz_matrix.h b/arch/arm/mach-at91/include/mach/tz_matrix.h
new file mode 100644
index 000000000000..85589bfa65c8
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/tz_matrix.h
@@ -0,0 +1,95 @@
+/* SPDX-License-Identifier: BSD-1-Clause */
+/*
+ * Copyright (c) 2013, Atmel Corporation
+ *
+ * Atmel's name may not be used to endorse or promote products derived from
+ * this software without specific prior written permission.
+ */
+#ifndef __TZ_MATRIX_H__
+#define __TZ_MATRIX_H__
+
+#define MATRIX_MCFG(n)	(0x0000 + (n) * 4)/* Master Configuration Register */
+#define MATRIX_SCFG(n)	(0x0040 + (n) * 4)/* Slave Configuration Register */
+#define MATRIX_PRAS(n)	(0x0080 + (n) * 8)/* Priority Register A for Slave */
+#define MATRIX_PRBS(n)	(0x0084 + (n) * 8)/* Priority Register B for Slave */
+
+#define MATRIX_MRCR	0x0100	/* Master Remap Control Register */
+#define MATRIX_MEIER	0x0150	/* Master Error Interrupt Enable Register */
+#define MATRIX_MEIDR	0x0154	/* Master Error Interrupt Disable Register */
+#define MATRIX_MEIMR	0x0158	/* Master Error Interrupt Mask Register */
+#define MATRIX_MESR	0x015c	/* Master Error Statue Register */
+
+/* Master n Error Address Register */
+#define MATRIX_MEAR(n)	(0x0160 + (n) * 4)
+
+#define MATRIX_WPMR	0x01E4		/* Write Protect Mode Register */
+#define MATRIX_WPSR	0x01E8		/* Write Protect Status Register */
+
+/* Security Slave n Register */
+#define MATRIX_SSR(n)	(0x0200 + (n) * 4)
+/* Security Area Split Slave n Register */
+#define MATRIX_SASSR(n)	(0x0240 + (n) * 4)
+/* Security Region Top Slave n Register */
+#define MATRIX_SRTSR(n)	(0x0280 + (n) * 4)
+
+/* Security Peripheral Select n Register */
+#define MATRIX_SPSELR(n)	(0x02c0	+ (n) * 4)
+
+/**************************************************************************/
+/* Write Protect Mode Register (MATRIX_WPMR) */
+#define MATRIX_WPMR_WPEN	(1 << 0)	/* Write Protect Enable */
+#define		MATRIX_WPMR_WPEN_DISABLE	(0 << 0)
+#define		MATRIX_WPMR_WPEN_ENABLE		(1 << 0)
+#define	MATRIX_WPMR_WPKEY	(PASSWD << 8) /* Write Protect KEY */
+#define		MATRIX_WPMR_WPKEY_PASSWD	(0x4D4154 << 8)
+
+/* Security Slave Registers (MATRIX_SSRx) */
+#define MATRIX_LANSECH(n, bit)	((bit) << n)
+#define		MATRIX_LANSECH_S(n)	(0x00 << n)
+#define		MATRIX_LANSECH_NS(n)	(0x01 << n)
+#define MATRIX_RDNSECH(n, bit)	((bit) << (n + 8))
+#define		MATRIX_RDNSECH_S(n)	(0x00 << (n + 8))
+#define		MATRIX_RDNSECH_NS(n)	(0x01 << (n + 8))
+#define MATRIX_WRNSECH(n, bit)	((bit) << (n + 16))
+#define		MATRIX_WRNSECH_S(n)	(0x00 << (n + 16))
+#define		MATRIX_WRNSECH_NS(n)	(0x01 << (n + 16))
+
+/* Security Areas Split Slave Registers (MATRIX_SASSRx) */
+#define MATRIX_SASPLIT(n, value)	((value) << (4 * n))
+#define		MATRIX_SASPLIT_VALUE_4K		0x00
+#define		MATRIX_SASPLIT_VALUE_8K		0x01
+#define		MATRIX_SASPLIT_VALUE_16K	0x02
+#define		MATRIX_SASPLIT_VALUE_32K	0x03
+#define		MATRIX_SASPLIT_VALUE_64K	0x04
+#define		MATRIX_SASPLIT_VALUE_128K	0x05
+#define		MATRIX_SASPLIT_VALUE_256K	0x06
+#define		MATRIX_SASPLIT_VALUE_512K	0x07
+#define		MATRIX_SASPLIT_VALUE_1M		0x08
+#define		MATRIX_SASPLIT_VALUE_2M		0x09
+#define		MATRIX_SASPLIT_VALUE_4M		0x0a
+#define		MATRIX_SASPLIT_VALUE_8M		0x0b
+#define		MATRIX_SASPLIT_VALUE_16M	0x0c
+#define		MATRIX_SASPLIT_VALUE_32M	0x0d
+#define		MATRIX_SASPLIT_VALUE_64M	0x0e
+#define		MATRIX_SASPLIT_VALUE_128M	0x0f
+
+/* Security Region Top Slave Registers (MATRIX_SRTSRx) */
+#define MATRIX_SRTOP(n, value)		((value) << (4 * n))
+#define		MATRIX_SRTOP_VALUE_4K		0x00
+#define		MATRIX_SRTOP_VALUE_8K		0x01
+#define		MATRIX_SRTOP_VALUE_16K		0x02
+#define		MATRIX_SRTOP_VALUE_32K		0x03
+#define		MATRIX_SRTOP_VALUE_64K		0x04
+#define		MATRIX_SRTOP_VALUE_128K		0x05
+#define		MATRIX_SRTOP_VALUE_256K		0x06
+#define		MATRIX_SRTOP_VALUE_512K		0x07
+#define		MATRIX_SRTOP_VALUE_1M		0x08
+#define		MATRIX_SRTOP_VALUE_2M		0x09
+#define		MATRIX_SRTOP_VALUE_4M		0x0a
+#define		MATRIX_SRTOP_VALUE_8M		0x0b
+#define		MATRIX_SRTOP_VALUE_16M		0x0c
+#define		MATRIX_SRTOP_VALUE_32M		0x0d
+#define		MATRIX_SRTOP_VALUE_64M		0x0e
+#define		MATRIX_SRTOP_VALUE_128M		0x0f
+
+#endif /* #ifndef __TZ_MATRIX_H__ */
diff --git a/arch/arm/mach-at91/matrix.c b/arch/arm/mach-at91/matrix.c
new file mode 100644
index 000000000000..b2e7345ec1d5
--- /dev/null
+++ b/arch/arm/mach-at91/matrix.c
@@ -0,0 +1,45 @@
+/* SPDX-License-Identifier: BSD-1-Clause */
+/*
+ * Copyright (c) 2013, Atmel Corporation
+ *
+ * Atmel's name may not be used to endorse or promote products derived from
+ * this software without specific prior written permission.
+ */
+
+#include <io.h>
+#include <mach/tz_matrix.h>
+#include <mach/matrix.h>
+
+static inline void matrix_write(void __iomem *base,
+				unsigned int offset,
+				const unsigned int value)
+{
+	writel(value, base + offset);
+}
+
+static inline unsigned int matrix_read(void __iomem *base, unsigned int offset)
+{
+	return readl(base + offset);
+}
+
+void at91_matrix_write_protect_enable(void __iomem *matrix_base)
+{
+	matrix_write(matrix_base, MATRIX_WPMR,
+		     MATRIX_WPMR_WPKEY_PASSWD | MATRIX_WPMR_WPEN_ENABLE);
+}
+
+void at91_matrix_write_protect_disable(void __iomem *matrix_base)
+{
+	matrix_write(matrix_base, MATRIX_WPMR, MATRIX_WPMR_WPKEY_PASSWD);
+}
+
+void at91_matrix_configure_slave_security(void __iomem *matrix_base,
+					  unsigned int slave,
+					  unsigned int srtop_setting,
+					  unsigned int srsplit_setting,
+					  unsigned int ssr_setting)
+{
+	matrix_write(matrix_base, MATRIX_SSR(slave), ssr_setting);
+	matrix_write(matrix_base, MATRIX_SRTSR(slave), srtop_setting);
+	matrix_write(matrix_base, MATRIX_SASSR(slave), srsplit_setting);
+}
diff --git a/arch/arm/mach-at91/sama5d2_ll.c b/arch/arm/mach-at91/sama5d2_ll.c
index a038bf4b86e6..c3b50617778a 100644
--- a/arch/arm/mach-at91/sama5d2_ll.c
+++ b/arch/arm/mach-at91/sama5d2_ll.c
@@ -10,6 +10,8 @@
 #include <mach/at91_ddrsdrc.h>
 #include <mach/ddramc.h>
 #include <mach/early_udelay.h>
+#include <mach/tz_matrix.h>
+#include <mach/matrix.h>
 #include <mach/at91_rstc.h>
 #include <asm/barebox-arm.h>
 
@@ -66,6 +68,143 @@ static void sama5d2_pmc_init(void)
 			AT91_PMC_LL_SAMA5D2);
 }
 
+static void matrix_configure_slave(void)
+{
+	u32 ddr_port;
+	u32 ssr_setting, sasplit_setting, srtop_setting;
+
+	/*
+	 * Matrix 0 (H64MX)
+	 */
+
+	/*
+	 * 0: Bridge from H64MX to AXIMX
+	 * (Internal ROM, Crypto Library, PKCC RAM): Always Secured
+	 */
+
+	/* 1: H64MX Peripheral Bridge */
+
+	/* 2 ~ 9 DDR2 Port0 ~ 7: Non-Secure */
+	srtop_setting = MATRIX_SRTOP(0, MATRIX_SRTOP_VALUE_128M);
+	sasplit_setting = MATRIX_SASPLIT(0, MATRIX_SASPLIT_VALUE_128M);
+	ssr_setting = MATRIX_LANSECH_NS(0) |
+		      MATRIX_RDNSECH_NS(0) |
+		      MATRIX_WRNSECH_NS(0);
+	for (ddr_port = 0; ddr_port < 8; ddr_port++) {
+		at91_matrix_configure_slave_security(SAMA5D2_BASE_MATRIX64,
+					SAMA5D2_H64MX_SLAVE_DDR2_PORT_0 + ddr_port,
+					srtop_setting,
+					sasplit_setting,
+					ssr_setting);
+	}
+
+	/*
+	 * 10: Internal SRAM 128K
+	 * TOP0 is set to 128K
+	 * SPLIT0 is set to 64K
+	 * LANSECH0 is set to 0, the low area of region 0 is the Securable one
+	 * RDNSECH0 is set to 0, region 0 Securable area is secured for reads.
+	 * WRNSECH0 is set to 0, region 0 Securable area is secured for writes
+	 */
+	srtop_setting = MATRIX_SRTOP(0, MATRIX_SRTOP_VALUE_128K);
+	sasplit_setting = MATRIX_SASPLIT(0, MATRIX_SASPLIT_VALUE_64K);
+	ssr_setting = MATRIX_LANSECH_S(0) |
+		      MATRIX_RDNSECH_S(0) |
+		      MATRIX_WRNSECH_S(0);
+	at91_matrix_configure_slave_security(SAMA5D2_BASE_MATRIX64,
+					SAMA5D2_H64MX_SLAVE_INTERNAL_SRAM,
+					srtop_setting,
+					sasplit_setting,
+					ssr_setting);
+
+	/* 11:  Internal SRAM 128K (Cache L2) */
+	/* 12:  QSPI0 */
+	/* 13:  QSPI1 */
+	/* 14:  AESB */
+
+	/*
+	 * Matrix 1 (H32MX)
+	 */
+
+	/* 0: Bridge from H32MX to H64MX: Not Secured */
+
+	/* 1: H32MX Peripheral Bridge 0: Not Secured */
+
+	/* 2: H32MX Peripheral Bridge 1: Not Secured */
+
+	/*
+	 * 3: External Bus Interface
+	 * EBI CS0 Memory(256M) ----> Slave Region 0, 1
+	 * EBI CS1 Memory(256M) ----> Slave Region 2, 3
+	 * EBI CS2 Memory(256M) ----> Slave Region 4, 5
+	 * EBI CS3 Memory(128M) ----> Slave Region 6
+	 * NFC Command Registers(128M) -->Slave Region 7
+	 *
+	 * NANDFlash(EBI CS3) --> Slave Region 6: Non-Secure
+	 */
+	srtop_setting =	MATRIX_SRTOP(6, MATRIX_SRTOP_VALUE_128M) |
+			MATRIX_SRTOP(7, MATRIX_SRTOP_VALUE_128M);
+	sasplit_setting = MATRIX_SASPLIT(6, MATRIX_SASPLIT_VALUE_128M) |
+			  MATRIX_SASPLIT(7, MATRIX_SASPLIT_VALUE_128M);
+	ssr_setting = MATRIX_LANSECH_NS(6) |
+		      MATRIX_RDNSECH_NS(6) |
+		      MATRIX_WRNSECH_NS(6) |
+		      MATRIX_LANSECH_NS(7) |
+		      MATRIX_RDNSECH_NS(7) |
+		      MATRIX_WRNSECH_NS(7);
+	at91_matrix_configure_slave_security(SAMA5D2_BASE_MATRIX32,
+					SAMA5D2_H32MX_EXTERNAL_EBI,
+					srtop_setting,
+					sasplit_setting,
+					ssr_setting);
+
+	/* 4: NFC SRAM (4K): Non-Secure */
+	srtop_setting = MATRIX_SRTOP(0, MATRIX_SRTOP_VALUE_8K);
+	sasplit_setting = MATRIX_SASPLIT(0, MATRIX_SASPLIT_VALUE_8K);
+	ssr_setting = MATRIX_LANSECH_NS(0) |
+		      MATRIX_RDNSECH_NS(0) |
+		      MATRIX_WRNSECH_NS(0);
+	at91_matrix_configure_slave_security(SAMA5D2_BASE_MATRIX32,
+					SAMA5D2_H32MX_NFC_SRAM,
+					srtop_setting,
+					sasplit_setting,
+					ssr_setting);
+
+	/* 5:
+	 * USB Device High Speed Dual Port RAM (DPR): 1M
+	 * USB Host OHCI registers: 1M
+	 * USB Host EHCI registers: 1M
+	 */
+	srtop_setting = MATRIX_SRTOP(0, MATRIX_SRTOP_VALUE_1M) |
+			MATRIX_SRTOP(1, MATRIX_SRTOP_VALUE_1M) |
+			MATRIX_SRTOP(2, MATRIX_SRTOP_VALUE_1M);
+	sasplit_setting = MATRIX_SASPLIT(0, MATRIX_SASPLIT_VALUE_1M) |
+			  MATRIX_SASPLIT(1, MATRIX_SASPLIT_VALUE_1M) |
+			  MATRIX_SASPLIT(2, MATRIX_SASPLIT_VALUE_1M);
+	ssr_setting = MATRIX_LANSECH_NS(0) |
+		      MATRIX_LANSECH_NS(1) |
+		      MATRIX_LANSECH_NS(2) |
+		      MATRIX_RDNSECH_NS(0) |
+		      MATRIX_RDNSECH_NS(1) |
+		      MATRIX_RDNSECH_NS(2) |
+		      MATRIX_WRNSECH_NS(0) |
+		      MATRIX_WRNSECH_NS(1) |
+		      MATRIX_WRNSECH_NS(2);
+	at91_matrix_configure_slave_security(SAMA5D2_BASE_MATRIX32,
+					SAMA5D2_H32MX_USB,
+					srtop_setting,
+					sasplit_setting,
+					ssr_setting);
+}
+
+static void sama5d2_matrix_init(void)
+{
+	at91_matrix_write_protect_disable(SAMA5D2_BASE_MATRIX64);
+	at91_matrix_write_protect_disable(SAMA5D2_BASE_MATRIX32);
+
+	matrix_configure_slave();
+}
+
 static void sama5d2_rstc_init(void)
 {
 	writel(AT91_RSTC_KEY | AT91_RSTC_URSTEN,
@@ -76,5 +215,6 @@ void sama5d2_lowlevel_init(void)
 {
 	arm_cpu_lowlevel_init();
 	sama5d2_pmc_init();
+	sama5d2_matrix_init();
 	sama5d2_rstc_init();
 }
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
