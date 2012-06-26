Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjSRM-0007nT-Ir
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 09:52:15 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 26 Jun 2012 11:51:49 +0200
Message-Id: <1340704314-12593-8-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
References: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 07/12] mach-davinci: add support for AEMIF (NAND flash)
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-davinci/Makefile             |    1 +
 arch/arm/mach-davinci/aemif.c              |  128 ++++++++++++++++++++++++++++
 arch/arm/mach-davinci/include/mach/aemif.h |   36 ++++++++
 3 files changed, 165 insertions(+)
 create mode 100644 arch/arm/mach-davinci/aemif.c
 create mode 100644 arch/arm/mach-davinci/include/mach/aemif.h

diff --git a/arch/arm/mach-davinci/Makefile b/arch/arm/mach-davinci/Makefile
index 0df1e92..2c35ca0 100644
--- a/arch/arm/mach-davinci/Makefile
+++ b/arch/arm/mach-davinci/Makefile
@@ -1,3 +1,4 @@
+obj-y += aemif.o
 obj-y += clock.o
 obj-y += clocksource.o
 obj-y += da850.o
diff --git a/arch/arm/mach-davinci/aemif.c b/arch/arm/mach-davinci/aemif.c
new file mode 100644
index 0000000..1468899
--- /dev/null
+++ b/arch/arm/mach-davinci/aemif.c
@@ -0,0 +1,128 @@
+/*
+ * AEMIF support for DaVinci SoCs
+ *
+ * Copyright (C) 2010 Texas Instruments Incorporated. http://www.ti.com/
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <io.h>
+
+#include <mach/hardware.h>
+#include <mach/aemif.h>
+
+#define NSEC_PER_MSEC	(1000*1000)
+
+/* Timing value configuration */
+
+#define TA(x)		((x) << 2)
+#define RHOLD(x)	((x) << 4)
+#define RSTROBE(x)	((x) << 7)
+#define RSETUP(x)	((x) << 13)
+#define WHOLD(x)	((x) << 17)
+#define WSTROBE(x)	((x) << 20)
+#define WSETUP(x)	((x) << 26)
+
+#define TA_MAX		0x3
+#define RHOLD_MAX	0x7
+#define RSTROBE_MAX	0x3f
+#define RSETUP_MAX	0xf
+#define WHOLD_MAX	0x7
+#define WSTROBE_MAX	0x3f
+#define WSETUP_MAX	0xf
+
+#define TIMING_MASK	(TA(TA_MAX) | \
+				RHOLD(RHOLD_MAX) | \
+				RSTROBE(RSTROBE_MAX) |	\
+				RSETUP(RSETUP_MAX) | \
+				WHOLD(WHOLD_MAX) | \
+				WSTROBE(WSTROBE_MAX) | \
+				WSETUP(WSETUP_MAX))
+
+/*
+ * aemif_calc_rate - calculate timing data.
+ * @wanted: The cycle time needed in nanoseconds.
+ * @clk: The input clock rate in kHz.
+ * @max: The maximum divider value that can be programmed.
+ *
+ * On success, returns the calculated timing value minus 1 for easy
+ * programming into AEMIF timing registers, else negative errno.
+ */
+static int aemif_calc_rate(int wanted, unsigned long clk, int max)
+{
+	int result;
+
+	result = DIV_ROUND_UP((wanted * clk), NSEC_PER_MSEC) - 1;
+
+	pr_debug("%s: result %d from %ld, %d\n", __func__, result, clk, wanted);
+
+	/* It is generally OK to have a more relaxed timing than requested... */
+	if (result < 0)
+		result = 0;
+
+	/* ... But configuring tighter timings is not an option. */
+	else if (result > max)
+		result = -EINVAL;
+
+	return result;
+}
+
+/**
+ * davinci_aemif_setup_timing - setup timing values for a given AEMIF interface
+ * @t: timing values to be progammed
+ * @base: The virtual base address of the AEMIF interface
+ * @cs: chip-select to program the timing values for
+ *
+ * This function programs the given timing values (in real clock) into the
+ * AEMIF registers taking the AEMIF clock into account.
+ *
+ * This function does not use any locking while programming the AEMIF
+ * because it is expected that there is only one user of a given
+ * chip-select.
+ *
+ * Returns 0 on success, else negative errno.
+ */
+int davinci_aemif_setup_timing(struct davinci_aemif_timing *t,
+					void __iomem *base, unsigned cs)
+{
+	unsigned set, val;
+	int ta, rhold, rstrobe, rsetup, whold, wstrobe, wsetup;
+	unsigned offset = A1CR_OFFSET + cs * 4;
+	unsigned long clkrate;
+
+	if (!t)
+		return 0;	/* Nothing to do */
+
+	clkrate = da8xx_clk_get(DAVINCI_EMIFA_CLKID);
+
+	clkrate /= 1000;	/* turn clock into kHz for ease of use */
+
+	ta	= aemif_calc_rate(t->ta, clkrate, TA_MAX);
+	rhold	= aemif_calc_rate(t->rhold, clkrate, RHOLD_MAX);
+	rstrobe	= aemif_calc_rate(t->rstrobe, clkrate, RSTROBE_MAX);
+	rsetup	= aemif_calc_rate(t->rsetup, clkrate, RSETUP_MAX);
+	whold	= aemif_calc_rate(t->whold, clkrate, WHOLD_MAX);
+	wstrobe	= aemif_calc_rate(t->wstrobe, clkrate, WSTROBE_MAX);
+	wsetup	= aemif_calc_rate(t->wsetup, clkrate, WSETUP_MAX);
+
+	if (ta < 0 || rhold < 0 || rstrobe < 0 || rsetup < 0 ||
+			whold < 0 || wstrobe < 0 || wsetup < 0) {
+		pr_err("%s: cannot get suitable timings\n", __func__);
+		return -EINVAL;
+	}
+
+	set = TA(ta) | RHOLD(rhold) | RSTROBE(rstrobe) | RSETUP(rsetup) |
+		WHOLD(whold) | WSTROBE(wstrobe) | WSETUP(wsetup);
+
+	val = readl(base + offset);
+	val &= ~TIMING_MASK;
+	val |= set;
+	writel(val, base + offset);
+
+	return 0;
+}
+EXPORT_SYMBOL(davinci_aemif_setup_timing);
diff --git a/arch/arm/mach-davinci/include/mach/aemif.h b/arch/arm/mach-davinci/include/mach/aemif.h
new file mode 100644
index 0000000..05b2934
--- /dev/null
+++ b/arch/arm/mach-davinci/include/mach/aemif.h
@@ -0,0 +1,36 @@
+/*
+ * TI DaVinci AEMIF support
+ *
+ * Copyright 2010 (C) Texas Instruments, Inc. http://www.ti.com/
+ *
+ * This file is licensed under the terms of the GNU General Public License
+ * version 2. This program is licensed "as is" without any warranty of any
+ * kind, whether express or implied.
+ */
+#ifndef _MACH_DAVINCI_AEMIF_H
+#define _MACH_DAVINCI_AEMIF_H
+
+#define NRCSR_OFFSET		0x00
+#define AWCCR_OFFSET		0x04
+#define A1CR_OFFSET		0x10
+
+#define ACR_ASIZE_MASK		0x3
+#define ACR_EW_MASK		BIT(30)
+#define ACR_SS_MASK		BIT(31)
+
+/* All timings in nanoseconds */
+struct davinci_aemif_timing {
+	u8	wsetup;
+	u8	wstrobe;
+	u8	whold;
+
+	u8	rsetup;
+	u8	rstrobe;
+	u8	rhold;
+
+	u8	ta;
+};
+
+int davinci_aemif_setup_timing(struct davinci_aemif_timing *t,
+					void __iomem *base, unsigned cs);
+#endif
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
