Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp47.i.mail.ru ([94.100.177.107])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UlwIa-0002P8-Ed
 for barebox@lists.infradead.org; Mon, 10 Jun 2013 07:13:55 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 10 Jun 2013 11:13:19 +0400
Message-Id: <1370848400-10380-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1370848400-10380-1-git-send-email-shc_work@mail.ru>
References: <1370848400-10380-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/3] ARM: ccmx51js: Add WP-pin definition for SDHC3
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/ccxmx51/ccxmx51js.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51js.c b/arch/arm/boards/ccxmx51/ccxmx51js.c
index 7d269c3..1cf7d53 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51js.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51js.c
@@ -29,7 +29,8 @@
 
 #include "ccxmx51.h"
 
-#define CCXMX51JS_USBHOST1_RESET	IMX_GPIO_NR(3, 8)
+#define CCXMX51JS_USBH1_RESET	IMX_GPIO_NR(3, 8)
+#define CCXMX51JS_SD3_WP	IMX_GPIO_NR(3, 17)
 
 static iomux_v3_cfg_t ccxmx51js_pads[] = {
 	/* SD1 */
@@ -73,7 +74,8 @@ static struct esdhc_platform_data sdhc1_pdata = {
 
 static struct esdhc_platform_data sdhc3_pdata = {
 	.cd_type	= ESDHC_CD_NONE,
-	.wp_type	= ESDHC_WP_NONE,
+	.wp_type	= ESDHC_WP_GPIO,
+	.wp_gpio	= CCXMX51JS_SD3_WP,
 	.caps		= MMC_MODE_4BIT | MMC_MODE_8BIT,
 };
 
@@ -91,9 +93,9 @@ static int ccxmx51js_init(void)
 		imx51_add_mmc2(&sdhc3_pdata);
 	}
 
-	gpio_direction_output(CCXMX51JS_USBHOST1_RESET, 0);
+	gpio_direction_output(CCXMX51JS_USBH1_RESET, 0);
 	mdelay(10);
-	gpio_set_value(CCXMX51JS_USBHOST1_RESET, 1);
+	gpio_set_value(CCXMX51JS_USBH1_RESET, 1);
 	mdelay(10);
 	imx51_add_usbh1(&ccxmx51js_usbhost1_pdata);
 
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
