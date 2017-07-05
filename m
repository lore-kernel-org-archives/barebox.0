Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22a.google.com ([2a00:1450:4010:c07::22a])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSnv7-0008Md-Il
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 17:17:01 +0000
Received: by mail-lf0-x22a.google.com with SMTP id b207so138232890lfg.2
 for <barebox@lists.infradead.org>; Wed, 05 Jul 2017 10:16:40 -0700 (PDT)
From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Date: Wed,  5 Jul 2017 20:18:12 +0300
Message-Id: <20170705171813.17527-10-andrey.gusakov@cogentembedded.com>
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
Subject: [PATCH v1 09/10] video: tc358767: filter out modes with too high
 pixelclock
To: barebox@lists.infradead.org
Cc: andrey.gusakov@cogentembedded.com

Minimum pixel clock period is 6.5 nS for DPI. Remove modes with
lower pixel clock period. Also sort modes in decreasing order
because currently first resolution in list is picked.

Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
---
 drivers/video/tc358767.c | 83 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index 246b49e07..0ef9e642d 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -1199,6 +1199,82 @@ err:
 	return ret;
 }
 
+static int tc_filter_videomodes(struct tc_data *tc, struct display_timings *timings)
+{
+	int i;
+	int num_modes = 0;
+	struct fb_videomode *mode, *valid_modes;
+
+	valid_modes = xzalloc(timings->num_modes * sizeof(struct fb_videomode));
+
+	/* first filter modes with too high pclock */
+	for (i = 0; i < timings->num_modes; i++) {
+		mode = &timings->modes[i];
+
+		/* minimum Pixel Clock Period for DPI is 6.5 nS = 6500 pS */
+		if (mode->pixclock < 6500) {
+			dev_dbg(tc->dev, "%dx%d@%d (%d KHz, flags 0x%08x, sync 0x%08x) skipped\n",
+				mode->xres, mode->yres, mode->refresh,
+				(int)PICOS2KHZ(mode->pixclock), mode->display_flags,
+				mode->sync);
+			/* remove from list */
+			mode->xres = mode->yres = 0;
+		}
+	}
+
+	/* then sort from hi to low */
+	do {
+		int index = -1;
+
+		/* find higest resolution */
+		for (i = 0; i < timings->num_modes; i++) {
+			mode = &timings->modes[i];
+			if (!(mode->xres && mode->yres))
+				continue;
+			if (index == -1) {
+				index = i;
+			} else {
+				/* compare square */
+				if (timings->modes[index].xres * timings->modes[index].yres <
+				    mode->xres * mode->yres)
+					index = i;
+			}
+		}
+
+		/* nothing left */
+		if (index == -1)
+			break;
+
+		/* copy to output list */
+		mode = &timings->modes[index];
+		memcpy(&valid_modes[num_modes], mode, sizeof(struct fb_videomode));
+		mode->xres = mode->yres = 0;
+		num_modes++;
+	} while (1);
+
+	free(timings->modes);
+	timings->modes = NULL;
+
+	if (!num_modes) {
+		free(valid_modes);
+		return -EINVAL;
+	}
+
+	timings->num_modes = num_modes;
+	timings->modes = valid_modes;
+
+	dev_dbg(tc->dev, "Valid modes (%d):\n", num_modes);
+	for (i = 0; i < timings->num_modes; i++) {
+		mode = &timings->modes[i];
+		dev_dbg(tc->dev, "%dx%d@%d (%d KHz, flags 0x%08x, sync 0x%08x)\n",
+			mode->xres, mode->yres, mode->refresh,
+			(int)PICOS2KHZ(mode->pixclock), mode->display_flags,
+			mode->sync);
+	}
+
+	return 0;
+}
+
 static int tc_get_videomodes(struct tc_data *tc, struct display_timings *timings)
 {
 	int ret;
@@ -1218,6 +1294,13 @@ static int tc_get_videomodes(struct tc_data *tc, struct display_timings *timings
 		return ret;
 	}
 
+	/* filter out unsupported due to high pixelxlock */
+	ret = tc_filter_videomodes(tc, timings);
+	if (ret < 0) {
+		dev_err(tc->dev, "No supported modes found\n");
+		return ret;
+	}
+
 	/* hsync, vsync active low */
 	timings->modes->sync &= ~(FB_SYNC_HOR_HIGH_ACT |
 				  FB_SYNC_VERT_HIGH_ACT);
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
