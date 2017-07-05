Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22f.google.com ([2a00:1450:4010:c07::22f])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSnvC-0008OH-7O
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 17:17:05 +0000
Received: by mail-lf0-x22f.google.com with SMTP id b207so138233156lfg.2
 for <barebox@lists.infradead.org>; Wed, 05 Jul 2017 10:16:41 -0700 (PDT)
From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Date: Wed,  5 Jul 2017 20:18:13 +0300
Message-Id: <20170705171813.17527-11-andrey.gusakov@cogentembedded.com>
In-Reply-To: <20170705171813.17527-1-andrey.gusakov@cogentembedded.com>
References: <20170705171813.17527-1-andrey.gusakov@cogentembedded.com>
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
Subject: [PATCH v1 10/10] video: tc358767: accept any hsync and vsync polatiry
To: barebox@lists.infradead.org
Cc: andrey.gusakov@cogentembedded.com

Do not fix modes. Instead set any sync polarity passed through
VPL_PREPARE and fb_videomode.

Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
---
 drivers/video/tc358767.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index 0ef9e642d..619f259ff 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -725,6 +725,7 @@ err_dpcd_inval:
 static int tc_set_video_mode(struct tc_data *tc, struct fb_videomode *mode)
 {
 	int ret;
+	u32 reg;
 	int htotal;
 	int vtotal;
 	int vid_sync_dly;
@@ -785,8 +786,12 @@ static int tc_set_video_mode(struct tc_data *tc, struct fb_videomode *mode)
 
 	tc_write(DP0_SYNCVAL, (mode->vsync_len << 16) | (mode->hsync_len << 0));
 
-	tc_write(DPIPXLFMT, VS_POL_ACTIVE_LOW | HS_POL_ACTIVE_LOW |
-		 DE_POL_ACTIVE_HIGH | SUB_CFG_TYPE_CONFIG1 | DPI_BPP_RGB888);
+	reg = DE_POL_ACTIVE_HIGH | SUB_CFG_TYPE_CONFIG1 | DPI_BPP_RGB888;
+	if (!(mode->sync & FB_SYNC_VERT_HIGH_ACT))
+		reg |= VS_POL_ACTIVE_LOW;
+	if (!(mode->sync & FB_SYNC_HOR_HIGH_ACT))
+		reg |= HS_POL_ACTIVE_LOW;
+	tc_write(DPIPXLFMT, reg);
 
 	/*
 	 * Recommended maximum number of symbols transferred in a transfer unit:
@@ -1301,10 +1306,6 @@ static int tc_get_videomodes(struct tc_data *tc, struct display_timings *timings
 		return ret;
 	}
 
-	/* hsync, vsync active low */
-	timings->modes->sync &= ~(FB_SYNC_HOR_HIGH_ACT |
-				  FB_SYNC_VERT_HIGH_ACT);
-
 	return ret;
 }
 
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
