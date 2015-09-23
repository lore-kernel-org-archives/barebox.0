Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeiX0-0008GX-Sd
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 11:48:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2015 13:47:26 +0200
Message-Id: <1443008851-26596-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1443008851-26596-1-git-send-email-s.hauer@pengutronix.de>
References: <1443008851-26596-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/10] video: simple-panel: Add support for device tree
 provided nodes
To: Barebox List <barebox@lists.infradead.org>

This adds support for display timings provided from device tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/simple-panel.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/video/simple-panel.c b/drivers/video/simple-panel.c
index 4775509..be39ff0 100644
--- a/drivers/video/simple-panel.c
+++ b/drivers/video/simple-panel.c
@@ -87,6 +87,7 @@ static int simple_panel_disable(struct simple_panel *panel)
 
 static int simple_panel_get_modes(struct simple_panel *panel, struct display_timings *timings)
 {
+	struct display_timings *modes;
 	int ret;
 
 	if (panel->ddc_node && IS_ENABLED(CONFIG_DRIVER_VIDEO_EDID) &&
@@ -111,6 +112,13 @@ static int simple_panel_get_modes(struct simple_panel *panel, struct display_tim
 		}
 	}
 
+	modes = of_get_display_timings(panel->dev->device_node);
+	if (modes) {
+		timings->modes = modes->modes;
+		timings->num_modes = modes->num_modes;
+		return 0;
+	}
+
 	dev_err(panel->dev, "No modes found\n");
 
 	return -ENOENT;
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
