Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvOS-0004Wd-Ok
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:33:14 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id 9022C18B4280
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:30 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:35:06 +0200
Message-Id: <1401827717-6420-20-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 19/30] tegra: add architectural timer init
To: barebox@lists.infradead.org

If the bootloader doesn't init the architectural timer
on Cortex A15 Linux falls over when trying to boot.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/iomap.h           |  3 +++
 arch/arm/mach-tegra/include/mach/tegra114-sysctr.h | 30 ++++++++++++++++++++++
 arch/arm/mach-tegra/tegra20.c                      | 25 ++++++++++++++++++
 3 files changed, 58 insertions(+)
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra114-sysctr.h

diff --git a/arch/arm/mach-tegra/include/mach/iomap.h b/arch/arm/mach-tegra/include/mach/iomap.h
index b74e5d2..cdaab6a 100644
--- a/arch/arm/mach-tegra/include/mach/iomap.h
+++ b/arch/arm/mach-tegra/include/mach/iomap.h
@@ -257,6 +257,9 @@
 #define TEGRA_CSITE_BASE		0x70040000
 #define TEGRA_CSITE_SIZE		SZ_256K
 
+#define TEGRA_SYSCTR0_BASE		0x700F0000
+#define TEGRA_SYSCTR0_SIZE		SZ_64K
+
 #define TEGRA_USB_BASE			0xC5000000
 #define TEGRA_USB_SIZE			SZ_16K
 
diff --git a/arch/arm/mach-tegra/include/mach/tegra114-sysctr.h b/arch/arm/mach-tegra/include/mach/tegra114-sysctr.h
new file mode 100644
index 0000000..45d17c4
--- /dev/null
+++ b/arch/arm/mach-tegra/include/mach/tegra114-sysctr.h
@@ -0,0 +1,30 @@
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
+#define TEGRA_SYSCTR0_CNTCR		0x00
+#define TEGRA_SYSCTR0_CNTCR_ENABLE	(1 << 0)
+#define TEGRA_SYSCTR0_CNTCR_HDBG	(1 << 1)
+
+#define TEGRA_SYSCTR0_CNTSR		0x04
+
+#define TEGRA_SYSCTR0_CNTCV0		0x08
+
+#define TEGRA_SYSCTR0_CNTCV1		0x0c
+
+#define TEGRA_SYSCTR0_CNTFID0		0x20
+
+#define TEGRA_SYSCTR0_CNTFID1		0x24
diff --git a/arch/arm/mach-tegra/tegra20.c b/arch/arm/mach-tegra/tegra20.c
index 752bbb0..dcc55ae 100644
--- a/arch/arm/mach-tegra/tegra20.c
+++ b/arch/arm/mach-tegra/tegra20.c
@@ -20,6 +20,7 @@
 #include <asm/memory.h>
 #include <mach/iomap.h>
 #include <mach/lowlevel.h>
+#include <mach/tegra114-sysctr.h>
 
 static struct NS16550_plat debug_uart = {
 	.shift = 2,
@@ -84,3 +85,27 @@ static int tegra30_mem_init(void)
 	return 0;
 }
 mem_initcall(tegra30_mem_init);
+
+static int tegra114_architected_timer_init(void)
+{
+	u32 freq, reg;
+
+	if (!of_machine_is_compatible("nvidia,tegra114") &&
+	    !of_machine_is_compatible("nvidia,tegra124"))
+		return 0;
+
+	freq = tegra_get_osc_clock();
+
+	/* ARM CNTFRQ */
+	asm("mcr p15, 0, %0, c14, c0, 0\n" : : "r" (freq));
+
+	/* Tegra specific SYSCTR */
+	writel(freq, TEGRA_SYSCTR0_BASE + TEGRA_SYSCTR0_CNTFID0);
+
+	reg = readl(TEGRA_SYSCTR0_BASE + TEGRA_SYSCTR0_CNTCR);
+	reg |= TEGRA_SYSCTR0_CNTCR_ENABLE | TEGRA_SYSCTR0_CNTCR_HDBG;
+	writel(reg, TEGRA_SYSCTR0_BASE + TEGRA_SYSCTR0_CNTCR);
+
+	return 0;
+}
+coredevice_initcall(tegra114_architected_timer_init);
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
