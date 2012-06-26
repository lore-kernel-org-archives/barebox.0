Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjSRL-0007nK-VW
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 09:52:11 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 26 Jun 2012 11:51:45 +0200
Message-Id: <1340704314-12593-4-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 03/12] mach-davinci: add pin mux support
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-davinci/Makefile           |    1 +
 arch/arm/mach-davinci/include/mach/mux.h |   74 ++++++++++++++++++++++++++++
 arch/arm/mach-davinci/mux.c              |   78 ++++++++++++++++++++++++++++++
 3 files changed, 153 insertions(+)
 create mode 100644 arch/arm/mach-davinci/include/mach/mux.h
 create mode 100644 arch/arm/mach-davinci/mux.c

diff --git a/arch/arm/mach-davinci/Makefile b/arch/arm/mach-davinci/Makefile
index 0a4e2dc..936566e 100644
--- a/arch/arm/mach-davinci/Makefile
+++ b/arch/arm/mach-davinci/Makefile
@@ -1,3 +1,4 @@
 obj-y += clock.o
 obj-y += clocksource.o
 obj-y += gpio.o
+obj-y += mux.o
diff --git a/arch/arm/mach-davinci/include/mach/mux.h b/arch/arm/mach-davinci/include/mach/mux.h
new file mode 100644
index 0000000..c73a5c0
--- /dev/null
+++ b/arch/arm/mach-davinci/include/mach/mux.h
@@ -0,0 +1,74 @@
+/*
+ * Table of the DAVINCI register configurations for the PINMUX combinations
+ *
+ * Author: Vladimir Barinov, MontaVista Software, Inc. <source@mvista.com>
+ *
+ * Based on linux/include/asm-arm/arch-omap/mux.h:
+ * Copyright (C) 2003 - 2005 Nokia Corporation
+ *
+ * Written by Tony Lindgren
+ *
+ * 2007 (c) MontaVista Software, Inc. This file is licensed under
+ * the terms of the GNU General Public License version 2. This program
+ * is licensed "as is" without any warranty of any kind, whether express
+ * or implied.
+ *
+ * Copyright (C) 2008 Texas Instruments.
+ */
+
+#ifndef __INC_MACH_MUX_H
+#define __INC_MACH_MUX_H
+
+struct mux_config {
+	const char *name;
+	const char *mux_reg_name;
+	const unsigned char mux_reg;
+	const unsigned char mask_offset;
+	const unsigned char mask;
+	const unsigned char mode;
+	int debug;
+};
+
+#define PINMUX(x)		(4 * (x))
+
+#define MUX_CFG(soc, desc, muxreg, mode_offset, mode_mask, mux_mode, dbg)\
+		{							\
+			.name = #desc,					\
+			.debug = dbg,					\
+			.mux_reg_name = "PINMUX"#muxreg,		\
+			.mux_reg = PINMUX(muxreg),			\
+			.mask_offset = mode_offset,			\
+			.mask = mode_mask,				\
+			.mode = mux_mode,				\
+		},
+
+#define INT_CFG(soc, desc, mode_offset, mode_mask, mux_mode, dbg)	\
+		{							\
+			.name = #desc,					\
+			.debug = dbg,					\
+			.mux_reg_name = "INTMUX",			\
+			.mux_reg = INTMUX,				\
+			.mask_offset = mode_offset,			\
+			.mask = mode_mask,				\
+			.mode = mux_mode,				\
+		},
+
+#define EVT_CFG(soc, desc, mode_offset, mode_mask, mux_mode, dbg)	\
+		{							\
+			.name = #desc,					\
+			.debug = dbg,					\
+			.mux_reg_name = "EVTMUX",			\
+			.mux_reg = EVTMUX,				\
+			.mask_offset = mode_offset,			\
+			.mask = mode_mask,				\
+			.mode = mux_mode,				\
+		},
+
+#define END_CFG()\
+		{							\
+			.name = NULL,					\
+		},
+
+extern int davinci_cfg_reg_list(const struct mux_config pins[]);
+
+#endif /* __INC_MACH_MUX_H */
diff --git a/arch/arm/mach-davinci/mux.c b/arch/arm/mach-davinci/mux.c
new file mode 100644
index 0000000..40e12f5
--- /dev/null
+++ b/arch/arm/mach-davinci/mux.c
@@ -0,0 +1,78 @@
+/*
+ * Utility to set the DAVINCI MUX register from a table in mux.h
+ *
+ * Author: Vladimir Barinov, MontaVista Software, Inc. <source@mvista.com>
+ *
+ * Based on linux/arch/arm/plat-omap/mux.c:
+ * Copyright (C) 2003 - 2005 Nokia Corporation
+ *
+ * Written by Tony Lindgren
+ *
+ * 2007 (c) MontaVista Software, Inc. This file is licensed under
+ * the terms of the GNU General Public License version 2. This program
+ * is licensed "as is" without any warranty of any kind, whether express
+ * or implied.
+ *
+ * Copyright (C) 2008 Texas Instruments.
+ */
+
+#include <config.h>
+#include <common.h>
+#include <errno.h>
+#include <io.h>
+
+#include <mach/da8xx.h>
+#include <mach/mux.h>
+
+static void *pinmux_base = (void*)DA8XX_SYSCFG0_BASE + 0x120;
+
+/*
+ * Sets the DAVINCI MUX register
+ */
+int davinci_cfg_reg(const struct mux_config *cfg)
+{
+	unsigned int reg_orig = 0, reg = 0;
+	unsigned int mask, warn = 0;
+
+	/* Update the mux register in question */
+	if (cfg->mask) {
+		unsigned	tmp1, tmp2;
+
+		reg_orig = readl(pinmux_base + cfg->mux_reg);
+
+		mask = (cfg->mask << cfg->mask_offset);
+		tmp1 = reg_orig & mask;
+		reg = reg_orig & ~mask;
+
+		tmp2 = (cfg->mode << cfg->mask_offset);
+		reg |= tmp2;
+
+		if (tmp1 != tmp2)
+			warn = 1;
+
+		writel(reg, pinmux_base + cfg->mux_reg);
+	}
+
+	if (warn) {
+#ifdef DEBUG
+		printk("MUX: setting register %s in %s (0x%08x) = 0x%08x -> 0x%08x\n", cfg->name,
+		       cfg->mux_reg_name, (unsigned int)pinmux_base + cfg->mux_reg, reg_orig, reg);
+#endif
+	}
+
+	return 0;
+}
+
+int davinci_cfg_reg_list(const struct mux_config pins[])
+{
+	int i, error = -EINVAL;
+
+	if (pins)
+		for (i = 0; pins[i].name != NULL; i++) {
+			error = davinci_cfg_reg(&pins[i]);
+			if (error)
+				break;
+		}
+
+	return error;
+}
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
