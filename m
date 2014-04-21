Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WcKdh-0001VY-Sl
 for barebox@lists.infradead.org; Mon, 21 Apr 2014 20:16:31 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p54831C5A.dip0.t-ipconnect.de [84.131.28.90])
 by lynxeye.de (Postfix) with ESMTPA id EFE4F18B425A
 for <barebox@lists.infradead.org>; Mon, 21 Apr 2014 22:15:36 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 21 Apr 2014 22:15:25 +0200
Message-Id: <1398111326-21783-4-git-send-email-dev@lynxeye.de>
In-Reply-To: <1398111326-21783-1-git-send-email-dev@lynxeye.de>
References: <1398111326-21783-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 4/5] video: displaytimings: remove two broken error messages
To: barebox@lists.infradead.org

The error messages would dereference the just checked NULL
ptr. As those messages don't add much value without further
info just remove them.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/video/of_display_timing.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/video/of_display_timing.c b/drivers/video/of_display_timing.c
index 5dfd5b3f1cd0..eb29ec699ee6 100644
--- a/drivers/video/of_display_timing.c
+++ b/drivers/video/of_display_timing.c
@@ -109,10 +109,8 @@ int of_get_display_timing(struct device_node *np, const char *name,
 {
 	struct device_node *timing_np;
 
-	if (!np) {
-		pr_err("%s: no devicenode given\n", np->full_name);
+	if (!np)
 		return -EINVAL;
-	}
 
 	timing_np = of_get_child_by_name(np, name);
 	if (!timing_np) {
@@ -136,10 +134,8 @@ struct display_timings *of_get_display_timings(struct device_node *np)
 	struct device_node *native_mode;
 	struct display_timings *disp;
 
-	if (!np) {
-		pr_err("%s: no device node given\n", np->full_name);
+	if (!np)
 		return NULL;
-	}
 
 	timings_np = of_get_child_by_name(np, "display-timings");
 	if (!timings_np) {
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
