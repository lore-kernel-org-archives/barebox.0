Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aRFyC-00070j-Re
 for barebox@lists.infradead.org; Thu, 04 Feb 2016 09:12:57 +0000
Received: by mail-lb0-x22c.google.com with SMTP id bc4so27292640lbc.2
 for <barebox@lists.infradead.org>; Thu, 04 Feb 2016 01:12:36 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  4 Feb 2016 12:12:19 +0300
Message-Id: <1454577139-31062-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] drivers: video: drop unused of_get_display_timing()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/video/of_display_timing.c | 25 -------------------------
 1 file changed, 25 deletions(-)

diff --git a/drivers/video/of_display_timing.c b/drivers/video/of_display_timing.c
index eb29ec6..6a5bf62 100644
--- a/drivers/video/of_display_timing.c
+++ b/drivers/video/of_display_timing.c
@@ -99,31 +99,6 @@ static int of_parse_display_timing(const struct device_node *np,
 }
 
 /**
- * of_get_display_timing - parse a display_timing entry
- * @np: device_node with the timing subnode
- * @name: name of the timing node
- * @dt: display_timing struct to fill
- **/
-int of_get_display_timing(struct device_node *np, const char *name,
-		struct fb_videomode *mode)
-{
-	struct device_node *timing_np;
-
-	if (!np)
-		return -EINVAL;
-
-	timing_np = of_get_child_by_name(np, name);
-	if (!timing_np) {
-		pr_err("%s: could not find node '%s'\n",
-			np->full_name, name);
-		return -ENOENT;
-	}
-
-	return of_parse_display_timing(timing_np, mode);
-}
-EXPORT_SYMBOL_GPL(of_get_display_timing);
-
-/**
  * of_get_display_timings - parse all display_timing entries from a device_node
  * @np: device_node with the subnodes
  **/
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
