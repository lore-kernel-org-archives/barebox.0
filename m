Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp23.mail.ru ([94.100.176.176])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9BsU-0007Iy-8W
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 08:54:15 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 18 Mar 2012 12:59:19 +0400
Message-Id: <1332061159-5118-1-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] Use mx53-related functions for i.MX53 boards
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/freescale-mx53-loco/board.c |    2 +-
 arch/arm/boards/freescale-mx53-smd/board.c  |    2 +-
 arch/arm/boards/tqma53/board.c              |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index 6c0e1d1..6ae597a 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -165,7 +165,7 @@ static struct esdhc_platform_data loco_sd3_data = {
 
 static int loco_devices_init(void)
 {
-	imx51_iim_register_fec_ethaddr();
+	imx53_iim_register_fec_ethaddr();
 	imx53_add_fec(&fec_info);
 	imx53_add_mmc0(&loco_sd1_data);
 	imx53_add_mmc2(&loco_sd3_data);
diff --git a/arch/arm/boards/freescale-mx53-smd/board.c b/arch/arm/boards/freescale-mx53-smd/board.c
index a7259ba..7230245 100644
--- a/arch/arm/boards/freescale-mx53-smd/board.c
+++ b/arch/arm/boards/freescale-mx53-smd/board.c
@@ -133,7 +133,7 @@ static struct esdhc_platform_data loco_sd3_data = {
 
 static int smd_devices_init(void)
 {
-	imx51_iim_register_fec_ethaddr();
+	imx53_iim_register_fec_ethaddr();
 	imx53_add_fec(&fec_info);
 	imx53_add_mmc0(&loco_sd1_data);
 	imx53_add_mmc2(&loco_sd3_data);
diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
index 020eb68..184c00f 100644
--- a/arch/arm/boards/tqma53/board.c
+++ b/arch/arm/boards/tqma53/board.c
@@ -240,7 +240,7 @@ static int tqma53_devices_init(void)
 	mdelay(1);
 	gpio_set_value(GPIO_FEC_NRESET, 1);
 
-	imx51_iim_register_fec_ethaddr();
+	imx53_iim_register_fec_ethaddr();
 	imx53_add_fec(&fec_info);
 	imx53_add_mmc1(&tqma53_sd2_data);
 	imx53_add_mmc2(&tqma53_sd3_data);
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
