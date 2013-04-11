Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UQFg5-0006Qq-Ry
 for barebox@lists.infradead.org; Thu, 11 Apr 2013 11:28:30 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 8F576BF0E6
 for <barebox@lists.infradead.org>; Thu, 11 Apr 2013 13:27:29 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Thu, 11 Apr 2013 13:28:19 +0200
Message-Id: <1365679699-4475-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [RFC] omap4-fb: use uncached screen_base
To: barebox@lists.infradead.org

If the buffer is cached the image on the LCD is broken. Only some small
lines on the last rows. Flushing the cache "repairs" the image.

Is remap_range the right way to get a non cached buffer?
This patch only covers prealloc_screen, not dynamic
If the buffer is dynamic, is the use of dma_alloc_coherent right? Or should
the buffer remaped again if freed?
---
 drivers/video/omap4.c |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/drivers/video/omap4.c b/drivers/video/omap4.c
index 5642f25..1ade988 100644
--- a/drivers/video/omap4.c
+++ b/drivers/video/omap4.c
@@ -32,6 +32,8 @@
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-fb.h>
 
+#include <asm/mmu.h>
+
 #include "omap4.h"
 
 struct omap4fb_device {
@@ -489,6 +491,9 @@ static int omap4fb_probe(struct device_d *dev)
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
