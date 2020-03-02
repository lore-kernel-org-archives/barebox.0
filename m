Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8jaU-0002an-Pu
 for barebox@lists.infradead.org; Mon, 02 Mar 2020 11:50:20 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 Mar 2020 12:49:55 +0100
Message-Id: <20200302114955.13897-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200302114955.13897-1-a.fatoum@pengutronix.de>
References: <20200302114955.13897-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/3] video/ssd1307fb: make reset GPIO optional
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Both reset GPIO and regulator are optional as per the binding and the
driver can work without if we ignore their absence. Do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/ssd1307fb.c | 43 +++++++++++++++++++++------------------
 1 file changed, 23 insertions(+), 20 deletions(-)

diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
index cc50698670e0..835814bf5306 100644
--- a/drivers/video/ssd1307fb.c
+++ b/drivers/video/ssd1307fb.c
@@ -415,12 +415,8 @@ static int ssd1307fb_probe(struct device_d *dev)
 
 	par->reset = of_get_named_gpio(node,
 					 "reset-gpios", 0);
-	if (!gpio_is_valid(par->reset)) {
-		ret = par->reset;
-		if (ret != -EPROBE_DEFER)
-			dev_err(&client->dev,
-				"Couldn't get named gpio 'reset-gpios': %s.\n",
-				strerror(-ret));
+	if (!gpio_is_valid(par->reset) && par->reset == -EPROBE_DEFER) {
+		ret = -EPROBE_DEFER;
 		goto fb_alloc_error;
 	}
 
@@ -503,14 +499,16 @@ static int ssd1307fb_probe(struct device_d *dev)
 
 	info->screen_base = (u8 __force __iomem *)vmem;
 
-	ret = gpio_request_one(par->reset,
-			       GPIOF_OUT_INIT_HIGH,
-			       "oled-reset");
-	if (ret) {
-		dev_err(&client->dev,
-			"failed to request gpio %d: %d\n",
-			par->reset, ret);
-		goto reset_oled_error;
+	if (par->reset >= 0) {
+		ret = gpio_request_one(par->reset,
+				       GPIOF_OUT_INIT_HIGH,
+				       "oled-reset");
+		if (ret) {
+			dev_err(&client->dev,
+				"failed to request gpio %d: %d\n",
+				par->reset, ret);
+			goto reset_oled_error;
+		}
 	}
 
 	ret = regulator_disable(par->vbat);
@@ -519,18 +517,23 @@ static int ssd1307fb_probe(struct device_d *dev)
 
 	i2c_set_clientdata(client, info);
 
-	/* Reset the screen */
-	gpio_set_value(par->reset, 0);
-	udelay(4);
+	if (par->reset > 0) {
+		/* Reset the screen */
+		gpio_set_value(par->reset, 0);
+		udelay(4);
+	}
 
 	ret = regulator_enable(par->vbat);
 	if (ret < 0)
 		goto reset_oled_error;
 
-	mdelay(100);
+	if (par->vbat)
+		mdelay(100);
 
-	gpio_set_value(par->reset, 1);
-	udelay(4);
+	if (par->reset > 0) {
+		gpio_set_value(par->reset, 1);
+		udelay(4);
+	}
 
 	ret = ssd1307fb_init(par);
 	if (ret)
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
