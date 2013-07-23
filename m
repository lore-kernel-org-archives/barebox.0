Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1WGv-0008GE-KA
 for barebox@lists.infradead.org; Tue, 23 Jul 2013 06:40:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jul 2013 08:40:09 +0200
Message-Id: <1374561610-686-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374561610-686-1-git-send-email-s.hauer@pengutronix.de>
References: <1374561610-686-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] serial: ns16550: Add clk support and make platform_data
 optional
To: barebox@lists.infradead.org

The clockrate was the only really needed field from platform data.
Add clk support to retrieve the clockrate and make platform data
optional.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_ns16550.c | 26 +++++++++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index dd50fc5..b010785 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -38,6 +38,7 @@
 #include <errno.h>
 #include <malloc.h>
 #include <io.h>
+#include <linux/clk.h>
 
 #include "serial_ns16550.h"
 #include <ns16550.h>
@@ -46,6 +47,7 @@ struct ns16550_priv {
 	struct console_device cdev;
 	struct NS16550_plat plat;
 	int access_width;
+	struct clk *clk;
 };
 
 static inline struct ns16550_priv *to_ns16550_priv(struct console_device *cdev)
@@ -243,10 +245,8 @@ static int ns16550_probe(struct device_d *dev)
 	struct ns16550_priv *priv;
 	struct console_device *cdev;
 	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
+	int ret;
 
-	/* we do expect platform specific data */
-	if (plat == NULL)
-		return -EINVAL;
 	dev->priv = dev_request_mem_region(dev, 0);
 
 	priv = xzalloc(sizeof(*priv));
@@ -254,6 +254,21 @@ static int ns16550_probe(struct device_d *dev)
 	cdev = &priv->cdev;
 	priv->plat = *plat;
 
+	if (!plat || !plat->clock) {
+		priv->clk = clk_get(dev, NULL);
+		if (IS_ERR(priv->clk)) {
+			ret = PTR_ERR(priv->clk);
+			goto err;
+		}
+		priv->plat.clock = clk_get_rate(priv->clk);
+	}
+
+	if (priv->plat.clock == 0) {
+		dev_err(dev, "no valid clockrate\n");
+		ret = -EINVAL;
+		goto err;
+	}
+
 	priv->access_width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
 
 	cdev->dev = dev;
@@ -266,6 +281,11 @@ static int ns16550_probe(struct device_d *dev)
 	ns16550_serial_init_port(cdev);
 
 	return console_register(cdev);
+
+err:
+	free(priv);
+
+	return ret;
 }
 
 /**
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
