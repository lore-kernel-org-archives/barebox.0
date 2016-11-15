Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c6f0v-0001za-TJ
 for barebox@lists.infradead.org; Tue, 15 Nov 2016 14:47:10 +0000
Received: by mail-pf0-x241.google.com with SMTP id c4so5563968pfb.3
 for <barebox@lists.infradead.org>; Tue, 15 Nov 2016 06:46:49 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Nov 2016 06:46:45 -0800
Message-Id: <1479221205-13573-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] i2c-mux-pca954x: Add code to control reset line
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Most recent device tree binding for that mux support specifying a GPIO
connected to a reset line of that chip. Add code to handle that binding
in order to be able to use the chip on boards that leverage
aforementioned functionality.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/i2c/muxes/i2c-mux-pca954x.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/i2c/muxes/i2c-mux-pca954x.c b/drivers/i2c/muxes/i2c-mux-pca954x.c
index baeae7b..0d5515b 100644
--- a/drivers/i2c/muxes/i2c-mux-pca954x.c
+++ b/drivers/i2c/muxes/i2c-mux-pca954x.c
@@ -45,6 +45,8 @@
 #include <i2c/i2c-algo-bit.h>
 #include <i2c/i2c-mux.h>
 #include <init.h>
+#include <gpio.h>
+#include <of_gpio.h>
 
 #define PCA954X_MAX_NCHANS 8
 
@@ -179,6 +181,7 @@ static int pca954x_probe(struct device_d *dev)
 	int num, force;
 	struct pca954x *data;
 	int ret = -ENODEV;
+	int gpio;
 
 	data = kzalloc(sizeof(struct pca954x), GFP_KERNEL);
 	if (!data) {
@@ -188,6 +191,10 @@ static int pca954x_probe(struct device_d *dev)
 
 	i2c_set_clientdata(client, data);
 
+	gpio = of_get_named_gpio(dev->device_node, "reset-gpios", 0);
+	if (gpio_is_valid(gpio))
+		gpio_direction_output(gpio, 1);
+
 	/* Read the mux register at addr to verify
 	 * that the mux is in fact present.
 	 */
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
