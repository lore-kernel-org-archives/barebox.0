Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22a.google.com ([2607:f8b0:400e:c00::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1awC9k-000750-49
 for barebox@lists.infradead.org; Fri, 29 Apr 2016 17:24:45 +0000
Received: by mail-pf0-x22a.google.com with SMTP id 77so18055873pfv.2
 for <barebox@lists.infradead.org>; Fri, 29 Apr 2016 10:24:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 29 Apr 2016 10:24:03 -0700
Message-Id: <1461950646-15037-4-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1461950646-15037-1-git-send-email-andrew.smirnov@gmail.com>
References: <1461950646-15037-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/6] drivers: Introduce AIODEV subsystem
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smrinov@gmail.com>

From: Sascha Hauer <s.hauer@pengutronix.de>

AIODEV/Aiodevice is a analog I/O framework that can be thought of as a
simplified hybrid between 'hwmon' and 'IIO' subsystems of Linux kernel

This commit is very heavily based on 'iodevice' framework proposal
written by Sascha Hauer.

Signed-off-by: Andrey Smirnov <andrew.smrinov@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/Kconfig         |   1 +
 drivers/Makefile        |   1 +
 drivers/aiodev/Kconfig  |   8 +++
 drivers/aiodev/Makefile |   2 +
 drivers/aiodev/core.c   | 135 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/aiodev.h        |  39 ++++++++++++++
 6 files changed, 186 insertions(+)
 create mode 100644 drivers/aiodev/Kconfig
 create mode 100644 drivers/aiodev/Makefile
 create mode 100644 drivers/aiodev/core.c
 create mode 100644 include/aiodev.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 90ab7c1..eef68f6 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -1,6 +1,7 @@
 menu "Drivers"
 
 source "drivers/of/Kconfig"
+source "drivers/aiodev/Kconfig"
 source "drivers/amba/Kconfig"
 source "drivers/serial/Kconfig"
 source "drivers/net/Kconfig"
diff --git a/drivers/Makefile b/drivers/Makefile
index 551b9a0..03bbc81 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -33,4 +33,5 @@ obj-$(CONFIG_GENERIC_PHY) += phy/
 obj-$(CONFIG_HAB) += hab/
 obj-$(CONFIG_CRYPTO_HW) += crypto/
 obj-$(CONFIG_NVMEM) += nvmem/
+obj-$(CONFIG_AIODEV) += aiodev/
 
diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
new file mode 100644
index 0000000..d6d4ac0
--- /dev/null
+++ b/drivers/aiodev/Kconfig
@@ -0,0 +1,8 @@
+#
+# Misc strange devices
+#
+menuconfig AIODEV
+	bool "Analog I/O drivers"
+
+if AIODEV
+endif
diff --git a/drivers/aiodev/Makefile b/drivers/aiodev/Makefile
new file mode 100644
index 0000000..806464e
--- /dev/null
+++ b/drivers/aiodev/Makefile
@@ -0,0 +1,2 @@
+
+obj-$(CONFIG_AIODEV) += core.o
diff --git a/drivers/aiodev/core.c b/drivers/aiodev/core.c
new file mode 100644
index 0000000..6dcb917
--- /dev/null
+++ b/drivers/aiodev/core.c
@@ -0,0 +1,135 @@
+#include <common.h>
+#include <aiodev.h>
+#include <linux/list.h>
+#include <malloc.h>
+
+LIST_HEAD(aiodevices);
+EXPORT_SYMBOL(aiodevices);
+
+struct aiochannel *aiochannel_get_by_name(const char *name)
+{
+	struct aiodevice *aiodev;
+	int i;
+
+	list_for_each_entry(aiodev, &aiodevices, list) {
+		for (i = 0; i < aiodev->num_channels; i++)
+			if (!strcmp(name, aiodev->channels[i]->name))
+				return aiodev->channels[i];
+	}
+
+	return ERR_PTR(-ENOENT);
+}
+EXPORT_SYMBOL(aiochannel_get_by_name);
+
+struct aiochannel *aiochannel_get(struct device_d *dev, int index)
+{
+	struct of_phandle_args spec;
+	struct aiodevice *aiodev;
+	int ret, chnum = 0;
+
+	if (!dev->device_node)
+		return ERR_PTR(-EINVAL);
+
+	ret = of_parse_phandle_with_args(dev->device_node,
+					 "aio-channels",
+					 "#aio-channel-cells",
+					 index, &spec);
+        if (ret)
+                return ERR_PTR(ret);
+
+	list_for_each_entry(aiodev, &aiodevices, list) {
+		if (aiodev->hwdev->device_node == spec.np)
+			goto found;
+	}
+
+	return ERR_PTR(-EPROBE_DEFER);
+
+found:
+	if (spec.args_count)
+		chnum = spec.args[0];
+
+	if (chnum >= aiodev->num_channels)
+		return ERR_PTR(-EINVAL);
+
+	return aiodev->channels[chnum];
+}
+EXPORT_SYMBOL(aiochannel_get);
+
+int aiochannel_get_value(struct aiochannel *aiochan, int *value)
+{
+	struct aiodevice *aiodev = aiochan->aiodev;
+
+	return aiodev->read(aiochan, value);
+}
+EXPORT_SYMBOL(aiochannel_get_value);
+
+int aiochannel_get_index(struct aiochannel *aiochan)
+{
+	int i;
+	struct aiodevice *aiodev = aiochan->aiodev;
+
+	for (i = 0; i < aiodev->num_channels; i++)
+		if (aiodev->channels[i] == aiochan)
+			return i;
+
+	return -ENOENT;
+}
+EXPORT_SYMBOL(aiochannel_get_index);
+
+static int aiochannel_param_get_value(struct param_d *p, void *priv)
+{
+	struct aiochannel *aiochan = priv;
+
+	return aiochannel_get_value(aiochan, &aiochan->value);
+}
+
+int aiodevice_register(struct aiodevice *aiodev)
+{
+	int i, ret;
+
+	if (!aiodev->name) {
+		if (aiodev->hwdev &&
+		    aiodev->hwdev->device_node) {
+			aiodev->dev.id = DEVICE_ID_SINGLE;
+
+			aiodev->name = of_alias_get(aiodev->hwdev->device_node);
+			if (!aiodev->name)
+				aiodev->name = aiodev->hwdev->device_node->name;
+		}
+	}
+
+	if (!aiodev->name) {
+		aiodev->name = "aiodev";
+		aiodev->dev.id = DEVICE_ID_DYNAMIC;
+	}
+
+	strcpy(aiodev->dev.name, aiodev->name);
+
+	aiodev->dev.parent = aiodev->hwdev;
+
+	ret = register_device(&aiodev->dev);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < aiodev->num_channels; i++) {
+		struct aiochannel *aiochan = aiodev->channels[i];
+		char *name;
+
+		aiochan->aiodev = aiodev;
+
+		name = xasprintf("in_value%d_%s", i, aiochan->unit);
+
+		dev_add_param_int(&aiodev->dev, name, NULL,
+				  aiochannel_param_get_value,
+				  &aiochan->value, "%d", aiochan);
+
+		aiochan->name = xasprintf("%s.%s", aiodev->name, name);
+
+		free(name);
+	}
+
+	list_add_tail(&aiodev->list, &aiodevices);
+
+	return 0;
+}
+EXPORT_SYMBOL(aiodevice_register);
diff --git a/include/aiodev.h b/include/aiodev.h
new file mode 100644
index 0000000..21d8568
--- /dev/null
+++ b/include/aiodev.h
@@ -0,0 +1,39 @@
+#ifndef __AIODEVICE_H
+#define __AIODEVICE_H
+
+struct aiodevice;
+struct aiochannel {
+	char *unit;
+	struct aiodevice *aiodev;
+
+	int value;
+	char *name;
+};
+
+struct aiodevice {
+	const char *name;
+	int (*read)(struct aiochannel *, int *val);
+	struct device_d dev;
+	struct device_d *hwdev;
+	struct aiochannel **channels;
+	int num_channels;
+	struct list_head list;
+};
+
+int aiodevice_register(struct aiodevice *aiodev);
+
+struct aiochannel *aiochannel_get(struct device_d *dev, int index);
+struct aiochannel *aiochannel_get_by_name(const char *name);
+
+int aiochannel_get_value(struct aiochannel *aiochan, int *value);
+int aiochannel_get_index(struct aiochannel *aiochan);
+
+static inline const char *aiochannel_get_unit(struct aiochannel *aiochan)
+{
+	return aiochan->unit;
+}
+
+extern struct list_head aiodevices;
+#define for_each_aiodevice(aiodevice) list_for_each_entry(aiodevice, &aiodevices, list)
+
+#endif
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
