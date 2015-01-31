Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp10.smtpout.orange.fr ([80.12.242.132]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YHXu3-0004vM-7L
 for barebox@lists.infradead.org; Sat, 31 Jan 2015 13:16:00 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 31 Jan 2015 14:15:33 +0100
Message-Id: <1422710134-30798-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH v2 1/2] ARM: pxa: add pxa25x support
To: barebox@lists.infradead.org

Add support for the PXA25X SoC family, the oldest of the PXA serie.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/mach-pxa/Kconfig                    | 21 +++++++++++
 arch/arm/mach-pxa/Makefile                   |  1 +
 arch/arm/mach-pxa/include/mach/pxa-regs.h    |  2 ++
 arch/arm/mach-pxa/include/mach/pxa25x-regs.h |  6 ++++
 arch/arm/mach-pxa/include/mach/pxa2xx-regs.h |  1 +
 arch/arm/mach-pxa/mfp-pxa2xx.c               |  4 ++-
 arch/arm/mach-pxa/sleep.S                    |  2 +-
 arch/arm/mach-pxa/speed-pxa25x.c             | 54 ++++++++++++++++++++++++++++
 8 files changed, 89 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/mach-pxa/include/mach/pxa25x-regs.h
 create mode 100644 arch/arm/mach-pxa/speed-pxa25x.c

diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index b36e720..a45e01a 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -22,6 +22,10 @@ config ARCH_PXA310
 choice
 	prompt "Intel/Marvell PXA Processor"
 
+config ARCH_PXA25X
+	bool "PXA25x"
+	select ARCH_PXA2XX
+
 config ARCH_PXA27X
 	bool "PXA27x"
 	select ARCH_PXA2XX
@@ -33,6 +37,23 @@ endchoice
 
 # ----------------------------------------------------------
 
+if ARCH_PXA25X
+
+choice
+	prompt "PXA25x Board Type"
+	bool
+
+config MACH_LUBBOCK
+	bool "Lubbock board"
+	select PWM
+	help
+	  Say Y here if you are using a Lubbock board
+endchoice
+
+endif
+
+# ----------------------------------------------------------
+
 if ARCH_PXA27X
 
 choice
diff --git a/arch/arm/mach-pxa/Makefile b/arch/arm/mach-pxa/Makefile
index e5ffe06..0c32198 100644
--- a/arch/arm/mach-pxa/Makefile
+++ b/arch/arm/mach-pxa/Makefile
@@ -5,5 +5,6 @@ obj-y += devices.o
 obj-y += sleep.o
 
 obj-$(CONFIG_ARCH_PXA2XX) += mfp-pxa2xx.o pxa2xx.o
+obj-$(CONFIG_ARCH_PXA25X) += speed-pxa25x.o
 obj-$(CONFIG_ARCH_PXA27X) += speed-pxa27x.o
 obj-$(CONFIG_ARCH_PXA3XX) += speed-pxa3xx.o mfp-pxa3xx.o pxa3xx.o
diff --git a/arch/arm/mach-pxa/include/mach/pxa-regs.h b/arch/arm/mach-pxa/include/mach/pxa-regs.h
index 5203d88..9bcb5ef 100644
--- a/arch/arm/mach-pxa/include/mach/pxa-regs.h
+++ b/arch/arm/mach-pxa/include/mach/pxa-regs.h
@@ -28,6 +28,8 @@
 # include <mach/pxa27x-regs.h>
 #elif defined(CONFIG_ARCH_PXA3XX)
 # include <mach/pxa3xx-regs.h>
+#elif defined(CONFIG_ARCH_PXA25X)
+# include <mach/pxa25x-regs.h>
 #else
 # error "unknown PXA soc type"
 #endif
