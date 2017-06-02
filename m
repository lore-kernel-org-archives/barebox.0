Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dGmTO-0005gQ-Tf
 for barebox@lists.infradead.org; Fri, 02 Jun 2017 13:18:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <mgr@pengutronix.de>) id 1dGmT0-0004rS-Rw
 for barebox@lists.infradead.org; Fri, 02 Jun 2017 15:18:14 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1dGmT0-0005hH-LB
 for barebox@lists.infradead.org; Fri, 02 Jun 2017 15:18:14 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri,  2 Jun 2017 15:18:07 +0200
Message-Id: <20170602131808.18781-3-m.grzeschik@pengutronix.de>
In-Reply-To: <20170602131808.18781-1-m.grzeschik@pengutronix.de>
References: <20170602131808.18781-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH v2 2/3] ARM: phytec-som-imx6: remove needles enet refclk setup
To: barebox@lists.infradead.org

All REF_CLK output setup now is generically prepared for imx6ul. The
handling of the ENET_CLK_SEL (gpr[13]|gpr[14]) bits is not necessary, as
0 is their reset value.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/boards/phytec-som-imx6/board.c | 23 ++++-------------------
 1 file changed, 4 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index b93fd1be60..cb397779c4 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -96,24 +96,6 @@ int ksz8081_phy_fixup(struct phy_device *phydev)
 	return 0;
 }
 
-static void imx6ul_setup_fec(void)
-{
-	void __iomem *gprbase = IOMEM(MX6_IOMUXC_BASE_ADDR) + 0x4000;
-	uint32_t val;
-
-	phy_register_fixup_for_uid(PHY_ID_KSZ8081, MICREL_PHY_ID_MASK,
-			ksz8081_phy_fixup);
-
-	val = readl(gprbase + IOMUXC_GPR1);
-	/* Use 50M anatop loopback REF_CLK1 for ENET1, clear gpr1[13], set gpr1[17]*/
-	val &= ~(1 << 13);
-	val |= (1 << 17);
-	/* Use 50M anatop loopback REF_CLK1 for ENET2, clear gpr1[14], set gpr1[18]*/
-	val &= ~(1 << 14);
-	val |= (1 << 18);
-	writel(val, gprbase + IOMUXC_GPR1);
-}
-
 static int physom_imx6_devices_init(void)
 {
 	int ret;
@@ -153,7 +135,10 @@ static int physom_imx6_devices_init(void)
 		barebox_set_hostname("phyCORE-i.MX6UL");
 		default_environment_path = "/chosen/environment-nand";
 		default_envdev = "NAND flash";
-		imx6ul_setup_fec();
+
+		phy_register_fixup_for_uid(PHY_ID_KSZ8081, MICREL_PHY_ID_MASK,
+				ksz8081_phy_fixup);
+
 	} else
 		return 0;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
