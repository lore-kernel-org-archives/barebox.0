Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMuPE-00071a-SS
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 14:45:34 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Sep 2020 16:45:07 +0200
Message-Id: <20200928144514.14398-4-a.fatoum@pengutronix.de>
In-Reply-To: <20200928144514.14398-1-a.fatoum@pengutronix.de>
References: <20200928144514.14398-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 03/10] power: reset: reboot-mode: port syscon-reboot-mode
 support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reboot modes are one-shot information that should be valid for only a
single reset. Syscons that survive a warm reset are one way to implement
this. This is used by many BootROMs to allow falling into a recovery
mode on the next boot. This ports the Linux syscon-reboot-mode support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/reboot-mode.rst       | 11 +++
 drivers/power/reset/Kconfig              | 11 +++
 drivers/power/reset/Makefile             |  1 +
 drivers/power/reset/syscon-reboot-mode.c | 85 ++++++++++++++++++++++++
 4 files changed, 108 insertions(+)
 create mode 100644 drivers/power/reset/syscon-reboot-mode.c

diff --git a/Documentation/user/reboot-mode.rst b/Documentation/user/reboot-mode.rst
index 1908da3ed2d7..9321d928f41a 100644
--- a/Documentation/user/reboot-mode.rst
+++ b/Documentation/user/reboot-mode.rst
@@ -45,6 +45,17 @@ Reboot mode providers have priorities. The provider with the highest
 priority has its parameters aliased as ``$global.system.reboot_mode.prev``
 and ``$global.system.reboot_mode.next``.
 
+Reset
+~~~~~
+
+Reboot modes can be stored on a syscon wrapping general purpose registers
+that survives warm resets. If the system instead did reset via an external
+power management IC, the registers may lose their value.
+
+If such reboot mode storage is used, users must take care to use the correct
+reset provider. In barebox, multiple reset providers may co-exist. They
+``reset`` command allows listing and choosing a specific reboot mode.
+
 Disambiguation
 ~~~~~~~~~~~~~~
 
diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index 5554fc122d92..f65e1f67fd59 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -3,3 +3,14 @@
 
 config REBOOT_MODE
 	bool
+
+config SYSCON_REBOOT_MODE
+	bool "Generic SYSCON regmap reboot mode driver"
+	depends on OFDEVICE
+	depends on MFD_SYSCON
+	select REBOOT_MODE
+	help
+	  Say y here will enable reboot mode driver. This will
+	  get reboot mode arguments and store it in SYSCON mapped
+	  register, then the bootloader can read it to take different
+	  action according to the mode.
diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
index 68231f044a52..56feec78cf26 100644
--- a/drivers/power/reset/Makefile
+++ b/drivers/power/reset/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_REBOOT_MODE) += reboot-mode.o
+obj-$(CONFIG_SYSCON_REBOOT_MODE) += syscon-reboot-mode.o
diff --git a/drivers/power/reset/syscon-reboot-mode.c b/drivers/power/reset/syscon-reboot-mode.c
new file mode 100644
index 000000000000..5e4aed943d5c
--- /dev/null
+++ b/drivers/power/reset/syscon-reboot-mode.c
@@ -0,0 +1,85 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2016, Fuzhou Rockchip Electronics Co., Ltd
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <of.h>
+#include <regmap.h>
+#include <mfd/syscon.h>
+#include <linux/reboot-mode.h>
+
+struct syscon_reboot_mode {
+	struct regmap *map;
+	struct reboot_mode_driver reboot;
+	u32 offset;
+	u32 mask;
+};
+
+static int syscon_reboot_mode_write(struct reboot_mode_driver *reboot,
+				    unsigned int magic)
+{
+	struct syscon_reboot_mode *syscon_rbm;
+	int ret;
+
+	syscon_rbm = container_of(reboot, struct syscon_reboot_mode, reboot);
+
+	ret = regmap_update_bits(syscon_rbm->map, syscon_rbm->offset,
+				 syscon_rbm->mask, magic);
+	if (ret < 0)
+		dev_err(reboot->dev, "update reboot mode bits failed\n");
+
+	return ret;
+}
+
+static int syscon_reboot_mode_probe(struct device_d *dev)
+{
+	int ret;
+	struct syscon_reboot_mode *syscon_rbm;
+	struct device_node *np = dev->device_node;
+	u32 magic;
+
+	syscon_rbm = xzalloc(sizeof(*syscon_rbm));
+
+	syscon_rbm->reboot.dev = dev;
+	syscon_rbm->reboot.write = syscon_reboot_mode_write;
+	syscon_rbm->mask = 0xffffffff;
+
+	syscon_rbm->map = syscon_node_to_regmap(dev->parent->device_node);
+	if (IS_ERR(syscon_rbm->map))
+		return PTR_ERR(syscon_rbm->map);
+
+	if (of_property_read_u32(np, "offset", &syscon_rbm->offset))
+		return -EINVAL;
+
+	of_property_read_u32(np, "mask", &syscon_rbm->mask);
+
+	ret = regmap_read(syscon_rbm->map, syscon_rbm->offset, &magic);
+	if (ret) {
+		dev_err(dev, "error reading reboot mode: %s\n",
+			strerror(-ret));
+		return ret;
+	}
+
+	magic &= syscon_rbm->mask;
+
+	ret = reboot_mode_register(&syscon_rbm->reboot, magic);
+	if (ret)
+		dev_err(dev, "can't register reboot mode\n");
+
+	return ret;
+}
+
+static const struct of_device_id syscon_reboot_mode_of_match[] = {
+	{ .compatible = "syscon-reboot-mode" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d syscon_reboot_mode_driver = {
+	.probe = syscon_reboot_mode_probe,
+	.name = "syscon-reboot-mode",
+	.of_compatible = syscon_reboot_mode_of_match,
+};
+coredevice_platform_driver(syscon_reboot_mode_driver);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