diff --git a/arch/arm/mach-pxa/include/mach/pxa25x-regs.h b/arch/arm/mach-pxa/include/mach/pxa25x-regs.h
new file mode 100644
index 0000000..a7f16bd
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/pxa25x-regs.h
@@ -0,0 +1,6 @@
+#ifndef __MACH_PXA25X_REGS
+#define __MACH_PXA25X_REGS
+
+/* this file intentionally left blank */
+
+#endif	/* !__MACH_PXA25X_REGS */
diff --git a/arch/arm/mach-pxa/include/mach/pxa2xx-regs.h b/arch/arm/mach-pxa/include/mach/pxa2xx-regs.h
index b43648e..dc7704e 100644
--- a/arch/arm/mach-pxa/include/mach/pxa2xx-regs.h
+++ b/arch/arm/mach-pxa/include/mach/pxa2xx-regs.h
@@ -53,6 +53,7 @@
 #define MECR		__REG(0x48000014)  /* Expansion Memory (PCMCIA/Compact Flash) Bus Configuration */
 #define SXLCR		__REG(0x48000018)  /* LCR value to be written to SDRAM-Timing Synchronous Flash */
 #define SXCNFG		__REG(0x4800001C)  /* Synchronous Static Memory Control Register */
+#define FLYCNFG		__REG(0x48000020)  /* Flycnfg Register */
 #define SXMRS		__REG(0x48000024)  /* MRS value to be written to Synchronous Flash or SMROM */
 #define MCMEM0		__REG(0x48000028)  /* Card interface Common Memory Space Socket 0 Timing */
 #define MCMEM1		__REG(0x4800002C)  /* Card interface Common Memory Space Socket 1 Timing */
diff --git a/arch/arm/mach-pxa/mfp-pxa2xx.c b/arch/arm/mach-pxa/mfp-pxa2xx.c
index 4f393c4..2456cef 100644
--- a/arch/arm/mach-pxa/mfp-pxa2xx.c
+++ b/arch/arm/mach-pxa/mfp-pxa2xx.c
@@ -169,8 +169,10 @@ static int __init pxa2xx_mfp_init(void)
 	if (!cpu_is_pxa2xx())
 		return 0;
 
-	if (cpu_is_pxa25x())
+	if (cpu_is_pxa25x()) {
+		pxa_init_gpio(0, 84);
 		pxa25x_mfp_init();
+	}
 
 	if (cpu_is_pxa27x()) {
 		pxa_init_gpio(2, 120);
diff --git a/arch/arm/mach-pxa/sleep.S b/arch/arm/mach-pxa/sleep.S
index 7145f7c..1c67815 100644
--- a/arch/arm/mach-pxa/sleep.S
+++ b/arch/arm/mach-pxa/sleep.S
@@ -21,7 +21,7 @@
 #define UNCACHED_PHYS_0	0
 		.text
 
-#ifdef CONFIG_ARCH_PXA27X
+#if (defined CONFIG_ARCH_PXA27X || defined CONFIG_ARCH_PXA25X)
 /*
  * pxa27x_finish_suspend()
  *
diff --git a/arch/arm/mach-pxa/speed-pxa25x.c b/arch/arm/mach-pxa/speed-pxa25x.c
new file mode 100644
index 0000000..6914343
--- /dev/null
+++ b/arch/arm/mach-pxa/speed-pxa25x.c
@@ -0,0 +1,54 @@
+/*
+ * clock.h - implementation of the PXA clock functions
+ *
+ * Copyright (C) 2014 Robert Jarzmik <robert.jarzmik@free.fr>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+#include <common.h>
+#include <mach/clock.h>
+#include <mach/pxa-regs.h>
+
+/* Crystal clock: 13MHz */
+#define BASE_CLK	13000000
+
+unsigned long pxa_get_uartclk(void)
+{
+	return 14857000;
+}
+
+unsigned long pxa_get_mmcclk(void)
+{
+	return 19500000;
+}
+
+/*
+ * Return the current LCD clock frequency in units of 10kHz as
+ */
+static unsigned int pxa_get_lcdclk_10khz(void)
+{
+	unsigned long ccsr;
+	unsigned int l, L, k, K;
+
+	ccsr = CCSR;
+
+	l = ccsr & 0x1f;
+	k = (l <= 7) ? 1 : (l <= 16) ? 2 : 4;
+
+	L = l * BASE_CLK;
+	K = L / k;
+
+	return (K / 10000);
+}
+
+unsigned long pxa_get_lcdclk(void)
+{
+	return pxa_get_lcdclk_10khz() * 10000;
+}
+
+unsigned long pxa_get_pwmclk(void)
+{
+	return BASE_CLK;
+}
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
