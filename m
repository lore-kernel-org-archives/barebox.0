Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKrqG-0001eq-Si
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 18:46:37 +0000
Received: from antimon.Speedport_W_504V_Typ_A (p5483101C.dip0.t-ipconnect.de
 [84.131.16.28]) by lynxeye.de (Postfix) with ESMTPA id C03F726C2003
 for <barebox@lists.infradead.org>; Wed,  6 Jul 2016 20:44:47 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed,  6 Jul 2016 20:44:36 +0200
Message-Id: <1467830680-5909-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1467830680-5909-1-git-send-email-dev@lynxeye.de>
References: <1467830680-5909-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 3/7] video: displaytimings: don't double free display timings
To: barebox@lists.infradead.org

display_timings_release() already frees the disp struct, make sure
to not try to free it again in case of an error.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/video/of_display_timing.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/video/of_display_timing.c b/drivers/video/of_display_timing.c
index 6a5bf62..6532dd5 100644
--- a/drivers/video/of_display_timing.c
+++ b/drivers/video/of_display_timing.c
@@ -163,7 +163,8 @@ struct display_timings *of_get_display_timings(struct device_node *np)
 			 */
 			pr_err("%s: error in timing %d\n",
 				np->full_name, disp->num_modes + 1);
-			goto timingfail;
+			display_timings_release(disp);
+			return NULL;
 		}
 
 		mode->name = xstrdup(entry->name);
@@ -180,8 +181,6 @@ struct display_timings *of_get_display_timings(struct device_node *np)
 
 	return disp;
 
-timingfail:
-	display_timings_release(disp);
 entryfail:
 	free(disp);
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
