Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFUn6-0003QF-Dm
 for barebox@lists.infradead.org; Mon, 17 Feb 2014 20:27:52 +0000
Received: from tellur.localdomain (p57B5F67D.dip0.t-ipconnect.de
 [87.181.246.125]) by lynxeye.de (Postfix) with ESMTPA id 1428918B425F
 for <barebox@lists.infradead.org>; Mon, 17 Feb 2014 21:26:05 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 17 Feb 2014 21:27:39 +0100
Message-Id: <1392668861-10915-7-git-send-email-dev@lynxeye.de>
In-Reply-To: <1392668861-10915-1-git-send-email-dev@lynxeye.de>
References: <1392668861-10915-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 6/8] tegra: add lowlevel DVC
To: barebox@lists.infradead.org

Allows to talk to external PMIC devices to bring up CPU rail.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/lowlevel-dvc.h | 72 +++++++++++++++++++++++++
 arch/arm/mach-tegra/include/mach/lowlevel.h     |  7 ++-
 arch/arm/mach-tegra/include/mach/tegra20-car.h  |  8 +++
 3 files changed, 86 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-tegra/include/mach/lowlevel-dvc.h

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h b/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h
new file mode 100644
index 0000000..f7f6328
--- /dev/null
+++ b/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h
@@ -0,0 +1,72 @@
+/*
+ * Copyright (C) 2014 Lucas Stach <l.stach@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <linux/compiler.h>
+#include "mach/tegra20-car.h"
+#include "mach/lowlevel.h"
+
+static __always_inline
+void tegra_dvc_init(void)
+{
+	int div;
+	u32 reg;
+
+	/* reset DVC controller and enable clock */
+	writel(CRC_RST_DEV_H_DVC, TEGRA_CLK_RESET_BASE + CRC_RST_DEV_H_SET);
+	reg = readl(TEGRA_CLK_RESET_BASE + CRC_CLK_OUT_ENB_H);
+	reg |= CRC_CLK_OUT_ENB_H_DVC;
+	writel(reg, TEGRA_CLK_RESET_BASE + CRC_CLK_OUT_ENB_H);
+
+	/* set DVC I2C clock source to CLK_M and aim for 100kHz I2C clock */
+	div = ((tegra_get_osc_clock() * 3) >> 22) - 1;
+	writel((div) | (3 << 30),
+	       TEGRA_CLK_RESET_BASE + CRC_CLK_SOURCE_DVC);
+
+	/* clear DVC reset */
+	tegra_ll_delay_usec(3);
+	writel(CRC_RST_DEV_H_DVC, TEGRA_CLK_RESET_BASE + CRC_RST_DEV_H_CLR);
+}
+
+#define TEGRA_I2C_CNFG		0x00
+#define TEGRA_I2C_CMD_ADDR0	0x04
+#define TEGRA_I2C_CMD_DATA1	0x0c
+#define TEGRA_I2C_SEND_2_BYTES	0x0a02
+
+static __always_inline
+void tegra_dvc_write_addr(u32 addr, u32 config)
+{
+	writel(addr, TEGRA_DVC_BASE + TEGRA_I2C_CMD_ADDR0);
+	writel(config, TEGRA_DVC_BASE + TEGRA_I2C_CNFG);
+}
+
+static __always_inline
+void tegra_dvc_write_data(u32 data, u32 config)
+{
+	writel(data, TEGRA_DVC_BASE + TEGRA_I2C_CMD_DATA1);
+	writel(config, TEGRA_DVC_BASE + TEGRA_I2C_CNFG);
+}
+
+static inline __attribute__((always_inline))
+void tegra30_tps65911_cpu_rail_enable(void)
+{
+	tegra_dvc_write_addr(0x5a, 2);
+	/* reg 28, 600mV + (35-3) * 12,5mV = 1,0V */
+	tegra_dvc_write_data(0x2328, TEGRA_I2C_SEND_2_BYTES);
+	tegra_ll_delay_usec(1000);
+	/* reg 27, VDDctrl enable */
+	tegra_dvc_write_data(0x0127, TEGRA_I2C_SEND_2_BYTES);
+	tegra_ll_delay_usec(10 * 1000);
+}
diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index b39e30e..0fad195 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -1,5 +1,5 @@
 /*
- * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ * Copyright (C) 2013-2014 Lucas Stach <l.stach@pengutronix.de>
  *
  * This program is free software; you can redistribute it and/or modify it
  * under the terms and conditions of the GNU General Public License,
@@ -21,6 +21,9 @@
  * be used by both the main CPU complex (ARMv7) and the AVP (ARMv4).
  */
 
+#ifndef __TEGRA_LOWLEVEL_H
+#define __TEGRA_LOWLEVEL_H
+
 #include <linux/compiler.h>
 #include <sizes.h>
 #include <io.h>
@@ -251,3 +254,5 @@ void tegra_avp_reset_vector(uint32_t boarddata);
 
 /* reset vector for the main CPU complex */
 void tegra_maincomplex_entry(void);
+
+#endif /* __TEGRA_LOWLEVEL_H */
diff --git a/arch/arm/mach-tegra/include/mach/tegra20-car.h b/arch/arm/mach-tegra/include/mach/tegra20-car.h
index 64873d7..a5441de 100644
--- a/arch/arm/mach-tegra/include/mach/tegra20-car.h
+++ b/arch/arm/mach-tegra/include/mach/tegra20-car.h
@@ -46,6 +46,9 @@
 #define CRC_CLK_OUT_ENB_L_AC97		(1 << 3)
 #define CRC_CLK_OUT_ENB_L_CPU		(1 << 0)
 
+#define CRC_CLK_OUT_ENB_H		0x014
+#define CRC_CLK_OUT_ENB_H_DVC		(1 << 15)
+
 #define CRC_CCLK_BURST_POLICY		0x020
 #define CRC_CCLK_BURST_POLICY_SYS_STATE_SHIFT	28
 #define CRC_CCLK_BURST_POLICY_SYS_STATE_FIQ	8
@@ -273,6 +276,11 @@
 
 #define CRC_RST_DEV_L_CLR		0x304
 
+#define CRC_RST_DEV_H_SET		0x308
+#define CRC_RST_DEV_H_DVC		(1 << 15)
+
+#define CRC_RST_DEV_H_CLR		0x30c
+
 #define CRC_RST_CPU_CMPLX_SET		0x340
 
 #define CRC_RST_CPU_CMPLX_CLR		0x344
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
