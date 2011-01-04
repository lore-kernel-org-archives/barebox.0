Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pa7zS-0006MU-2P
	for barebox@lists.infradead.org; Tue, 04 Jan 2011 14:36:02 +0000
Message-ID: <4D233040.3090606@free-electrons.com>
Date: Tue, 04 Jan 2011 15:35:44 +0100
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
Subject: [PATCH 4/4] ARM STM/i.MX: Add the reset control of LCD
To: barebox <barebox@lists.infradead.org>

Video controller of STM allow to control the reset bit of an external
LCD controller. When reset_lcd is set, CTRL1_RESET bit is used to
enable and disable LCD.

Signed-off-by: Gregory CLEMENT <gregory.clement@free-electrons.com>
---
 arch/arm/mach-stm/include/mach/fb.h |    1 +
 drivers/video/stm.c                 |   11 +++++++++++
 2 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-stm/include/mach/fb.h b/arch/arm/mach-stm/include/mach/fb.h
index f899433..3d40479 100644
--- a/arch/arm/mach-stm/include/mach/fb.h
+++ b/arch/arm/mach-stm/include/mach/fb.h
@@ -39,6 +39,7 @@ struct imx_fb_videomode {
 	unsigned ld_intf_width;	/**< refer STMLCDIF_* macros */
 	unsigned data_mode;
 	u32 bits_per_pixel;
+	unsigned reset_lcd; /** use LCD_RESET signal*/
 };
 
 #endif /* __MACH_FB_H */
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 3dc2abe..b1bb9b3 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -48,6 +48,7 @@
 # define CTRL1_FIFO_CLEAR (1 << 21)
 # define SET_BYTE_PACKAGING(x) (((x) & 0xf) << 16)
 # define GET_BYTE_PACKAGING(x) (((x) >> 16) & 0xf)
+# define CTRL1_RESET (1 << 0)
 
 #ifdef CONFIG_ARCH_IMX28
 # define HW_LCDIF_CTRL2 0x20
@@ -271,6 +272,11 @@ static void stmfb_enable_controller(struct fb_info *fb_info)
 
 	/* stop FIFO reset */
 	writel(CTRL1_FIFO_CLEAR, fbi->base + HW_LCDIF_CTRL1 + BIT_CLR);
+
+	/* enable LCD using LCD_RESET signal*/
+	if (fbi->pdata->reset_lcd)
+		writel(CTRL1_RESET,  fbi->base + HW_LCDIF_CTRL1 + BIT_SET);
+
 	/* start the engine right now */
 	writel(CTRL_RUN, fbi->base + HW_LCDIF_CTRL + BIT_SET);
 }
@@ -281,6 +287,11 @@ static void stmfb_disable_controller(struct fb_info *fb_info)
 	unsigned loop;
 	uint32_t reg;
 
+
+	/* disable LCD using LCD_RESET signal*/
+	if (fbi->pdata->reset_lcd)
+		writel(CTRL1_RESET,  fbi->base + HW_LCDIF_CTRL1 + BIT_CLR);
+
 	/*
 	 * Even if we disable the controller here, it will still continue
 	 * until its FIFOs are running out of data
-- 
1.7.0.4



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
