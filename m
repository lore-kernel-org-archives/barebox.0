Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pfr6t-00041k-Ce
	for barebox@lists.infradead.org; Thu, 20 Jan 2011 09:47:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jan 2011 10:46:57 +0100
Message-Id: <1295516821-8988-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/10] fb i.MX23/28: add platform data hook to enable backlight
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-stm/include/mach/fb.h |    2 ++
 drivers/video/stm.c                 |    6 ++++++
 2 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-stm/include/mach/fb.h b/arch/arm/mach-stm/include/mach/fb.h
index 2eade76..3c53f1a 100644
--- a/arch/arm/mach-stm/include/mach/fb.h
+++ b/arch/arm/mach-stm/include/mach/fb.h
@@ -40,6 +40,8 @@ struct imx_fb_videomode {
 
 	void *fixed_screen;	/**< if != NULL use this as framebuffer memory */
 	unsigned fixed_screen_size; /**< framebuffer memory size for fixed_screen */
+
+	void (*enable)(int enable); /**< hook to enable backlight */
 };
 
 #endif /* __MACH_FB_H */
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index fc90b6a..8d6361e 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -255,6 +255,9 @@ static void stmfb_enable_controller(struct fb_info *fb_info)
 	writel(CTRL1_FIFO_CLEAR, fbi->base + HW_LCDIF_CTRL1 + BIT_CLR);
 	/* start the engine right now */
 	writel(CTRL_RUN, fbi->base + HW_LCDIF_CTRL + BIT_SET);
+
+	if (fbi->pdata->enable)
+		fbi->pdata->enable(1);
 }
 
 static void stmfb_disable_controller(struct fb_info *fb_info)
@@ -263,6 +266,9 @@ static void stmfb_disable_controller(struct fb_info *fb_info)
 	unsigned loop;
 	uint32_t reg;
 
+	if (fbi->pdata->enable)
+		fbi->pdata->enable(0);
+
 	/*
 	 * Even if we disable the controller here, it will still continue
 	 * until its FIFOs are running out of data
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
