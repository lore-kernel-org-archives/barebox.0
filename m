Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RqVQK-0000e7-IH
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 19:55:58 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 26 Jan 2012 20:55:28 +0100
Message-Id: <1327607728-2788-5-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1327607728-2788-1-git-send-email-robert.jarzmik@free.fr>
References: <1327607728-2788-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] arm/mach-pxa: add pulse width modulator controller
To: barebox@lists.infradead.org

Add PXA embedded pulse width modulator support. The PWM can
generate signals from 49.6kHz to 1.625MHz.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/mach-pxa/Makefile                |    2 +
 arch/arm/mach-pxa/include/mach/clock.h    |    1 +
 arch/arm/mach-pxa/include/mach/pwm.h      |   23 ++++++++
 arch/arm/mach-pxa/include/mach/regs-pwm.h |   20 +++++++
 arch/arm/mach-pxa/pwm.c                   |   80 +++++++++++++++++++++++++++++
 arch/arm/mach-pxa/speed-pxa27x.c          |    5 ++
 6 files changed, 131 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-pxa/include/mach/pwm.h
 create mode 100644 arch/arm/mach-pxa/include/mach/regs-pwm.h
 create mode 100644 arch/arm/mach-pxa/pwm.c

diff --git a/arch/arm/mach-pxa/Makefile b/arch/arm/mach-pxa/Makefile
index c01a9e0..461b2fe 100644
--- a/arch/arm/mach-pxa/Makefile
+++ b/arch/arm/mach-pxa/Makefile
@@ -1,6 +1,8 @@
 obj-y += clocksource.o
 obj-y += common.o
 obj-y += gpio.o
+obj-y += devices.o
+obj-y += pwm.o
 
 obj-$(CONFIG_ARCH_PXA2XX) += mfp-pxa2xx.o
 obj-$(CONFIG_ARCH_PXA27X) += speed-pxa27x.o
diff --git a/arch/arm/mach-pxa/include/mach/clock.h b/arch/arm/mach-pxa/include/mach/clock.h
index c53432f..f86152f 100644
--- a/arch/arm/mach-pxa/include/mach/clock.h
+++ b/arch/arm/mach-pxa/include/mach/clock.h
@@ -14,5 +14,6 @@
 unsigned long pxa_get_uartclk(void);
 unsigned long pxa_get_mmcclk(void);
 unsigned long pxa_get_lcdclk(void);
+unsigned long pxa_get_pwmclk(void);
 
 #endif	/* !__MACH_CLOCK_H */
diff --git a/arch/arm/mach-pxa/include/mach/pwm.h b/arch/arm/mach-pxa/include/mach/pwm.h
new file mode 100644
index 0000000..03c4f04
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/pwm.h
@@ -0,0 +1,23 @@
+/*
+ * (C) 2011 Robert Jarzmik <robert.jarzmik@free.fr>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <mach/regs-pwm.h>
+
+int pwm_config(void __iomem *iobase, int duty_ns, int period_ns);
+int pwm_enable(void __iomem *iobase);
+void pwm_disable(void __iomem *iobase);
diff --git a/arch/arm/mach-pxa/include/mach/regs-pwm.h b/arch/arm/mach-pxa/include/mach/regs-pwm.h
new file mode 100644
index 0000000..cef6dcd
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/regs-pwm.h
@@ -0,0 +1,20 @@
+/*
+ *
+ *  This program is free software; you can redistribute it and/or modify
+ *  it under the terms of the GNU General Public License version 2 as
+ *  published by the Free Software Foundation.
+ */
+#ifndef __ASM_MACH_REGS_PWM_H
+#define __ASM_MACH_REGS_PWM_H
+
+#include <mach/hardware.h>
+
+/*
+ * Pulse modulator registers
+ */
+#define PWM0		0x40B00000
+#define PWM1		0x40C00000
+#define PWM2		0x40B00010
+#define PWM3		0x40C00010
+
+#endif
diff --git a/arch/arm/mach-pxa/pwm.c b/arch/arm/mach-pxa/pwm.c
new file mode 100644
index 0000000..3750e35
--- /dev/null
+++ b/arch/arm/mach-pxa/pwm.c
@@ -0,0 +1,80 @@
+/*
+ * simple driver for PWM (Pulse Width Modulator) controller
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * 2008-02-13	initial version
+ * 		eric miao <eric.miao@marvell.com>
+ * 2012         Robert Jarzmik <robert.jarzmik@free.fr>
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <io.h>
+
+#include <mach/clock.h>
+#include <mach/pxa-regs.h>
+#include <asm-generic/div64.h>
+#include <linux/compiler.h>
+
+/* PWM registers and bits definitions */
+#define PWMCR		(0x00)
+#define PWMDCR		(0x04)
+#define PWMPCR		(0x08)
+
+#define PWMCR_SD	(1 << 6)
+#define PWMDCR_FD	(1 << 10)
+
+/*
+ * period_ns    = 10^9 * (PRESCALE + 1) * (PV + 1) / PWM_CLK_RATE
+ * duty_ns      = 10^9 * (PRESCALE + 1) * DC / PWM_CLK_RATE
+ * PWM_CLK_RATE = 13 MHz
+ */
+int pwm_config(void __iomem *iobase, int duty_ns, int period_ns)
+{
+	unsigned long long c;
+	unsigned long period_cycles, prescale, pv, dc;
+
+	if (iobase == NULL || period_ns == 0 || duty_ns > period_ns)
+		return -EINVAL;
+
+	c = pxa_get_pwmclk();
+	c = c * period_ns;
+	do_div(c, 1000000000);
+	period_cycles = c;
+
+	if (period_cycles < 1)
+		period_cycles = 1;
+	prescale = (period_cycles - 1) / 1024;
+	pv = period_cycles / (prescale + 1) - 1;
+
+	if (prescale > 63)
+		return -EINVAL;
+
+	if (duty_ns == period_ns)
+		dc = PWMDCR_FD;
+	else
+		dc = (pv + 1) * duty_ns / period_ns;
+
+	/* NOTE: the clock to PWM has to be enabled first
+	 * before writing to the registers
+	 */
+	__raw_writel(prescale, iobase + PWMCR);
+	__raw_writel(dc, iobase + PWMDCR);
+	__raw_writel(pv, iobase + PWMPCR);
+
+	return 0;
+}
+
+int pwm_enable(void __iomem *iobase)
+{
+	CKEN |= CKEN_PWM1 | CKEN_PWM0;
+	return 0;
+}
+
+void pwm_disable(void __iomem *iobase)
+{
+	CKEN &= ~CKEN_PWM1 & ~CKEN_PWM0;
+}
diff --git a/arch/arm/mach-pxa/speed-pxa27x.c b/arch/arm/mach-pxa/speed-pxa27x.c
index 534eb1d..1de034c 100644
--- a/arch/arm/mach-pxa/speed-pxa27x.c
+++ b/arch/arm/mach-pxa/speed-pxa27x.c
@@ -47,3 +47,8 @@ unsigned long pxa_get_lcdclk(void)
 {
 	return pxa_get_lcdclk_10khz() * 10000;
 }
+
+unsigned long pxa_get_pwmclk(void)
+{
+	return BASE_CLK;
+}
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
