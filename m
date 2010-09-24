Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oz63F-0002pu-HP
	for barebox@lists.infradead.org; Fri, 24 Sep 2010 11:02:50 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Sep 2010 13:01:16 +0200
Message-Id: <1285326078-13582-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/3] imx/fb: struct imx_ipu_fb_platform_data remove const for
	mode
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-imx/include/mach/imx-ipu-fb.h |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx-ipu-fb.h b/arch/arm/mach-imx/include/mach/imx-ipu-fb.h
index dd65b04..8e1cc87 100644
--- a/arch/arm/mach-imx/include/mach/imx-ipu-fb.h
+++ b/arch/arm/mach-imx/include/mach/imx-ipu-fb.h
@@ -25,7 +25,7 @@
  * struct mx3fb_platform_data - mx3fb platform data
  */
 struct imx_ipu_fb_platform_data {
-	const struct fb_videomode	*mode;
+	struct fb_videomode	*mode;
 	unsigned char		bpp;
 	void __iomem		*framebuffer;
 	/** hook to enable backlight and stuff */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
