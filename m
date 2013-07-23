Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1WGv-0008GC-K9
 for barebox@lists.infradead.org; Tue, 23 Jul 2013 06:40:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jul 2013 08:40:07 +0200
Message-Id: <1374561610-686-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] serial: ns16550: introduce private struct
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_ns16550.c | 37 ++++++++++++++++++++++++++++---------
 1 file changed, 28 insertions(+), 9 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index b792ba5..f9a17f4 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -42,6 +42,17 @@
 #include "serial_ns16550.h"
 #include <ns16550.h>
 
+struct ns16550_priv {
+	struct console_device cdev;
+	struct NS16550_plat plat;
+	int access_width;
+};
+
+static inline struct ns16550_priv *to_ns16550_priv(struct console_device *cdev)
+{
+	return container_of(cdev, struct ns16550_priv, cdev);
+}
+
 /**
  * @brief read register
  *
@@ -52,9 +63,10 @@
  */
 static uint32_t ns16550_read(struct console_device *cdev, uint32_t off)
 {
+	struct ns16550_priv *priv = to_ns16550_priv(cdev);
 	struct device_d *dev = cdev->dev;
-	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
-	int width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
+	struct NS16550_plat *plat = &priv->plat;
+	int width = priv->access_width;
 
 	off <<= plat->shift;
 
@@ -82,9 +94,10 @@ static uint32_t ns16550_read(struct console_device *cdev, uint32_t off)
 static void ns16550_write(struct console_device *cdev, uint32_t val,
 			  uint32_t off)
 {
+	struct ns16550_priv *priv = to_ns16550_priv(cdev);
 	struct device_d *dev = cdev->dev;
-	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
-	int width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
+	struct NS16550_plat *plat = &priv->plat;
+	int width = priv->access_width;
 
 	off <<= plat->shift;
 
@@ -117,8 +130,8 @@ static void ns16550_write(struct console_device *cdev, uint32_t val,
 static inline unsigned int ns16550_calc_divisor(struct console_device *cdev,
 					 unsigned int baudrate)
 {
-	struct NS16550_plat *plat = (struct NS16550_plat *)
-	    cdev->dev->platform_data;
+	struct ns16550_priv *priv = to_ns16550_priv(cdev);
+	struct NS16550_plat *plat = &priv->plat;
 	unsigned int clk = plat->clock;
 
 	return (clk / MODE_X_DIV / baudrate);
@@ -136,8 +149,8 @@ static inline unsigned int ns16550_calc_divisor(struct console_device *cdev,
 static int ns16550_setbaudrate(struct console_device *cdev, int baud_rate)
 {
 	unsigned int baud_divisor = ns16550_calc_divisor(cdev, baud_rate);
-	struct NS16550_plat *plat = (struct NS16550_plat *)
-	    cdev->dev->platform_data;
+	struct ns16550_priv *priv = to_ns16550_priv(cdev);
+	struct NS16550_plat *plat = &priv->plat;
 
 	ns16550_write(cdev, LCR_BKSE, lcr);
 	ns16550_write(cdev, baud_divisor & 0xff, dll);
@@ -227,6 +240,7 @@ static int ns16550_tstc(struct console_device *cdev)
  */
 static int ns16550_probe(struct device_d *dev)
 {
+	struct ns16550_priv *priv;
 	struct console_device *cdev;
 	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
 
@@ -235,7 +249,12 @@ static int ns16550_probe(struct device_d *dev)
 		return -EINVAL;
 	dev->priv = dev_request_mem_region(dev, 0);
 
-	cdev = xzalloc(sizeof(*cdev));
+	priv = xzalloc(sizeof(*priv));
+
+	cdev = &priv->cdev;
+	priv->plat = *plat;
+
+	priv->access_width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
 
 	cdev->dev = dev;
 	if (plat->f_caps)
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
