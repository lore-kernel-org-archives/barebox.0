Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PkvwE-00077k-9j
	for barebox@lists.infradead.org; Thu, 03 Feb 2011 09:57:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  3 Feb 2011 10:57:14 +0100
Message-Id: <1296727034-19693-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1296727034-19693-1-git-send-email-s.hauer@pengutronix.de>
References: <1296727034-19693-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM tx28: Add hook for enabling the display
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx28/tx28-stk5.c |   27 +++++++++++++++++++++++----
 1 files changed, 23 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index e8338a3..d5a7831 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -186,20 +186,39 @@ static struct fb_videomode tx28evk_vmodes[] = {
 
 #define MAX_FB_SIZE SZ_2M
 
-static struct imx_fb_videomode imxfb_mode = {
+#define GPIO_LCD_RESET	126 /* 1 -> Reset  */
+#define GPIO_BACKLIGHT	112 /* 0 -> backlight active */
+#define GPIO_LCD_ENABLE	 63 /* 1 -> LCD enabled */
+
+static void tx28_fb_enable(int enable)
+{
+	gpio_direction_output(GPIO_LCD_RESET, enable);
+	gpio_direction_output(GPIO_LCD_ENABLE, enable);
+
+	/* Give the display a chance to sync before we enable
+	 * the backlight to avoid flickering
+	 */
+	if (enable)
+		mdelay(100);
+
+	gpio_direction_output(GPIO_BACKLIGHT, !enable);
+}
+
+static struct imx_fb_platformdata tx28_fb_pdata = {
 	.mode_list = tx28evk_vmodes,
 	.mode_cnt = ARRAY_SIZE(tx28evk_vmodes),
 	.dotclk_delay = 0,	/* no adaption required */
 	.ld_intf_width = STMLCDIF_24BIT,	/* full 24 bit */
 	.fixed_screen = (void *)(0x40000000 + SZ_128M - MAX_FB_SIZE),
 	.fixed_screen_size = MAX_FB_SIZE,
+	.enable = tx28_fb_enable,
 };
 
 static struct device_d ldcif_dev = {
 	.name = "stmfb",
 	.map_base = IMX_FB_BASE,
 	.size = 4096,
-	.platform_data = &imxfb_mode,
+	.platform_data = &tx28_fb_pdata,
 };
 
 static const uint32_t tx28_starterkit_pad_setup[] = {
@@ -360,9 +379,9 @@ void base_board_init(void)
 
 	register_device(&mci_socket);
 
-	if (imxfb_mode.fixed_screen < (void *)&_end) {
+	if (tx28_fb_pdata.fixed_screen < (void *)&_end) {
 		printf("Warning: fixed_screen overlaps barebox\n");
-		imxfb_mode.fixed_screen = NULL;
+		tx28_fb_pdata.fixed_screen = NULL;
 	}
 
 	register_device(&ldcif_dev);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
