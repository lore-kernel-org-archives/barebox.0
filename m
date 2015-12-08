Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6EDW-00037I-Sx
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 09:05:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Dec 2015 10:05:36 +0100
Message-Id: <1449565539-29374-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1449565539-29374-1-git-send-email-s.hauer@pengutronix.de>
References: <1449565539-29374-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] misc: Add iodevice support
To: Barebox List <barebox@lists.infradead.org>

This adds a poor copy of the Linux IIO framework.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/misc/Kconfig    |   3 ++
 drivers/misc/Makefile   |   1 +
 drivers/misc/iodevice.c | 109 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/iodevice.h      |  33 +++++++++++++++
 4 files changed, 146 insertions(+)
 create mode 100644 drivers/misc/iodevice.c
 create mode 100644 include/iodevice.h

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 7a5b146..250b205 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -19,4 +19,7 @@ config STATE_DRV
 	tristate "state driver"
 	depends on STATE
 
+config IODEVICE
+	bool "IO device support"
+
 endmenu
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index 487e4b8..127504e 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -5,3 +5,4 @@
 obj-$(CONFIG_JTAG)		+= jtag.o
 obj-$(CONFIG_SRAM)		+= sram.o
 obj-$(CONFIG_STATE_DRV)		+= state.o
+obj-$(CONFIG_IODEVICE)		+= iodevice.o
diff --git a/drivers/misc/iodevice.c b/drivers/misc/iodevice.c
new file mode 100644
index 0000000..6fdcd42
--- /dev/null
+++ b/drivers/misc/iodevice.c
@@ -0,0 +1,109 @@
+#include <common.h>
+#include <iodevice.h>
+#include <linux/list.h>
+#include <malloc.h>
+
+static LIST_HEAD(iodevices);
+
+struct iochannel *iochannel_get_by_name(const char *name)
+{
+	struct iodevice *iodev;
+	int i;
+
+	list_for_each_entry(iodev, &iodevices, list) {
+		for (i = 0; i < iodev->num_channels; i++)
+			if (!strcmp(name, iodev->channels[i]->name))
+				return iodev->channels[i];
+	}
+
+	return ERR_PTR(-ENOENT);
+}
+
+struct iochannel *iochannel_get(struct device_d *dev, int index)
+{
+	struct of_phandle_args spec;
+	struct iodevice *iodev;
+	int ret, chnum = 0;
+
+	if (!dev->device_node)
+		return ERR_PTR(-EINVAL);
+
+	ret = of_parse_phandle_with_args(dev->device_node, "io-channels", "#io-channel-cells", index,
+                        &spec);
+        if (ret)
+                return ERR_PTR(ret);
+
+	list_for_each_entry(iodev, &iodevices, list) {
+		if (iodev->hwdev->device_node == spec.np)
+			goto found;
+	}
+
+	return ERR_PTR(-EPROBE_DEFER);
+
+found:
+	if (spec.args_count)
+		chnum = spec.args[0];
+
+	if (chnum >= iodev->num_channels)
+		return ERR_PTR(-EINVAL);
+
+	return iodev->channels[chnum];
+}
+
+int iochannel_get_value(struct iochannel *iochan, int *value)
+{
+	struct iodevice *iodev = iochan->iodev;
+
+	return iodev->read(iochan, value);
+}
+
+static int iochannel_param_get_value(struct param_d *p, void *priv)
+{
+	struct iochannel *iochan = priv;
+
+	return iochannel_get_value(iochan, &iochan->value);
+}
+
+int iodevice_register(struct iodevice *iodev)
+{
+	const char *devname = NULL;
+	int i, ret;
+
+	if (iodev->hwdev->device_node) {
+		devname = of_alias_get(iodev->hwdev->device_node);
+		iodev->dev.id = DEVICE_ID_SINGLE;
+	}
+
+	if (!devname) {
+		devname = "io";
+		iodev->dev.id = DEVICE_ID_DYNAMIC;
+	}
+
+	strcpy(iodev->dev.name, devname);
+
+	iodev->dev.parent = iodev->hwdev;
+
+	ret = register_device(&iodev->dev);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < iodev->num_channels; i++) {
+		struct iochannel *iochan = iodev->channels[i];
+		char *name;
+
+		iochan->iodev = iodev;
+
+		name = asprintf("in_value%d_%s", i, iochan->unit);
+
+		dev_add_param_int(&iodev->dev, name, NULL,
+			iochannel_param_get_value, &iochan->value, "%d", iochan);
+
+		iochan->name = asprintf("%s.%s", devname, name);
+
+		free(name);
+	}
+
+	list_add_tail(&iodev->list, &iodevices);
+
+	return 0;
+}
diff --git a/include/iodevice.h b/include/iodevice.h
new file mode 100644
index 0000000..e0e571e
--- /dev/null
+++ b/include/iodevice.h
@@ -0,0 +1,33 @@
+#ifndef __IODEVICE_H
+#define __IODEVICE_H
+
+struct iochannel {
+	char *unit;
+	struct iodevice *iodev;
+
+	int value;
+	char *name;
+};
+
+struct iodevice {
+	int (*read)(struct iochannel *, int *val);
+	struct device_d dev;
+	struct device_d *hwdev;
+	struct iochannel **channels;
+	int num_channels;
+	struct list_head list;
+};
+
+int iodevice_register(struct iodevice *iodev);
+
+struct iochannel *iochannel_get(struct device_d *dev, int index);
+struct iochannel *iochannel_get_by_name(const char *name);
+
+int iochannel_get_value(struct iochannel *iochan, int *value);
+
+static inline const char *iochannel_get_unit(struct iochannel *iochan)
+{
+	return iochan->unit;
+}
+
+#endif
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
