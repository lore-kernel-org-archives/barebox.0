Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UXq51-0004h5-4x
 for barebox@lists.infradead.org; Thu, 02 May 2013 09:45:36 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 0532BBF0E7
 for <barebox@lists.infradead.org>; Thu,  2 May 2013 11:43:05 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Thu, 2 May 2013 11:45:06 +0200
Message-Id: <1367487906-25318-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] omap4-fb: use uncached screen_base
To: barebox@lists.infradead.org

If the buffer is cached the image on the LCD is broken. Only some small
lines on the last rows. Flushing the cache "repairs" the image.

Use remap_range for preallocated screen and dma_alloc_coherent for
dynamic.

based on '[PATCH] omap4-fb: add driver' could be squashed in.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 drivers/video/omap4.c |   32 +++++++++++++++++++++++++-------
 1 files changed, 25 insertions(+), 7 deletions(-)

diff --git a/drivers/video/omap4.c b/drivers/video/omap4.c
index 5642f25..f510cb3 100644
--- a/drivers/video/omap4.c
+++ b/drivers/video/omap4.c
@@ -32,6 +32,8 @@
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-fb.h>
 
+#include <asm/mmu.h>
+
 #include "omap4.h"
 
 struct omap4fb_device {
@@ -63,7 +65,7 @@ struct omap4fb_device {
 		unsigned int lckd;
 		unsigned int pckd;
 	} divisor;
-
+	size_t dma_size;
 	void (*enable_fn)(int);
 
 	struct fb_videomode	video_modes[];
@@ -133,10 +135,12 @@ static void omap4fb_disable(struct fb_info *info)
 		 ~(DSS_DISPC_VIDn_ATTRIBUTES_VIDENABLE),
 		 &dispc->vid1.attributes);
 
-	if (fbi->prealloc_screen.addr == NULL)
+	if (fbi->prealloc_screen.addr == NULL) {
 		/* free frame buffer; but only when screen is not
 		 * preallocated */
-		free(info->screen_base);
+		if (info->screen_base)
+			dma_free_coherent(info->screen_base, fbi->dma_size);
+	}
 
 	info->screen_base = NULL;
 
@@ -285,15 +289,20 @@ static int omap4fb_activate_var(struct fb_info *info)
 		goto out;
 	}
 
+	/*Free old screen buf*/
+	if (!fbi->prealloc_screen.addr && info->screen_base)
+		dma_free_coherent(info->screen_base, fbi->dma_size);
+
+	fbi->dma_size = PAGE_ALIGN(size);
+
 	if (fbi->prealloc_screen.addr == NULL) {
 		/* case 1: no preallocated screen */
-		free(info->screen_base);
-		info->screen_base = memalign(0x100, size);
-	} else if (fbi->prealloc_screen.size < size) {
+		info->screen_base = dma_alloc_coherent(size);
+	} else if (fbi->prealloc_screen.size < fbi->dma_size) {
 		/* case 2: preallocated screen, but too small */
 		dev_err(fbi->dev,
 			"allocated framebuffer too small (%zu < %zu)\n",
-			fbi->prealloc_screen.size, size);
+			fbi->prealloc_screen.size, fbi->dma_size);
 		rc = -ENOMEM;
 		goto out;
 	} else {
@@ -486,9 +495,18 @@ static int omap4fb_probe(struct device_d *dev)
 	info->bits_per_pixel = pdata->bpp;
 
 	if (pdata->screen) {
+		if (!IS_ALIGNED(pdata->screen->start, PAGE_SIZE) ||
+		    !IS_ALIGNED(resource_size(pdata->screen), PAGE_SIZE)) {
+			dev_err(dev, "screen resource not aligned\n");
+			rc = -EINVAL;
+			goto out;
+		}
 		fbi->prealloc_screen.addr =
 				(void __iomem *)pdata->screen->start;
 		fbi->prealloc_screen.size = resource_size(pdata->screen);
+		remap_range(fbi->prealloc_screen.addr,
+			fbi->prealloc_screen.size,
+			mmu_get_pte_uncached_flags());
 	}
 
 	omap4fb_reset(fbi);
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
