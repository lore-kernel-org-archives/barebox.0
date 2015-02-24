Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YQGsN-0004YH-Q4
 for barebox@lists.infradead.org; Tue, 24 Feb 2015 14:54:21 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Tue, 24 Feb 2015 15:53:49 +0100
Message-Id: <1424789630-10461-2-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <1424789630-10461-1-git-send-email-m.olbrich@pengutronix.de>
References: <1424789630-10461-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 2/3] friendlyarm-mini2440: add support for the W35 display
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---

I'm not quite sure about the sync flags. I tried to match what the kernel
does and it looks correct here.

Michael

 arch/arm/boards/friendlyarm-mini2440/Kconfig    |  6 ++++++
 arch/arm/boards/friendlyarm-mini2440/mini2440.c | 17 +++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/arch/arm/boards/friendlyarm-mini2440/Kconfig b/arch/arm/boards/friendlyarm-mini2440/Kconfig
index a8e79b3b076b..feb905e96e33 100644
--- a/arch/arm/boards/friendlyarm-mini2440/Kconfig
+++ b/arch/arm/boards/friendlyarm-mini2440/Kconfig
@@ -25,4 +25,10 @@ config MINI2440_VIDEO_SVGA
 	help
 	  This adds support for MINI2440 SVGA (1024x768) video output adapter.
 
+config MINI2440_VIDEO_W35
+	bool "Support W35 display (320x240)"
+	select MINI2440_VIDEO
+	help
+	  This adds support for Sharp 3.5 inch TFT display.
+
 endif
diff --git a/arch/arm/boards/friendlyarm-mini2440/mini2440.c b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
index 2dcb7db4dbde..af6da72d3a2f 100644
--- a/arch/arm/boards/friendlyarm-mini2440/mini2440.c
+++ b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
@@ -116,6 +116,23 @@ static struct fb_videomode s3c24x0_fb_modes[] = {
 		.vmode		= FB_VMODE_NONINTERLACED,
 	},
 #endif
+#ifdef CONFIG_MINI2440_VIDEO_W35
+	{
+		.name		= "W35",
+		.refresh	= 60,
+		.xres		= 320,
+		.left_margin	= 68,
+		.right_margin	= 66,
+		.hsync_len	= 4,
+		.yres		= 240,
+		.upper_margin	= 4,
+		.lower_margin	= 4,
+		.vsync_len	= 9,
+		.pixclock	= 115913,
+		.sync		= FB_SYNC_USE_PWREN | FB_SYNC_CLK_INVERT,
+		.vmode		= FB_VMODE_NONINTERLACED,
+	},
+#endif
 };
 
 static struct s3c_fb_platform_data s3c24x0_fb_data = {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
