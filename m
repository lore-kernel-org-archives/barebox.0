Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7vZT-0008Au-Da
 for barebox@lists.infradead.org; Tue, 18 Aug 2020 06:58:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Aug 2020 08:58:07 +0200
Message-Id: <20200818065807.2144-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] video: ssd1307fb: Honour reset GPIO polarity
To: Barebox List <barebox@lists.infradead.org>

The reset GPIO polarity was hardcoded as active low. Honour the polarity
flags given in the device tree instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/ssd1307fb.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
index 45f479b0ef..0709399358 100644
--- a/drivers/video/ssd1307fb.c
+++ b/drivers/video/ssd1307fb.c
@@ -396,6 +396,7 @@ static int ssd1307fb_probe(struct device_d *dev)
 	struct ssd1307fb_par *par;
 	struct ssd1307fb_array *array;
 	u8 *vmem = NULL;
+	enum of_gpio_flags of_flags;
 	int ret;
 	int i, j;
 
@@ -413,8 +414,8 @@ static int ssd1307fb_probe(struct device_d *dev)
 
 	par->device_info = (struct ssd1307fb_deviceinfo *)match->data;
 
-	par->reset = of_get_named_gpio(node,
-					 "reset-gpios", 0);
+	par->reset = of_get_named_gpio_flags(node,
+					 "reset-gpios", 0, &of_flags);
 	if (!gpio_is_valid(par->reset) && par->reset == -EPROBE_DEFER) {
 		ret = -EPROBE_DEFER;
 		goto fb_alloc_error;
@@ -500,9 +501,12 @@ static int ssd1307fb_probe(struct device_d *dev)
 	info->screen_base = (u8 __force __iomem *)vmem;
 
 	if (par->reset >= 0) {
-		ret = gpio_request_one(par->reset,
-				       GPIOF_OUT_INIT_HIGH,
-				       "oled-reset");
+		unsigned long flags = GPIOF_OUT_INIT_ACTIVE;
+
+		if (of_flags & OF_GPIO_ACTIVE_LOW)
+			flags |= GPIOF_ACTIVE_LOW;
+
+		ret = gpio_request_one(par->reset, flags, "oled-reset");
 		if (ret) {
 			dev_err(&client->dev,
 				"failed to request gpio %d: %d\n",
@@ -519,7 +523,7 @@ static int ssd1307fb_probe(struct device_d *dev)
 
 	if (par->reset > 0) {
 		/* Reset the screen */
-		gpio_set_value(par->reset, 0);
+		gpio_set_active(par->reset, 1);
 		udelay(4);
 	}
 
@@ -531,7 +535,7 @@ static int ssd1307fb_probe(struct device_d *dev)
 		mdelay(100);
 
 	if (par->reset > 0) {
-		gpio_set_value(par->reset, 1);
+		gpio_set_active(par->reset, 0);
 		udelay(4);
 	}
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
