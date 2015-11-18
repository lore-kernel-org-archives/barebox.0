Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x230.google.com ([2a00:1450:4010:c07::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zz2Lg-0003hR-Ki
 for barebox@lists.infradead.org; Wed, 18 Nov 2015 13:00:35 +0000
Received: by lfs39 with SMTP id 39so25734747lfs.3
 for <barebox@lists.infradead.org>; Wed, 18 Nov 2015 05:00:10 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 18 Nov 2015 16:00:04 +0300
Message-Id: <1447851604-18072-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1447851604-18072-1-git-send-email-antonynpavlov@gmail.com>
References: <1447851604-18072-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 2/2] i2c: add pca954x bus multiplexer driver
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/i2c/Kconfig         |   2 +
 drivers/i2c/Makefile        |   2 +-
 drivers/i2c/muxes/Kconfig   |  15 +++
 drivers/i2c/muxes/Makefile  |   4 +
 drivers/i2c/muxes/pca954x.c | 254 ++++++++++++++++++++++++++++++++++++++++++++
 include/i2c/i2c.h           |  13 +++
 6 files changed, 289 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/Kconfig b/drivers/i2c/Kconfig
index 21cf0ec..56259d8 100644
--- a/drivers/i2c/Kconfig
+++ b/drivers/i2c/Kconfig
@@ -13,4 +13,6 @@ config I2C_MUX
 	  handle multiplexed I2C bus topologies, by presenting each
 	  multiplexed segment as a I2C adapter.
 
+source drivers/i2c/muxes/Kconfig
+
 endif
diff --git a/drivers/i2c/Makefile b/drivers/i2c/Makefile
index 5ce0d0a..c936534 100644
--- a/drivers/i2c/Makefile
+++ b/drivers/i2c/Makefile
@@ -1,2 +1,2 @@
-obj-$(CONFIG_I2C) += i2c.o i2c-smbus.o busses/ algos/
+obj-$(CONFIG_I2C) += i2c.o i2c-smbus.o busses/ algos/ muxes/
 obj-$(CONFIG_I2C_MUX) += i2c-mux.o
diff --git a/drivers/i2c/muxes/Kconfig b/drivers/i2c/muxes/Kconfig
new file mode 100644
index 0000000..c2c7048
--- /dev/null
+++ b/drivers/i2c/muxes/Kconfig
@@ -0,0 +1,15 @@
+#
+# Multiplexer I2C chip drivers configuration
+#
+
+menu "Multiplexer I2C Chip support"
+	depends on I2C_MUX
+
+config I2C_MUX_PCA954x
+	tristate "Philips PCA954x I2C Mux/switches"
+	select I2C_ALGOBIT
+	help
+	  If you say yes here you get support for the Philips PCA954x
+	  I2C mux/switch devices.
+
+endmenu
diff --git a/drivers/i2c/muxes/Makefile b/drivers/i2c/muxes/Makefile
new file mode 100644
index 0000000..4e5bd43
--- /dev/null
+++ b/drivers/i2c/muxes/Makefile
@@ -0,0 +1,4 @@
+#
+# Makefile for multiplexer I2C chip drivers.
+
+obj-$(CONFIG_I2C_MUX_PCA954x)	+= pca954x.o
diff --git a/drivers/i2c/muxes/pca954x.c b/drivers/i2c/muxes/pca954x.c
new file mode 100644
index 0000000..4d24fe6
--- /dev/null
+++ b/drivers/i2c/muxes/pca954x.c
@@ -0,0 +1,254 @@
+/*
+ * I2C multiplexer
+ *
+ * Copyright (c) 2008-2009 Rodolfo Giometti <giometti@linux.it>
+ * Copyright (c) 2008-2009 Eurotech S.p.A. <info@eurotech.it>
+ *
+ * This module supports the PCA954x series of I2C multiplexer/switch chips
+ * made by Philips Semiconductors.
+ * This includes the:
+ *	 PCA9540, PCA9542, PCA9543, PCA9544, PCA9545, PCA9546, PCA9547
+ *	 and PCA9548.
+ *
+ * These chips are all controlled via the I2C bus itself, and all have a
+ * single 8-bit register. The upstream "parent" bus fans out to two,
+ * four, or eight downstream busses or channels; which of these
+ * are selected is determined by the chip type and register contents. A
+ * mux can select only one sub-bus at a time; a switch can select any
+ * combination simultaneously.
+ *
+ * Based on:
+ *	pca954x.c from Kumar Gala <galak@kernel.crashing.org>
+ * Copyright (C) 2006
+ *
+ * Based on:
+ *	pca954x.c from Ken Harrenstien
+ * Copyright (C) 2004 Google, Inc. (Ken Harrenstien)
+ *
+ * Based on:
+ *	i2c-virtual_cb.c from Brian Kuschak <bkuschak@yahoo.com>
+ * and
+ *	pca9540.c from Jean Delvare <khali@linux-fr.org>.
+ *
+ * This file is licensed under the terms of the GNU General Public
+ * License version 2. This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <malloc.h>
+#include <i2c/i2c.h>
+#include <i2c/i2c-algo-bit.h>
+#include <i2c/i2c-mux.h>
+#include <init.h>
+
+#define PCA954X_MAX_NCHANS 8
+
+enum pca_type {
+	pca_9540,
+	pca_9542,
+	pca_9543,
+	pca_9544,
+	pca_9545,
+	pca_9546,
+	pca_9547,
+	pca_9548,
+};
+
+struct pca954x {
+	enum pca_type type;
+	struct i2c_adapter *virt_adaps[PCA954X_MAX_NCHANS];
+
+	u8 last_chan;		/* last register value */
+};
+
+struct chip_desc {
+	u8 nchans;
+	u8 enable;	/* used for muxes only */
+	enum muxtype {
+		pca954x_ismux = 0,
+		pca954x_isswi
+	} muxtype;
+};
+
+/* Provide specs for the PCA954x types we know about */
+static const struct chip_desc chips[] = {
+	[pca_9540] = {
+		.nchans = 2,
+		.enable = 0x4,
+		.muxtype = pca954x_ismux,
+	},
+	[pca_9543] = {
+		.nchans = 2,
+		.muxtype = pca954x_isswi,
+	},
+	[pca_9544] = {
+		.nchans = 4,
+		.enable = 0x4,
+		.muxtype = pca954x_ismux,
+	},
+	[pca_9545] = {
+		.nchans = 4,
+		.muxtype = pca954x_isswi,
+	},
+	[pca_9547] = {
+		.nchans = 8,
+		.enable = 0x8,
+		.muxtype = pca954x_ismux,
+	},
+	[pca_9548] = {
+		.nchans = 8,
+		.muxtype = pca954x_isswi,
+	},
+};
+
+static struct platform_device_id pca954x_id[] = {
+	{ "pca9540", pca_9540 },
+	{ "pca9542", pca_9540 },
+	{ "pca9543", pca_9543 },
+	{ "pca9544", pca_9544 },
+	{ "pca9545", pca_9545 },
+	{ "pca9546", pca_9545 },
+	{ "pca9547", pca_9547 },
+	{ "pca9548", pca_9548 },
+	{ }
+};
+
+/* Write to mux register. Don't use i2c_transfer()/i2c_smbus_xfer()
+   for this as they will try to lock adapter a second time */
+static int pca954x_reg_write(struct i2c_adapter *adap,
+			     struct i2c_client *client, u8 val)
+{
+	int ret = -ENODEV;
+
+	if (adap->master_xfer) {
+		struct i2c_msg msg;
+		char buf[1];
+
+		msg.addr = client->addr;
+		msg.flags = 0;
+		msg.len = 1;
+		buf[0] = val;
+		msg.buf = buf;
+		ret = adap->master_xfer(adap, &msg, 1);
+	} else {
+		union i2c_smbus_data data;
+		ret = i2c_smbus_xfer(adap, client->addr,
+					     0 /* client->flags */,
+					     I2C_SMBUS_WRITE,
+					     val, I2C_SMBUS_BYTE, &data);
+	}
+
+	return ret;
+}
+
+static int pca954x_select_chan(struct i2c_adapter *adap,
+			       void *client, u32 chan)
+{
+	struct pca954x *data = i2c_get_clientdata(client);
+	const struct chip_desc *chip = &chips[data->type];
+	u8 regval;
+	int ret = 0;
+
+	/* we make switches look like muxes, not sure how to be smarter */
+	if (chip->muxtype == pca954x_ismux)
+		regval = chan | chip->enable;
+	else
+		regval = 1 << chan;
+
+	/* Only select the channel if its different from the last channel */
+	if (data->last_chan != regval) {
+		ret = pca954x_reg_write(adap, client, regval);
+		data->last_chan = regval;
+	}
+
+	return ret;
+}
+
+/*
+ * I2C init/probing/exit functions
+ */
+static int pca954x_probe(struct device_d *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct i2c_adapter *adap = to_i2c_adapter(client->dev.parent);
+	int num, force;
+	struct pca954x *data;
+	int ret = -ENODEV;
+
+	data = kzalloc(sizeof(struct pca954x), GFP_KERNEL);
+	if (!data) {
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	i2c_set_clientdata(client, data);
+
+	/* Read the mux register at addr to verify
+	 * that the mux is in fact present.
+	 */
+	if (i2c_smbus_read_byte(client) < 0) {
+		dev_warn(&client->dev, "probe failed\n");
+		goto exit_free;
+	}
+
+	{
+		int err;
+
+		err = dev_get_drvdata(dev, (const void **)&data->type);
+		if (err)
+			return err;
+
+	}
+
+	data->last_chan = 0;		   /* force the first selection */
+
+	/* Now create an adapter for each channel */
+	for (num = 0; num < chips[data->type].nchans; num++) {
+		force = 0;			  /* dynamic adap number */
+
+		data->virt_adaps[num] =
+			i2c_add_mux_adapter(adap, &client->dev, client,
+				force, num, pca954x_select_chan, NULL);
+
+		if (data->virt_adaps[num] == NULL) {
+			ret = -ENODEV;
+			dev_err(&client->dev,
+				"failed to register multiplexed adapter"
+				" %d as bus %d\n", num, force);
+			goto virt_reg_failed;
+		}
+	}
+
+	dev_info(&client->dev,
+		 "registered %d multiplexed busses for I2C %s\n",
+		 num, chips[data->type].muxtype == pca954x_ismux
+				? "mux" : "switch");
+
+	return 0;
+
+virt_reg_failed:
+	for (num--; num >= 0; num--)
+		i2c_del_mux_adapter(data->virt_adaps[num]);
+exit_free:
+	kfree(data);
+err:
+	return ret;
+}
+
+static struct driver_d pca954x_driver = {
+	.name	= "pca954x",
+	.probe		= pca954x_probe,
+	.id_table	= pca954x_id,
+};
+
+static int __init pca954x_init(void)
+{
+	return i2c_driver_register(&pca954x_driver);
+}
+device_initcall(pca954x_init);
+
+MODULE_AUTHOR("Rodolfo Giometti <giometti@linux.it>");
+MODULE_DESCRIPTION("PCA954x I2C mux/switch driver");
+MODULE_LICENSE("GPL v2");
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index 8f7aae9..33a4791 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -121,15 +121,28 @@ struct i2c_adapter {
 	struct i2c_bus_recovery_info *bus_recovery_info;
 };
 
+#define to_i2c_adapter(d) container_of(d, struct i2c_adapter, dev)
 
 struct i2c_client {
 	struct device_d		dev;
 	struct i2c_adapter	*adapter;
 	unsigned short		addr;
+	void			*driver_data;	/* Driver data, set and get with
+							dev_set/get_drvdata */
 };
 
 #define to_i2c_client(a)	container_of(a, struct i2c_client, dev)
 
+static inline void *i2c_get_clientdata(const struct i2c_client *dev)
+{
+	return dev->driver_data;
+}
+
+static inline void i2c_set_clientdata(struct i2c_client *dev, void *data)
+{
+	dev->driver_data = data;
+}
+
 /*flags for the client struct: */
 #define I2C_CLIENT_PEC	0x04		/* Use Packet Error Checking */
 #define I2C_CLIENT_SCCB	0x9000		/* Use Omnivision SCCB protocol */
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
