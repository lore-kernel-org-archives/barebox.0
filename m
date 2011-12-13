Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo5.mail-out.ovh.net ([188.165.51.82]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RaVQJ-00034E-Pz
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 16:41:49 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 992E9FFC52B
 for <barebox@lists.infradead.org>; Tue, 13 Dec 2011 17:42:06 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Dec 2011 17:37:25 +0100
Message-Id: <1323794245-9721-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] at91: fix reset
To: barebox@lists.infradead.org

on at91sam9 you need to shutdown the sdram/ddr controler before reseting
when you boot from nand

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig                        |   12 ++
 arch/arm/mach-at91/Makefile                       |    3 +
 arch/arm/mach-at91/at91sam926x_time.c             |   14 --
 arch/arm/mach-at91/at91sam9_reset.S               |   43 +++++++
 arch/arm/mach-at91/at91sam9g45_reset.S            |   40 ++++++
 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h |  134 +++++++++++++++++++++
 6 files changed, 232 insertions(+), 14 deletions(-)
 create mode 100644 arch/arm/mach-at91/at91sam9_reset.S
 create mode 100644 arch/arm/mach-at91/at91sam9g45_reset.S
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index c53ade9..8f3b8ce 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -28,6 +28,12 @@ config BOARDINFO
 config HAVE_NAND_ATMEL_BUSWIDTH_16
 	bool
 
+config AT91SAM9_RESET
+	bool
+
+config AT91SAM9G45_RESET
+	bool
+
 comment "Atmel AT91 System-on-Chip"
 
 choice
@@ -45,29 +51,35 @@ config ARCH_AT91SAM9260
 	bool "AT91SAM9260"
 	select CPU_ARM926T
 	select HAS_MACB
+	select AT91SAM9_RESET
 
 config ARCH_AT91SAM9261
 	bool "AT91SAM9261"
 	select CPU_ARM926T
+	select AT91SAM9_RESET
 
 config ARCH_AT91SAM9263
 	bool "AT91SAM9263"
 	select CPU_ARM926T
 	select HAS_MACB
+	select AT91SAM9_RESET
 
 config ARCH_AT91SAM9G10
 	bool "AT91SAM9G10"
 	select CPU_ARM926T
+	select AT91SAM9_RESET
 
 config ARCH_AT91SAM9G20
 	bool "AT91SAM9G20"
 	select CPU_ARM926T
 	select HAS_MACB
+	select AT91SAM9_RESET
 
 config ARCH_AT91SAM9G45
 	bool "AT91SAM9G45 or AT91SAM9M10"
 	select CPU_ARM926T
 	select HAS_MACB
+	select AT91SAM9G45_RESET
 
 endchoice
 
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index e72f409..219f75c 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -4,6 +4,9 @@ lowlevel_init-y = at91sam926x_lowlevel_init.o
 lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
 obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
 
+obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
+obj-$(CONFIG_AT91SAM9G45_RESET) += at91sam9g45_reset.o
+
 # CPU-specific support
 obj-$(CONFIG_ARCH_AT91RM9200)	+= at91rm9200.o at91rm9200_time.o at91rm9200_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9260) += at91sam9260.o at91sam926x_time.o at91sam9260_devices.o sam9_smc.o
diff --git a/arch/arm/mach-at91/at91sam926x_time.c b/arch/arm/mach-at91/at91sam926x_time.c
index 7ca2ef4..b95cef3 100644
--- a/arch/arm/mach-at91/at91sam926x_time.c
+++ b/arch/arm/mach-at91/at91sam926x_time.c
@@ -69,17 +69,3 @@ static int clocksource_init (void)
 }
 
 core_initcall(clocksource_init);
