Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6jqt-0005t0-QJ
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 21:33:57 +0000
Received: by mail-pl0-x243.google.com with SMTP id x4-v6so4780417pln.7
 for <barebox@lists.infradead.org>; Thu, 12 Apr 2018 14:33:45 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 12 Apr 2018 14:33:16 -0700
Message-Id: <20180412213317.13199-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180412213317.13199-1-andrew.smirnov@gmail.com>
References: <20180412213317.13199-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 4/5] serial: Drop .remove functions from all drivers
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Depending on specifics, some 'serdev' devices might need prevent
parent console device from being removed and corresponding memory
deallocated to properly function until the very end of Barebox's
execution. An example of such a use-case would be a reset handler
relying on a serdev device for transport.

To avoid having to develop complicatione reference counting/ownership
scheme drop all of the code that calls console_unregister() and frees
the memory effectively making the problem above impossible to arise.

All of the de-initialization that serial drivers were doing in their
.remove functions was somewhat superflous anyway, so this change
should be pretty harmless.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/serial/serial_auart.c    | 11 -----------
 drivers/serial/serial_cadence.c  |  9 ---------
 drivers/serial/serial_clps711x.c | 10 ----------
 drivers/serial/serial_imx.c      | 10 ----------
 drivers/serial/serial_lpuart.c   | 13 -------------
 drivers/serial/serial_pxa.c      |  9 ---------
 drivers/serial/serial_s3c.c      | 10 ----------
 drivers/serial/stm-serial.c      | 10 ----------
 8 files changed, 82 deletions(-)

diff --git a/drivers/serial/serial_auart.c b/drivers/serial/serial_auart.c
index c3b9a1995..05cc75797 100644
--- a/drivers/serial/serial_auart.c
+++ b/drivers/serial/serial_auart.c
@@ -220,16 +220,6 @@ static int auart_serial_probe(struct device_d *dev)
 	return 0;
 }
 
