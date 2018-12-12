Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gX5EE-00042y-Jr
 for barebox@lists.infradead.org; Wed, 12 Dec 2018 14:11:13 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 12 Dec 2018 15:10:51 +0100
Message-Id: <20181212141054.7513-4-r.czerwinski@pengutronix.de>
In-Reply-To: <20181212141054.7513-1-r.czerwinski@pengutronix.de>
References: <20181212141054.7513-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 3/6] serial_ns16550: add raspberry pi compatible and init
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Add the compatible for the Raspberry Pi AUX UART and an init function which
enables it via the aux register and configures the correct shift value.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/serial/serial_ns16550.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 8ddcfdbef..e872fb886 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -253,6 +253,15 @@ static void ns16550_jz_init_port(struct console_device *cdev)
 	ns16550_serial_init_port(cdev);
 }
 
+static void rpi_init_port(struct console_device *cdev)
+{
+  struct ns16550_priv *priv = to_ns16550_priv(cdev);
+
+  writeb(0x01, 0x3f215004);
+  priv->plat.shift = 2;
+  ns16550_serial_init_port(cdev);
+}
+
 /*********** Exposed Functions **********************************/
 
 /**
@@ -353,6 +362,11 @@ static __maybe_unused struct ns16550_drvdata tegra_drvdata = {
 	.linux_console_name = "ttyS",
 };
 
+static struct ns16550_drvdata rpi_drvdata = {
+  .init_port = rpi_init_port,
+  .linux_console_name = "ttyS",
+};
+
 static int ns16550_init_iomem(struct device_d *dev, struct ns16550_priv *priv)
 {
 	struct resource *iores;
@@ -528,6 +542,12 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
 		.data = &jz_drvdata,
 	},
 #endif
+#if IS_ENABLED(CONFIG_MACH_RPI_COMMON)
+	{
+	  .compatible = "brcm,bcm2835-aux-uart",
+	  .data = &rpi_drvdata,
+	},
+#endif
 	{
 		/* sentinel */
 	},
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
