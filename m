Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cyA3j-0007tS-Au
 for barebox@lists.infradead.org; Wed, 12 Apr 2017 04:39:13 +0000
Received: by mail-lf0-x243.google.com with SMTP id 75so1742569lfs.3
 for <barebox@lists.infradead.org>; Tue, 11 Apr 2017 21:38:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 12 Apr 2017 07:38:40 +0300
Message-Id: <20170412043840.18823-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] drivers: video: drop unused of_display_timings_exist()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/video/of_display_timing.c | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/drivers/video/of_display_timing.c b/drivers/video/of_display_timing.c
index 6a5bf62a3..20f9354a1 100644
--- a/drivers/video/of_display_timing.c
+++ b/drivers/video/of_display_timing.c
@@ -188,22 +188,3 @@ entryfail:
 	return NULL;
 }
 EXPORT_SYMBOL_GPL(of_get_display_timings);
-
-/**
- * of_display_timings_exist - check if a display-timings node is provided
- * @np: device_node with the timing
- **/
-int of_display_timings_exist(struct device_node *np)
-{
-	struct device_node *timings_np;
-
-	if (!np)
-		return -EINVAL;
-
-	timings_np = of_parse_phandle(np, "display-timings", 0);
-	if (!timings_np)
-		return -EINVAL;
-
-	return 1;
-}
-EXPORT_SYMBOL_GPL(of_display_timings_exist);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
