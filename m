Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ry600-00008j-81
 for barebox@lists.infradead.org; Thu, 16 Feb 2012 18:24:13 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 16 Feb 2012 19:23:47 +0100
Message-Id: <1329416628-19781-2-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1329416628-19781-1-git-send-email-robert.jarzmik@free.fr>
References: <20120216074031.GG3852@pengutronix.de>
 <1329416628-19781-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH V3 2/3] drivers/pwm: add PXA pulse width modulator controller
To: barebox@lists.infradead.org

Add PXA embedded pulse width modulator support. The PWM can
generate signals from 49.6kHz to 1.625MHz.
The driver is for pxa2xx family. The pxa3xx was not handled yet.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/mach-pxa/Makefile                |    1 +
 arch/arm/mach-pxa/devices.c               |    5 +
 arch/arm/mach-pxa/include/mach/clock.h    |    1 +
 arch/arm/mach-pxa/include/mach/devices.h  |    2 +-
 arch/arm/mach-pxa/include/mach/regs-pwm.h |   20 ++++
 arch/arm/mach-pxa/speed-pxa27x.c          |    5 +
 drivers/pwm/Kconfig                       |    6 +
 drivers/pwm/Makefile                      |    1 +
 drivers/pwm/pxa_pwm.c                     |  157 +++++++++++++++++++++++++++++
 9 files changed, 197 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/mach-pxa/include/mach/regs-pwm.h
 create mode 100644 drivers/pwm/pxa_pwm.c

diff --git a/arch/arm/mach-pxa/Makefile b/arch/arm/mach-pxa/Makefile
index c01a9e0..6a02a54 100644
--- a/arch/arm/mach-pxa/Makefile
+++ b/arch/arm/mach-pxa/Makefile
@@ -1,6 +1,7 @@
 obj-y += clocksource.o
 obj-y += common.o
 obj-y += gpio.o
+obj-y += devices.o
 
 obj-$(CONFIG_ARCH_PXA2XX) += mfp-pxa2xx.o
 obj-$(CONFIG_ARCH_PXA27X) += speed-pxa27x.o
diff --git a/arch/arm/mach-pxa/devices.c b/arch/arm/mach-pxa/devices.c
index 1a396f1..b6ac0ba 100644
--- a/arch/arm/mach-pxa/devices.c
+++ b/arch/arm/mach-pxa/devices.c
@@ -47,3 +47,8 @@ struct device_d *pxa_add_mmc(void *base, int id, void *pdata)
 {
 	return pxa_add_device("pxa-mmc", id, base, 0x1000, pdata);
 }
