Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNhst-00019V-Nl
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 13:40:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Aug 2015 15:40:09 +0200
Message-Id: <1438954809-5962-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1438954809-5962-1-git-send-email-s.hauer@pengutronix.de>
References: <1438954809-5962-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] video: imx-ipu-v3: Use writecombine memory for fb
To: Barebox List <barebox@lists.infradead.org>

To speed up copying to the framebuffer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-v3/ipufb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index ebfcfcc..ea2e83b 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -214,7 +214,7 @@ static int ipufb_activate_var(struct fb_info *info)
 	struct ipufb_info *fbi = container_of(info, struct ipufb_info, info);
 
 	info->line_length = info->xres * (info->bits_per_pixel >> 3);
-	fbi->info.screen_base = dma_alloc_coherent(info->line_length * info->yres,
+	fbi->info.screen_base = dma_alloc_writecombine(info->line_length * info->yres,
 						   DMA_ADDRESS_BROKEN);
 	if (!fbi->info.screen_base)
 		return -ENOMEM;
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
