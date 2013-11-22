Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs2v-0008Ft-50
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:49:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:48:45 +0100
Message-Id: <1385131741-28280-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
References: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/17] serial: ns16550: Add device ids for omap
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/omap_devices.c |  4 +--
 drivers/serial/serial_ns16550.c   | 62 ++++++++++++++++++++++++++++++++++-----
 drivers/serial/serial_ns16550.h   |  4 ---
 3 files changed, 56 insertions(+), 14 deletions(-)

diff --git a/arch/arm/mach-omap/omap_devices.c b/arch/arm/mach-omap/omap_devices.c
index 30cfdd0..9ed3dcf 100644
--- a/arch/arm/mach-omap/omap_devices.c
+++ b/arch/arm/mach-omap/omap_devices.c
@@ -21,6 +21,6 @@ static struct NS16550_plat serial_plat = {
 
 struct device_d *omap_add_uart(int id, unsigned long base)
 {
-	return add_ns16550_device(id, base, 1024,
-			IORESOURCE_MEM_8BIT, &serial_plat);
+	return add_generic_device("omap-uart", id, NULL, base, 1024,
+				  IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
 }
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index d3a5a81..a8487b0 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -55,6 +55,10 @@ static inline struct ns16550_priv *to_ns16550_priv(struct console_device *cdev)
 	return container_of(cdev, struct ns16550_priv, cdev);
 }
 
+struct ns16550_drvdata {
+	void (*init_port)(struct console_device *cdev);
+};
+
 /**
  * @brief read register
  *
@@ -178,14 +182,16 @@ static void ns16550_serial_init_port(struct console_device *cdev)
 	/* initializing the device for the first time */
 	ns16550_write(cdev, 0x00, lcr); /* select ier reg */
 	ns16550_write(cdev, 0x00, ier);
+}
 
-#ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
-	ns16550_write(cdev, 0x07, mdr1);	/* Disable */
-#endif
+#define omap_mdr1		8
 
-#ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
-	ns16550_write(cdev, 0x00,  mdr1);
-#endif
+static void ns16550_omap_init_port(struct console_device *cdev)
+{
+	ns16550_serial_init_port(cdev);
+
+	ns16550_write(cdev, 0x07, omap_mdr1);	/* Disable */
+	ns16550_write(cdev, 0x00,  omap_mdr1);
 }
 
 /*********** Exposed Functions **********************************/
@@ -239,6 +245,14 @@ static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv *priv)
 	of_property_read_u32(np, "reg-shift", &priv->plat.shift);
 }
 
+static struct ns16550_drvdata ns16550_drvdata = {
+	.init_port = ns16550_serial_init_port,
+};
+
+static __maybe_unused struct ns16550_drvdata omap_drvdata = {
+	.init_port = ns16550_omap_init_port,
+};
+
 /**
  * @brief Probe entry point -called on the first match for device
  *
@@ -253,8 +267,13 @@ static int ns16550_probe(struct device_d *dev)
 	struct ns16550_priv *priv;
 	struct console_device *cdev;
 	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
+	struct ns16550_drvdata *devtype;
 	int ret;
 
+	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
+	if (ret)
+		devtype = &ns16550_drvdata;
+
 	dev->priv = dev_request_mem_region(dev, 0);
 
 	priv = xzalloc(sizeof(*priv));
@@ -294,7 +313,7 @@ static int ns16550_probe(struct device_d *dev)
 	cdev->getc = ns16550_getc;
 	cdev->setbrg = ns16550_setbaudrate;
 
-	ns16550_serial_init_port(cdev);
+	devtype->init_port(cdev);
 
 	return console_register(cdev);
 
@@ -307,8 +326,32 @@ err:
 static struct of_device_id ns16550_serial_dt_ids[] = {
 	{
 		.compatible = "ns16550a",
-	},{
+		.data = (unsigned long)&ns16550_drvdata,
+	}, {
 		.compatible = "snps,dw-apb-uart",
+		.data = (unsigned long)&ns16550_drvdata,
+	},
+#if IS_ENABLED(CONFIG_ARCH_OMAP)
+	{
+		.compatible = "ti,omap2-uart",
+		.data = (unsigned long)&omap_drvdata,
+	}, {
+		.compatible = "ti,omap3-uart",
+		.data = (unsigned long)&omap_drvdata,
+	}, {
+		.compatible = "ti,omap4-uart",
+		.data = (unsigned long)&omap_drvdata,
+	},
+#endif
+	{
+		/* sentinel */
+	},
+};
+
+static __maybe_unused struct platform_device_id ns16550_serial_ids[] = {
+	{
+		.name = "omap-uart",
+		.driver_data = (unsigned long)&omap_drvdata,
 	}, {
 		/* sentinel */
 	},
@@ -321,5 +364,8 @@ static struct driver_d ns16550_serial_driver = {
 	.name = "ns16550_serial",
 	.probe = ns16550_probe,
 	.of_compatible = DRV_OF_COMPAT(ns16550_serial_dt_ids),
+#if IS_ENABLED(CONFIG_ARCH_OMAP)
+	.id_table = ns16550_serial_ids,
+#endif
 };
 console_platform_driver(ns16550_serial_driver);
diff --git a/drivers/serial/serial_ns16550.h b/drivers/serial/serial_ns16550.h
index db8fe64..c37d63c 100644
--- a/drivers/serial/serial_ns16550.h
+++ b/drivers/serial/serial_ns16550.h
@@ -40,10 +40,6 @@
 #define lsr		5
 #define msr		6
 #define scr		7
-#ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
-#define mdr1		8
-#define osc_12m_sel	9
-#endif
 
 #define thr		rbr
 #define iir		fcr
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
