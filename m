Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNhp8-0006bk-VC
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 13:36:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Aug 2015 15:35:45 +0200
Message-Id: <1438954545-24917-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1438954545-24917-1-git-send-email-s.hauer@pengutronix.de>
References: <1438954545-24917-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] ARM: i.MX6: Enable l2 cache
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |  1 +
 arch/arm/mach-imx/imx6.c  | 35 +++++++++++++++++++++++++++++++++++
 2 files changed, 36 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 0de2d3e..92b5652 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -175,6 +175,7 @@ config ARCH_IMX53
 
 config ARCH_IMX6
 	bool
+	select ARCH_HAS_L2X0
 	select ARCH_HAS_FEC_IMX
 	select CPU_V7
 	select PINCTRL_IMX_IOMUX_V3
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 7508964..ceabe19 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -22,6 +22,7 @@
 #include <mach/imx6-anadig.h>
 #include <mach/imx6-regs.h>
 #include <mach/generic.h>
+#include <asm/mmu.h>
 
 #define SI_REV 0x260
 
@@ -193,3 +194,37 @@ int imx6_devices_init(void)
 
 	return 0;
 }
+
+#define L310_PREFETCH_CTRL		0xF60
+
+static int imx6_mmu_init(void)
+{
+	void __iomem *l2x0_base = IOMEM(0x00a02000);
+	u32 val;
+
+	if (!cpu_is_mx6())
+		return 0;
+
+	/* Configure the L2 PREFETCH and POWER registers */
+	val = readl(l2x0_base + L310_PREFETCH_CTRL);
+	val |= 0x70800000;
+
+	/*
+	 * The L2 cache controller(PL310) version on the i.MX6D/Q is r3p1-50rel0
+	 * The L2 cache controller(PL310) version on the i.MX6DL/SOLO/SL is r3p2
+	 * But according to ARM PL310 errata: 752271
+	 * ID: 752271: Double linefill feature can cause data corruption
+	 * Fault Status: Present in: r3p0, r3p1, r3p1-50rel0. Fixed in r3p2
+	 * Workaround: The only workaround to this erratum is to disable the
+	 * double linefill feature. This is the default behavior.
+	 */
+	if (cpu_is_mx6q())
+		val &= ~(1 << 30 | 1 << 23);
+
+	writel(val, l2x0_base + L310_PREFETCH_CTRL);
+
+	l2x0_init(l2x0_base, 0x0, ~0UL);
+
+	return 0;
+}
+postmmu_initcall(imx6_mmu_init);
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
