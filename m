Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3GTU-0005et-Ph
 for barebox@lists.infradead.org; Wed, 05 Aug 2020 10:16:47 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  5 Aug 2020 12:16:27 +0200
Message-Id: <20200805101628.4698-13-o.rempel@pengutronix.de>
In-Reply-To: <20200805101628.4698-1-o.rempel@pengutronix.de>
References: <20200805101628.4698-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 12/13] of: add barebox-serial driver
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Provide a driver which should act as nvmem consumer
for board serial number information.

To make use of this driver, DTS should contain a serial
node with compatibe "barebox,serial" and nvmem-cell-names
"serial-number":

...
	chosen {
		serial {
			compatible = "barebox,serial";
			nvmem-cell-names = "serial-number";
			nvmem-cells = &some_provider;
		};
	};
...

The driver will read nvmem cell on probe and register
a fixup for the kernel devicetree.

This fixup will create a "/serial-number" property, which is
used by current kernel:
https://elixir.bootlin.com/linux/v5.7/source/arch/arm/kernel/setup.c#L941

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/of/Makefile         |   2 +-
 drivers/of/barebox_serial.c | 113 ++++++++++++++++++++++++++++++++++++
 2 files changed, 114 insertions(+), 1 deletion(-)
 create mode 100644 drivers/of/barebox_serial.c

diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index b6847752d2..b4a4c36b2a 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -5,5 +5,5 @@ obj-$(CONFIG_OF_PCI) += of_pci.o
 obj-y += partition.o
 obj-y += of_net.o
 obj-$(CONFIG_MTD) += of_mtd.o
-obj-$(CONFIG_OF_BAREBOX_DRIVERS) += barebox.o
+obj-$(CONFIG_OF_BAREBOX_DRIVERS) += barebox.o barebox_serial.o
 obj-$(CONFIG_OF_OVERLAY) += overlay.o resolver.o of_firmware.o
diff --git a/drivers/of/barebox_serial.c b/drivers/of/barebox_serial.c
new file mode 100644
index 0000000000..3c0925c8d5
--- /dev/null
+++ b/drivers/of/barebox_serial.c
@@ -0,0 +1,113 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (c) 2020 Pengutronix, Oleksij Rempel <kernel@pengutronix.de>
+
+#include <common.h>
+#include <init.h>
+#include <linux/nvmem-consumer.h>
+
+struct bb_sernum_priv {
+	struct device_d *dev;
+	char *ser;
+};
+
+static int bb_sernum_fixup(struct device_node *root, void *data)
+{
+	struct bb_sernum_priv *priv = data;
+	int ret;
+
+	ret = of_property_write_string(root, "serial-number", priv->ser);
+	if (ret)
+		dev_err(priv->dev, "Failed to set /serial-number\n");
+
+	return ret;
+}
+
+static int bb_sernum_of_get_nvmem(struct bb_sernum_priv *priv)
+{
+	struct nvmem_cell *cell;
+	size_t len;
+	char *ser;
+
+	cell = nvmem_cell_get(priv->dev, "serial-number");
+	if (IS_ERR(cell))
+		return PTR_ERR(cell);
+
+	ser = nvmem_cell_read(cell, &len);
+	nvmem_cell_put(cell);
+
+	if (IS_ERR(ser))
+		return PTR_ERR(ser);
+
+	/* check if serial number is zero terminated */
+	if (ser[len - 1] != 0x0) {
+		char *tmp;
+
+		tmp = kzalloc(len + 1, GFP_KERNEL);
+		if (!tmp) {
+			kfree(ser);
+			return -ENOMEM;
+		}
+
+		memcpy(tmp, ser, len);
+		tmp[len] = 0x0;
+		kfree(ser);
+		ser = tmp;
+	}
+
+	priv->ser = ser;
+
+	return 0;
+}
+
+static int bb_sernum_probe(struct device_d *dev)
+{
+	struct bb_sernum_priv *priv;
+	struct param_d *p;
+	int ret;
+
+	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->dev = dev;
+
+	ret = bb_sernum_of_get_nvmem(priv);
+	if (ret) {
+		dev_err(priv->dev, "Failed to read nvmem\n");
+		goto free_priv;
+	}
+
+	p = dev_add_param_string_fixed(dev, "serial-number", priv->ser);
+	if (IS_ERR(p)) {
+		dev_err(priv->dev, "Failed to set param_string\n");
+		ret = PTR_ERR(p);
+		goto free_ser;
+	}
+
+	ret = of_register_fixup(bb_sernum_fixup, priv);
+	if (ret) {
+		dev_err(priv->dev, "Failed to register fixup\n");
+		goto free_ser;
+	}
+
+	dev_info(priv->dev, "Registered serial number: %s\n", priv->ser);
+
+	return 0;
+free_ser:
+	kfree(priv->ser);
+free_priv:
+	kfree(priv);
+	return ret;
+}
+
+static const struct of_device_id bb_sernum_of_match[] = {
+	{ .compatible = "barebox,serial-number", },
+	{ /* sentinel */ },
+};
+
+static struct driver_d bb_sernum_driver = {
+	.name = "barebox-serial-number",
+	.probe = bb_sernum_probe,
+	.of_compatible = DRV_OF_COMPAT(bb_sernum_of_match),
+};
+device_platform_driver(bb_sernum_driver);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
