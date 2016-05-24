Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp21.mail.ru ([94.100.179.250])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b5FC3-0006Kp-0V
 for barebox@lists.infradead.org; Tue, 24 May 2016 16:28:32 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 24 May 2016 19:28:02 +0300
Message-Id: <1464107282-17942-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] MCI: imx-esdhc: Allow to use 1-bit bus width in board files
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/freescale-mx53-smd/board.c | 1 +
 arch/arm/boards/karo-tx53/board.c          | 1 +
 drivers/mci/imx-esdhc.c                    | 9 +++------
 3 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/freescale-mx53-smd/board.c b/arch/arm/boards/freescale-mx53-smd/board.c
index 354702d..12e5e5f 100644
--- a/arch/arm/boards/freescale-mx53-smd/board.c
+++ b/arch/arm/boards/freescale-mx53-smd/board.c
@@ -115,6 +115,7 @@ static struct esdhc_platform_data loco_sd1_data = {
 	.wp_gpio = LOCO_SD1_WP,
 	.cd_type = ESDHC_CD_GPIO,
 	.wp_type = ESDHC_WP_GPIO,
+	.caps    = MMC_BUS_WIDTH_4,
 };
 
 static struct esdhc_platform_data loco_sd3_data = {
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index 99aa9e7..8ad5d13 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -105,6 +105,7 @@ static struct esdhc_platform_data tx53_sd1_data = {
 	.cd_gpio = TX53_SD1_CD,
 	.cd_type = ESDHC_CD_GPIO,
 	.wp_type = ESDHC_WP_NONE,
+	.caps    = MMC_BUS_WIDTH_4,
 };
 
 struct imx_nand_platform_data nand_info = {
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 2e189fe..66786ff 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -596,13 +596,10 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	if (caps & ESDHC_HOSTCAPBLT_VS33)
 		mci->voltages |= MMC_VDD_32_33 | MMC_VDD_33_34;
 
-	if (pdata && pdata->caps)
+	if (pdata) {
 		mci->host_caps = pdata->caps;
-	else
-		mci->host_caps = MMC_CAP_4_BIT_DATA;
-
-	if (pdata && pdata->devname) {
-		mci->devname = pdata->devname;
+		if (pdata->devname)
+			mci->devname = pdata->devname;
 	} else if (dev->device_node) {
 		const char *alias = of_alias_get(dev->device_node);
 		if (alias)
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
