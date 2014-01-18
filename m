Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4UOP-0003RL-R0
 for barebox@lists.infradead.org; Sat, 18 Jan 2014 11:48:51 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 18 Jan 2014 12:48:06 +0100
Message-Id: <1390045689-23127-3-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1390045689-23127-1-git-send-email-robert.jarzmik@free.fr>
References: <1390045689-23127-1-git-send-email-robert.jarzmik@free.fr>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: pxa: add poweroff capability
To: barebox@lists.infradead.org

Add the capability for the PXA architecture to poweroff.

As there is no true poweroff, ie. the power regulator is not available
for shut off from the core, the poweroff puts the SoC into a deep sleep
mode (mode 7), where almost no current is sunk.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/Kconfig                          |    1 +
 arch/arm/mach-pxa/Makefile                |    1 +
 arch/arm/mach-pxa/common.c                |   13 +++++
 arch/arm/mach-pxa/include/mach/hardware.h |    4 ++
 arch/arm/mach-pxa/sleep.S                 |   81 +++++++++++++++++++++++++++++
 5 files changed, 100 insertions(+)
 create mode 100644 arch/arm/mach-pxa/sleep.S

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 93619d5..243cfc8 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -116,6 +116,7 @@ config ARCH_OMAP
 config ARCH_PXA
 	bool "Intel/Marvell PXA based"
 	select GENERIC_GPIO
+	select HAS_POWEROFF
 
 config ARCH_SOCFPGA
 	bool "Altera SOCFPGA cyclone5"
diff --git a/arch/arm/mach-pxa/Makefile b/arch/arm/mach-pxa/Makefile
index ddc042e..6ddb6e5 100644
--- a/arch/arm/mach-pxa/Makefile
+++ b/arch/arm/mach-pxa/Makefile
@@ -2,6 +2,7 @@ obj-y += clocksource.o
 obj-y += common.o
 obj-y += gpio.o
 obj-y += devices.o
+obj-y += sleep.o
 
 obj-$(CONFIG_ARCH_PXA2XX) += mfp-pxa2xx.o
 obj-$(CONFIG_ARCH_PXA27X) += speed-pxa27x.o
diff --git a/arch/arm/mach-pxa/common.c b/arch/arm/mach-pxa/common.c
index 69ec0a7..0c114ed 100644
--- a/arch/arm/mach-pxa/common.c
+++ b/arch/arm/mach-pxa/common.c
@@ -27,6 +27,8 @@
 #define OWER_WME	(1 << 0)	/* Watch-dog Match Enable */
 #define OSSR_M3		(1 << 3)	/* Match status channel 3 */
 
+extern void pxa_suspend(int mode);
+
 void reset_cpu(ulong addr)
 {
 	/* Clear last reset source */
@@ -39,3 +41,14 @@ void reset_cpu(ulong addr)
 
 	while (1);
 }
+
+void __noreturn poweroff()
+{
+	shutdown_barebox();
+
+	/* Clear last reset source */
+	RCSR = RCSR_GPR | RCSR_SMR | RCSR_WDR | RCSR_HWR;
+
+	pxa_suspend(PWRMODE_DEEPSLEEP);
+	unreachable();
+}
diff --git a/arch/arm/mach-pxa/include/mach/hardware.h b/arch/arm/mach-pxa/include/mach/hardware.h
index e53085c..c5f40d7 100644
--- a/arch/arm/mach-pxa/include/mach/hardware.h
+++ b/arch/arm/mach-pxa/include/mach/hardware.h
@@ -28,4 +28,8 @@
 #define cpu_is_pxa27x()	(0)
 #endif
 
+#ifdef __ASSEMBLY__
+#define __REG(x) (x)
+#endif
+
 #endif	/* !__MACH_HARDWARE_H */
diff --git a/arch/arm/mach-pxa/sleep.S b/arch/arm/mach-pxa/sleep.S
new file mode 100644
index 0000000..881033d
--- /dev/null
+++ b/arch/arm/mach-pxa/sleep.S
@@ -0,0 +1,81 @@
+/*
+ * Low-level PXA250/210 sleep/wakeUp support
+ *
+ * Initial SA1110 code:
+ * Copyright (c) 2001 Cliff Brake <cbrake@accelent.com>
+ *
+ * Adapted for PXA by Nicolas Pitre:
+ * Copyright (c) 2002 Monta Vista Software, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License.
+ */
+
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+#include <mach/hardware.h>
+#include <mach/pxa2xx-regs.h>
+
+#define MDREFR_KDIV	0x200a4000	// all banks
+#define CCCR_SLEEP	0x00000107	// L=7 2N=2 A=0 PPDIS=0 CPDIS=0
+#define UNCACHED_PHYS_0	0
+		.text
+
+#ifdef CONFIG_ARCH_PXA27X
+/*
+ * pxa27x_finish_suspend()
+ *
+ * Forces CPU into sleep state.
+ *
+ * r0 = value for PWRMODE M field for desired sleep state
+ */
+ENTRY(pxa_suspend)
+	@ Put the processor to sleep
+	@ (also workaround for sighting 28071)
+
+	@ prepare value for sleep mode
+	mov	r1, r0				@ sleep mode
+
+	@ Intel PXA270 Specification Update notes problems sleeping
+	@ with core operating above 91 MHz
+	@ (see Errata 50, ...processor does not exit from sleep...)
+	ldr	r6, =CCCR
+	ldr	r8, [r6]		@ keep original value for resume
+
+	ldr	r7, =CCCR_SLEEP		@ prepare CCCR sleep value
+	mov	r0, #0x2		@ prepare value for CLKCFG
+
+	@ align execution to a cache line
+	b	pxa_cpu_do_suspend
+#endif
+
+
+	.ltorg
+	.align	5
+pxa_cpu_do_suspend:
+
+	@ All needed values are now in registers.
+	@ These last instructions should be in cache
+
+	@ initiate the frequency change...
+	str	r7, [r6]
+	mcr	p14, 0, r0, c6, c0, 0
+
+	@ restore the original cpu speed value for resume
+	str	r8, [r6]
+
+	@ need 6 13-MHz cycles before changing PWRMODE
+	@ just set frequency to 91-MHz... 6*91/13 = 42
+
+	mov	r0, #42
+10:	subs	r0, r0, #1
+	bne	10b
+
+	@ Do not reorder...
+	@ Intel PXA270 Specification Update notes problems performing
+	@ external accesses after SDRAM is put in self-refresh mode
+	@ (see Errata 39 ...hangs when entering self-refresh mode)
+
+	@ enter sleep mode
+	mcr	p14, 0, r1, c7, c0, 0		@ PWRMODE
+20:	b	20b				@ loop waiting for sleep
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
