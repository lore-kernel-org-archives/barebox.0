Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFUn6-0003QG-Dj
 for barebox@lists.infradead.org; Mon, 17 Feb 2014 20:27:53 +0000
Received: from tellur.localdomain (p57B5F67D.dip0.t-ipconnect.de
 [87.181.246.125]) by lynxeye.de (Postfix) with ESMTPA id D778118B426D
 for <barebox@lists.infradead.org>; Mon, 17 Feb 2014 21:26:05 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 17 Feb 2014 21:27:41 +0100
Message-Id: <1392668861-10915-9-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 8/8] tegra: add Tegra3 startup
To: barebox@lists.infradead.org

Sets up MSELECT to let main CPUs talk to peripheral devices and starts
high performance A9 CPU cluster.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/tegra30-car.h  | 31 ++++++++++++++++++++
 arch/arm/mach-tegra/include/mach/tegra30-flow.h | 23 +++++++++++++++
 arch/arm/mach-tegra/tegra_avp_init.c            | 38 ++++++++++++++++++++++++-
 3 files changed, 91 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra30-car.h
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra30-flow.h

diff --git a/arch/arm/mach-tegra/include/mach/tegra30-car.h b/arch/arm/mach-tegra/include/mach/tegra30-car.h
new file mode 100644
index 0000000..ce11060
--- /dev/null
+++ b/arch/arm/mach-tegra/include/mach/tegra30-car.h
@@ -0,0 +1,31 @@
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
+/* Register definitions */
+#define CRC_CLK_OUT_ENB_V		0x360
+#define CRC_CLK_OUT_ENB_V_MSELECT	(1 << 3)
+
+#define CRC_CLK_SOURCE_MSEL		0x3b4
+#define CRC_CLK_SOURCE_MSEL_SRC_SHIFT	30
+#define CRC_CLK_SOURCE_MSEL_SRC_PLLP	0
+#define CRC_CLK_SOURCE_MSEL_SRC_PLLC	1
+#define CRC_CLK_SOURCE_MSEL_SRC_PLLM	2
+#define CRC_CLK_SOURCE_MSEL_SRC_CLKM	3
+
+#define CRC_RST_DEV_V_SET		0x430
+#define CRC_RST_DEV_V_MSELECT		(1 << 3)
+
+#define CRC_RST_DEV_V_CLR		0x434
diff --git a/arch/arm/mach-tegra/include/mach/tegra30-flow.h b/arch/arm/mach-tegra/include/mach/tegra30-flow.h
new file mode 100644
index 0000000..50a3030
--- /dev/null
+++ b/arch/arm/mach-tegra/include/mach/tegra30-flow.h
@@ -0,0 +1,23 @@
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
+#define FLOW_HALT_CPU_EVENTS		0x000
+#define FLOW_MODE_NONE			0
+#define FLOW_MODE_STOP			2
+
+#define FLOW_CLUSTER_CONTROL		0x02c
+#define FLOW_CLUSTER_CONTROL_ACTIVE_G	(0 << 0)
+#define FLOW_CLUSTER_CONTROL_ACTIVE_LP	(1 << 0)
diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index 4dd1330..3314db4 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -1,5 +1,5 @@
 /*
- * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ * Copyright (C) 2013-2014 Lucas Stach <l.stach@pengutronix.de>
  *
  * Partly based on code (C) Copyright 2010-2011
  * NVIDIA Corporation <www.nvidia.com>
@@ -23,6 +23,8 @@
 #include <mach/lowlevel.h>
 #include <mach/tegra20-car.h>
 #include <mach/tegra20-pmc.h>
+#include <mach/tegra30-car.h>
+#include <mach/tegra30-flow.h>
 
 /* instruct the PMIC to enable the CPU power rail */
 static void enable_maincomplex_powerrail(void)
@@ -84,6 +86,12 @@ static struct pll_config pllx_config_table[][4] = {
 		{1000, 12, 0, 12},	/* OSC 12.0 MHz */
 		{1000, 26, 0, 12},	/* OSC 26.0 MHz */
 	}, /* TEGRA 20 */
+	{
+		{862, 8,  0, 8},
+		{583, 8,  0, 4},
+		{700, 6,  0, 8},
+		{700, 13, 0, 8},
+	}, /* TEGRA 30 */
 };
 
 static void init_pllx(void)
@@ -152,6 +160,20 @@ static void start_cpu0_clocks(void)
 	writel(1 << CRC_CLK_SYSTEM_RATE_AHB_SHIFT,
 	       TEGRA_CLK_RESET_BASE + CRC_CLK_SYSTEM_RATE);
 
+	if (tegra_get_chiptype() >= TEGRA30) {
+		/* init MSELECT */
+		writel(CRC_RST_DEV_V_MSELECT,
+		       TEGRA_CLK_RESET_BASE + CRC_RST_DEV_V_SET);
+		writel((CRC_CLK_SOURCE_MSEL_SRC_PLLP <<
+		       CRC_CLK_SOURCE_MSEL_SRC_SHIFT) | 2,
+		       TEGRA_CLK_RESET_BASE + CRC_CLK_SOURCE_MSEL);
+		writel(CRC_CLK_OUT_ENB_V_MSELECT,
+		       TEGRA_CLK_RESET_BASE + CRC_CLK_OUT_ENB_V);
+		tegra_ll_delay_usec(3);
+		writel(CRC_RST_DEV_V_MSELECT,
+		       TEGRA_CLK_RESET_BASE + CRC_RST_DEV_V_CLR);
+	}
+
 	/* deassert clock stop for cpu 0 */
 	reg = readl(TEGRA_CLK_RESET_BASE + CRC_CLK_CPU_CMPLX);
 	reg &= ~CRC_CLK_CPU_CMPLX_CPU0_CLK_STP;
@@ -185,10 +207,24 @@ static void maincomplex_powerup(void)
 		tegra_ll_delay_usec(1000);
 	}
 }
+
+static void tegra_cluster_switch_hp(void)
+{
+	u32 reg;
+
+	reg = readl(TEGRA_FLOW_CTRL_BASE + FLOW_CLUSTER_CONTROL);
+	reg &= ~FLOW_CLUSTER_CONTROL_ACTIVE_LP;
+	writel(reg, TEGRA_FLOW_CTRL_BASE + FLOW_CLUSTER_CONTROL);
+}
+
 void tegra_avp_reset_vector(uint32_t boarddata)
 {
 	int num_cores;
 
+	/* we want to bring up the high performance CPU complex */
+	if (tegra_get_chiptype() == TEGRA30)
+		tegra_cluster_switch_hp();
+
 	/* get the number of cores in the main CPU complex of the current SoC */
 	num_cores = tegra_get_num_cores();
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