-
-/*
- * Reset the cpu through the reset controller
- */
-void __noreturn reset_cpu (unsigned long addr)
-{
-	at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY |
-				     AT91_RSTC_PROCRST |
-				     AT91_RSTC_PERRST);
-
-	/* Not reached */
-	while (1);
-}
-EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-at91/at91sam9_reset.S b/arch/arm/mach-at91/at91sam9_reset.S
new file mode 100644
index 0000000..9a0bc0d
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam9_reset.S
@@ -0,0 +1,43 @@
+/*
+ * reset AT91SAM9G20 as per errata
+ *
+ * (C) BitBox Ltd 2010
+ *
+ * unless the SDRAM is cleanly shutdown before we hit the
+ * reset register it can be left driving the data bus and
+ * killing the chance of a subsequent boot from NAND
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#include <linux/linkage.h>
+#include <mach/hardware.h>
+#include <mach/at91sam9_sdramc.h>
+#include <mach/at91_rstc.h>
+
+			.arm
+
+			.globl	reset_cpu
+
+reset_cpu:		ldr	r0, .at91_va_base_sdramc			@ preload constants
+			ldr	r1, .at91_va_base_rstc_cr
+
+			mov	r2, #1
+			mov	r3, #AT91_SDRAMC_LPCB_POWER_DOWN
+			ldr	r4, =AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST
+
+			.balign	32						@ align to cache line
+
+			str	r2, [r0, #AT91_SDRAMC_TR - AT91_SDRAMC]		@ disable SDRAM access
+			str	r3, [r0, #AT91_SDRAMC_LPR - AT91_SDRAMC]	@ power down SDRAM
+			str	r4, [r1]					@ reset processor
+
+			b	.
+
+.at91_va_base_sdramc:
+	.word AT91_BASE_SYS + AT91_SDRAMC
+.at91_va_base_rstc_cr:
+	.word AT91_BASE_SYS + AT91_RSTC_CR
diff --git a/arch/arm/mach-at91/at91sam9g45_reset.S b/arch/arm/mach-at91/at91sam9g45_reset.S
new file mode 100644
index 0000000..e70d733
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam9g45_reset.S
@@ -0,0 +1,40 @@
+/*
+ * reset AT91SAM9G45 as per errata
+ *
+ * Copyright (C) 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcosoft.com>
+ *
+ * unless the SDRAM is cleanly shutdown before we hit the
+ * reset register it can be left driving the data bus and
+ * killing the chance of a subsequent boot from NAND
+ *
+ * GPLv2 Only
+ */
+
+#include <linux/linkage.h>
+#include <mach/hardware.h>
+#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_rstc.h>
+
+			.arm
+
+			.globl	reset_cpu
+
+reset_cpu:		ldr	r0, .at91_va_base_sdramc	@ preload constants
+			ldr	r1, .at91_va_base_rstc_cr
+
+			mov	r2, #1
+			mov	r3, #AT91_DDRSDRC_LPCB_POWER_DOWN
+			ldr	r4, =AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST
+
+			.balign	32				@ align to cache line
+
+			str	r2, [r0, #AT91_DDRSDRC_RTR]	@ disable DDR0 access
+			str	r3, [r0, #AT91_DDRSDRC_LPR]	@ power down DDR0
+			str	r4, [r1]			@ reset processor
+
+			b	.
+
+.at91_va_base_sdramc:
+	.word AT91_BASE_SYS + AT91_DDRSDRC0
+.at91_va_base_rstc_cr:
+	.word AT91_BASE_SYS + AT91_RSTC_CR
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
new file mode 100644
index 0000000..070f730
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
@@ -0,0 +1,134 @@
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
+#ifndef AT91SAM9_DDRSDR_H
+#define AT91SAM9_DDRSDR_H
+
+#define AT91_DDRSDRC_MR		0x00	/* Mode Register */
+#define		AT91_DDRSDRC_MODE	(0x7 << 0)		/* Command Mode */
+#define			AT91_DDRSDRC_MODE_NORMAL	0
+#define			AT91_DDRSDRC_MODE_NOP		1
+#define			AT91_DDRSDRC_MODE_PRECHARGE	2
+#define			AT91_DDRSDRC_MODE_LMR		3
+#define			AT91_DDRSDRC_MODE_REFRESH	4
+#define			AT91_DDRSDRC_MODE_EXT_LMR	5
+#define			AT91_DDRSDRC_MODE_DEEP		6
+
+#define AT91_DDRSDRC_RTR	0x04	/* Refresh Timer Register */
+#define		AT91_DDRSDRC_COUNT	(0xfff << 0)		/* Refresh Timer Counter */
+
+#define AT91_DDRSDRC_CR		0x08	/* Configuration Register */
+#define		AT91_DDRSDRC_NC		(3 << 0)		/* Number of Column Bits */
+#define			AT91_DDRSDRC_NC_SDR8	(0 << 0)
+#define			AT91_DDRSDRC_NC_SDR9	(1 << 0)
+#define			AT91_DDRSDRC_NC_SDR10	(2 << 0)
+#define			AT91_DDRSDRC_NC_SDR11	(3 << 0)
+#define			AT91_DDRSDRC_NC_DDR9	(0 << 0)
+#define			AT91_DDRSDRC_NC_DDR10	(1 << 0)
+#define			AT91_DDRSDRC_NC_DDR11	(2 << 0)
+#define			AT91_DDRSDRC_NC_DDR12	(3 << 0)
+#define		AT91_DDRSDRC_NR		(3 << 2)		/* Number of Row Bits */
+#define			AT91_DDRSDRC_NR_11	(0 << 2)
+#define			AT91_DDRSDRC_NR_12	(1 << 2)
+#define			AT91_DDRSDRC_NR_13	(2 << 2)
+#define			AT91_DDRSDRC_NR_14	(3 << 2)
+#define		AT91_DDRSDRC_CAS	(7 << 4)		/* CAS Latency */
+#define			AT91_DDRSDRC_CAS_2	(2 << 4)
+#define			AT91_DDRSDRC_CAS_3	(3 << 4)
+#define			AT91_DDRSDRC_CAS_25	(6 << 4)
+#define		AT91_DDRSDRC_RST_DLL	(1 << 7)		/* Reset DLL */
+#define		AT91_DDRSDRC_DICDS	(1 << 8)		/* Output impedance control */
+#define		AT91_DDRSDRC_DIS_DLL	(1 << 9)		/* Disable DLL [SAM9 Only] */
+#define		AT91_DDRSDRC_OCD	(1 << 12)		/* Off-Chip Driver [SAM9 Only] */
+#define		AT91_DDRSDRC_DQMS	(1 << 16)		/* Mask Data is Shared [SAM9 Only] */
+#define		AT91_DDRSDRC_ACTBST	(1 << 18)		/* Active Bank X to Burst Stop Read Access Bank Y [SAM9 Only] */
+
+#define AT91_DDRSDRC_T0PR	0x0C	/* Timing 0 Register */
+#define		AT91_DDRSDRC_TRAS	(0xf <<  0)		/* Active to Precharge delay */
+#define		AT91_DDRSDRC_TRCD	(0xf <<  4)		/* Row to Column delay */
+#define		AT91_DDRSDRC_TWR	(0xf <<  8)		/* Write recovery delay */
+#define		AT91_DDRSDRC_TRC	(0xf << 12)		/* Row cycle delay */
+#define		AT91_DDRSDRC_TRP	(0xf << 16)		/* Row precharge delay */
+#define		AT91_DDRSDRC_TRRD	(0xf << 20)		/* Active BankA to BankB */
+#define		AT91_DDRSDRC_TWTR	(0x7 << 24)		/* Internal Write to Read delay */
+#define		AT91CAP9_DDRSDRC_TWTR	(1   << 24)		/* Internal Write to Read delay */
+#define		AT91_DDRSDRC_RED_WRRD	(0x1 << 27)		/* Reduce Write to Read Delay [SAM9 Only] */
+#define		AT91_DDRSDRC_TMRD	(0xf << 28)		/* Load mode to active/refresh delay */
+
+#define AT91_DDRSDRC_T1PR	0x10	/* Timing 1 Register */
+#define		AT91_DDRSDRC_TRFC	(0x1f << 0)		/* Row Cycle Delay */
+#define		AT91_DDRSDRC_TXSNR	(0xff << 8)		/* Exit self-refresh to non-read */
+#define		AT91_DDRSDRC_TXSRD	(0xff << 16)		/* Exit self-refresh to read */
+#define		AT91_DDRSDRC_TXP	(0xf  << 24)		/* Exit power-down delay */
+
+#define AT91_DDRSDRC_T2PR	0x14	/* Timing 2 Register [SAM9 Only] */
+#define		AT91_DDRSDRC_TXARD	(0xf  << 0)		/* Exit active power down delay to read command in mode "Fast Exit" */
+#define		AT91_DDRSDRC_TXARDS	(0xf  << 4)		/* Exit active power down delay to read command in mode "Slow Exit" */
+#define		AT91_DDRSDRC_TRPA	(0xf  << 8)		/* Row Precharge All delay */
+#define		AT91_DDRSDRC_TRTP	(0x7  << 12)		/* Read to Precharge delay */
+
+#define AT91_DDRSDRC_LPR	0x1C	/* Low Power Register */
+#define AT91CAP9_DDRSDRC_LPR	0x18	/* Low Power Register */
+#define		AT91_DDRSDRC_LPCB	(3 << 0)		/* Low-power Configurations */
+#define			AT91_DDRSDRC_LPCB_DISABLE		0
+#define			AT91_DDRSDRC_LPCB_SELF_REFRESH		1
+#define			AT91_DDRSDRC_LPCB_POWER_DOWN		2
+#define			AT91_DDRSDRC_LPCB_DEEP_POWER_DOWN	3
+#define		AT91_DDRSDRC_CLKFR	(1 << 2)	/* Clock Frozen */
+#define		AT91_DDRSDRC_PASR	(7 << 4)	/* Partial Array Self Refresh */
+#define		AT91_DDRSDRC_TCSR	(3 << 8)	/* Temperature Compensated Self Refresh */
+#define		AT91_DDRSDRC_DS		(3 << 10)	/* Drive Strength */
+#define		AT91_DDRSDRC_TIMEOUT	(3 << 12)	/* Time to define when Low Power Mode is enabled */
+#define			AT91_DDRSDRC_TIMEOUT_0_CLK_CYCLES	(0 << 12)
+#define			AT91_DDRSDRC_TIMEOUT_64_CLK_CYCLES	(1 << 12)
+#define			AT91_DDRSDRC_TIMEOUT_128_CLK_CYCLES	(2 << 12)
+#define		AT91_DDRSDRC_APDE	(1 << 16)	 /* Active power down exit time */
+#define		AT91_DDRSDRC_UPD_MR	(3 << 20)	 /* Update load mode register and extended mode register */
+
+#define AT91_DDRSDRC_MDR	0x20	/* Memory Device Register */
+#define AT91CAP9_DDRSDRC_MDR	0x1C	/* Memory Device Register */
+#define		AT91_DDRSDRC_MD		(3 << 0)		/* Memory Device Type */
+#define			AT91_DDRSDRC_MD_SDR		0
+#define			AT91_DDRSDRC_MD_LOW_POWER_SDR	1
+#define			AT91CAP9_DDRSDRC_MD_DDR		2
+#define			AT91_DDRSDRC_MD_LOW_POWER_DDR	3
+#define			AT91_DDRSDRC_MD_DDR2		6	/* [SAM9 Only] */
+#define		AT91_DDRSDRC_DBW	(1 << 4)		/* Data Bus Width */
+#define			AT91_DDRSDRC_DBW_32BITS		(0 <<  4)
+#define			AT91_DDRSDRC_DBW_16BITS		(1 <<  4)
+
+#define AT91_DDRSDRC_DLL	0x24	/* DLL Information Register */
+#define AT91CAP9_DDRSDRC_DLL	0x20	/* DLL Information Register */
+#define		AT91_DDRSDRC_MDINC	(1 << 0)		/* Master Delay increment */
+#define		AT91_DDRSDRC_MDDEC	(1 << 1)		/* Master Delay decrement */
+#define		AT91_DDRSDRC_MDOVF	(1 << 2)		/* Master Delay Overflow */
+#define		AT91CAP9_DDRSDRC_SDCOVF	(1 << 3)		/* Slave Delay Correction Overflow */
+#define		AT91CAP9_DDRSDRC_SDCUDF	(1 << 4)		/* Slave Delay Correction Underflow */
+#define		AT91CAP9_DDRSDRC_SDERF	(1 << 5)		/* Slave Delay Correction error */
+#define		AT91_DDRSDRC_MDVAL	(0xff <<  8)		/* Master Delay value */
+#define		AT91CAP9_DDRSDRC_SDVAL	(0xff << 16)		/* Slave Delay value */
+#define		AT91CAP9_DDRSDRC_SDCVAL	(0xff << 24)		/* Slave Delay Correction value */
+
+#define AT91_DDRSDRC_HS		0x2C	/* High Speed Register [SAM9 Only] */
+#define		AT91_DDRSDRC_DIS_ATCP_RD	(1 << 2)	/* Anticip read access is disabled */
+
+#define AT91_DDRSDRC_DELAY(n)	(0x30 + (0x4 * (n)))	/* Delay I/O Register n */
+
+#define AT91_DDRSDRC_WPMR	0xE4	/* Write Protect Mode Register [SAM9 Only] */
+#define		AT91_DDRSDRC_WP		(1 << 0)		/* Write protect enable */
+#define		AT91_DDRSDRC_WPKEY	(0xffffff << 8)		/* Write protect key */
+#define		AT91_DDRSDRC_KEY	(0x444452 << 8)		/* Write protect key = "DDR" */
+
+#define AT91_DDRSDRC_WPSR	0xE8	/* Write Protect Status Register [SAM9 Only] */
+#define		AT91_DDRSDRC_WPVS	(1 << 0)		/* Write protect violation status */
+#define		AT91_DDRSDRC_WPVSRC	(0xffff << 8)		/* Write protect violation source */
+
+#endif
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
