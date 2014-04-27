Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x233.google.com ([2a00:1450:4013:c00::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WeLQt-0007sF-8D
 for barebox@lists.infradead.org; Sun, 27 Apr 2014 09:31:36 +0000
Received: by mail-ee0-f51.google.com with SMTP id c13so3955761eek.10
 for <barebox@lists.infradead.org>; Sun, 27 Apr 2014 02:31:13 -0700 (PDT)
From: Beniamino Galvani <b.galvani@gmail.com>
Date: Sun, 27 Apr 2014 11:30:37 +0200
Message-Id: <1398591044-3616-5-git-send-email-b.galvani@gmail.com>
In-Reply-To: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
References: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
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
Subject: [PATCH 04/11] ARM: rockchip: add PLL initialization function
To: barebox@lists.infradead.org


Signed-off-by: Beniamino Galvani <b.galvani@gmail.com>
---
 arch/arm/mach-rockchip/Makefile                    |    1 +
 arch/arm/mach-rockchip/include/mach/rockchip-pll.h |   26 +++++
 arch/arm/mach-rockchip/pll.c                       |  102 ++++++++++++++++++++
 3 files changed, 129 insertions(+)
 create mode 100644 arch/arm/mach-rockchip/include/mach/rockchip-pll.h
 create mode 100644 arch/arm/mach-rockchip/pll.c

diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
index 820eb10..6f4ec16 100644
--- a/arch/arm/mach-rockchip/Makefile
+++ b/arch/arm/mach-rockchip/Makefile
@@ -1 +1,2 @@
 obj-y += core.o
+obj-y += pll.o
\ No newline at end of file
diff --git a/arch/arm/mach-rockchip/include/mach/rockchip-pll.h b/arch/arm/mach-rockchip/include/mach/rockchip-pll.h
new file mode 100644
index 0000000..c2cd888
--- /dev/null
+++ b/arch/arm/mach-rockchip/include/mach/rockchip-pll.h
@@ -0,0 +1,26 @@
+/*
+ * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __MACH_ROCKCHIP_PLL_H
+#define __MACH_ROCKCHIP_PLL_H
+
+enum rk3188_plls {
+	RK3188_APLL = 0,	/* ARM */
+	RK3188_DPLL,		/* DDR */
+	RK3188_CPLL,		/* Codec */
+	RK3188_GPLL,		/* General */
+};
+
+int rk3188_pll_set_parameters(int pll, int nr, int nf, int no);
+
+#endif /* __MACH_ROCKCHIP_PLL_H */
diff --git a/arch/arm/mach-rockchip/pll.c b/arch/arm/mach-rockchip/pll.c
new file mode 100644
index 0000000..fce192c
--- /dev/null
+++ b/arch/arm/mach-rockchip/pll.c
@@ -0,0 +1,102 @@
+/*
+ * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
+ *
+ * Based on Linux clk driver:
+ *  Copyright (c) 2014 MundoReader S.L.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <asm/io.h>
+#include <common.h>
+#include <mach/rockchip-regs.h>
+
+#define RK3188_CLK_BASE		0x20000000
+#define RK3188_PLL_LOCK_REG	0x200080ac
+
+#define PLL_MODE_MASK		0x3
+#define PLL_MODE_SLOW		0x0
+#define PLL_MODE_NORM		0x1
+#define PLL_MODE_DEEP		0x2
+
+#define PLL_RESET_DELAY(nr)	((nr * 500) / 24 + 1)
+
+#define PLLCON0_OD_MASK		0xf
+#define PLLCON0_OD_SHIFT	0
+#define PLLCON0_NR_MASK		0x3f
+#define PLLCON0_NR_SHIFT	8
+
+#define PLLCON1_NF_MASK		0x1fff
+#define PLLCON1_NF_SHIFT	0
+
+#define PLLCON2_BWADJ_MASK	0xfff
+#define PLLCON2_BWADJ_SHIFT	0
+
+#define PLLCON3_RESET		(1 << 1)
+#define PLLCON3_BYPASS		(1 << 0)
+
+struct rockchip_pll_data {
+	int con_base;
+	int mode_offset;
+	int mode_shift;
+	int lock_shift;
+};
+
+struct rockchip_pll_data rk3188_plls[] = {
+	{ 0x00, 0x40, 0x00, 0x06 },
+	{ 0x10, 0x40, 0x04, 0x05 },
+	{ 0x20, 0x40, 0x08, 0x07 },
+	{ 0x30, 0x40, 0x0c, 0x08 },
+};
+
+#define HIWORD_UPDATE(val, mask, shift) \
+	((val) << (shift) | (mask) << ((shift) + 16))
+
+int rk3188_pll_set_parameters(int pll, int nr, int nf, int no)
+{
+	struct rockchip_pll_data *d = &rk3188_plls[pll];
+	int delay = 0;
+
+	debug("rk3188 pll %d: set param %d %d %d\n", pll, nr, nf, no);
+
+	/* pull pll in slow mode */
+	writel(HIWORD_UPDATE(PLL_MODE_SLOW, PLL_MODE_MASK, d->mode_shift),
+	       RK3188_CLK_BASE + d->mode_offset);
+	/* enter reset */
+	writel(HIWORD_UPDATE(PLLCON3_RESET, PLLCON3_RESET, 0),
+	       RK3188_CLK_BASE + d->con_base + 12);
+
+	/* update pll values */
+	writel(HIWORD_UPDATE(nr - 1, PLLCON0_NR_MASK, PLLCON0_NR_SHIFT) |
+	       HIWORD_UPDATE(no - 1, PLLCON0_OD_MASK, PLLCON0_OD_SHIFT),
+	       RK3188_CLK_BASE + d->con_base + 0);
+	writel(HIWORD_UPDATE(nf - 1, PLLCON1_NF_MASK, PLLCON1_NF_SHIFT),
+	       RK3188_CLK_BASE + d->con_base + 4);
+	writel(HIWORD_UPDATE(nf >> 1, PLLCON2_BWADJ_MASK, PLLCON2_BWADJ_SHIFT),
+	       RK3188_CLK_BASE + d->con_base + 8);
+
+	/* leave reset and wait the reset_delay */
+	writel(HIWORD_UPDATE(0, PLLCON3_RESET, 0),
+	       RK3188_CLK_BASE + d->con_base + 12);
+	udelay(PLL_RESET_DELAY(nr));
+
+	/* wait for the pll to lock */
+	while (delay++ < 24000000) {
+		if (readl(RK3188_PLL_LOCK_REG) & BIT(d->lock_shift))
+			break;
+	}
+
+	/* go back to normal mode */
+	writel(HIWORD_UPDATE(PLL_MODE_NORM, PLL_MODE_MASK, d->mode_shift),
+	       RK3188_CLK_BASE + d->mode_offset);
+
+	return 0;
+}
+EXPORT_SYMBOL(rk3188_pll_set_parameters);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
