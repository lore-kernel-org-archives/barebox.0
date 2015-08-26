Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUa5r-0000Te-2k
 for barebox@lists.infradead.org; Wed, 26 Aug 2015 12:46:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Aug 2015 14:45:56 +0200
Message-Id: <1440593156-18311-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: pfla02: Add notice about the used environment partition
To: Barebox List <barebox@lists.infradead.org>

From: Philipp Zabel <p.zabel@pengutronix.de>

Also, use the barebox partition on mmc2.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/boards/phytec-phyflex-imx6/board.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
index f0c4fe2..d3100c8 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/board.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
@@ -86,7 +86,7 @@ static unsigned int get_module_rev(void)
 static int phytec_pfla02_init(void)
 {
 	int ret;
-	char *environment_path;
+	char *environment_path, *envdev;
 
 	if (!of_machine_is_compatible("phytec,imx6q-pfla02") &&
 			!of_machine_is_compatible("phytec,imx6dl-pfla02") &&
@@ -106,13 +106,16 @@ static int phytec_pfla02_init(void)
 	case BOOTSOURCE_MMC:
 		environment_path = asprintf("/chosen/environment-sd%d",
 					bootsource_get_instance() + 1);
+		envdev = "MMC";
 		break;
 	case BOOTSOURCE_NAND:
 		environment_path = asprintf("/chosen/environment-nand");
+		envdev = "NAND flash";
 		break;
 	default:
 	case BOOTSOURCE_SPI:
 		environment_path = asprintf("/chosen/environment-spinor");
+		envdev = "SPI NOR flash";
 		break;
 	}
 
@@ -123,6 +126,8 @@ static int phytec_pfla02_init(void)
 
 	free(environment_path);
 
+	pr_notice("Using environment in %s\n", envdev);
+
 	return 0;
 }
 device_initcall(phytec_pfla02_init);
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
