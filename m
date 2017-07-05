Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x235.google.com ([2a00:1450:4010:c07::235])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSnv3-0008JS-06
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 17:16:57 +0000
Received: by mail-lf0-x235.google.com with SMTP id z78so97004432lff.0
 for <barebox@lists.infradead.org>; Wed, 05 Jul 2017 10:16:33 -0700 (PDT)
From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Date: Wed,  5 Jul 2017 20:18:06 +0300
Message-Id: <20170705171813.17527-4-andrey.gusakov@cogentembedded.com>
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
Subject: [PATCH v1 03/10] video: tc358767: fix timing calculation
To: barebox@lists.infradead.org
Cc: andrey.gusakov@cogentembedded.com

Fields in HTIM01 and HTIM02 regs should be even.
Recomended thresh_dly value is max_tu_symbol.

Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
---
 drivers/video/tc358767.c | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index e0b09af4f..cc6a35e70 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -717,7 +717,7 @@ static int tc_set_video_mode(struct tc_data *tc, struct fb_videomode *mode)
 	int htotal;
 	int vtotal;
 	int vid_sync_dly;
-	int max_tu_symbol;
+	int max_tu_symbol = TU_SIZE_RECOMMENDED - 1;
 
 	htotal = mode->hsync_len + mode->left_margin + mode->xres +
 		mode->right_margin;
@@ -731,14 +731,18 @@ static int tc_set_video_mode(struct tc_data *tc, struct fb_videomode *mode)
 		mode->upper_margin, mode->lower_margin, mode->vsync_len);
 	dev_dbg(tc->dev, "total: %dx%d\n", htotal, vtotal);
 
-
-	/* LCD Ctl Frame Size */
-	tc_write(VPCTRL0, (0x40 << 20) /* VSDELAY */ |
+	/*
+	 * Datasheet is not clear of vsdelay in case of DPI
+	 * assume we do not need any delay when DPI is a source of
+	 * sync signals
+	 */
+	tc_write(VPCTRL0, (0 << 20) /* VSDELAY */ |
 		 OPXLFMT_RGB888 | FRMSYNC_DISABLED | MSF_DISABLED);
-	tc_write(HTIM01, (mode->left_margin << 16) |		/* H back porch */
-			 (mode->hsync_len << 0));		/* Hsync */
-	tc_write(HTIM02, (mode->right_margin << 16) |		/* H front porch */
-			 (mode->xres << 0));			/* width */
+	/* LCD Ctl Frame Size */
+	tc_write(HTIM01, (ALIGN(mode->left_margin, 2) << 16) |	/* H back porch */
+			 (ALIGN(mode->hsync_len, 2) << 0));	/* Hsync */
+	tc_write(HTIM02, (ALIGN(mode->right_margin, 2) << 16) |	/* H front porch */
+			 (ALIGN(mode->xres, 2) << 0));		/* width */
 	tc_write(VTIM01, (mode->upper_margin << 16) |		/* V back porch */
 			 (mode->vsync_len << 0));		/* Vsync */
 	tc_write(VTIM02, (mode->lower_margin << 16) |		/* V front porch */
@@ -757,7 +761,7 @@ static int tc_set_video_mode(struct tc_data *tc, struct fb_videomode *mode)
 	/* DP Main Stream Attributes */
 	vid_sync_dly = mode->hsync_len + mode->left_margin + mode->xres;
 	tc_write(DP0_VIDSYNCDELAY,
-		 (0x003e << 16) |	/* thresh_dly */
+		 (max_tu_symbol << 16) |	/* thresh_dly */
 		 (vid_sync_dly << 0));
 
 	tc_write(DP0_TOTALVAL, (vtotal << 16) | (htotal));
@@ -779,7 +783,6 @@ static int tc_set_video_mode(struct tc_data *tc, struct fb_videomode *mode)
 	 *              (output active video bandwidth in bytes))
 	 * Must be less than tu_size.
 	 */
-	max_tu_symbol = TU_SIZE_RECOMMENDED - 1;
 	tc_write(DP0_MISC, (max_tu_symbol << 23) | (TU_SIZE_RECOMMENDED << 16) | BPC_8);
 
 	return 0;
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
