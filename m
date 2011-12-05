Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo1.mail-out.ovh.net ([178.32.119.250]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RXaO8-0000p2-Fs
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 15:23:29 +0000
Received: from mail99.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 63884FFB2F5
 for <barebox@lists.infradead.org>; Mon,  5 Dec 2011 16:23:34 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  5 Dec 2011 16:19:02 +0100
Message-Id: <1323098343-31863-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20111205151439.GC9192@game.jcrosoft.org>
References: <20111205151439.GC9192@game.jcrosoft.org>
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
Subject: [PATCH 3/4] mx53 loco: update sd support
To: barebox@lists.infradead.org

update to use card detect
add sd3 card support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/freescale-mx53-loco/board.c |   36 ++++++++++++++++++++++++++-
 1 files changed, 35 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index 6a5ef37..aec2254 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -72,6 +72,22 @@ static struct pad_desc loco_pads[] = {
 	MX53_PAD_SD1_DATA3__ESDHC1_DAT3,
 	/* SD1_CD */
 	MX53_PAD_EIM_DA13__GPIO3_13,
+
+	/* SD3 */
+	MX53_PAD_PATA_DATA8__ESDHC3_DAT0,
+	MX53_PAD_PATA_DATA9__ESDHC3_DAT1,
+	MX53_PAD_PATA_DATA10__ESDHC3_DAT2,
+	MX53_PAD_PATA_DATA11__ESDHC3_DAT3,
+	MX53_PAD_PATA_DATA0__ESDHC3_DAT4,
+	MX53_PAD_PATA_DATA1__ESDHC3_DAT5,
+	MX53_PAD_PATA_DATA2__ESDHC3_DAT6,
+	MX53_PAD_PATA_DATA3__ESDHC3_DAT7,
+	MX53_PAD_PATA_IORDY__ESDHC3_CLK,
+	MX53_PAD_PATA_RESET_B__ESDHC3_CMD,
+	/* SD3_CD */
+	MX53_PAD_EIM_DA11__GPIO3_11,
+	/* SD3_WP */
+	MX53_PAD_EIM_DA12__GPIO3_12,
 };
 
 static int loco_mem_init(void)
@@ -92,11 +108,29 @@ static void loco_fec_reset(void)
 	gpio_set_value(LOCO_FEC_PHY_RST, 1);
 }
 
+#define LOCO_SD3_CD			IMX_GPIO_NR(3, 11)
+#define LOCO_SD3_WP			IMX_GPIO_NR(3, 12)
+#define LOCO_SD1_CD			IMX_GPIO_NR(3, 13)
+
+static struct esdhc_platform_data loco_sd1_data = {
+	.cd_gpio = LOCO_SD1_CD,
+	.cd_type = ESDHC_CD_GPIO,
+	.wp_type = ESDHC_WP_NONE,
+};
+
+static struct esdhc_platform_data loco_sd3_data = {
+	.cd_gpio = LOCO_SD3_CD,
+	.wp_gpio = LOCO_SD3_WP,
+	.cd_type = ESDHC_CD_GPIO,
+	.wp_type = ESDHC_WP_GPIO,
+};
+
 static int loco_devices_init(void)
 {
 	imx51_iim_register_fec_ethaddr();
 	imx53_add_fec(&fec_info);
-	imx53_add_mmc0(NULL);
+	imx53_add_mmc0(&loco_sd1_data);
+	imx53_add_mmc2(&loco_sd3_data);
 
 	loco_fec_reset();
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
