Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4-g21.free.fr ([212.27.42.4])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NsdAp-0000vd-UZ
	for barebox@lists.infradead.org; Fri, 19 Mar 2010 14:27:49 +0000
Received: from smtp4-g21.free.fr (localhost [127.0.0.1])
	by smtp4-g21.free.fr (Postfix) with ESMTP id 34CFF4C807F
	for <barebox@lists.infradead.org>; Fri, 19 Mar 2010 15:27:34 +0100 (CET)
Received: from localhost.localdomain (pac33-2-82-240-38-71.fbx.proxad.net
	[82.240.38.71])
	by smtp4-g21.free.fr (Postfix) with ESMTP id 442324C8195
	for <barebox@lists.infradead.org>; Fri, 19 Mar 2010 15:27:32 +0100 (CET)
From: Eric Benard <eric@eukrea.com>
Date: Fri, 19 Mar 2010 15:27:28 +0100
Message-Id: <1269008851-16647-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 1/4] i.MX25 : add Framebuffer support
To: barebox@lists.infradead.org

Signed-off-by: Eric Benard <eric@eukrea.com>
---
 drivers/video/Kconfig |    4 ++--
 drivers/video/imx.c   |   19 ++++++++++++++++++-
 2 files changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index dbdc7e2..7a89a3f 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -7,11 +7,11 @@ if VIDEO
 
 config DRIVER_VIDEO_IMX
 	bool "i.MX framebuffer driver"
-	depends on ARCH_IMX1 || ARCH_IMX21 || ARCH_IMX27
+	depends on ARCH_IMX1 || ARCH_IMX21 || ARCH_IMX25 || ARCH_IMX27
 
 config IMXFB_DRIVER_VIDEO_IMX_OVERLAY
 	bool "i.MX framebuffer overlay support"
-	depends on DRIVER_VIDEO_IMX && (ARCH_IMX27 || ARCH_IMX21)
+	depends on DRIVER_VIDEO_IMX && (ARCH_IMX27 || ARCH_IMX25 || ARCH_IMX21)
 
 config DRIVER_VIDEO_IMX_IPU
 	bool "i.MX31/35 framebuffer driver"
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index 9a30ca4..ef3f929 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -255,7 +255,12 @@ static void imxfb_enable_controller(struct fb_info *info)
 	PCCR0 |= PCCR0_LCDC_EN;
 	PCCR1 |= PCCR1_HCLK_LCDC;
 #endif
-
+#ifdef CONFIG_ARCH_IMX25
+	writel(readl(IMX_CCM_BASE + CCM_CGCR0) | (1 << 24) | (1 << 7),
+		IMX_CCM_BASE + CCM_CGCR0);
+	writel(readl(IMX_CCM_BASE + CCM_CGCR1) | (1 << 29),
+		IMX_CCM_BASE + CCM_CGCR1);
+#endif
 }
 
 static void imxfb_disable_controller(struct fb_info *info)
@@ -267,6 +272,12 @@ static void imxfb_disable_controller(struct fb_info *info)
 	PCCR0 &= ~PCCR0_LCDC_EN;
 	PCCR1 &= ~PCCR1_HCLK_LCDC;
 #endif
+#ifdef CONFIG_ARCH_IMX25
+	writel(readl(IMX_CCM_BASE + CCM_CGCR0) & ~((1 << 24) | (1 << 7)),
+		IMX_CCM_BASE + CCM_CGCR0);
+	writel(readl(IMX_CCM_BASE + CCM_CGCR1) & ~(1 << 29),
+		IMX_CCM_BASE + CCM_CGCR1);
+#endif
 }
 
 /*
@@ -509,6 +520,12 @@ static int imxfb_probe(struct device_d *dev)
 	PCCR0 &= ~PCCR0_LCDC_EN;
 	PCCR1 &= ~PCCR1_HCLK_LCDC;
 #endif
+#ifdef CONFIG_ARCH_IMX25
+	writel(readl(IMX_CCM_BASE + CCM_CGCR0) & ~((1 << 24) | (1 << 7)),
+		IMX_CCM_BASE + CCM_CGCR0);
+	writel(readl(IMX_CCM_BASE + CCM_CGCR1) & ~(1 << 29),
+		IMX_CCM_BASE + CCM_CGCR1);
+#endif
 
 	fbi = xzalloc(sizeof(*fbi));
 	info = &fbi->info;
-- 
1.6.3.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
