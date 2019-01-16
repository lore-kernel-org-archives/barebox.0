Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjpGO-00063F-SY
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 17:46:22 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gjpGL-0006gV-CE
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 18:46:01 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC4)
 (envelope-from <afa@pengutronix.de>) id 1gjpGK-0007qR-Q3
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 18:46:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Jan 2019 18:45:51 +0100
Message-Id: <20190116174559.17416-4-a.fatoum@pengutronix.de>
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
Subject: [PATCH 03/11] ARM: at91: replace at91sam9_ddrsdr.h with
 at91bootstrap's
To: barebox@lists.infradead.org

Only at91sam9g45_reset.S and the header itself actually use
any of the macros defined within.

Instead of adding missing definitions and adapting the incoming DDRAMC
initialization code from at91bootstrap, just include the at91_ddrsdrc.h
header wholesale.

This patch shouldn't affect resulting binaries.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/at91sam9m10g45ek/lowlevel.c   |   2 +-
 arch/arm/boards/at91sam9m10ihd/lowlevel.c     |   2 +-
 arch/arm/boards/at91sam9n12ek/lowlevel.c      |   2 +-
 arch/arm/boards/at91sam9x5ek/lowlevel.c       |   2 +-
 arch/arm/boards/pm9g45/lowlevel.c             |   3 +-
 arch/arm/boards/sama5d3_xplained/lowlevel.c   |   2 +-
 arch/arm/boards/sama5d3xek/lowlevel.c         |   2 +-
 arch/arm/boards/sama5d4_xplained/lowlevel.c   |   2 +-
 arch/arm/boards/sama5d4ek/lowlevel.c          |   2 +-
 arch/arm/mach-at91/at91sam9g45_devices.c      |   2 +-
 arch/arm/mach-at91/at91sam9g45_reset.S        |   8 +-
 arch/arm/mach-at91/at91sam9n12_devices.c      |   2 +-
 arch/arm/mach-at91/at91sam9x5_devices.c       |   2 +-
 .../arm/mach-at91/include/mach/at91_ddrsdrc.h | 426 ++++++++++++++++++
 .../mach-at91/include/mach/at91sam9_ddrsdr.h  | 264 -----------
 arch/arm/mach-at91/sama5d3_devices.c          |   2 +-
 arch/arm/mach-at91/sama5d4_devices.c          |   2 +-
 17 files changed, 445 insertions(+), 282 deletions(-)
 create mode 100644 arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
 delete mode 100644 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h

