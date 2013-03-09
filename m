Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEHYp-0001Vd-5q
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 11:03:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat,  9 Mar 2013 12:03:27 +0100
Message-Id: <1362827007-28522-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362827007-28522-1-git-send-email-s.hauer@pengutronix.de>
References: <1362827007-28522-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] net: fec: use standard phy type defines
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ccxmx51/ccxmx51.c                 |  2 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |  2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |  2 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |  2 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |  2 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |  2 +-
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c     |  2 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |  2 +-
 arch/arm/boards/freescale-mx51-pdk/board.c        |  2 +-
 arch/arm/boards/freescale-mx53-loco/board.c       |  2 +-
 arch/arm/boards/freescale-mx53-smd/board.c        |  2 +-
 arch/arm/boards/freescale-mx6-arm2/board.c        |  2 +-
 arch/arm/boards/freescale-mx6-sabrelite/board.c   |  2 +-
 arch/arm/boards/freescale-mx6-sabresd/board.c     |  2 +-
 arch/arm/boards/guf-cupid/board.c                 |  2 +-
 arch/arm/boards/guf-neso/board.c                  |  2 +-
 arch/arm/boards/guf-vincell/board.c               |  2 +-
 arch/arm/boards/imx27ads/imx27ads.c               |  2 +-
 arch/arm/boards/karo-tx25/board.c                 |  2 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c             |  2 +-
 arch/arm/boards/karo-tx51/tx51.c                  |  2 +-
 arch/arm/boards/karo-tx53/board.c                 |  2 +-
 arch/arm/boards/pcm038/pcm038.c                   |  2 +-
 arch/arm/boards/pcm043/pcm043.c                   |  2 +-
 arch/arm/boards/phycard-i.MX27/pca100.c           |  2 +-
 arch/arm/boards/tqma53/board.c                    |  2 +-
 arch/ppc/boards/pcm030/pcm030.c                   |  2 +-
 drivers/net/fec_imx.c                             | 21 ++++-----------------
 drivers/net/fec_imx.h                             |  1 -
 drivers/net/fec_mpc5200.c                         | 15 +--------------
 drivers/net/fec_mpc5200.h                         |  1 -
 include/fec.h                                     | 12 +-----------
 32 files changed, 33 insertions(+), 71 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index b1c579b..90ed600 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -81,7 +81,7 @@ struct imx_nand_platform_data nand_info = {
 };
 
 static struct fec_platform_data fec_info = {
-	.xcv_type	= MII100,
+	.xcv_type	= PHY_INTERFACE_MODE_MII,
 	.phy_addr	= 7,
 };
 
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 98c9b43..b7d8258 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -47,7 +47,7 @@
 #include <asm/barebox-arm-head.h>
 
 static struct fec_platform_data fec_info = {
-	.xcv_type	= RMII,
+	.xcv_type	= PHY_INTERFACE_MODE_RMII,
 	.phy_addr	= 0,
 };
 
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index d690581..4176d63 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -47,7 +47,7 @@
 #include <mach/devices-imx27.h>
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = MII100,
+	.xcv_type = PHY_INTERFACE_MODE_MII,
 	.phy_addr = 1,
 };
 
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 2c96007..e406fe8 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -52,7 +52,7 @@
 #include <mach/devices-imx35.h>
 
 static struct fec_platform_data fec_info = {
-	.xcv_type	= MII100,
+	.xcv_type	= PHY_INTERFACE_MODE_MII,
 	.phy_addr	= 0,
 };
 
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index fdbd051..5e77f90 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -39,7 +39,7 @@
 #include <mach/devices-imx51.h>
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = MII100,
+	.xcv_type = PHY_INTERFACE_MODE_MII,
 };
 
 struct imx_nand_platform_data nand_info = {
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 4d048be..27a39b7 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -104,7 +104,7 @@ struct imx_flash_header __flash_header_section flash_header = {
 unsigned long __image_len_section barebox_len = DCD_BAREBOX_SIZE;
 
 static struct fec_platform_data fec_info = {
-	.xcv_type	= RMII,
+	.xcv_type	= PHY_INTERFACE_MODE_RMII,
 	.phy_addr	= 1,
 };
 
diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
index 2e866a3..364b6ee 100644
--- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -172,7 +172,7 @@ static void __init mx28_evk_fec_reset(void)
 
 /* PhyAD[0..2]=0, RMIISEL=1 */
 static struct fec_platform_data fec_info = {
-	.xcv_type = RMII,
+	.xcv_type = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = 0,
 };
 
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index e1cb73c..791a3ed 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -60,7 +60,7 @@
 #define MX35PDK_BOARD_REV_2		1
 
 static struct fec_platform_data fec_info = {
-	.xcv_type	= MII100,
+	.xcv_type	= PHY_INTERFACE_MODE_MII,
 	.phy_addr	= 0x1F,
 };
 
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 831ed0e..db34056 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -43,7 +43,7 @@
 #include <mach/imx-flash-header.h>
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = MII100,
+	.xcv_type = PHY_INTERFACE_MODE_MII,
 };
 
 static iomux_v3_cfg_t f3s_pads[] = {
diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index 5846725..e041de6 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -47,7 +47,7 @@
 #include <asm/mmu.h>
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = RMII,
+	.xcv_type = PHY_INTERFACE_MODE_RMII,
 };
 
 static iomux_v3_cfg_t loco_pads[] = {
diff --git a/arch/arm/boards/freescale-mx53-smd/board.c b/arch/arm/boards/freescale-mx53-smd/board.c
index 64ba7f2..d7f6e8b 100644
--- a/arch/arm/boards/freescale-mx53-smd/board.c
+++ b/arch/arm/boards/freescale-mx53-smd/board.c
@@ -41,7 +41,7 @@
 #include <asm/mmu.h>
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = RMII,
+	.xcv_type = PHY_INTERFACE_MODE_RMII,
 };
 
 static iomux_v3_cfg_t smd_pads[] = {
diff --git a/arch/arm/boards/freescale-mx6-arm2/board.c b/arch/arm/boards/freescale-mx6-arm2/board.c
index ce9874d..538ab7f 100644
--- a/arch/arm/boards/freescale-mx6-arm2/board.c
+++ b/arch/arm/boards/freescale-mx6-arm2/board.c
@@ -122,7 +122,7 @@ static void mx6_rgmii_rework(struct phy_device *dev)
 }
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = RGMII,
+	.xcv_type = PHY_INTERFACE_MODE_RGMII,
 	.phy_init = mx6_rgmii_rework,
 	.phy_addr = 0,
 };
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 2a12786..2afaae3 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -147,7 +147,7 @@ static void mx6_rgmii_rework(struct phy_device *dev)
 }
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = RGMII,
+	.xcv_type = PHY_INTERFACE_MODE_RGMII,
 	.phy_init = mx6_rgmii_rework,
 	.phy_addr = 6,
 };
