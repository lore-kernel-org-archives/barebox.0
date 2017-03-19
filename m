Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cpfLy-00024l-4v
 for barebox@lists.infradead.org; Sun, 19 Mar 2017 18:14:56 +0000
Received: from tellur.intern.lynxeye.de.fritz.box (a89-183-7-62.net-htp.de
 [89.183.7.62]) by lynxeye.de (Postfix) with ESMTPA id 28A95E743CD
 for <barebox@lists.infradead.org>; Sun, 19 Mar 2017 19:13:57 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 19 Mar 2017 19:13:52 +0100
Message-Id: <20170319181353.2930-1-dev@lynxeye.de>
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
Subject: [PATCH 1/2] add driver for Tegra124 memory controller
To: barebox@lists.infradead.org

This driver performs the required initialization to get the GPU
into a functional state, so it can be used when the OS is running.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/Kconfig              |  1 +
 drivers/Makefile             |  1 +
 drivers/memory/Kconfig       | 11 +++++++
 drivers/memory/Makefile      |  1 +
 drivers/memory/mc-tegra124.c | 75 ++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 89 insertions(+)
 create mode 100644 drivers/memory/Kconfig
 create mode 100644 drivers/memory/Makefile
 create mode 100644 drivers/memory/mc-tegra124.c

diff --git a/drivers/Kconfig b/drivers/Kconfig
index bf31115..ab9afb5 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -34,5 +34,6 @@ source "drivers/rtc/Kconfig"
 source "drivers/firmware/Kconfig"
 source "drivers/phy/Kconfig"
 source "drivers/crypto/Kconfig"
+source "drivers/memory/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index 0fadf4e..a1d2d23 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -35,3 +35,4 @@ obj-$(CONFIG_GENERIC_PHY) += phy/
 obj-$(CONFIG_HAB) += hab/
 obj-$(CONFIG_CRYPTO_HW) += crypto/
 obj-$(CONFIG_AIODEV) += aiodev/
+obj-y	+= memory/
diff --git a/drivers/memory/Kconfig b/drivers/memory/Kconfig
new file mode 100644
index 0000000..39fd644
--- /dev/null
+++ b/drivers/memory/Kconfig
@@ -0,0 +1,11 @@
+menu "Memory controller drivers"
+
+config MC_TEGRA124
+	bool "Support for Tegra124 memory controller"
+	depends on ARCH_TEGRA
+	help
+	  Say yes here to include the driver for the memory controller found on
+	  the Tegra124 SoC. This driver performs the necessary initialization
+	  to provide a function GPU when the OS is running.
+
+endmenu
diff --git a/drivers/memory/Makefile b/drivers/memory/Makefile
new file mode 100644
index 0000000..bd5ace9
--- /dev/null
+++ b/drivers/memory/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_MC_TEGRA124)	+= mc-tegra124.o
diff --git a/drivers/memory/mc-tegra124.c b/drivers/memory/mc-tegra124.c
new file mode 100644
index 0000000..a8d1609
--- /dev/null
+++ b/drivers/memory/mc-tegra124.c
@@ -0,0 +1,75 @@
+/* *
+ * Copyright (C) 2017 Lucas Stach <l.stach@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+
+#define MC_VIDEO_PROTECT_SIZE_MB	0x64c
+#define MC_VIDEO_PROTECT_REG_CTRL	0x650
+#define  MC_VIDEO_PROTECT_REG_WR_DIS	(1 << 0)
+
+static int tegra124_mc_of_fixup(struct device_node *root, void *context)
+{
+	struct device_node *np;
+
+	np = of_find_compatible_node(root, NULL, "nvidia,gk20a");
+	if (np)
+		of_device_enable(np);
+
+	return 0;
+}
+
+static int tegra124_mc_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	void __iomem *base;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		dev_err(dev, "could not get memory region\n");
+		return PTR_ERR(iores);
+	}
+	base = IOMEM(iores->start);
+
+	/* disable video protect region */
+	writel(0 , base + MC_VIDEO_PROTECT_SIZE_MB);
+	writel(MC_VIDEO_PROTECT_REG_WR_DIS, base + MC_VIDEO_PROTECT_REG_CTRL);
+	readl(base + MC_VIDEO_PROTECT_REG_CTRL); /* readback to flush */
+
+	return of_register_fixup(tegra124_mc_of_fixup, NULL);
+}
+
+static __maybe_unused struct of_device_id tegra124_mc_dt_ids[] = {
+	{
+		.compatible = "nvidia,tegra124-mc",
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct driver_d tegra124_mc_driver = {
+	.name		= "tegra124-mc",
+	.of_compatible	= DRV_OF_COMPAT(tegra124_mc_dt_ids),
+	.probe		= tegra124_mc_probe,
+};
+
+static int __init tegra124_mc_init(void)
+{
+	return platform_driver_register(&tegra124_mc_driver);
+}
+device_initcall(tegra124_mc_init);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
