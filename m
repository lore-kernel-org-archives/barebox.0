Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLf4n-0005Cw-Hr
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 15:49:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Dec 2009 16:47:58 +0100
Message-Id: <1261151305-18627-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1261151305-18627-9-git-send-email-s.hauer@pengutronix.de>
References: <1261151305-18627-1-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-2-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-3-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-4-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-5-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-6-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-7-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-8-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/36] imx ipu fb: Make fb_videomode const
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx-ipu-fb.h |    2 +-
 board/pcm043/pcm043.c                       |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx-ipu-fb.h b/arch/arm/mach-imx/include/mach/imx-ipu-fb.h
index c0cc883..53c6d26 100644
--- a/arch/arm/mach-imx/include/mach/imx-ipu-fb.h
+++ b/arch/arm/mach-imx/include/mach/imx-ipu-fb.h
@@ -25,7 +25,7 @@
  * struct mx3fb_platform_data - mx3fb platform data
  */
 struct imx_ipu_fb_platform_data {
-	struct fb_videomode	*mode;
+	const struct fb_videomode	*mode;
 	unsigned char		bpp;
 	void __iomem		*framebuffer;
 };
diff --git a/board/pcm043/pcm043.c b/board/pcm043/pcm043.c
index d93ef80..0e7f6d3 100644
--- a/board/pcm043/pcm043.c
+++ b/board/pcm043/pcm043.c
@@ -113,7 +113,7 @@ static const struct fb_videomode pcm043_fb_mode = {
 	.flag		= 0,
 };
 #else
-static struct fb_videomode pcm043_fb_mode = {
+static const struct fb_videomode pcm043_fb_mode = {
 	/* 240x320 @ 60 Hz */
 	.name		= "TX090",
 	.refresh	= 60,
-- 
1.6.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
