Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f0Rsg-0003jg-MG
 for barebox@lists.infradead.org; Mon, 26 Mar 2018 13:09:48 +0000
Received: by mail-pg0-x242.google.com with SMTP id 201so1842784pgg.3
 for <barebox@lists.infradead.org>; Mon, 26 Mar 2018 06:09:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 26 Mar 2018 06:09:15 -0700
Message-Id: <20180326130915.8726-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180326130915.8726-1-andrew.smirnov@gmail.com>
References: <20180326130915.8726-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/3] serial: Check result of console_unregister()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

In order to allow 'serdev' devices to prevent parent console device
removal and correspondign memory deallocation add code to all serial
driver to check result of console_unregister() and bail out early if
it is unsuccessful.

One example of a use-case for this would be a reset handler relying on
a serdev device for transport. Without this patch underlying console
device would be removed and de-allocated before reset handler is even
run thus leading to unpredictable behaviour and crashes.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/serial/serial_auart.c    | 6 +++++-
 drivers/serial/serial_cadence.c  | 6 +++++-
 drivers/serial/serial_clps711x.c | 6 +++++-
 drivers/serial/serial_imx.c      | 6 +++++-
 drivers/serial/serial_lpuart.c   | 6 +++++-
 drivers/serial/serial_pxa.c      | 6 +++++-
 drivers/serial/serial_s3c.c      | 6 +++++-
 drivers/serial/stm-serial.c      | 6 +++++-
 include/console.h                | 2 +-
 9 files changed, 41 insertions(+), 9 deletions(-)

diff --git a/drivers/serial/serial_auart.c b/drivers/serial/serial_auart.c
index c3b9a1995..9bd0d991e 100644
--- a/drivers/serial/serial_auart.c
+++ b/drivers/serial/serial_auart.c
@@ -224,9 +224,13 @@ static int auart_serial_probe(struct device_d *dev)
 static void auart_serial_remove(struct device_d *dev)
 {
 	struct auart_priv *priv = dev->priv;
+	int ret;
 
 	auart_serial_flush(&priv->cdev);
-	console_unregister(&priv->cdev);
+	ret = console_unregister(&priv->cdev);
+	if (ret < 0)
+		return;
+
 	free(priv);
 }
 
diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
index 36dfa2084..f43d98172 100644
--- a/drivers/serial/serial_cadence.c
+++ b/drivers/serial/serial_cadence.c
@@ -270,8 +270,12 @@ err_free:
 static void cadence_serial_remove(struct device_d *dev)
 {
 	struct cadence_serial_priv *priv = dev->priv;
+	int ret;
+
+	ret = console_unregister(&priv->cdev);
+	if (ret < 0)
+		return;
 
-	console_unregister(&priv->cdev);
 	free(priv);
 }
 
diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index ad14373ac..24ae3fdd3 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -184,9 +184,13 @@ out_err:
 static void clps711x_remove(struct device_d *dev)
 {
 	struct clps711x_uart *s = dev->priv;
+	int ret;
 
 	clps711x_flush(&s->cdev);
-	console_unregister(&s->cdev);
+	ret = console_unregister(&s->cdev);
+	if (ret < 0)
+		return;
+
 	free(s);
 }
 
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index e8c3836a6..fb865f554 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -274,9 +274,13 @@ err_free:
 static void imx_serial_remove(struct device_d *dev)
 {
 	struct imx_serial_priv *priv = dev->priv;
+	int ret;
 
 	imx_serial_flush(&priv->cdev);
-	console_unregister(&priv->cdev);
+	ret = console_unregister(&priv->cdev);
+	if (ret < 0)
+		return;
+
 	free(priv);
 }
 
diff --git a/drivers/serial/serial_lpuart.c b/drivers/serial/serial_lpuart.c
index 52fb6d39c..42fab8a56 100644
--- a/drivers/serial/serial_lpuart.c
+++ b/drivers/serial/serial_lpuart.c
@@ -194,9 +194,13 @@ err_free:
 static void lpuart_serial_remove(struct device_d *dev)
 {
 	struct lpuart *lpuart = dev->priv;
+	int ret;
 
 	lpuart_serial_flush(&lpuart->cdev);
-	console_unregister(&lpuart->cdev);
+	ret = console_unregister(&lpuart->cdev);
+	if (ret < 0)
+		return;
+
 	release_region(lpuart->io);
 	clk_put(lpuart->clk);
 
diff --git a/drivers/serial/serial_pxa.c b/drivers/serial/serial_pxa.c
index 1a4d7b430..146f19cf3 100644
--- a/drivers/serial/serial_pxa.c
+++ b/drivers/serial/serial_pxa.c
@@ -188,8 +188,12 @@ static int pxa_serial_probe(struct device_d *dev)
 static void pxa_serial_remove(struct device_d *dev)
 {
 	struct pxa_serial_priv *priv = dev->priv;
+	int ret;
+
+	ret = console_unregister(&priv->cdev);
+	if (ret < 0)
+		return;
 
-	console_unregister(&priv->cdev);
 	free(priv);
 }
 
diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
index 0a6e22d97..8c6443acd 100644
--- a/drivers/serial/serial_s3c.c
+++ b/drivers/serial/serial_s3c.c
@@ -205,9 +205,13 @@ static int s3c_serial_probe(struct device_d *dev)
 static void s3c_serial_remove(struct device_d *dev)
 {
 	struct s3c_uart *priv= dev->priv;
+	int ret;
 
 	s3c_serial_flush(&priv->cdev);
-	console_unregister(&priv->cdev);
+	ret = console_unregister(&priv->cdev);
+	if (ret < 0)
+		return;
+
 	free(priv);
 }
 
diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index 83328f455..3edcdd7e8 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -185,9 +185,13 @@ static int stm_serial_probe(struct device_d *dev)
 static void stm_serial_remove(struct device_d *dev)
 {
 	struct stm_priv *priv = dev->priv;
+	int ret;
 
 	stm_serial_flush(&priv->cdev);
-	console_unregister(&priv->cdev);
+	ret = console_unregister(&priv->cdev);
+	if (ret < 0)
+		return;
+
 	free(priv);
 }
 
diff --git a/include/console.h b/include/console.h
index 14f00fa1e..3870e67a4 100644
--- a/include/console.h
+++ b/include/console.h
@@ -95,7 +95,7 @@ console_is_serdev_node(struct console_device *cdev)
 }
 
 int console_register(struct console_device *cdev);
-int console_unregister(struct console_device *cdev);
+int __must_check console_unregister(struct console_device *cdev);
 
 struct console_device *console_get_by_dev(struct device_d *dev);
 struct console_device *console_get_by_name(const char *name);
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