-
-static void auart_serial_remove(struct device_d *dev)
-{
-	struct auart_priv *priv = dev->priv;
-
-	auart_serial_flush(&priv->cdev);
-	console_unregister(&priv->cdev);
-	free(priv);
-}
-
 static const __maybe_unused struct of_device_id auart_serial_dt_ids[] = {
 	{
 		.compatible = "fsl,imx23-auart",
@@ -241,7 +231,6 @@ static const __maybe_unused struct of_device_id auart_serial_dt_ids[] = {
 static struct driver_d auart_serial_driver = {
 	.name = "auart_serial",
 	.probe = auart_serial_probe,
-	.remove = auart_serial_remove,
 	.of_compatible = DRV_OF_COMPAT(auart_serial_dt_ids),
 };
 console_platform_driver(auart_serial_driver);
diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
index 36dfa2084..0501c400b 100644
--- a/drivers/serial/serial_cadence.c
+++ b/drivers/serial/serial_cadence.c
@@ -267,14 +267,6 @@ err_free:
 	return ret;
 }
 
-static void cadence_serial_remove(struct device_d *dev)
-{
-	struct cadence_serial_priv *priv = dev->priv;
-
-	console_unregister(&priv->cdev);
-	free(priv);
-}
-
 static __maybe_unused struct of_device_id cadence_serial_dt_ids[] = {
 	{
 		.compatible = "xlnx,xuartps",
@@ -296,7 +288,6 @@ static struct platform_device_id cadence_serial_ids[] = {
 static struct driver_d cadence_serial_driver = {
 	.name   = "cadence_serial",
 	.probe  = cadence_serial_probe,
-	.remove = cadence_serial_remove,
 	.of_compatible = DRV_OF_COMPAT(cadence_serial_dt_ids),
 	.id_table = cadence_serial_ids,
 };
diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index ad14373ac..fa6342346 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -181,15 +181,6 @@ out_err:
 	return err;
 }
 
-static void clps711x_remove(struct device_d *dev)
-{
-	struct clps711x_uart *s = dev->priv;
-
-	clps711x_flush(&s->cdev);
-	console_unregister(&s->cdev);
-	free(s);
-}
-
 static struct of_device_id __maybe_unused clps711x_uart_dt_ids[] = {
 	{ .compatible = "cirrus,clps711x-uart", },
 };
@@ -197,7 +188,6 @@ static struct of_device_id __maybe_unused clps711x_uart_dt_ids[] = {
 static struct driver_d clps711x_driver = {
 	.name		= "clps711x-uart",
 	.probe		= clps711x_probe,
-	.remove		= clps711x_remove,
 	.of_compatible	= DRV_OF_COMPAT(clps711x_uart_dt_ids),
 };
 console_platform_driver(clps711x_driver);
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index e8c3836a6..c8af995aa 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -271,15 +271,6 @@ err_free:
 	return ret;
 }
 
-static void imx_serial_remove(struct device_d *dev)
-{
-	struct imx_serial_priv *priv = dev->priv;
-
-	imx_serial_flush(&priv->cdev);
-	console_unregister(&priv->cdev);
-	free(priv);
-}
-
 static __maybe_unused struct of_device_id imx_serial_dt_ids[] = {
 	{
 		.compatible = "fsl,imx1-uart",
@@ -313,7 +304,6 @@ static struct platform_device_id imx_serial_ids[] = {
 static struct driver_d imx_serial_driver = {
 	.name   = "imx_serial",
 	.probe  = imx_serial_probe,
-	.remove = imx_serial_remove,
 	.of_compatible = DRV_OF_COMPAT(imx_serial_dt_ids),
 	.id_table = imx_serial_ids,
 };
diff --git a/drivers/serial/serial_lpuart.c b/drivers/serial/serial_lpuart.c
index 8f87f7b9c..f28035a32 100644
--- a/drivers/serial/serial_lpuart.c
+++ b/drivers/serial/serial_lpuart.c
@@ -189,18 +189,6 @@ err_free:
 	return ret;
 }
 
-static void lpuart_serial_remove(struct device_d *dev)
-{
-	struct lpuart *lpuart = dev->priv;
-
-	lpuart_serial_flush(&lpuart->cdev);
-	console_unregister(&lpuart->cdev);
-	release_region(lpuart->io);
-	clk_put(lpuart->clk);
-
-	free(lpuart);
-}
-
 static struct of_device_id lpuart_serial_dt_ids[] = {
 	{ .compatible = "fsl,vf610-lpuart" },
 	{}
@@ -209,7 +197,6 @@ static struct of_device_id lpuart_serial_dt_ids[] = {
 static struct driver_d lpuart_serial_driver = {
 	.name   = "lpuart-serial",
 	.probe  = lpuart_serial_probe,
-	.remove = lpuart_serial_remove,
 	.of_compatible = DRV_OF_COMPAT(lpuart_serial_dt_ids),
 };
 console_platform_driver(lpuart_serial_driver);
diff --git a/drivers/serial/serial_pxa.c b/drivers/serial/serial_pxa.c
index 1a4d7b430..a427437b5 100644
--- a/drivers/serial/serial_pxa.c
+++ b/drivers/serial/serial_pxa.c
@@ -185,17 +185,8 @@ static int pxa_serial_probe(struct device_d *dev)
 	return 0;
 }
 
-static void pxa_serial_remove(struct device_d *dev)
-{
-	struct pxa_serial_priv *priv = dev->priv;
-
-	console_unregister(&priv->cdev);
-	free(priv);
-}
-
 static struct driver_d pxa_serial_driver = {
 	.name = "pxa_serial",
 	.probe = pxa_serial_probe,
-	.remove = pxa_serial_remove,
 };
 console_platform_driver(pxa_serial_driver);
diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
index 0a6e22d97..194556072 100644
--- a/drivers/serial/serial_s3c.c
+++ b/drivers/serial/serial_s3c.c
@@ -202,18 +202,8 @@ static int s3c_serial_probe(struct device_d *dev)
 	return 0;
 }
 
-static void s3c_serial_remove(struct device_d *dev)
-{
-	struct s3c_uart *priv= dev->priv;
-
-	s3c_serial_flush(&priv->cdev);
-	console_unregister(&priv->cdev);
-	free(priv);
-}
-
 static struct driver_d s3c_serial_driver = {
 	.name   = "s3c_serial",
 	.probe  = s3c_serial_probe,
-	.remove = s3c_serial_remove,
 };
 console_platform_driver(s3c_serial_driver);
diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index 83328f455..ea482415c 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -182,15 +182,6 @@ static int stm_serial_probe(struct device_d *dev)
 	return 0;
 }
 
-static void stm_serial_remove(struct device_d *dev)
-{
-	struct stm_priv *priv = dev->priv;
-
-	stm_serial_flush(&priv->cdev);
-	console_unregister(&priv->cdev);
-	free(priv);
-}
-
 static __maybe_unused struct of_device_id stm_serial_dt_ids[] = {
 	{
 		.compatible = "arm,pl011",
@@ -202,7 +193,6 @@ static __maybe_unused struct of_device_id stm_serial_dt_ids[] = {
 static struct driver_d stm_serial_driver = {
         .name   = "stm_serial",
         .probe  = stm_serial_probe,
-	.remove = stm_serial_remove,
 	.of_compatible = DRV_OF_COMPAT(stm_serial_dt_ids),
 };
 console_platform_driver(stm_serial_driver);
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
