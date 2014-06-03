Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvOR-0004WV-Ct
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:33:12 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id AED9318B4278
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:27 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:34:58 +0200
Message-Id: <1401827717-6420-12-git-send-email-dev@lynxeye.de>
In-Reply-To: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
References: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 11/30] tegra: disable IDDQ for PLL_X on Tegra124
To: barebox@lists.infradead.org

This is an additional power down control.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/tegra124-car.h | 19 +++++++++++++++++++
 arch/arm/mach-tegra/tegra_avp_init.c            |  9 +++++++++
 2 files changed, 28 insertions(+)
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra124-car.h

diff --git a/arch/arm/mach-tegra/include/mach/tegra124-car.h b/arch/arm/mach-tegra/include/mach/tegra124-car.h
new file mode 100644
index 0000000..1fb924d
--- /dev/null
+++ b/arch/arm/mach-tegra/include/mach/tegra124-car.h
@@ -0,0 +1,19 @@
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
+#define CRC_PLLX_MISC_3			0x518
+#define CRC_PLLX_MISC_3_IDDQ		(1 << 3)
diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index 53e81d9..cc8b0e2 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -25,6 +25,7 @@
 #include <mach/tegra20-pmc.h>
 #include <mach/tegra30-car.h>
 #include <mach/tegra30-flow.h>
+#include <mach/tegra124-car.h>
 
 /* instruct the PMIC to enable the CPU power rail */
 static void enable_maincomplex_powerrail(void)
@@ -107,6 +108,14 @@ static void init_pllx(void)
 
 	chiptype = tegra_get_chiptype();
 
+	/* disable IDDQ on T124 */
+	if (chiptype == TEGRA124) {
+		reg = readl(TEGRA_CLK_RESET_BASE + CRC_PLLX_MISC_3);
+		reg &= ~CRC_PLLX_MISC_3_IDDQ;
+		writel(reg, TEGRA_CLK_RESET_BASE + CRC_PLLX_MISC_3);
+		tegra_ll_delay_usec(2);
+	}
+
 	osc_freq = (readl(TEGRA_CLK_RESET_BASE + CRC_OSC_CTRL) &
 		    CRC_OSC_CTRL_OSC_FREQ_MASK) >> CRC_OSC_CTRL_OSC_FREQ_SHIFT;
 
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
