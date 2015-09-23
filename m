Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeiXA-0008JA-Sf
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 11:48:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2015 13:47:25 +0200
Message-Id: <1443008851-26596-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/10] video: simple-panel: Add debug/error messages
To: Barebox List <barebox@lists.infradead.org>

Let the driver be more informative when something goes wrong.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/simple-panel.c | 28 +++++++++++++++++++++++-----
 1 file changed, 23 insertions(+), 5 deletions(-)

diff --git a/drivers/video/simple-panel.c b/drivers/video/simple-panel.c
index 3dd760b..4775509 100644
--- a/drivers/video/simple-panel.c
+++ b/drivers/video/simple-panel.c
@@ -30,6 +30,7 @@
 #include <i2c/i2c.h>
 
 struct simple_panel {
+	struct device_d *dev;
 	struct vpl vpl;
 	int enable_gpio;
 	int enable_active_high;
@@ -44,10 +45,14 @@ static int simple_panel_enable(struct simple_panel *panel)
 {
 	int ret;
 
+	dev_dbg(panel->dev, "enabling\n");
+
 	if (panel->backlight_node && !panel->backlight) {
 		panel->backlight = of_backlight_find(panel->backlight_node);
-		if (!panel->backlight)
+		if (!panel->backlight) {
+			dev_err(panel->dev, "Cannot find backlight\n");
 			return -ENODEV;
+		}
 	}
 
 	if (gpio_is_valid(panel->enable_gpio))
@@ -68,6 +73,8 @@ static int simple_panel_enable(struct simple_panel *panel)
 
 static int simple_panel_disable(struct simple_panel *panel)
 {
+	dev_dbg(panel->dev, "disabling\n");
+
 	if (panel->backlight)
 		backlight_set_brightness(panel->backlight, 0);
 
@@ -80,23 +87,33 @@ static int simple_panel_disable(struct simple_panel *panel)
 
 static int simple_panel_get_modes(struct simple_panel *panel, struct display_timings *timings)
 {
-	int ret = -ENOENT;
+	int ret;
 
 	if (panel->ddc_node && IS_ENABLED(CONFIG_DRIVER_VIDEO_EDID) &&
 	    IS_ENABLED(CONFIG_I2C)) {
 		struct i2c_adapter *i2c;
 
                 i2c = of_find_i2c_adapter_by_node(panel->ddc_node);
-		if (!i2c)
+		if (!i2c) {
+			dev_err(panel->dev, "cannot find edid i2c node\n");
 			return -ENODEV;
+		}
 		timings->edid = edid_read_i2c(i2c);
-		if (!timings->edid)
+		if (!timings->edid) {
+			dev_err(panel->dev, "cannot read edid data\n");
 			return -EINVAL;
+		}
 
 		ret = edid_to_display_timings(timings, timings->edid);
+		if (ret) {
+			dev_err(panel->dev, "cannot convert edid data to timings\n");
+			return ret;
+		}
 	}
 
-	return ret;
+	dev_err(panel->dev, "No modes found\n");
+
+	return -ENOENT;
 }
 
 static int simple_panel_ioctl(struct vpl *vpl, unsigned int port,
@@ -129,6 +146,7 @@ static int simple_panel_probe(struct device_d *dev)
 	panel->enable_gpio = of_get_named_gpio_flags(node, "enable-gpios", 0, &flags);
 	panel->vpl.node = node;
 	panel->vpl.ioctl = simple_panel_ioctl;
+	panel->dev = dev;
 
 	if (gpio_is_valid(panel->enable_gpio)) {
 		if (!(flags & OF_GPIO_ACTIVE_LOW))
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
