Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtxOk-0006bF-NN
 for barebox@lists.infradead.org; Fri, 20 Dec 2013 10:33:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Dec 2013 11:33:13 +0100
Message-Id: <1387535593-28467-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] video: ipufb: Use uncached memory for framebuffer
To: barebox@lists.infradead.org

Otherwise funny caching artifacts can occur on the screen.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-fb.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 18a7052..7276647 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -26,6 +26,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <asm-generic/div64.h>
+#include <asm/mmu.h>
 #include <mach/imx-ipu-fb.h>
 #include <linux/clk.h>
 #include <linux/err.h>
@@ -1022,8 +1023,12 @@ static int imxfb_probe(struct device_d *dev)
 	 * memory for screen usage
 	 */
 	fbi->info.screen_base = pdata->framebuffer;
-	if (fbi->info.screen_base == NULL) {
-		fbi->info.screen_base = malloc(fbi->info.screen_size);
+	if (fbi->info.screen_base) {
+		remap_range(fbi->info.screen_base,
+			fbi->info.screen_size,
+			mmu_get_pte_uncached_flags());
+	} else {
+		fbi->info.screen_base = dma_alloc_coherent(fbi->info.screen_size);
 		if (!fbi->info.screen_base)
 			return -ENOMEM;
 	}
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