+
+struct device_d *pxa_add_pwm(void *base, int id)
+{
+	return pxa_add_device("pxa_pwm", id, base, 0x10, NULL);
+}
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
diff --git a/arch/arm/mach-pxa/include/mach/devices.h b/arch/arm/mach-pxa/include/mach/devices.h
index e205b7c..8390153 100644
--- a/arch/arm/mach-pxa/include/mach/devices.h
+++ b/arch/arm/mach-pxa/include/mach/devices.h
@@ -23,4 +23,4 @@ struct device_d *pxa_add_i2c(void *base, int id,
 struct device_d *pxa_add_uart(void *base, int id);
 struct device_d *pxa_add_fb(void *base, struct pxafb_platform_data *pdata);
 struct device_d *pxa_add_mmc(void *base, int id, void *pdata);
-
+struct device_d *pxa_add_pwm(void *base, int id);
diff --git a/arch/arm/mach-pxa/include/mach/regs-pwm.h b/arch/arm/mach-pxa/include/mach/regs-pwm.h
new file mode 100644
index 0000000..9fdcbb6
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
+#define PWM0slave	0x40B00010
+#define PWM1slave	0x40C00010
+
+#endif
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
diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index 93c1052..50c956a 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -8,5 +8,11 @@ menuconfig PWM
 	  If unsure, say N.
 
 if PWM
+config PWM_PXA
+	bool "PXA PWM Support"
+	default y if ARCH_PXA2XX
+	help
+	  This enables PWM support for Intel/Marvell PXA chips, such
+	  as the PXA25x, PXA27x.
 
 endif
diff --git a/drivers/pwm/Makefile b/drivers/pwm/Makefile
index 3469c3d..c886bd5 100644
--- a/drivers/pwm/Makefile
+++ b/drivers/pwm/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_PWM)		+= core.o
+obj-$(CONFIG_PWM_PXA)		+= pxa_pwm.o
\ No newline at end of file
diff --git a/drivers/pwm/pxa_pwm.c b/drivers/pwm/pxa_pwm.c
new file mode 100644
index 0000000..cf1f96a
--- /dev/null
+++ b/drivers/pwm/pxa_pwm.c
@@ -0,0 +1,157 @@
+/*
+ * simple driver for PWM (Pulse Width Modulator) controller
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * 2008-02-13	initial version eric miao <eric.miao@marvell.com>
+ * 2012         Robert Jarzmik <robert.jarzmik@free.fr>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <errno.h>
+#include <io.h>
+#include <pwm.h>
+
+#include <mach/hardware.h>
+#include <mach/clock.h>
+#include <mach/pxa-regs.h>
+#include <mach/regs-pwm.h>
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
+struct pxa_pwm_chip {
+	struct pwm_chip chip;
+	void __iomem *iobase;
+	int id;
+	int duty_ns;
+	int period_ns;
+};
+
+static struct pxa_pwm_chip *to_pxa_pwm_chip(struct pwm_chip *chip)
+{
+	return container_of(chip, struct pxa_pwm_chip, chip);
+}
+
+/*
+ * period_ns    = 10^9 * (PRESCALE + 1) * (PV + 1) / PWM_CLK_RATE
+ * duty_ns      = 10^9 * (PRESCALE + 1) * DC / PWM_CLK_RATE
+ * PWM_CLK_RATE = 13 MHz
+ */
+static int pxa_pwm_config(struct pwm_chip *chip, int duty_ns, int period_ns)
+{
+	unsigned long long c;
+	unsigned long period_cycles, prescale, pv, dc;
+	struct pxa_pwm_chip *pxa_pwm = to_pxa_pwm_chip(chip);
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
+	pxa_pwm->duty_ns = duty_ns;
+	pxa_pwm->period_ns = period_ns;
+
+	/* NOTE: the clock to PWM has to be enabled first
+	 * before writing to the registers
+	 */
+	__raw_writel(prescale, pxa_pwm->iobase + PWMCR);
+	__raw_writel(dc, pxa_pwm->iobase + PWMDCR);
+	__raw_writel(pv, pxa_pwm->iobase + PWMPCR);
+
+	return 0;
+}
+
+static int pxa_pwm_enable(struct pwm_chip *chip)
+{
+	struct pxa_pwm_chip *pxa_pwm = to_pxa_pwm_chip(chip);
+
+	switch (pxa_pwm->id) {
+	case 0:
+	case 2:
+		CKEN |= CKEN_PWM0;
+		break;
+	case 1:
+	case 3:
+		CKEN |= CKEN_PWM1;
+		break;
+	default:
+		return -EINVAL;
+	}
+	return 0;
+}
+
+static void pxa_pwm_disable(struct pwm_chip *chip)
+{
+	struct pxa_pwm_chip *pxa_pwm = to_pxa_pwm_chip(chip);
+
+	switch (pxa_pwm->id) {
+	case 0:
+	case 2:
+		CKEN &= ~CKEN_PWM0;
+		break;
+	case 1:
+	case 3:
+		CKEN &= ~CKEN_PWM1;
+		break;
+	default:
+		break;
+	}
+}
+
+static struct pwm_ops pxa_pwm_ops = {
+	.config = pxa_pwm_config,
+	.enable = pxa_pwm_enable,
+	.disable = pxa_pwm_disable,
+};
+
+static int pxa_pwm_probe(struct device_d *dev)
+{
+	struct pxa_pwm_chip *chip;
+
+	chip = xzalloc(sizeof(*chip));
+	chip->chip.devname = asprintf("%s", dev_name(dev));
+	chip->chip.ops = &pxa_pwm_ops;
+	chip->iobase = dev_request_mem_region(dev, 0);
+	chip->id = dev->id;
+	dev->priv = chip;
+
+	return pwmchip_add(&chip->chip, dev);
+}
+
+static struct driver_d pxa_pwm_driver = {
+	.name  = "pxa_pwm",
+	.probe = pxa_pwm_probe,
+};
+
+static int __init pxa_pwm_init_driver(void)
+{
+	CKEN &= ~CKEN_PWM0 & ~CKEN_PWM1;
+	register_driver(&pxa_pwm_driver);
+	return 0;
+}
+
+device_initcall(pxa_pwm_init_driver);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
