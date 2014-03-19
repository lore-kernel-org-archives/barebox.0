Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WQIXt-00078U-Tb
 for barebox@lists.infradead.org; Wed, 19 Mar 2014 15:36:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Mar 2014 16:20:45 +0100
Message-Id: <1395242445-15939-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM i.MX6Q: Fix IOMUXC GPR1 defines for ENET_CLK_SEL and
 IPU1/2_MUX
To: barebox@lists.infradead.org

From: Philipp Zabel <p.zabel@pengutronix.de>

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mfd/imx6q-iomuxc-gpr.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/include/mfd/imx6q-iomuxc-gpr.h b/include/mfd/imx6q-iomuxc-gpr.h
index db43d59..3ccc254 100644
--- a/include/mfd/imx6q-iomuxc-gpr.h
+++ b/include/mfd/imx6q-iomuxc-gpr.h
@@ -103,15 +103,15 @@
 #define IMX6Q_GPR1_EXC_MON_MASK			BIT(22)
 #define IMX6Q_GPR1_EXC_MON_OKAY			0x0
 #define IMX6Q_GPR1_EXC_MON_SLVE			BIT(22)
-#define IMX6Q_GPR1_MIPI_IPU2_SEL_MASK		BIT(21)
-#define IMX6Q_GPR1_MIPI_IPU2_SEL_GASKET		0x0
-#define IMX6Q_GPR1_MIPI_IPU2_SEL_IOMUX		BIT(21)
-#define IMX6Q_GPR1_MIPI_IPU1_MUX_MASK		BIT(20)
-#define IMX6Q_GPR1_MIPI_IPU1_MUX_GASKET		0x0
-#define IMX6Q_GPR1_MIPI_IPU1_MUX_IOMUX		BIT(20)
-#define IMX6Q_GPR1_MIPI_IPU2_MUX_MASK		BIT(19)
+#define IMX6Q_GPR1_ENET_CLK_SEL_MASK		BIT(21)
+#define IMX6Q_GPR1_ENET_CLK_SEL_PAD		0
+#define IMX6Q_GPR1_ENET_CLK_SEL_ANATOP		BIT(21)
+#define IMX6Q_GPR1_MIPI_IPU2_MUX_MASK		BIT(20)
 #define IMX6Q_GPR1_MIPI_IPU2_MUX_GASKET		0x0
-#define IMX6Q_GPR1_MIPI_IPU2_MUX_IOMUX		BIT(19)
+#define IMX6Q_GPR1_MIPI_IPU2_MUX_IOMUX		BIT(20)
+#define IMX6Q_GPR1_MIPI_IPU1_MUX_MASK		BIT(19)
+#define IMX6Q_GPR1_MIPI_IPU1_MUX_GASKET		0x0
+#define IMX6Q_GPR1_MIPI_IPU1_MUX_IOMUX		BIT(19)
 #define IMX6Q_GPR1_PCIE_TEST_PD			BIT(18)
 #define IMX6Q_GPR1_IPU_VPU_MUX_MASK		BIT(17)
 #define IMX6Q_GPR1_IPU_VPU_MUX_IPU1		0x0
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
