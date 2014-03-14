Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WOTAp-0003AN-Dn
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:44 +0100
Message-Id: <1394807569-23620-25-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
References: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 24/29] ARM i.MX6q: Mark VPU and IPU AXI transfers as cacheable,
 increase IPU priority
To: barebox@lists.infradead.org

This is needed so that the IPU framebuffer scanout cannot be
starved by VPU or GPU activity.
Some boards like the SabreLite and SabreSD seem to set this in
the DCD already, but the documented register reset values do not
contain the necessary settings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c       | 19 +++++++++++++++++++
 include/mfd/imx6q-iomuxc-gpr.h | 18 ++++++++++++++++++
 2 files changed, 37 insertions(+)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 304b1c0..e14ce90 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -15,6 +15,7 @@
 #include <common.h>
 #include <io.h>
 #include <sizes.h>
+#include <mfd/imx6q-iomuxc-gpr.h>
 #include <mach/imx6.h>
 #include <mach/generic.h>
 #include <mach/revision.h>
@@ -28,7 +29,9 @@ void imx6_init_lowlevel(void)
 {
 	void __iomem *aips1 = (void *)MX6_AIPS1_ON_BASE_ADDR;
 	void __iomem *aips2 = (void *)MX6_AIPS2_ON_BASE_ADDR;
+	void __iomem *iomux = (void *)MX6_IOMUXC_BASE_ADDR;
 	int is_imx6q = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6Q;
+	uint32_t val;
 
 	/*
 	 * Set all MPROTx to be non-bufferable, trusted for R/W,
@@ -87,6 +90,22 @@ void imx6_init_lowlevel(void)
 			BM_ANADIG_PFD_528_PFD0_CLKGATE,
 			MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_528_CLR);
 
+	val = readl(iomux + IOMUXC_GPR4);
+	val |= IMX6Q_GPR4_VPU_WR_CACHE_SEL | IMX6Q_GPR4_VPU_RD_CACHE_SEL |
+		IMX6Q_GPR4_VPU_P_WR_CACHE_VAL | IMX6Q_GPR4_VPU_P_RD_CACHE_VAL_MASK |
+		IMX6Q_GPR4_IPU_WR_CACHE_CTL | IMX6Q_GPR4_IPU_RD_CACHE_CTL;
+	writel(val, iomux + IOMUXC_GPR4);
+
+	/* Increase IPU read QoS priority */
+	val = readl(iomux + IOMUXC_GPR6);
+	val &= ~(IMX6Q_GPR6_IPU1_ID00_RD_QOS_MASK | IMX6Q_GPR6_IPU1_ID01_RD_QOS_MASK);
+	val |= (0xf << 16) | (0x7 << 20);
+	writel(val, iomux + IOMUXC_GPR6);
+
+	val = readl(iomux + IOMUXC_GPR7);
+	val &= ~(IMX6Q_GPR7_IPU2_ID00_RD_QOS_MASK | IMX6Q_GPR7_IPU2_ID01_RD_QOS_MASK);
+	val |= (0xf << 16) | (0x7 << 20);
+	writel(val, iomux + IOMUXC_GPR7);
 }
 
 int imx6_init(void)
diff --git a/include/mfd/imx6q-iomuxc-gpr.h b/include/mfd/imx6q-iomuxc-gpr.h
index db43d59..59c86dd 100644
--- a/include/mfd/imx6q-iomuxc-gpr.h
+++ b/include/mfd/imx6q-iomuxc-gpr.h
@@ -241,6 +241,24 @@
 
 #define IMX6Q_GPR5_L2_CLK_STOP			BIT(8)
 
+#define IMX6Q_GPR6_IPU1_ID00_WR_QOS_MASK	(0xf << 0)
+#define IMX6Q_GPR6_IPU1_ID01_WR_QOS_MASK	(0xf << 4)
+#define IMX6Q_GPR6_IPU1_ID10_WR_QOS_MASK	(0xf << 8)
+#define IMX6Q_GPR6_IPU1_ID11_WR_QOS_MASK	(0xf << 12)
+#define IMX6Q_GPR6_IPU1_ID00_RD_QOS_MASK	(0xf << 16)
+#define IMX6Q_GPR6_IPU1_ID01_RD_QOS_MASK	(0xf << 20)
+#define IMX6Q_GPR6_IPU1_ID10_RD_QOS_MASK	(0xf << 24)
+#define IMX6Q_GPR6_IPU1_ID11_RD_QOS_MASK	(0xf << 28)
+
+#define IMX6Q_GPR7_IPU2_ID00_WR_QOS_MASK	(0xf << 0)
+#define IMX6Q_GPR7_IPU2_ID01_WR_QOS_MASK	(0xf << 4)
+#define IMX6Q_GPR7_IPU2_ID10_WR_QOS_MASK	(0xf << 8)
+#define IMX6Q_GPR7_IPU2_ID11_WR_QOS_MASK	(0xf << 12)
+#define IMX6Q_GPR7_IPU2_ID00_RD_QOS_MASK	(0xf << 16)
+#define IMX6Q_GPR7_IPU2_ID01_RD_QOS_MASK	(0xf << 20)
+#define IMX6Q_GPR7_IPU2_ID10_RD_QOS_MASK	(0xf << 24)
+#define IMX6Q_GPR7_IPU2_ID11_RD_QOS_MASK	(0xf << 28)
+
 #define IMX6Q_GPR9_TZASC2_BYP			BIT(1)
 #define IMX6Q_GPR9_TZASC1_BYP			BIT(0)
 
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
