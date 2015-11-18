Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22d.google.com ([2a00:1450:4010:c07::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzB9M-0003GQ-FS
 for barebox@lists.infradead.org; Wed, 18 Nov 2015 22:24:28 +0000
Received: by lfs39 with SMTP id 39so36297385lfs.3
 for <barebox@lists.infradead.org>; Wed, 18 Nov 2015 14:24:02 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 19 Nov 2015 01:23:55 +0300
Message-Id: <1447885436-30683-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1447885436-30683-1-git-send-email-antonynpavlov@gmail.com>
References: <1447885436-30683-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] i2c: import multiplexed I2C bus core support from linux
 kernel
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/i2c/Kconfig   |   7 +++
 drivers/i2c/Makefile  |   1 +
 drivers/i2c/i2c-mux.c | 148 ++++++++++++++++++++++++++++++++++++++++++++++++++
 include/i2c/i2c-mux.h |  40 ++++++++++++++
 include/i2c/i2c.h     |   6 +-
 5 files changed, 201 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/Kconfig b/drivers/i2c/Kconfig
index 0c6aec3..21cf0ec 100644
--- a/drivers/i2c/Kconfig
+++ b/drivers/i2c/Kconfig
@@ -6,4 +6,11 @@ if I2C
 source drivers/i2c/algos/Kconfig
 source drivers/i2c/busses/Kconfig
 
+config I2C_MUX
+	tristate "I2C bus multiplexing support"
+	help
+	  Say Y here if you want the I2C core to support the ability to
+	  handle multiplexed I2C bus topologies, by presenting each
+	  multiplexed segment as a I2C adapter.
+
 endif
diff --git a/drivers/i2c/Makefile b/drivers/i2c/Makefile
index 648d844..5ce0d0a 100644
--- a/drivers/i2c/Makefile
+++ b/drivers/i2c/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_I2C) += i2c.o i2c-smbus.o busses/ algos/
+obj-$(CONFIG_I2C_MUX) += i2c-mux.o
diff --git a/drivers/i2c/i2c-mux.c b/drivers/i2c/i2c-mux.c
new file mode 100644
index 0000000..f87e1fa
--- /dev/null
+++ b/drivers/i2c/i2c-mux.c
@@ -0,0 +1,148 @@
+/*
+ * Multiplexed I2C bus driver.
+ *
+ * Copyright (c) 2008-2009 Rodolfo Giometti <giometti@linux.it>
+ * Copyright (c) 2008-2009 Eurotech S.p.A. <info@eurotech.it>
+ * Copyright (c) 2009-2010 NSN GmbH & Co KG <michael.lawnick.ext@nsn.com>
+ *
+ * Ported to barebox from linux-v4.4-rc1
+ * Copyright (C) 2015 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * Simplifies access to complex multiplexed I2C bus topologies, by presenting
+ * each multiplexed bus segment as an additional I2C adapter.
+ * Supports multi-level mux'ing (mux behind a mux).
+ *
+ * Based on:
+ *	i2c-virt.c from Kumar Gala <galak@kernel.crashing.org>
+ *	i2c-virtual.c from Ken Harrenstien, Copyright (c) 2004 Google, Inc.
+ *	i2c-virtual.c from Brian Kuschak <bkuschak@yahoo.com>
+ *
+ * This file is licensed under the terms of the GNU General Public
+ * License version 2. This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#include <common.h>
+#include <malloc.h>
+#include <xfuncs.h>
+#include <of.h>
+#include <i2c/i2c.h>
+#include <i2c/i2c-mux.h>
+
+/* multiplexer per channel data */
+struct i2c_mux_priv {
+	struct i2c_adapter adap;
+
+	struct i2c_adapter *parent;
+	struct device_d *mux_dev;
+	void *mux_priv;
+	u32 chan_id;
+
+	int (*select)(struct i2c_adapter *, void *mux_priv, u32 chan_id);
+	int (*deselect)(struct i2c_adapter *, void *mux_priv, u32 chan_id);
+};
+
+static int i2c_mux_master_xfer(struct i2c_adapter *adap,
+			       struct i2c_msg msgs[], int num)
+{
+	struct i2c_mux_priv *priv = adap->algo_data;
+	struct i2c_adapter *parent = priv->parent;
+	int ret;
+
+	/* Switch to the right mux port and perform the transfer. */
+
+	ret = priv->select(parent, priv->mux_priv, priv->chan_id);
+	if (ret >= 0)
+		ret = parent->master_xfer(parent, msgs, num);
+	if (priv->deselect)
+		priv->deselect(parent, priv->mux_priv, priv->chan_id);
+
+	return ret;
+}
+
+struct i2c_adapter *i2c_add_mux_adapter(struct i2c_adapter *parent,
+				struct device_d *mux_dev,
+				void *mux_priv, u32 force_nr, u32 chan_id,
+				int (*select) (struct i2c_adapter *,
+					       void *, u32),
+				int (*deselect) (struct i2c_adapter *,
+						 void *, u32))
+{
+	struct i2c_mux_priv *priv;
+	int ret;
+
+	priv = kzalloc(sizeof(struct i2c_mux_priv), GFP_KERNEL);
+	if (!priv)
+		return NULL;
+
+	/* Set up private adapter data */
+	priv->parent = parent;
+	priv->mux_dev = mux_dev;
+	priv->mux_priv = mux_priv;
+	priv->chan_id = chan_id;
+	priv->select = select;
+	priv->deselect = deselect;
+
+	/* Need to do algo dynamically because we don't know ahead
+	 * of time what sort of physical adapter we'll be dealing with.
+	 */
+	if (parent->master_xfer)
+		priv->adap.master_xfer = i2c_mux_master_xfer;
+
+	/* Now fill out new adapter structure */
+	priv->adap.algo_data = priv;
+	priv->adap.dev.parent = &parent->dev;
+	priv->adap.retries = parent->retries;
+
+	/*
+	 * Try to populate the mux adapter's device_node, expands to
+	 * nothing if !CONFIG_OF.
+	 */
+	if (mux_dev->device_node) {
+		struct device_node *child;
+		u32 reg;
+
+		for_each_child_of_node(mux_dev->device_node, child) {
+			ret = of_property_read_u32(child, "reg", &reg);
+			if (ret)
+				continue;
+			if (chan_id == reg) {
+				priv->adap.dev.device_node = child;
+				break;
+			}
+		}
+	}
+
+	if (force_nr) {
+		priv->adap.nr = force_nr;
+	} else {
+		priv->adap.nr = -1;
+	}
+
+	ret = i2c_add_numbered_adapter(&priv->adap);
+	if (ret < 0) {
+		dev_err(&parent->dev,
+			"failed to add mux-adapter (error=%d)\n",
+			ret);
+		kfree(priv);
+		return NULL;
+	}
+
+	dev_info(&parent->dev, "Added multiplexed i2c bus %d\n",
+		 i2c_adapter_id(&priv->adap));
+
+	return &priv->adap;
+}
+EXPORT_SYMBOL_GPL(i2c_add_mux_adapter);
+
+void i2c_del_mux_adapter(struct i2c_adapter *adap)
+{
+	struct i2c_mux_priv *priv = adap->algo_data;
+
+	free(priv);
+}
+EXPORT_SYMBOL_GPL(i2c_del_mux_adapter);
+
+MODULE_AUTHOR("Rodolfo Giometti <giometti@linux.it>");
+MODULE_DESCRIPTION("I2C driver for multiplexed I2C busses");
+MODULE_LICENSE("GPL v2");
diff --git a/include/i2c/i2c-mux.h b/include/i2c/i2c-mux.h
new file mode 100644
index 0000000..8022399
--- /dev/null
+++ b/include/i2c/i2c-mux.h
@@ -0,0 +1,40 @@
+/*
+ *
+ * i2c-mux.h - functions for the i2c-bus mux support
+ *
+ * Copyright (c) 2008-2009 Rodolfo Giometti <giometti@linux.it>
+ * Copyright (c) 2008-2009 Eurotech S.p.A. <info@eurotech.it>
+ * Michael Lawnick <michael.lawnick.ext@nsn.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef _LINUX_I2C_MUX_H
+#define _LINUX_I2C_MUX_H
+
+/*
+ * Called to create a i2c bus on a multiplexed bus segment.
+ * The mux_dev and chan_id parameters are passed to the select
+ * and deselect callback functions to perform hardware-specific
+ * mux control.
+ */
+struct i2c_adapter *i2c_add_mux_adapter(struct i2c_adapter *parent,
+				struct device_d *mux_dev,
+				void *mux_priv, u32 force_nr, u32 chan_id,
+				int (*select) (struct i2c_adapter *,
+					       void *mux_dev, u32 chan_id),
+				int (*deselect) (struct i2c_adapter *,
+						 void *mux_dev, u32 chan_id));
+
+void i2c_del_mux_adapter(struct i2c_adapter *adap);
+
+#endif /* _LINUX_I2C_MUX_H */
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index 3fab76d9..8f7aae9 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -245,7 +245,11 @@ extern struct list_head i2c_adapter_list;
 extern struct i2c_client *
 i2c_new_dummy(struct i2c_adapter *adap, u16 address);
 
-
+/* Return the adapter number for a specific adapter */
+static inline int i2c_adapter_id(struct i2c_adapter *adap)
+{
+	return adap->nr;
+}
 
 extern int i2c_transfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num);
 extern int i2c_master_send(struct i2c_client *client, const char *buf, int count);
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
