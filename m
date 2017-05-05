Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6fUU-0007CD-RZ
 for barebox@lists.infradead.org; Fri, 05 May 2017 15:50:02 +0000
Received: from birne.hi.pengutronix.de ([2001:67c:670:100:feaa:14ff:fe28:e6f5]
 helo=birne) by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <mgr@pengutronix.de>) id 1d6fU6-0000bS-Qq
 for barebox@lists.infradead.org; Fri, 05 May 2017 17:49:34 +0200
Received: from mgr by birne with local (Exim 4.84_2)
 (envelope-from <mgr@pengutronix.de>) id 1d6fU6-0007Ew-JB
 for barebox@lists.infradead.org; Fri, 05 May 2017 17:49:34 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri,  5 May 2017 17:49:19 +0200
Message-Id: <20170505154920.27685-3-m.grzeschik@pengutronix.de>
In-Reply-To: <20170505154920.27685-1-m.grzeschik@pengutronix.de>
References: <20170505154920.27685-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: phytec-som-imx6: the ethernet clocks get enabled by
 fec_imx
To: barebox@lists.infradead.org

All necessary clocks get already enabled through the fec_imx driver
configured by the devicetree.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/boards/phytec-som-imx6/board.c | 27 +--------------------------
 1 file changed, 1 insertion(+), 26 deletions(-)

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index ed9453bdda..4d24a55f74 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -31,7 +31,6 @@
 #include <mach/bbu.h>
 #include <platform_data/eth-fec.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
-#include <linux/clk.h>
 #include <linux/micrel_phy.h>
 
 #include <globalvar.h>
@@ -97,32 +96,14 @@ int ksz8081_phy_fixup(struct phy_device *phydev)
 	return 0;
 }
 
-static int imx6ul_setup_fec(void)
+static void imx6ul_setup_fec(void)
 {
 	void __iomem *gprbase = IOMEM(MX6_IOMUXC_BASE_ADDR) + 0x4000;
 	uint32_t val;
-	struct clk *clk;
 
 	phy_register_fixup_for_uid(PHY_ID_KSZ8081, MICREL_PHY_ID_MASK,
 			ksz8081_phy_fixup);
 
-	clk = clk_lookup("enet_ptp");
-	if (IS_ERR(clk))
-		goto err;
-
-	clk_enable(clk);
-
-	clk = clk_lookup("enet_ref");
-	if (IS_ERR(clk))
-		goto err;
-	clk_enable(clk);
-
-	clk = clk_lookup("enet_ref_125m");
-	if (IS_ERR(clk))
-		goto err;
-
-	clk_enable(clk);
-
 	val = readl(gprbase + IOMUXC_GPR1);
 	/* Use 50M anatop loopback REF_CLK1 for ENET1, clear gpr1[13], set gpr1[17]*/
 	val &= ~(1 << 13);
@@ -131,12 +112,6 @@ static int imx6ul_setup_fec(void)
 	val &= ~(1 << 14);
 	val |= (1 << 18);
 	writel(val, gprbase + IOMUXC_GPR1);
-
-	return 0;
-err:
-	pr_err("Setting up DFEC\n");
-
-	return -EIO;
 }
 
 static int physom_imx6_devices_init(void)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
