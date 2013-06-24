Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x234.google.com ([2607:f8b0:400e:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ur5jl-0007kr-Vv
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 12:19:17 +0000
Received: by mail-pa0-f52.google.com with SMTP id kq13so10859418pab.25
 for <barebox@lists.infradead.org>; Mon, 24 Jun 2013 05:18:51 -0700 (PDT)
Received: from [192.168.0.8] (nttkyo211232.tkyo.nt.ngn2.ppp.infoweb.ne.jp.
 [175.179.155.232])
 by mx.google.com with ESMTPSA id i16sm19650839pag.18.2013.06.24.05.18.50
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Mon, 24 Jun 2013 05:18:51 -0700 (PDT)
Message-ID: <51C83929.70001@gmail.com>
Date: Mon, 24 Jun 2013 21:18:49 +0900
From: NISHIMOTO Hiroki <hiroki.nishimoto.if@gmail.com>
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
Subject: [PATCH] ns16550: add device tree support
To: barebox@lists.infradead.org

This patch adds device tree support for serial_ns16550 driver.

Tested with pcduino (allwinner a10).

Signed-off-by: NISHIMOTO Hiroki <hiroki.nishimoto.if@gmail.com>
---
 .../devicetree/bindings/serial/ns16550_serial.txt  | 34 ++++++++++++++
 drivers/serial/serial_ns16550.c                    | 53 ++++++++++++++++++++--
 2 files changed, 84 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/serial/ns16550_serial.txt

diff --git a/Documentation/devicetree/bindings/serial/ns16550_serial.txt b/Documentation/devicetree/bindings/serial/ns16550_serial.txt
new file mode 100644
index 0000000..848f949
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/ns16550_serial.txt
@@ -0,0 +1,34 @@
+* NS16550 UART
+
+Required properties:
+- compatible : "ns16550_serial"
+- reg : offset and length of the register set for the device.
+
+
+Optional properties:
+- clock-frequency : the input clock frequency for the UART.
+- reg-shift : quantity to shift the register offsets by.  If this property is
+  not present then the register offsets are not shifted.
+- reg-io-width : the size (in bytes) of the IO accesses that should be
+  performed on the device.  If this property is not present then single byte
+  accesses are used.
+- disable-fifo : 
+	0: enable tx/rx fifo (default value)
+	1: disable tx/rx fifo 
+- console-stdin : activate stdin on this console.
+- console-stdout : activate stdout on this console.
+- console-stderr : activate stderr on this console.
+
+Example:
+
+	serial@0x01c28000 {
+		compatible = "ns16550_serial";
+		reg = <0x01c28000 0x400>;
+		clock-frequency = <24000000>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		disable-fifo = <0>;
+		console-stdin;
+		console-stdout;
+		console-stderr;
+	};
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index b7913aa..bed9640 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -57,7 +57,7 @@ static uint32_t ns16550_read(struct console_device *cdev, uint32_t off)
 {
 	struct device_d *dev = cdev->dev;
 	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
-	int width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
+	int width = plat->flags & IORESOURCE_MEM_TYPE_MASK;
 
 	off <<= plat->shift;
 
@@ -87,7 +87,7 @@ static void ns16550_write(struct console_device *cdev, uint32_t val,
 {
 	struct device_d *dev = cdev->dev;
 	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
-	int width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
+	int width = plat->flags & IORESOURCE_MEM_TYPE_MASK;
 
 	off <<= plat->shift;
 
@@ -234,8 +234,46 @@ static int ns16550_probe(struct device_d *dev)
 	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
 
 	/* we do expect platform specific data */
-	if (plat == NULL)
+	if (!plat && !dev->device_node)
 		return -EINVAL;
+
+	if (dev->device_node) {
+		unsigned int width, fifo;
+		struct device_node *node = dev->device_node;
+
+		plat = xzalloc(sizeof(*plat));
+		
+		of_property_read_u32(node, "clock-frequency", &plat->clock);
+		of_property_read_u32(node, "reg-shift", &plat->shift);
+
+		if (!of_property_read_u32(node, "disable-fifo", &fifo) && fifo == 1)
+			plat->flags |= NS16650_FLAG_DISABLE_FIFO;
+
+		if (!of_property_read_u32(node, "reg-io-width", &width)) {
+			switch (width) {
+			case 1:
+				plat->flags |= IORESOURCE_MEM_8BIT;
+				break;
+			case 2:
+				plat->flags |= IORESOURCE_MEM_16BIT;
+				break;
+			case 4:
+				plat->flags |= IORESOURCE_MEM_32BIT;
+				break;
+			}
+		}
+
+		if (of_find_property(node, "console-stdin"))
+			plat->f_caps |= CONSOLE_STDIN;
+		if (of_find_property(node, "console-stdout"))
+			plat->f_caps |= CONSOLE_STDOUT;
+		if (of_find_property(node, "console-stderr"))
+			plat->f_caps |= CONSOLE_STDERR;
+		
+		dev->platform_data = plat;
+	} else 
+		plat->flags = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
+
 	dev->priv = dev_request_mem_region(dev, 0);
 
 	cdev = xzalloc(sizeof(*cdev));
@@ -255,11 +293,20 @@ static int ns16550_probe(struct device_d *dev)
 	return console_register(cdev);
 }
 
+static struct of_device_id ns16550_serial_dt_ids[] = {
+	{ 
+		.compatible = "ns16550_serial",
+	}, {
+		/* sentinel */ 
+	},
+};
+
 /**
  * @brief Driver registration structure
  */
 static struct driver_d ns16550_serial_driver = {
 	.name = "ns16550_serial",
 	.probe = ns16550_probe,
+	.of_compatible = DRV_OF_COMPAT(ns16550_serial_dt_ids),
 };
 console_platform_driver(ns16550_serial_driver);
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
