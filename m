Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOSCC-0003Hs-H2
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 13:30:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 14:30:15 +0100
Message-Id: <1394803820-29277-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394803820-29277-1-git-send-email-s.hauer@pengutronix.de>
References: <1394803820-29277-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] ARM: i.MX6Q: Fix IOMUXC GPR1 bit 21 (ENET_CLK_SEL)
To: barebox@lists.infradead.org

From: Philipp Zabel <p.zabel@pengutronix.de>

This bit selects whether the ENET_REF_CLK is sourced from the internal
ENET PLL (ANATOP), or from an external clock source connected to the
GPIO_16 pad.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 include/mfd/imx6q-iomuxc-gpr.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/mfd/imx6q-iomuxc-gpr.h b/include/mfd/imx6q-iomuxc-gpr.h
index db43d59..53efc63 100644
--- a/include/mfd/imx6q-iomuxc-gpr.h
+++ b/include/mfd/imx6q-iomuxc-gpr.h
@@ -103,9 +103,9 @@
 #define IMX6Q_GPR1_EXC_MON_MASK			BIT(22)
 #define IMX6Q_GPR1_EXC_MON_OKAY			0x0
 #define IMX6Q_GPR1_EXC_MON_SLVE			BIT(22)
-#define IMX6Q_GPR1_MIPI_IPU2_SEL_MASK		BIT(21)
-#define IMX6Q_GPR1_MIPI_IPU2_SEL_GASKET		0x0
-#define IMX6Q_GPR1_MIPI_IPU2_SEL_IOMUX		BIT(21)
+#define IMX6Q_GPR1_ENET_CLK_SEL_MASK		BIT(21)
+#define IMX6Q_GPR1_ENET_CLK_SEL_PAD		0
+#define IMX6Q_GPR1_ENET_CLK_SEL_ANATOP		BIT(21)
 #define IMX6Q_GPR1_MIPI_IPU1_MUX_MASK		BIT(20)
 #define IMX6Q_GPR1_MIPI_IPU1_MUX_GASKET		0x0
 #define IMX6Q_GPR1_MIPI_IPU1_MUX_IOMUX		BIT(20)
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
