Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNc60-0001or-2U
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 13:24:36 +0000
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1kNc5y-0004HV-Sr
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 15:24:35 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 30 Sep 2020 15:24:34 +0200
Message-Id: <20200930132434.354105-1-l.stach@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: i.MX: nxp-imx8mm-evk: use eMMC update handler
To: barebox@lists.infradead.org

Use the proper eMMC update handler to write the barebox image into
the non-active boot partition and switch automatically.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mm-evk/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/nxp-imx8mm-evk/board.c b/arch/arm/boards/nxp-imx8mm-evk/board.c
index 8f5d851a8897..4350abd15793 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/board.c
@@ -55,7 +55,7 @@ static int nxp_imx8mm_evk_init(void)
 
 	imx8mq_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox",
 						 emmc_sd_flag);
-	imx8mq_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc2",
+	imx8mq_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2",
 						     emmc_bbu_flag);
 
 	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
