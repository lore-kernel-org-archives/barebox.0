Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaYyM-000820-Jo
 for barebox@lists.infradead.org; Thu, 05 Nov 2020 06:42:15 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu,  5 Nov 2020 07:41:48 +0100
Message-Id: <20201105064147.11414-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2] ARM: qemu: add support for qemu virt platform
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Necessary support to boot barebox on ARM qemu virt platforms.
No internal device tree, since it is passed by qemu. Therefore it
employs the generic 2nd stage image as the low level code and only adds
a virt specific board driver.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/boards/Makefile           |  1 +
 arch/arm/boards/qemu-virt/Makefile |  1 +
 arch/arm/boards/qemu-virt/board.c  | 36 ++++++++++++++++++++++++++++++
 arch/arm/mach-qemu/Kconfig         |  8 +++++++
 4 files changed, 46 insertions(+)
 create mode 100644 arch/arm/boards/qemu-virt/Makefile
 create mode 100644 arch/arm/boards/qemu-virt/board.c

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index a02d80d2da..8d191f97aa 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -164,6 +164,7 @@ obj-$(CONFIG_MACH_ZYLONITE)			+= zylonite/
 obj-$(CONFIG_MACH_VARISCITE_MX6)		+= variscite-mx6/
 obj-$(CONFIG_MACH_VSCOM_BALTOS)			+= vscom-baltos/
 obj-$(CONFIG_MACH_QEMU_VIRT64)			+= qemu-virt64/
+obj-$(CONFIG_MACH_QEMU_VIRT)			+= qemu-virt/
 obj-$(CONFIG_MACH_WARP7)			+= element14-warp7/
 obj-$(CONFIG_MACH_WEBASTO_CCBV2)		+= webasto-ccbv2/
 obj-$(CONFIG_MACH_VF610_TWR)			+= freescale-vf610-twr/
diff --git a/arch/arm/boards/qemu-virt/Makefile b/arch/arm/boards/qemu-virt/Makefile
new file mode 100644
index 0000000000..dcfc2937d3
--- /dev/null
+++ b/arch/arm/boards/qemu-virt/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/arch/arm/boards/qemu-virt/board.c b/arch/arm/boards/qemu-virt/board.c
new file mode 100644
index 0000000000..66012dcbf9
--- /dev/null
+++ b/arch/arm/boards/qemu-virt/board.c
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2020 Pengutronix e.K.
+ *
+ */
+#include <common.h>
+#include <init.h>
+#include <asm/system_info.h>
+
+static int virt_probe(struct device_d *dev)
+{
+	char *hostname = "virt64";
+
+	if (cpu_is_cortex_a7())
+		hostname = "virt-a7";
+	else if (cpu_is_cortex_a15())
+		hostname = "virt-a15";
+
+	barebox_set_model("ARM QEMU virt");
+	barebox_set_hostname(hostname);
+
+	return 0;
+}
+
+static const struct of_device_id virt_of_match[] = {
+	{ .compatible = "linux,dummy-virt" },
+	{ /*  */},
+};
+
+static struct driver_d virt_board_driver = {
+	.name = "board-qemu-virt",
+	.probe = virt_probe,
+	.of_compatible = virt_of_match,
+};
+
+postcore_platform_driver(virt_board_driver);
diff --git a/arch/arm/mach-qemu/Kconfig b/arch/arm/mach-qemu/Kconfig
index d30bae4c6f..b122f0db88 100644
--- a/arch/arm/mach-qemu/Kconfig
+++ b/arch/arm/mach-qemu/Kconfig
@@ -14,5 +14,13 @@ config MACH_QEMU_VIRT64
 	select ARM_AMBA
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 
+config MACH_QEMU_VIRT
+	bool "QEMU arm virt machine"
+	select CPU_V7
+	select ARM_AMBA
+	select ARM_PSCI_CLIENT
+	select BOARD_ARM_GENERIC_DT
+	select HAVE_PBL_MULTI_IMAGES
+
 endchoice
 endif
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
