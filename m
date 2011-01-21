Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PgFK3-0003Gl-3Y
	for barebox@lists.infradead.org; Fri, 21 Jan 2011 11:38:33 +0000
Message-ID: <4D39700F.3030707@free-electrons.com>
Date: Fri, 21 Jan 2011 12:37:51 +0100
From: Gregory CLEMENT <gregory.clement@free-electrons.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 1/1] fb i.MX23/28: Add the reset control of LCD
To: barebox <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>

Video controller of STM allow to control the reset bit of an external
LCD controller. When reset_lcd is set, CTRL1_RESET bit is used to
enable and disable LCD.
Handle USE_LCD_RESET as a flag in imx_fb_platformdata.

Signed-off-by: Gregory CLEMENT <gregory.clement@free-electrons.com>
---
 arch/arm/mach-mxs/include/mach/fb.h |    3 +++
 drivers/video/stm.c                 |   11 +++++++++++
 2 files changed, 14 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-mxs/include/mach/fb.h b/arch/arm/mach-mxs/include/mach/fb.h
index 2b61dee..2b6825f 100644
--- a/arch/arm/mach-mxs/include/mach/fb.h
+++ b/arch/arm/mach-mxs/include/mach/fb.h
@@ -31,6 +31,8 @@
 /** swap RGB to BGR */
 #define FB_SYNC_SWAP_RGB	(1 << 31)
 
+#define USE_LCD_RESET		1
+
 struct imx_fb_platformdata {
 	struct fb_videomode *mode_list;
 	unsigned mode_cnt;
@@ -42,6 +44,7 @@ struct imx_fb_platformdata {
 	void *fixed_screen;	/**< if != NULL use this as framebuffer memory */
 	unsigned fixed_screen_size; /**< framebuffer memory size for fixed_screen */
 
+	unsigned flags;
 	void (*enable)(int enable); /**< hook to enable backlight */
 };
 
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 205cad1..ee2f026 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -48,6 +48,7 @@
 # define CTRL1_FIFO_CLEAR (1 << 21)
 # define SET_BYTE_PACKAGING(x) (((x) & 0xf) << 16)
 # define GET_BYTE_PACKAGING(x) (((x) >> 16) & 0xf)
+# define CTRL1_RESET (1 << 0)
 
 #ifdef CONFIG_ARCH_IMX28
 # define HW_LCDIF_CTRL2 0x20
@@ -253,6 +254,11 @@ static void stmfb_enable_controller(struct fb_info *fb_info)
 
 	/* stop FIFO reset */
 	writel(CTRL1_FIFO_CLEAR, fbi->base + HW_LCDIF_CTRL1 + BIT_CLR);
+
+	/* enable LCD using LCD_RESET signal*/
+	if (fbi->pdata->flags & USE_LCD_RESET)
+		writel(CTRL1_RESET,  fbi->base + HW_LCDIF_CTRL1 + BIT_SET);
+
 	/* start the engine right now */
 	writel(CTRL_RUN, fbi->base + HW_LCDIF_CTRL + BIT_SET);
 
@@ -266,6 +272,11 @@ static void stmfb_disable_controller(struct fb_info *fb_info)
 	unsigned loop;
 	uint32_t reg;
 
+
+	/* disable LCD using LCD_RESET signal*/
+	if (fbi->pdata->flags & USE_LCD_RESET)
+		writel(CTRL1_RESET,  fbi->base + HW_LCDIF_CTRL1 + BIT_CLR);
+
 	if (fbi->pdata->enable)
 		fbi->pdata->enable(0);
 
-- 
1.7.0.4



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
