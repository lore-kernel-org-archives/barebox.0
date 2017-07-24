Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dZe6S-0004v2-8A
 for barebox@lists.infradead.org; Mon, 24 Jul 2017 14:12:58 +0000
From: Bastian Stender <bst@pengutronix.de>
Date: Mon, 24 Jul 2017 16:12:01 +0200
Message-Id: <20170724141201.8709-1-bst@pengutronix.de>
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
Subject: [PATCH] video/ssd1307fb: add support for VBAT
To: barebox@lists.infradead.org
Cc: Bastian Stender <bst@pengutronix.de>

Adds support to the driver to enable VBAT regulator at init time.

This is similar to ba14301e0356 ("fbdev/ssd1307fb: add support to enable
VBAT") and cfc5b2b551d8 ("fbdev/ssd1307fb: fix optional VBAT support")
in Linux kernel.

Signed-off-by: Bastian Stender <bst@pengutronix.de>
---
 drivers/video/ssd1307fb.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
index 7437d340ee..54e02e7220 100644
--- a/drivers/video/ssd1307fb.c
+++ b/drivers/video/ssd1307fb.c
@@ -24,6 +24,7 @@
 #include <of_device.h>
 #include <gpio.h>
 #include <of_gpio.h>
+#include <regulator.h>
 
 #define SSD1307FB_DATA                          0x40
 #define SSD1307FB_COMMAND                       0x80
@@ -70,6 +71,7 @@ struct ssd1307fb_par {
 	u32 prechargep1;
 	u32 prechargep2;
 	int reset;
+	struct regulator *vbat;
 	u32 seg_remap;
 	u32 vcomh;
 	u32 width;
@@ -422,6 +424,12 @@ static int ssd1307fb_probe(struct device_d *dev)
 		goto fb_alloc_error;
 	}
 
+	par->vbat = regulator_get(&client->dev, "vbat-supply");
+	if (IS_ERR(par->vbat)) {
+		dev_info(&client->dev, "Will not use VBAT");
+		par->vbat = NULL;
+	}
+
 	ret = of_property_read_u32(node, "solomon,width", &par->width);
 	if (ret) {
 		dev_err(&client->dev,
@@ -505,11 +513,26 @@ static int ssd1307fb_probe(struct device_d *dev)
 		goto reset_oled_error;
 	}
 
+	if (par->vbat) {
+		ret = regulator_disable(par->vbat);
+		if (ret < 0)
+			goto reset_oled_error;
+	}
+
 	i2c_set_clientdata(client, info);
 
 	/* Reset the screen */
 	gpio_set_value(par->reset, 0);
 	udelay(4);
+
+	if (par->vbat) {
+		ret = regulator_enable(par->vbat);
+		if (ret < 0)
+			goto reset_oled_error;
+	}
+
+	mdelay(100);
+
 	gpio_set_value(par->reset, 1);
 	udelay(4);
 
@@ -548,6 +571,7 @@ static int ssd1307fb_probe(struct device_d *dev)
 panel_init_error:
 reset_oled_error:
 fb_alloc_error:
+	regulator_disable(par->vbat);
 	free(info);
 	return ret;
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