diff --git a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
index 478ff11e1dfe..b0161553ed05 100644
--- a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
@@ -11,7 +11,7 @@
 #include <asm/barebox-arm.h>
 
 #include <mach/hardware.h>
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 
 void __naked __bare_init barebox_arm_reset_vector(void)
 {
diff --git a/arch/arm/boards/at91sam9m10ihd/lowlevel.c b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
index d5940b987afa..c660b18e8854 100644
--- a/arch/arm/boards/at91sam9m10ihd/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
@@ -10,7 +10,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/at91sam9g45.h>
 #include <mach/hardware.h>
 
diff --git a/arch/arm/boards/at91sam9n12ek/lowlevel.c b/arch/arm/boards/at91sam9n12ek/lowlevel.c
index 47079336e632..de8308725ac9 100644
--- a/arch/arm/boards/at91sam9n12ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9n12ek/lowlevel.c
@@ -10,7 +10,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/hardware.h>
 
 void __naked __bare_init barebox_arm_reset_vector(void)
diff --git a/arch/arm/boards/at91sam9x5ek/lowlevel.c b/arch/arm/boards/at91sam9x5ek/lowlevel.c
index 9aa0e8ba9b2b..aefe18d1c92e 100644
--- a/arch/arm/boards/at91sam9x5ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9x5ek/lowlevel.c
@@ -1,6 +1,6 @@
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <io.h>
diff --git a/arch/arm/boards/pm9g45/lowlevel.c b/arch/arm/boards/pm9g45/lowlevel.c
index 67454bde268c..d64ebef27407 100644
--- a/arch/arm/boards/pm9g45/lowlevel.c
+++ b/arch/arm/boards/pm9g45/lowlevel.c
@@ -10,7 +10,8 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
+
 #include <mach/hardware.h>
 
 void __naked __bare_init barebox_arm_reset_vector(void)
diff --git a/arch/arm/boards/sama5d3_xplained/lowlevel.c b/arch/arm/boards/sama5d3_xplained/lowlevel.c
index b791f2a03cc7..41cc0e1f49db 100644
--- a/arch/arm/boards/sama5d3_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d3_xplained/lowlevel.c
@@ -10,7 +10,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/hardware.h>
 
 void __naked __bare_init barebox_arm_reset_vector(void)
diff --git a/arch/arm/boards/sama5d3xek/lowlevel.c b/arch/arm/boards/sama5d3xek/lowlevel.c
index b791f2a03cc7..41cc0e1f49db 100644
--- a/arch/arm/boards/sama5d3xek/lowlevel.c
+++ b/arch/arm/boards/sama5d3xek/lowlevel.c
@@ -10,7 +10,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/hardware.h>
 
 void __naked __bare_init barebox_arm_reset_vector(void)
diff --git a/arch/arm/boards/sama5d4_xplained/lowlevel.c b/arch/arm/boards/sama5d4_xplained/lowlevel.c
index b791f2a03cc7..41cc0e1f49db 100644
--- a/arch/arm/boards/sama5d4_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d4_xplained/lowlevel.c
@@ -10,7 +10,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/hardware.h>
 
 void __naked __bare_init barebox_arm_reset_vector(void)
diff --git a/arch/arm/boards/sama5d4ek/lowlevel.c b/arch/arm/boards/sama5d4ek/lowlevel.c
index b791f2a03cc7..41cc0e1f49db 100644
--- a/arch/arm/boards/sama5d4ek/lowlevel.c
+++ b/arch/arm/boards/sama5d4ek/lowlevel.c
@@ -10,7 +10,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/hardware.h>
 
 void __naked __bare_init barebox_arm_reset_vector(void)
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 43d8d5fbd6a2..389d88c17d4f 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -17,7 +17,7 @@
 #include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9g45_matrix.h>
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/at91_rtt.h>
 #include <mach/board.h>
 #include <mach/iomux.h>
diff --git a/arch/arm/mach-at91/at91sam9g45_reset.S b/arch/arm/mach-at91/at91sam9g45_reset.S
index 6a58de618ce0..9f2a90ff82f1 100644
--- a/arch/arm/mach-at91/at91sam9g45_reset.S
+++ b/arch/arm/mach-at91/at91sam9g45_reset.S
@@ -12,7 +12,7 @@
 
 #include <linux/linkage.h>
 #include <mach/hardware.h>
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/at91_rstc.h>
 
 			.arm
@@ -20,13 +20,13 @@
 			.globl	at91sam9g45_reset
 
 at91sam9g45_reset:	mov	r2, #1
-			mov	r3, #AT91_DDRSDRC_LPCB_POWER_DOWN
+			mov	r3, #AT91C_DDRC2_LPCB_POWERDOWN
 			ldr	r4, =AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST
 
 			.balign	32				@ align to cache line
 
-			str	r2, [r0, #AT91_DDRSDRC_RTR]	@ disable DDR0 access
-			str	r3, [r0, #AT91_DDRSDRC_LPR]	@ power down DDR0
+			str	r2, [r0, #HDDRSDRC2_RTR]	@ disable DDR0 access
+			str	r3, [r0, #HDDRSDRC2_LPR]	@ power down DDR0
 			str	r4, [r1]			@ reset processor
 
 			b	.
diff --git a/arch/arm/mach-at91/at91sam9n12_devices.c b/arch/arm/mach-at91/at91sam9n12_devices.c
index 43cbb79af4a5..91b3e9b2fbc5 100644
--- a/arch/arm/mach-at91/at91sam9n12_devices.c
+++ b/arch/arm/mach-at91/at91sam9n12_devices.c
@@ -18,7 +18,7 @@
 #include <mach/board.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9n12_matrix.h>
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/iomux.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index ab506a1f4236..022e4fb59ab9 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -17,7 +17,7 @@
 #include <mach/board.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9x5_matrix.h>
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/iomux.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
diff --git a/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h b/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
new file mode 100644
index 000000000000..263d51f3ee9a
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
@@ -0,0 +1,426 @@
+// SPDX-License-Identifier: BSD-1-Clause
+/*
+ * Copyright (c) 2006, Atmel Corporation
+ */
+#ifndef __AT91_DDRSDRC_H__
+#define __AT91_DDRSDRC_H__
+
+/**** Register offset in AT91S_HDDRSDRC2 structure ***/
+#define HDDRSDRC2_MR		0x00	/* Mode Register */
+#define HDDRSDRC2_RTR		0x04	/* Refresh Timer Register */
+#define HDDRSDRC2_CR		0x08	/* Configuration Register */
+#define HDDRSDRC2_T0PR		0x0C	/* Timing Parameter 0 Register */
+#define HDDRSDRC2_T1PR		0x10	/* Timing Parameter 1 Register */
+#define HDDRSDRC2_T2PR		0x14	/* Timing Parameter 2 Register */
+#define HDDRSDRC2_T3PR		0x18	/* Timing Parameter 3 Register */
+#define HDDRSDRC2_LPR		0x1C	/* Low-power Register */
+#define HDDRSDRC2_MDR		0x20	/* Memory Device Register */
+#define HDDRSDRC2_DLL		0x24	/* DLL Information Register */
+#define HDDRSDRC2_HS		0x2C	/* High Speed Register */
+
+/* below items defined for sama5d3x */
+#define	MPDDRC_LPDDR2_HS	0x24	/* MPDDRC LPDDR2 High Speed Register */
+#define	MPDDRC_LPDDR2_LPR	0x28	/* MPDDRC LPDDR2 Low-power Register */
+#define	MPDDRC_LPDDR2_CAL_MR4	0x2C	/* MPDDRC LPDDR2 Calibration and MR4 Register */
+#define	MPDDRC_LPDDR2_TIM_CAL	0x30	/* MPDDRC LPDDR2 Timing Calibration Register */
+#define	MPDDRC_IO_CALIBR	0x34	/* MPDDRC IO Calibration */
+#define	MPDDRC_OCMS		0x38	/* MPDDRC OCMS Register */
+#define	MPDDRC_OCMS_KEY1	0x3C	/* MPDDRC OCMS KEY1 Register */
+#define	MPDDRC_OCMS_KEY2	0x40	/* MPDDRC OCMS KEY2 Register */
+/* 0x54 ~ 0x70 Reserved */
+#define	MPDDRC_DLL_MOR		0x74	/* MPDDRC DLL Master Offset Register */
+#define	MPDDRC_DLL_SOR		0x78	/* MPDDRC DLL Slave Offset Register */
+#define	MPDDRC_DLL_MSR		0x7C	/* MPDDRC DLL Master Status Register */
+#define	MPDDRC_DLL_S0SR		0x80	/* MPDDRC DLL Slave 0 Status Register */
+#define	MPDDRC_DLL_S1SR		0x84	/* MPDDRC DLL Slave 1 Status Register */
+
+#define MPDDRC_RD_DATA_PATH	0x5C	/* MPDDRC Read Data Path */
+
+/* 0x94 ~ 0xE0 Reserved */
+#define HDDRSDRC2_WPCR		0xE4	/* Write Protect Mode Register */
+#define HDDRSDRC2_WPSR		0xE8	/* Write Protect Status Register */
+
+/* -------- HDDRSDRC2_MR : (HDDRSDRC2 Offset: 0x0) Mode Register --------*/
+#define AT91C_DDRC2_MODE	(0x7UL << 0)
+#define 	AT91C_DDRC2_MODE_NORMAL_CMD		(0x0UL)
+#define 	AT91C_DDRC2_MODE_NOP_CMD		(0x1UL)
+#define 	AT91C_DDRC2_MODE_PRCGALL_CMD		(0x2UL)
+#define 	AT91C_DDRC2_MODE_LMR_CMD		(0x3UL)
+#define 	AT91C_DDRC2_MODE_RFSH_CMD		(0x4UL)
+#define 	AT91C_DDRC2_MODE_EXT_LMR_CMD		(0x5UL)
+#define 	AT91C_DDRC2_MODE_DEEP_CMD		(0x6UL)
+#define		AT91C_DDRC2_MODE_LPDDR2_CMD		(0x7UL)
+#define AT91C_DDRC2_MRS(value)	(value << 8)
+
+/* -------- HDDRSDRC2_RTR : (HDDRSDRC2 Offset: 0x4) Refresh Timer Register -------- */
+#define AT91C_DDRC2_COUNT	(0xFFFUL << 0)
+
+/* -------- HDDRSDRC2_CR : (HDDRSDRC2 Offset: 0x8) Configuration Register --------*/
+#define AT91C_DDRC2_NC		(0x3UL <<  0)
+#define 	AT91C_DDRC2_NC_DDR9_SDR8	(0x0UL)
+#define 	AT91C_DDRC2_NC_DDR10_SDR9	(0x1UL)
+#define 	AT91C_DDRC2_NC_DDR11_SDR10	(0x2UL)
+#define 	AT91C_DDRC2_NC_DDR12_SDR11	(0x3UL)
+#define AT91C_DDRC2_NR		(0x3UL << 2)
+#define 	AT91C_DDRC2_NR_11		(0x0UL << 2)
+#define 	AT91C_DDRC2_NR_12		(0x1UL << 2)
+#define 	AT91C_DDRC2_NR_13		(0x2UL << 2)
+#define 	AT91C_DDRC2_NR_14		(0x3UL << 2)
+#define AT91C_DDRC2_CAS		(0x7UL << 4)
+#define 	AT91C_DDRC2_CAS_2		(0x2UL << 4)
+#define 	AT91C_DDRC2_CAS_3		(0x3UL << 4)
+#define 	AT91C_DDRC2_CAS_4		(0x4UL << 4)
+#define 	AT91C_DDRC2_CAS_5		(0x5UL << 4)
+#define 	AT91C_DDRC2_CAS_6		(0x6UL << 4)
+#define AT91C_DDRC2_RESET_DLL		(0x1UL << 7)
+#define 	AT91C_DDRC2_DISABLE_RESET_DLL	(0x0UL << 7)
+#define 	AT91C_DDRC2_ENABLE_RESET_DLL	(0x1UL << 7)
+#define AT91C_DDRC2_DIC_DS	(0x1UL << 8)
+#define		AT91C_DDRC2_NORMAL_STRENGTH_RZQ6	(0x0UL << 8)
+#define		AT91C_DDRC2_WEAK_STRENGTH_RZQ7		(0x1UL << 8)
+#define AT91C_DDRC2_DLL	(0x1UL << 9)
+#define 	AT91C_DDRC2_ENABLE_DLL		(0x0UL << 9)
+#define 	AT91C_DDRC2_DISABLE_DLL		(0x1UL << 9)
+#define AT91C_DDRC2_ZQ		(0x03 << 10)
+#define		AT91C_DDRC2_ZQ_INIT		(0x0 << 10)
+#define		AT91C_DDRC2_ZQ_LONG		(0x1 << 10)
+#define		AT91C_DDRC2_ZQ_SHORT		(0x2 << 10)
+#define		AT91C_DDRC2_ZQ_RESET		(0x3 << 10)
+#define AT91C_DDRC2_OCD		(0x7UL << 12)
+#define 	AT91C_DDRC2_OCD_EXIT		(0x0UL << 12)
+#define 	AT91C_DDRC2_OCD_DEFAULT		(0x7UL << 12)
+#define AT91C_DDRC2_EBISHARE	(0x1UL << 16)
+#define AT91C_DDRC2_DQMS	(0x1UL << 16)
+#define		AT91C_DDRC2_DQMS_NOT_SHARED	(0x0UL << 16)
+#define		AT91C_DDRC2_DQMS_SHARED		(0x1UL << 16)
+#define AT91C_DDRC2_ENRDM	(0x1UL << 17)
+#define 	AT91C_DDRC2_ENRDM_DISABLE	(0x0UL << 17)
+#define 	AT91C_DDRC2_ENRDM_ENABLE	(0x1UL << 17)
+#define AT91C_DDRC2_ACTBST	(0x1UL << 18)
+#define AT91C_DDRC2_NB_BANKS	(0x1UL << 20)
+#define 	AT91C_DDRC2_NB_BANKS_4		(0x0UL << 20)
+#define 	AT91C_DDRC2_NB_BANKS_8		(0x1UL << 20)
+#define AT91C_DDRC2_NDQS	(0x1UL << 21)	/* Not DQS(sama5d3x only) */
+#define 	AT91C_DDRC2_NDQS_ENABLED	(0x0UL << 21)
+#define 	AT91C_DDRC2_NDQS_DISABLED	(0x1UL << 21)
+#define AT91C_DDRC2_DECOD	(0x1UL << 22)
+#define 	AT91C_DDRC2_DECOD_SEQUENTIAL	(0x0UL << 22)
+#define 	AT91C_DDRC2_DECOD_INTERLEAVED	(0x1UL << 22)
+#define AT91C_DDRC2_UNAL	(0x1UL << 23)	/* Support Unaligned Access(sama5d3x only) */
+#define 	AT91C_DDRC2_UNAL_UNSUPPORTED		(0x0UL << 23)
+#define 	AT91C_DDRC2_UNAL_SUPPORTED		(0x1UL << 23)
+
+/* -------- HDDRSDRC2_T0PR : (HDDRSDRC2 Offset: 0xc) Timing0 Register --------*/
+#define AT91C_DDRC2_TRAS	(0xFUL <<  0)
+#define		AT91C_DDRC2_TRAS_(x)		(x & 0x0f)
+#define	AT91C_DDRC2_TRCD	(0xFUL <<  4)
+#define		AT91C_DDRC2_TRCD_(x)		((x & 0x0f) << 4)
+#define	AT91C_DDRC2_TWR		(0xFUL << 8)
+#define		AT91C_DDRC2_TWR_(x)		((x & 0x0f) << 8)
+#define	AT91C_DDRC2_TRC		(0xFUL << 12)
+#define		AT91C_DDRC2_TRC_(x)		((x & 0x0f) << 12)
+#define	AT91C_DDRC2_TRP		(0xFUL << 16)
+#define		AT91C_DDRC2_TRP_(x)		((x & 0x0f) << 16)
+#define	AT91C_DDRC2_TRRD	(0xFUL << 20)
+#define		AT91C_DDRC2_TRRD_(x)		((x & 0x0f) << 20)
+#define	AT91C_DDRC2_TWTR	(0xFUL << 24)
+#define		AT91C_DDRC2_TWTR_(x)		((x & 0x0f) << 24)
+#define	AT91C_DDRC2_TMRD	(0xFUL << 28)
+#define		AT91C_DDRC2_TMRD_(x)		((x & 0x0f) << 28)
+
+/* -------- HDDRSDRC2_T1PR : (HDDRSDRC2 Offset: 0x10) Timing1 Register -------- */
+#define	AT91C_DDRC2_TRFC	(0x7FUL <<  0)
+#define		AT91C_DDRC2_TRFC_(x)		(x & 0x7f)
+#define	AT91C_DDRC2_TXSNR	(0xFFUL << 8)
+#define		AT91C_DDRC2_TXSNR_(x)		((x & 0xff) << 8)
+#define AT91C_DDRC2_TXSRD	(0xFFUL << 16)
+#define		AT91C_DDRC2_TXSRD_(x)		((x & 0xff) << 16)
+#define	AT91C_DDRC2_TXP		(0xFUL << 24)
+#define		AT91C_DDRC2_TXP_(x)		((x & 0x0f) << 24)
+
+/* -------- HDDRSDRC2_T2PR : (HDDRSDRC2 Offset: 0x14) Timing2 Register --------*/
+#define	AT91C_DDRC2_TXARD	(0xFUL << 0)
+#define		AT91C_DDRC2_TXARD_(x)		(x & 0x0f)
+#define	AT91C_DDRC2_TXARDS	(0xFUL << 4)
+#define		AT91C_DDRC2_TXARDS_(x)		((x & 0x0f) << 4)
+#define	AT91C_DDRC2_TRPA	(0xFUL << 8)
+#define		AT91C_DDRC2_TRPA_(x)		((x & 0x0f) << 8)
+#define	AT91C_DDRC2_TRT		(0xFUL << 12)
+#define		AT91C_DDRC2_TRTP_(x)		((x & 0x0f) << 12)
+#define	AT91C_DDRC2_TFA		(0xFUL << 16)
+#define		AT91C_DDRC2_TFAW_(x)		((x & 0x0f) << 16)
+
+/* -------- HDDRSDRC2_LPR : (HDDRSDRC2 Offset: 0x1c) --------*/
+#define AT91C_DDRC2_LPCB	(0x3UL << 0)
+#define 	AT91C_DDRC2_LPCB_DISABLED	(0x0UL)
+#define 	AT91C_DDRC2_LPCB_SELFREFRESH	(0x1UL)
+#define 	AT91C_DDRC2_LPCB_POWERDOWN	(0x2UL)
+#define 	AT91C_DDRC2_LPCB_DEEP_PWD	(0x3UL)
+#define AT91C_DDRC2_CLK_FR	(0x1UL << 2)
+#define AT91C_DDRC2_PASR	(0x7UL << 4)
+#define		AT91C_DDRC2_PASR_(x)		((x & 0x7) << 4)
+#define AT91C_DDRC2_DS		(0x7UL << 8)
+#define		AT91C_DDRC2_DS_(x)		((x & 0x7) << 8)
+#define AT91C_DDRC2_TIMEOUT	(0x3UL << 12)
+#define 	AT91C_DDRC2_TIMEOUT_0		(0x0UL << 12)
+#define 	AT91C_DDRC2_TIMEOUT_64		(0x1UL << 12)
+#define 	AT91C_DDRC2_TIMEOUT_128		(0x2UL << 12)
+#define 	AT91C_DDRC2_TIMEOUT_Reserved	(0x3UL << 12)
+#define AT91C_DDRC2_ADPE	(0x1UL << 16)
+#define 	AT91C_DDRC2_ADPE_FAST		(0x0UL << 16)
+#define 	AT91C_DDRC2_ADPE_SLOW		(0x1UL << 16)
+#define AT91C_DDRC2_UPD_MR	(0x3UL << 20)
+#define		AT91C_DDRC2_UPD_MR_NO_UPDATE		(0x0UL << 20)
+#define		AT91C_DDRC2_UPD_MR_SHARED_BUS		(0x1UL << 20)
+#define		AT91C_DDRC2_UPD_MR_NO_SHARED_BUS	(0x2UL << 20)
+#define AT91C_DDRC2_SELF_DONE	(0x1UL << 25)
+
+/* -------- HDDRSDRC2_MDR : (HDDRSDRC2 Offset: 0x20) Memory Device Register -------- */
+#define AT91C_DDRC2_MD		(0x7UL << 0)
+#define 	AT91C_DDRC2_MD_SDR_SDRAM	(0x0UL)
+#define 	AT91C_DDRC2_MD_LP_SDR_SDRAM	(0x1UL)
+#define 	AT91C_DDRC2_MD_DDR_SDRAM	(0x2UL)
+#define 	AT91C_DDRC2_MD_LP_DDR_SDRAM	(0x3UL)
+#define 	AT91C_DDRC2_MD_DDR3_SDRAM	(0x4UL)
+#define 	AT91C_DDRC2_MD_LPDDR3_SDRAM	(0x5UL)
+#define 	AT91C_DDRC2_MD_DDR2_SDRAM	(0x6UL)
+#define		AT91C_DDRC2_MD_LPDDR2_SDRAM	(0x7UL)
+#define AT91C_DDRC2_DBW		(0x1UL << 4)
+#define 	AT91C_DDRC2_DBW_32_BITS		(0x0UL << 4)
+#define 	AT91C_DDRC2_DBW_16_BITS		(0x1UL << 4)
+
+/* -------- HDDRSDRC2_DLL : (HDDRSDRC2 Offset: 0x24) DLL Information Register --------*/
+#define AT91C_DDRC2_MDINC	(0x1UL << 0)
+#define AT91C_DDRC2_MDDEC	(0x1UL << 1)
+#define AT91C_DDRC2_MDOVF	(0x1UL << 2)
+#define AT91C_DDRC2_MDVAL	(0xFFUL << 8)
+
+/* ------- MPDDRC_LPDDR2_LPR (offset: 0x28) */
+#define AT91C_LPDDRC2_BK_MASK_PASR(value)	(value << 0)
+#define AT91C_LPDDRC2_SEG_MASK(value)		(value << 8)
+#define AT91C_LPDDRC2_DS(value)			(value << 24)
+
+/* -------- HDDRSDRC2_HS : (HDDRSDRC2 Offset: 0x2c) High Speed Register --------*/
+#define AT91C_DDRC2_NO_ANT	(0x1UL << 2)
+
+/* -------- MPDDRC_LPDDR2_CAL_MR4: (MPDDRC Offset: 0x2c) Calibration and MR4 Register --------*/
+#define AT91C_DDRC2_COUNT_CAL_MASK	(0xFFFFUL)
+#define AT91C_DDRC2_COUNT_CAL(value)	(((value) & AT91C_DDRC2_COUNT_CAL_MASK) << 0)
+
+/* -------- MPDDRC_LPDDR2_TIM_CAL : (MPDDRC Offset: 0x30) */
+#define AT91C_DDRC2_ZQCS(value)	(value << 0)
+
+/* -------- MPDDRC_IO_CALIBR : (MPDDRC Offset: 0x34) IO Calibration --------*/
+#define AT91C_MPDDRC_RDIV	(0x7UL << 0)
+#define 	AT91C_MPDDRC_RDIV_LPDDR2_RZQ_34		(0x1UL << 0)
+#define 	AT91C_MPDDRC_RDIV_LPDDR2_RZQ_48		(0x3UL << 0)
+#define 	AT91C_MPDDRC_RDIV_LPDDR2_RZQ_60		(0x4UL << 0)
+#define 	AT91C_MPDDRC_RDIV_LPDDR2_RZQ_120	(0x7UL << 0)
+
+#define 	AT91C_MPDDRC_RDIV_DDR2_RZQ_33_3		(0x2UL << 0)
+#define 	AT91C_MPDDRC_RDIV_DDR2_RZQ_50		(0x4UL << 0)
+#define		AT91C_MPDDRC_RDIV_DDR2_RZQ_66_7		(0x6UL << 0)
+#define 	AT91C_MPDDRC_RDIV_DDR2_RZQ_100		(0x7UL << 0)
+
+#define		AT91C_MPDDRC_RDIV_LPDDR3_RZQ_38		(0x02UL << 0)
+#define		AT91C_MPDDRC_RDIV_LPDDR3_RZQ_46		(0x03UL << 0)
+#define		AT91C_MPDDRC_RDIV_LPDDR3_RZQ_57		(0x04UL << 0)
+#define		AT91C_MPDDRC_RDIV_LPDDR3_RZQ_77		(0x06UL << 0)
+#define		AT91C_MPDDRC_RDIV_LPDDR3_RZQ_115	(0x07UL << 0)
+
+#define	AT91C_MPDDRC_ENABLE_CALIB	(0x01 << 4)
+#define		AT91C_MPDDRC_DISABLE_CALIB		(0x00 << 4)
+#define		AT91C_MPDDRC_EN_CALIB		(0x01 << 4)
+
+#define	AT91C_MPDDRC_TZQIO	(0x7FUL << 8)
+#define	AT91C_MPDDRC_TZQIO_(x)		((x) << 8)
+#define		AT91C_MPDDRC_TZQIO_0	(0x0UL << 8)
+#define		AT91C_MPDDRC_TZQIO_1	(0x1UL << 8)
+#define		AT91C_MPDDRC_TZQIO_3	(0x3UL << 8)
+#define		AT91C_MPDDRC_TZQIO_4	(0x4UL << 8)
+#define		AT91C_MPDDRC_TZQIO_5	(0x5UL << 8)
+#define		AT91C_MPDDRC_TZQIO_31	(0x1FUL << 8)
+
+#define	AT91C_MPDDRC_CALCODEP	(0xFUL << 16)
+#define		AT91C_MPDDRC_CALCODEP_(x)	((x) << 16)
+
+#define	AT91C_MPDDRC_CALCODEN	(0xFUL << 20)
+#define		AT91C_MPDDRC_CALCODEN_(x)	((x) << 20)
+
+/* ---- MPDDRC_RD_DATA_PATH : (MPDDRC Offset: 0x5c) MPDDRC Read Data Path */
+#define AT91_MPDDRC_SHIFT_SAMPLING	(0x03 << 0)
+#define		AT91C_MPDDRC_RD_DATA_PATH_NO_SHIFT	(0x00 << 0)
+#define		AT91C_MPDDRC_RD_DATA_PATH_ONE_CYCLES	(0x01 << 0)
+#define		AT91C_MPDDRC_RD_DATA_PATH_TWO_CYCLES	(0x02 << 0)
+#define		AT91C_MPDDRC_RD_DATA_PATH_THREE_CYCLES	(0x03 << 0)
+
+/* -------- MPDDRC_DLL_MOR : (MPDDRC Offset: 0x74) DLL Master Offset Register --------*/
+#define AT91C_MPDDRC_MOFF(value)	(value << 0)
+#define 	AT91C_MPDDRC_MOFF_1	(0x1UL << 0)
+#define 	AT91C_MPDDRC_MOFF_7	(0x7UL << 0)
+#define AT91C_MPDDRC_CLK90OFF(value)		(value << 8)
+#define 	AT91C_MPDDRC_CLK90OFF_1		(0x1UL << 8)
+#define 	AT91C_MPDDRC_CLK90OFF_31	(0x1FUL << 8)
+#define AT91C_MPDDRC_SELOFF	(0x1UL << 16)
+#define 	AT91C_MPDDRC_SELOFF_DISABLED	(0x0UL << 16)
+#define 	AT91C_MPDDRC_SELOFF_ENABLED	(0x1UL << 16)
+#define AT91C_MPDDRC_KEY	(0xC5UL << 24)
+
+/* -------- MPDDRC_DLL_SOR : (MPDDRC Offset: 0x78) DLL Slave Offset Register --------*/
+#define AT91C_MPDDRC_S0OFF_1	(0x1UL << 0)
+#define AT91C_MPDDRC_S1OFF_1	(0x1UL << 8)
+#define AT91C_MPDDRC_S2OFF_1	(0x1UL << 16)
+#define AT91C_MPDDRC_S3OFF_1	(0x1UL << 24)
+
+#define AT91C_MPDDRC_S0OFF(value)	(value << 0)
+#define AT91C_MPDDRC_S1OFF(value)	(value << 8)
+#define AT91C_MPDDRC_S2OFF(value)	(value << 16)
+#define AT91C_MPDDRC_S3OFF(value)	(value << 24)
+
+/* -------- HDDRSDRC2_WPCR : (HDDRSDRC2 Offset: 0xe4) Write Protect Control Register --------*/
+#define AT91C_DDRC2_WPEN	(0x1UL << 0)
+#define AT91C_DDRC2_WPKEY	(0xFFFFFFUL << 8)
+
+/* -------- HDDRSDRC2_WPSR : (HDDRSDRC2 Offset: 0xe8) Write Protect Status Register --------*/
+#define AT91C_DDRC2_WPVS	(0x1UL << 0)
+#define AT91C_DDRC2_WPSRC	(0xFFFFUL << 8)
+
+/*
+ * Header file for the Atmel DDR/SDR SDRAM Controller
+ *
+ * Copyright (C) 2010 Atmel Corporation
+ *	Nicolas Ferre <nicolas.ferre@atmel.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef __ASSEMBLY__
+#include <common.h>
+#include <io.h>
+
+static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
+{
+	u32 cr;
+	u32 mdr;
+	u32 size;
+	bool is_sdram;
+
+	cr = __raw_readl(base + HDDRSDRC2_CR);
+	mdr = __raw_readl(base + HDDRSDRC2_MDR);
+
+	is_sdram = (mdr & AT91C_DDRC2_MD) <= AT91C_DDRC2_MD_LP_SDR_SDRAM;
+
+	/* Formula:
+	 * size = bank << (col + row + 1);
+	 * if (bandwidth == 32 bits)
+	 *	size <<= 1;
+	 */
+	size = 1;
+	/* COL */
+	size += (cr & AT91C_DDRC2_NC) + 8;
+	if (!is_sdram)
+		size ++;
+	/* ROW */
+	size += ((cr & AT91C_DDRC2_NR) >> 2) + 11;
+	/* BANK */
+	if (is_nb)
+		size = ((cr & AT91C_DDRC2_NB_BANKS) ? 8 : 4) << size;
+	else
+		size = 4 << size;
+
+	/* bandwidth */
+	if (!(mdr & AT91C_DDRC2_DBW))
+		size <<= 1;
+
+	return size;
+}
+
+#ifdef CONFIG_SOC_AT91SAM9G45
+#include <mach/at91sam9g45.h>
+static inline u32 at91sam9g45_get_ddram_size(int bank)
+{
+	switch (bank) {
+	case 0:
+		return at91_get_ddram_size(IOMEM(AT91SAM9G45_BASE_DDRSDRC0), false);
+	case 1:
+		return at91_get_ddram_size(IOMEM(AT91SAM9G45_BASE_DDRSDRC1), false);
+	default:
+		return 0;
+	}
+}
+#else
+static inline u32 at91sam9g45_get_ddram_size(int bank)
+{
+	return 0;
+}
+#endif
+
+#ifdef CONFIG_SOC_AT91SAM9X5
+#include <mach/at91sam9x5.h>
+static inline u32 at91sam9x5_get_ddram_size(void)
+{
+	return at91_get_ddram_size(IOMEM(AT91SAM9X5_BASE_DDRSDRC0), true);
+}
+#else
+static inline u32 at91sam9x5_get_ddram_size(void)
+{
+	return 0;
+}
+#endif
+
+#ifdef CONFIG_SOC_AT91SAM9N12
+#include <mach/at91sam9n12.h>
+static inline u32 at91sam9n12_get_ddram_size(void)
+{
+	return at91_get_ddram_size(IOMEM(AT91SAM9N12_BASE_DDRSDRC0), true);
+}
+#else
+static inline u32 at91sam9n12_get_ddram_size(void)
+{
+	return 0;
+}
+#endif
+
+#ifdef CONFIG_SOC_SAMA5
+#include <mach/sama5d3.h>
+static inline u32 at91sama5_get_ddram_size(void)
+{
+	u32 cr;
+	u32 mdr;
+	u32 size;
+	void * __iomem base = IOMEM(SAMA5D3_BASE_MPDDRC);
+
+	cr = __raw_readl(base + HDDRSDRC2_CR);
+	mdr = __raw_readl(base + HDDRSDRC2_MDR);
+
+	/* Formula:
+	 * size = bank << (col + row + 1);
+	 * if (bandwidth == 32 bits)
+	 *	size <<= 1;
+	 */
+	size = 1;
+	/* COL */
+	size += (cr & AT91C_DDRC2_NC) + 9;
+	/* ROW */
+	size += ((cr & AT91C_DDRC2_NR) >> 2) + 11;
+	/* BANK */
+	size = ((cr & AT91C_DDRC2_NB_BANKS) ? 8 : 4) << size;
+
+	/* bandwidth */
+	if (!(mdr & AT91C_DDRC2_DBW))
+		size <<= 1;
+
+	return size;
+}
+#else
+static inline u32 at91sama5_get_ddram_size(void)
+{
+	return 0;
+}
+#endif
+
+#endif
+#endif	/* #ifndef __AT91_DDRSDRC_H__ */
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
deleted file mode 100644
index 1c4d313eb486..000000000000
--- a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
+++ /dev/null
@@ -1,264 +0,0 @@
-/*
- * Header file for the Atmel DDR/SDR SDRAM Controller
- *
- * Copyright (C) 2010 Atmel Corporation
- *	Nicolas Ferre <nicolas.ferre@atmel.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- */
-#ifndef AT91SAM9_DDRSDR_H
-#define AT91SAM9_DDRSDR_H
-
-#define AT91_DDRSDRC_MR		0x00	/* Mode Register */
-#define		AT91_DDRSDRC_MODE	(0x7 << 0)		/* Command Mode */
-#define			AT91_DDRSDRC_MODE_NORMAL	0
-#define			AT91_DDRSDRC_MODE_NOP		1
-#define			AT91_DDRSDRC_MODE_PRECHARGE	2
-#define			AT91_DDRSDRC_MODE_LMR		3
-#define			AT91_DDRSDRC_MODE_REFRESH	4
-#define			AT91_DDRSDRC_MODE_EXT_LMR	5
-#define			AT91_DDRSDRC_MODE_DEEP		6
-
-#define AT91_DDRSDRC_RTR	0x04	/* Refresh Timer Register */
-#define		AT91_DDRSDRC_COUNT	(0xfff << 0)		/* Refresh Timer Counter */
-
-#define AT91_DDRSDRC_CR		0x08	/* Configuration Register */
-#define		AT91_DDRSDRC_NC		(3 << 0)		/* Number of Column Bits */
-#define			AT91_DDRSDRC_NC_SDR8	(0 << 0)
-#define			AT91_DDRSDRC_NC_SDR9	(1 << 0)
-#define			AT91_DDRSDRC_NC_SDR10	(2 << 0)
-#define			AT91_DDRSDRC_NC_SDR11	(3 << 0)
-#define			AT91_DDRSDRC_NC_DDR9	(0 << 0)
-#define			AT91_DDRSDRC_NC_DDR10	(1 << 0)
-#define			AT91_DDRSDRC_NC_DDR11	(2 << 0)
-#define			AT91_DDRSDRC_NC_DDR12	(3 << 0)
-#define		AT91_DDRSDRC_NR		(3 << 2)		/* Number of Row Bits */
-#define			AT91_DDRSDRC_NR_11	(0 << 2)
-#define			AT91_DDRSDRC_NR_12	(1 << 2)
-#define			AT91_DDRSDRC_NR_13	(2 << 2)
-#define			AT91_DDRSDRC_NR_14	(3 << 2)
-#define		AT91_DDRSDRC_CAS	(7 << 4)		/* CAS Latency */
-#define			AT91_DDRSDRC_CAS_2	(2 << 4)
-#define			AT91_DDRSDRC_CAS_3	(3 << 4)
-#define			AT91_DDRSDRC_CAS_25	(6 << 4)
-#define		AT91_DDRSDRC_RST_DLL	(1 << 7)		/* Reset DLL */
-#define		AT91_DDRSDRC_DICDS	(1 << 8)		/* Output impedance control */
-#define		AT91_DDRSDRC_DIS_DLL	(1 << 9)		/* Disable DLL [SAM9 Only] */
-#define		AT91_DDRSDRC_OCD	(1 << 12)		/* Off-Chip Driver [SAM9 Only] */
-#define		AT91_DDRSDRC_DQMS	(1 << 16)		/* Mask Data is Shared [SAM9 Only] */
-#define		AT91_DDRSDRC_ACTBST	(1 << 18)		/* Active Bank X to Burst Stop Read Access Bank Y [SAM9 Only] */
-#define		AT91_DDRSDRC_NB		(1 << 20)		/* Number of
-Banks [not SAM9G45] */
-#define			AT91_SDRAMC_NB_4	(0 << 20)
-#define			AT91_SDRAMC_NB_8	(1 << 20)
-
-#define AT91_DDRSDRC_T0PR	0x0C	/* Timing 0 Register */
-#define		AT91_DDRSDRC_TRAS	(0xf <<  0)		/* Active to Precharge delay */
-#define		AT91_DDRSDRC_TRCD	(0xf <<  4)		/* Row to Column delay */
-#define		AT91_DDRSDRC_TWR	(0xf <<  8)		/* Write recovery delay */
-#define		AT91_DDRSDRC_TRC	(0xf << 12)		/* Row cycle delay */
-#define		AT91_DDRSDRC_TRP	(0xf << 16)		/* Row precharge delay */
-#define		AT91_DDRSDRC_TRRD	(0xf << 20)		/* Active BankA to BankB */
-#define		AT91_DDRSDRC_TWTR	(0x7 << 24)		/* Internal Write to Read delay */
-#define		AT91CAP9_DDRSDRC_TWTR	(1   << 24)		/* Internal Write to Read delay */
-#define		AT91_DDRSDRC_RED_WRRD	(0x1 << 27)		/* Reduce Write to Read Delay [SAM9 Only] */
-#define		AT91_DDRSDRC_TMRD	(0xf << 28)		/* Load mode to active/refresh delay */
-
-#define AT91_DDRSDRC_T1PR	0x10	/* Timing 1 Register */
-#define		AT91_DDRSDRC_TRFC	(0x1f << 0)		/* Row Cycle Delay */
-#define		AT91_DDRSDRC_TXSNR	(0xff << 8)		/* Exit self-refresh to non-read */
-#define		AT91_DDRSDRC_TXSRD	(0xff << 16)		/* Exit self-refresh to read */
-#define		AT91_DDRSDRC_TXP	(0xf  << 24)		/* Exit power-down delay */
-
-#define AT91_DDRSDRC_T2PR	0x14	/* Timing 2 Register [SAM9 Only] */
-#define		AT91_DDRSDRC_TXARD	(0xf  << 0)		/* Exit active power down delay to read command in mode "Fast Exit" */
-#define		AT91_DDRSDRC_TXARDS	(0xf  << 4)		/* Exit active power down delay to read command in mode "Slow Exit" */
-#define		AT91_DDRSDRC_TRPA	(0xf  << 8)		/* Row Precharge All delay */
-#define		AT91_DDRSDRC_TRTP	(0x7  << 12)		/* Read to Precharge delay */
-
-#define AT91_DDRSDRC_LPR	0x1C	/* Low Power Register */
-#define AT91CAP9_DDRSDRC_LPR	0x18	/* Low Power Register */
-#define		AT91_DDRSDRC_LPCB	(3 << 0)		/* Low-power Configurations */
-#define			AT91_DDRSDRC_LPCB_DISABLE		0
-#define			AT91_DDRSDRC_LPCB_SELF_REFRESH		1
-#define			AT91_DDRSDRC_LPCB_POWER_DOWN		2
-#define			AT91_DDRSDRC_LPCB_DEEP_POWER_DOWN	3
-#define		AT91_DDRSDRC_CLKFR	(1 << 2)	/* Clock Frozen */
-#define		AT91_DDRSDRC_PASR	(7 << 4)	/* Partial Array Self Refresh */
-#define		AT91_DDRSDRC_TCSR	(3 << 8)	/* Temperature Compensated Self Refresh */
-#define		AT91_DDRSDRC_DS		(3 << 10)	/* Drive Strength */
-#define		AT91_DDRSDRC_TIMEOUT	(3 << 12)	/* Time to define when Low Power Mode is enabled */
-#define			AT91_DDRSDRC_TIMEOUT_0_CLK_CYCLES	(0 << 12)
-#define			AT91_DDRSDRC_TIMEOUT_64_CLK_CYCLES	(1 << 12)
-#define			AT91_DDRSDRC_TIMEOUT_128_CLK_CYCLES	(2 << 12)
-#define		AT91_DDRSDRC_APDE	(1 << 16)	 /* Active power down exit time */
-#define		AT91_DDRSDRC_UPD_MR	(3 << 20)	 /* Update load mode register and extended mode register */
-
-#define AT91_DDRSDRC_MDR	0x20	/* Memory Device Register */
-#define AT91CAP9_DDRSDRC_MDR	0x1C	/* Memory Device Register */
-#define		AT91_DDRSDRC_MD		(3 << 0)		/* Memory Device Type */
-#define			AT91_DDRSDRC_MD_SDR		0
-#define			AT91_DDRSDRC_MD_LOW_POWER_SDR	1
-#define			AT91CAP9_DDRSDRC_MD_DDR		2
-#define			AT91_DDRSDRC_MD_LOW_POWER_DDR	3
-#define			AT91_DDRSDRC_MD_DDR2		6	/* [SAM9 Only] */
-#define		AT91_DDRSDRC_DBW	(1 << 4)		/* Data Bus Width */
-#define			AT91_DDRSDRC_DBW_32BITS		(0 <<  4)
-#define			AT91_DDRSDRC_DBW_16BITS		(1 <<  4)
-
-#define AT91_DDRSDRC_DLL	0x24	/* DLL Information Register */
-#define AT91CAP9_DDRSDRC_DLL	0x20	/* DLL Information Register */
-#define		AT91_DDRSDRC_MDINC	(1 << 0)		/* Master Delay increment */
-#define		AT91_DDRSDRC_MDDEC	(1 << 1)		/* Master Delay decrement */
-#define		AT91_DDRSDRC_MDOVF	(1 << 2)		/* Master Delay Overflow */
-#define		AT91CAP9_DDRSDRC_SDCOVF	(1 << 3)		/* Slave Delay Correction Overflow */
-#define		AT91CAP9_DDRSDRC_SDCUDF	(1 << 4)		/* Slave Delay Correction Underflow */
-#define		AT91CAP9_DDRSDRC_SDERF	(1 << 5)		/* Slave Delay Correction error */
-#define		AT91_DDRSDRC_MDVAL	(0xff <<  8)		/* Master Delay value */
-#define		AT91CAP9_DDRSDRC_SDVAL	(0xff << 16)		/* Slave Delay value */
-#define		AT91CAP9_DDRSDRC_SDCVAL	(0xff << 24)		/* Slave Delay Correction value */
-
-#define AT91_DDRSDRC_HS		0x2C	/* High Speed Register [SAM9 Only] */
-#define		AT91_DDRSDRC_DIS_ATCP_RD	(1 << 2)	/* Anticip read access is disabled */
-
-#define AT91_DDRSDRC_DELAY(n)	(0x30 + (0x4 * (n)))	/* Delay I/O Register n */
-
-#define AT91_DDRSDRC_WPMR	0xE4	/* Write Protect Mode Register [SAM9 Only] */
-#define		AT91_DDRSDRC_WP		(1 << 0)		/* Write protect enable */
-#define		AT91_DDRSDRC_WPKEY	(0xffffff << 8)		/* Write protect key */
-#define		AT91_DDRSDRC_KEY	(0x444452 << 8)		/* Write protect key = "DDR" */
-
-#define AT91_DDRSDRC_WPSR	0xE8	/* Write Protect Status Register [SAM9 Only] */
-#define		AT91_DDRSDRC_WPVS	(1 << 0)		/* Write protect violation status */
-#define		AT91_DDRSDRC_WPVSRC	(0xffff << 8)		/* Write protect violation source */
-
-#ifndef __ASSEMBLY__
-#include <io.h>
-
-static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
-{
-	u32 cr;
-	u32 mdr;
-	u32 size;
-	bool is_sdram;
-
-	cr = __raw_readl(base + AT91_DDRSDRC_CR);
-	mdr = __raw_readl(base + AT91_DDRSDRC_MDR);
-
-	is_sdram = (mdr & AT91_DDRSDRC_MD) <= AT91_DDRSDRC_MD_LOW_POWER_SDR;
-
-	/* Formula:
-	 * size = bank << (col + row + 1);
-	 * if (bandwidth == 32 bits)
-	 *	size <<= 1;
-	 */
-	size = 1;
-	/* COL */
-	size += (cr & AT91_DDRSDRC_NC) + 8;
-	if (!is_sdram)
-		size ++;
-	/* ROW */
-	size += ((cr & AT91_DDRSDRC_NR) >> 2) + 11;
-	/* BANK */
-	if (is_nb)
-		size = ((cr & AT91_DDRSDRC_NB) ? 8 : 4) << size;
-	else
-		size = 4 << size;
-
-	/* bandwidth */
-	if (!(mdr & AT91_DDRSDRC_DBW))
-		size <<= 1;
-
-	return size;
-}
-
-#ifdef CONFIG_SOC_AT91SAM9G45
-#include <mach/at91sam9g45.h>
-static inline u32 at91sam9g45_get_ddram_size(int bank)
-{
-	switch (bank) {
-	case 0:
-		return at91_get_ddram_size(IOMEM(AT91SAM9G45_BASE_DDRSDRC0), false);
-	case 1:
-		return at91_get_ddram_size(IOMEM(AT91SAM9G45_BASE_DDRSDRC1), false);
-	default:
-		return 0;
-	}
-}
-#else
-static inline u32 at91sam9g45_get_ddram_size(int bank)
-{
-	return 0;
-}
-#endif
-
-#ifdef CONFIG_SOC_AT91SAM9X5
-#include <mach/at91sam9x5.h>
-static inline u32 at91sam9x5_get_ddram_size(void)
-{
-	return at91_get_ddram_size(IOMEM(AT91SAM9X5_BASE_DDRSDRC0), true);
-}
-#else
-static inline u32 at91sam9x5_get_ddram_size(void)
-{
-	return 0;
-}
-#endif
-
-#ifdef CONFIG_SOC_AT91SAM9N12
-#include <mach/at91sam9n12.h>
-static inline u32 at91sam9n12_get_ddram_size(void)
-{
-	return at91_get_ddram_size(IOMEM(AT91SAM9N12_BASE_DDRSDRC0), true);
-}
-#else
-static inline u32 at91sam9n12_get_ddram_size(void)
-{
-	return 0;
-}
-#endif
-
-#ifdef CONFIG_SOC_SAMA5
-#include <mach/sama5d3.h>
-static inline u32 at91sama5_get_ddram_size(void)
-{
-	u32 cr;
-	u32 mdr;
-	u32 size;
-	void * __iomem base = IOMEM(SAMA5D3_BASE_MPDDRC);
-
-	cr = __raw_readl(base + AT91_DDRSDRC_CR);
-	mdr = __raw_readl(base + AT91_DDRSDRC_MDR);
-
-	/* Formula:
-	 * size = bank << (col + row + 1);
-	 * if (bandwidth == 32 bits)
-	 *	size <<= 1;
-	 */
-	size = 1;
-	/* COL */
-	size += (cr & AT91_DDRSDRC_NC) + 9;
-	/* ROW */
-	size += ((cr & AT91_DDRSDRC_NR) >> 2) + 11;
-	/* BANK */
-	size = ((cr & AT91_DDRSDRC_NB) ? 8 : 4) << size;
-
-	/* bandwidth */
-	if (!(mdr & AT91_DDRSDRC_DBW))
-		size <<= 1;
-
-	return size;
-}
-#else
-static inline u32 at91sama5_get_ddram_size(void)
-{
-	return 0;
-}
-#endif
-
-#endif
-
-#endif
diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
index f5075b39374f..f6d5e47c33ed 100644
--- a/arch/arm/mach-at91/sama5d3_devices.c
+++ b/arch/arm/mach-at91/sama5d3_devices.c
@@ -18,7 +18,7 @@
 #include <mach/board.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9x5_matrix.h>
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/iomux.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
diff --git a/arch/arm/mach-at91/sama5d4_devices.c b/arch/arm/mach-at91/sama5d4_devices.c
index 4064e4441f9f..f5c0367ca844 100644
--- a/arch/arm/mach-at91/sama5d4_devices.c
+++ b/arch/arm/mach-at91/sama5d4_devices.c
@@ -19,7 +19,7 @@
 #include <mach/board.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9x5_matrix.h>
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/iomux.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
