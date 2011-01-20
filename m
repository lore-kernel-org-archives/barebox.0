Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pfr6t-00040g-CA
	for barebox@lists.infradead.org; Thu, 20 Jan 2011 09:47:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jan 2011 10:46:58 +0100
Message-Id: <1295516821-8988-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295516821-8988-1-git-send-email-s.hauer@pengutronix.de>
References: <1295516821-8988-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] ARM chumby: enable backlight in platform data hook
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c |   17 +++++++++++++++++
 1 files changed, 17 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 966d99b..0979630 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -57,6 +57,22 @@ static struct device_d mci_dev = {
 	.platform_data = &mci_pdata,
 };
 
+#define GPIO_LCD_RESET		50
+#define GPIO_LCD_BACKLIGHT	60
+
+static void chumby_fb_enable(int enable)
+{
+	gpio_direction_output(GPIO_LCD_RESET, enable);
+
+	/* Give the display a chance to sync before we enable
+	 * the backlight to avoid flickering
+	 */
+	if (enable)
+		mdelay(100);
+
+	gpio_direction_output(GPIO_LCD_BACKLIGHT, enable);
+}
+
 static struct fb_videomode falconwing_vmode = {
 	/*
 	 * Nanovision NMA35QV65-B2-K01 (directly connected)
@@ -87,6 +103,7 @@ static struct imx_fb_videomode fb_mode = {
 	.mode_cnt = 1,
 	/* the NMA35 is a 24 bit display, but only 18 bits are connected */
 	.ld_intf_width = STMLCDIF_18BIT,
+	.enable = chumby_fb_enable,
 };
 
 static struct device_d ldcif_dev = {
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
