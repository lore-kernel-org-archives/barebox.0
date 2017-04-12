Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cyEXf-0002ZB-LO
 for barebox@lists.infradead.org; Wed, 12 Apr 2017 09:26:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <mgr@pengutronix.de>) id 1cyEXH-0002jz-Lv
 for barebox@lists.infradead.org; Wed, 12 Apr 2017 11:25:59 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.88)
 (envelope-from <mgr@pengutronix.de>) id 1cyEXH-0005gA-Dp
 for barebox@lists.infradead.org; Wed, 12 Apr 2017 11:25:59 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed, 12 Apr 2017 11:25:52 +0200
Message-Id: <20170412092552.21062-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] ARM: mx6sx-sabresdb: the ethernet clocks get enabled by
 fec_imx
To: barebox@lists.infradead.org

All necessary clocks get already enabled through the fec_imx driver
configured by the devicetree.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/boards/freescale-mx6sx-sabresdb/board.c | 27 +-----------------------
 1 file changed, 1 insertion(+), 26 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/board.c b/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
index ca22eba393..028b1dddbe 100644
--- a/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
@@ -22,7 +22,6 @@
 #include <io.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
 #include <generated/mach-types.h>
-#include <linux/clk.h>
 #include <i2c/i2c.h>
 
 #include <asm/armlinux.h>
@@ -181,11 +180,10 @@ int ar8031_phy_fixup(struct phy_device *phydev)
 #define PHY_ID_AR8031	0x004dd074
 #define AR_PHY_ID_MASK	0xffffffff
 
-static int imx6sx_sdb_setup_fec(void)
+static void imx6sx_sdb_setup_fec(void)
 {
 	void __iomem *gprbase = (void *)MX6_IOMUXC_BASE_ADDR + 0x4000;
 	uint32_t val;
-	struct clk *clk;
 
 	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK,
 			ar8031_phy_fixup);
@@ -193,23 +191,6 @@ static int imx6sx_sdb_setup_fec(void)
 	/* Active high for ncp692 */
 	gpio_direction_output(IMX_GPIO_NR(4, 16), 1);
 
-	clk = clk_lookup("enet_ptp_25m");
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
-	clk = clk_lookup("enet2_ref_125m");
-	if (IS_ERR(clk))
-		goto err;
-
-	clk_enable(clk);
-
 	val = readl(gprbase + IOMUXC_GPR1);
 	/* Use 125M anatop loopback REF_CLK1 for ENET1, clear gpr1[13], gpr1[17]*/
 	val &= ~(1 << 13);
@@ -226,12 +207,6 @@ static int imx6sx_sdb_setup_fec(void)
 	gpio_direction_output(IMX_GPIO_NR(2, 7), 0);
 	udelay(500);
 	gpio_set_value(IMX_GPIO_NR(2, 7), 1);
-
-	return 0;
-err:
-	pr_err("Setting up DFEC\n");
-
-	return -EIO;
 }
 
 static int imx6sx_sdb_coredevices_init(void)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
