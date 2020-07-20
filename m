Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxSnR-0007ju-71
 for barebox@lists.infradead.org; Mon, 20 Jul 2020 10:13:22 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Mon, 20 Jul 2020 12:13:18 +0200
Message-Id: <1595239998-86809-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [PATCH] ARM: boards: phytec-som-imx6: Add mmc and emmc-boot bbu
 update handler
To: barebox@lists.infradead.org

From: Stefan Riedmueller <s.riedmueller@phytec.de>

Add mmc and emmc-boot bbu update handler to update barebox on SD card
and eMMC boot partitions easily.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
---
 arch/arm/boards/phytec-som-imx6/board.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index a59552b95c5f..bac3e8a8a1c8 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -161,12 +161,18 @@ static int physom_imx6_devices_init(void)
 		default_environment_path = "/chosen/environment-spinor";
 		default_envdev = "SPI NOR flash";
 
+		imx6_bbu_internal_mmc_register_handler("mmc2",
+						"/dev/mmc2", 0);
+
 	} else if (of_machine_is_compatible("phytec,imx6q-pcaaxl3")) {
 
 		barebox_set_hostname("phyCARD-i.MX6");
 		default_environment_path = "/chosen/environment-nand";
 		default_envdev = "NAND flash";
 
+		imx6_bbu_internal_mmc_register_handler("mmc2",
+						"/dev/mmc2", 0);
+
 	} else if (of_machine_is_compatible("phytec,imx6q-pcm058-nand")
 		|| of_machine_is_compatible("phytec,imx6q-pcm058-emmc")
 		|| of_machine_is_compatible("phytec,imx6dl-pcm058-nand")
@@ -180,6 +186,9 @@ static int physom_imx6_devices_init(void)
 		default_environment_path = "/chosen/environment-spinor";
 		default_envdev = "SPI NOR flash";
 
+		imx6_bbu_internal_mmc_register_handler("mmc0",
+						"/dev/mmc0", 0);
+
 	} else if (of_machine_is_compatible("phytec,imx6ul-pcl063-nand")
 		|| of_machine_is_compatible("phytec,imx6ul-pcl063-emmc")) {
 		barebox_set_hostname("phyCORE-i.MX6UL");
@@ -189,6 +198,9 @@ static int physom_imx6_devices_init(void)
 		phy_register_fixup_for_uid(PHY_ID_KSZ8081, MICREL_PHY_ID_MASK,
 				ksz8081_phy_fixup);
 
+		imx6_bbu_internal_mmc_register_handler("mmc0",
+						"/dev/mmc0", 0);
+
 	} else
 		return 0;
 
@@ -227,10 +239,14 @@ static int physom_imx6_devices_init(void)
 		imx6_bbu_internal_mmc_register_handler("mmc3",
 						"/dev/mmc3",
 						BBU_HANDLER_FLAG_DEFAULT);
+		imx6_bbu_internal_mmcboot_register_handler("mmc3-boot",
+						"mmc3", 0);
 	} else if (of_machine_is_compatible("phytec,imx6ul-pcl063-emmc")) {
 		imx6_bbu_internal_mmc_register_handler("mmc1",
 						"/dev/mmc1",
 						BBU_HANDLER_FLAG_DEFAULT);
+		imx6_bbu_internal_mmcboot_register_handler("mmc1-boot",
+						"mmc1", 0);
 	} else {
 		imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
 	}
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