diff --git a/arch/arm/boards/freescale-mx6-sabresd/board.c b/arch/arm/boards/freescale-mx6-sabresd/board.c
index 1cdb0aa..e41dc77 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/board.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/board.c
@@ -159,7 +159,7 @@ static int ar8031_phy_fixup(struct phy_device *dev)
 }
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = RGMII,
+	.xcv_type = PHY_INTERFACE_MODE_RGMII,
 	.phy_addr = 1,
 };
 
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 839b415..67a4b1d 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -43,7 +43,7 @@
 #include <mach/devices-imx35.h>
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = MII100,
+	.xcv_type = PHY_INTERFACE_MODE_MII,
 };
 
 struct imx_nand_platform_data nand_info = {
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 086d96b..00e0d21 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -51,7 +51,7 @@
 #define BACKLIGHT_POWER_GPIO (GPIO_PORTE + 5)
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = MII100,
+	.xcv_type = PHY_INTERFACE_MODE_MII,
 	.phy_addr = 31,
 };
 
diff --git a/arch/arm/boards/guf-vincell/board.c b/arch/arm/boards/guf-vincell/board.c
index 1020bce..f53a8e8 100644
--- a/arch/arm/boards/guf-vincell/board.c
+++ b/arch/arm/boards/guf-vincell/board.c
@@ -47,7 +47,7 @@
 #include <asm/mmu.h>
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = RMII,
+	.xcv_type = PHY_INTERFACE_MODE_RMII,
 };
 
 static iomux_v3_cfg_t vincell_pads[] = {
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index d07d553..fc8cf4a 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -32,7 +32,7 @@
 #include <mach/devices-imx27.h>
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = MII100,
+	.xcv_type = PHY_INTERFACE_MODE_MII,
 	.phy_addr = 1,
 };
 
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index e581886..b2f6856 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -41,7 +41,7 @@
 #include <asm/mmu.h>
 
 static struct fec_platform_data fec_info = {
-	.xcv_type	= RMII,
+	.xcv_type	= PHY_INTERFACE_MODE_RMII,
 	.phy_addr	= 0x1f,
 };
 
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index 766e77b..a0109d6 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -38,7 +38,7 @@ static struct mxs_mci_platform_data mci_pdata = {
 
 /* PhyAD[0..2]=0, RMIISEL=1 */
 static struct fec_platform_data fec_info = {
-	.xcv_type = RMII,
+	.xcv_type = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = 0,
 };
 
diff --git a/arch/arm/boards/karo-tx51/tx51.c b/arch/arm/boards/karo-tx51/tx51.c
index 6c2b14b..d1407a8 100644
--- a/arch/arm/boards/karo-tx51/tx51.c
+++ b/arch/arm/boards/karo-tx51/tx51.c
@@ -46,7 +46,7 @@
     IOMUX_PAD(0x6c0, 0x2c0, 4, 0x098c, 1, 0)
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = MII100,
+	.xcv_type = PHY_INTERFACE_MODE_MII,
 };
 
 struct imx_nand_platform_data nand_info = {
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index 8a69e99..76c1834 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -41,7 +41,7 @@
 #include <asm/mmu.h>
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = RMII,
+	.xcv_type = PHY_INTERFACE_MODE_RMII,
 };
 
 static iomux_v3_cfg_t tx53_pads[] = {
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 587ace8..ef40228 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -46,7 +46,7 @@
 #include "pll.h"
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = MII100,
+	.xcv_type = PHY_INTERFACE_MODE_MII,
 	.phy_addr = 1,
 };
 
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 04418fb..e81e903 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -46,7 +46,7 @@
 #include <mach/generic.h>
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = MII100,
+	.xcv_type = PHY_INTERFACE_MODE_MII,
 };
 
 struct imx_nand_platform_data nand_info = {
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 1a21c8a..fb286db 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -40,7 +40,7 @@
 #include <mach/devices-imx27.h>
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = MII100,
+	.xcv_type = PHY_INTERFACE_MODE_MII,
 	.phy_addr = 1,
 };
 
diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
index 03cb8ea..2f9d7e6 100644
--- a/arch/arm/boards/tqma53/board.c
+++ b/arch/arm/boards/tqma53/board.c
@@ -40,7 +40,7 @@
 #include <mach/imx5.h>
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = RMII,
+	.xcv_type = PHY_INTERFACE_MODE_RMII,
 };
 
 static iomux_v3_cfg_t tqma53_pads[] = {
diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index ae7f7f8..f9bed79 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -35,7 +35,7 @@
 #include <fs.h>
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = MII100,
+	.xcv_type = PHY_INTERFACE_MODE_MII,
 };
 
 static int devices_init (void)
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index d18c062..37d88cd 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -307,7 +307,7 @@ static int fec_init(struct eth_device *dev)
 	writel(((fec_clk_get_rate(fec) >> 20) / 5) << 1,
 			fec->regs + FEC_MII_SPEED);
 
-	if (fec->xcv_type == RMII) {
+	if (fec->interface == PHY_INTERFACE_MODE_RMII) {
 		if (fec_is_imx28(fec) || fec_is_imx6(fec)) {
 			rcntl |= FEC_R_CNTRL_RMII_MODE | FEC_R_CNTRL_FCE |
 				FEC_R_CNTRL_NO_LGTH_CHECK;
@@ -325,7 +325,7 @@ static int fec_init(struct eth_device *dev)
 		}
 	}
 
-	if (fec->xcv_type == RGMII)
+	if (fec->interface == PHY_INTERFACE_MODE_RGMII)
 		rcntl |= 1 << 6;
 
 	writel(rcntl, fec->regs + FEC_R_CNTRL);
@@ -686,11 +686,11 @@ static int fec_probe(struct device_d *dev)
 	fec_alloc_receive_packets(fec, FEC_RBD_NUM, FEC_MAX_PKT_SIZE);
 
 	if (pdata) {
-		fec->xcv_type = pdata->xcv_type;
+		fec->interface = pdata->xcv_type;
 		fec->phy_init = pdata->phy_init;
 		fec->phy_addr = pdata->phy_addr;
 	} else {
-		fec->xcv_type = MII100;
+		fec->interface = PHY_INTERFACE_MODE_MII;
 		fec->phy_addr = -1;
 	}
 
@@ -698,19 +698,6 @@ static int fec_probe(struct device_d *dev)
 
 	fec->miibus.read = fec_miibus_read;
 	fec->miibus.write = fec_miibus_write;
-	switch (fec->xcv_type) {
-	case RMII:
-		fec->interface = PHY_INTERFACE_MODE_RMII;
-		break;
-	case RGMII:
-		fec->interface = PHY_INTERFACE_MODE_RGMII;
-		break;
-	case MII10:
-		fec->phy_flags = PHYLIB_FORCE_10;
-	case MII100:
-		fec->interface = PHY_INTERFACE_MODE_MII;
-		break;
-	}
 
 	fec->miibus.priv = fec;
 	fec->miibus.parent = dev;
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index 29aea85..0921b52 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -135,7 +135,6 @@ enum fec_type {
 struct fec_priv {
 	struct eth_device edev;
 	void __iomem *regs;
-	xceiver_type xcv_type;			/* transceiver type          */
 	struct buffer_descriptor __iomem *rbd_base;	/* RBD ring                  */
 	int rbd_index;				/* next receive BD to read   */
 	struct buffer_descriptor __iomem *tbd_base;	/* TBD ring                  */
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index bdb4e8b..162f1b0 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -660,25 +660,12 @@ int mpc5xxx_fec_probe(struct device_d *dev)
 	fec->tbdBase = (FEC_TBD *)FEC_BD_BASE;
 	fec->rbdBase = (FEC_RBD *)(FEC_BD_BASE + FEC_TBD_NUM * sizeof(FEC_TBD));
 
-	fec->xcv_type = pdata->xcv_type;
+	fec->interface = pdata->xcv_type;
 
 	loadtask(0, 2);
 
 	fec->miibus.read = fec5xxx_miibus_read;
 	fec->miibus.write = fec5xxx_miibus_write;
-	switch (pdata->xcv_type) {
-	case RMII:
-		fec->interface = PHY_INTERFACE_MODE_RMII;
-		break;
-	case RGMII:
-		fec->interface = PHY_INTERFACE_MODE_RGMII;
-		break;
-	case MII10:
-		fec->phy_flags = PHYLIB_FORCE_10;
-	case MII100:
-		fec->interface = PHY_INTERFACE_MODE_MII;
-		break;
-	}
 
 	fec->miibus.priv = fec;
 	fec->miibus.parent = dev;
diff --git a/drivers/net/fec_mpc5200.h b/drivers/net/fec_mpc5200.h
index 20ac607..f07ae0c 100644
--- a/drivers/net/fec_mpc5200.h
+++ b/drivers/net/fec_mpc5200.h
@@ -252,7 +252,6 @@ typedef struct {
 
 typedef struct {
 	ethernet_regs *eth;
-	xceiver_type xcv_type;		/* transceiver type */
 	FEC_RBD *rbdBase;		/* RBD ring */
 	FEC_TBD *tbdBase;		/* TBD ring */
 	uint16_t rbdIndex;		/* next receive BD to read */
diff --git a/include/fec.h b/include/fec.h
index 80904dc..699761a 100644
--- a/include/fec.h
+++ b/include/fec.h
@@ -24,21 +24,11 @@
 #include <linux/phy.h>
 
 /*
- * Supported phy types on this platform
- */
-typedef enum {
-	MII10,
-	MII100,
-	RMII,
-	RGMII,
-} xceiver_type;
-
-/*
  * Define the phy connected externally for FEC drivers
  * (like MPC52xx and i.MX27)
  */
 struct fec_platform_data {
-        xceiver_type	xcv_type;
+	phy_interface_t	xcv_type;
 	int		phy_addr;
 	void 		(*phy_init)(struct phy_device *dev);
 };
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
