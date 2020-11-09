Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kc7TO-0004zZ-NC
 for barebox@lists.infradead.org; Mon, 09 Nov 2020 13:44:44 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon,  9 Nov 2020 14:44:29 +0100
Message-Id: <20201109134430.21156-8-r.czerwinski@pengutronix.de>
In-Reply-To: <20201109134430.21156-1-r.czerwinski@pengutronix.de>
References: <20201109134430.21156-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 7/8] ARM: qemu: add support for qemu virt platform
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Necessary support to boot barebox on ARM qemu virt platforms.
No internal device tree, since it is passed by qemu. Therefore it
employs the generic 2nd stage image as the low level code and only adds
a virt specific board driver.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/Kconfig                   |  2 +-
 arch/arm/boards/Makefile           |  1 +
 arch/arm/boards/qemu-virt/Makefile |  1 +
 arch/arm/boards/qemu-virt/board.c  | 36 ++++++++++++++++++++++++++++++
 arch/arm/mach-vexpress/Kconfig     |  4 ++++
 5 files changed, 43 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/qemu-virt/Makefile
 create mode 100644 arch/arm/boards/qemu-virt/board.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 91da0e4ff3..5342de54c1 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -216,7 +216,7 @@ config ARCH_VERSATILE
 	select HAS_DEBUG_LL
 
 config ARCH_VEXPRESS
-	bool "ARM Vexpres boards"
+	bool "ARM Vexpress & virt boards"
 	select HAS_DEBUG_LL
 	select CPU_V7
 	select ARM_AMBA
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index a02d80d2da..81c228efd6 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -164,6 +164,7 @@ obj-$(CONFIG_MACH_ZYLONITE)			+= zylonite/
 obj-$(CONFIG_MACH_VARISCITE_MX6)		+= variscite-mx6/
 obj-$(CONFIG_MACH_VSCOM_BALTOS)			+= vscom-baltos/
 obj-$(CONFIG_MACH_QEMU_VIRT64)			+= qemu-virt64/
+obj-$(CONFIG_MACH_VIRT)				+= qemu-virt/
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
index 0000000000..3aeea1a017
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
+	char *hostname = "virt";
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
+	{ /* Sentinel */},
+};
+
+static struct driver_d virt_board_driver = {
+	.name = "board-qemu-virt",
+	.probe = virt_probe,
+	.of_compatible = virt_of_match,
+};
+
+postcore_platform_driver(virt_board_driver);
diff --git a/arch/arm/mach-vexpress/Kconfig b/arch/arm/mach-vexpress/Kconfig
index 4058177b3a..7677a1411b 100644
--- a/arch/arm/mach-vexpress/Kconfig
+++ b/arch/arm/mach-vexpress/Kconfig
@@ -8,5 +8,9 @@ config MACH_VEXPRESS
 	bool "ARM Vexpress"
 	select COMMON_CLK_OF_PROVIDER
 
+config MACH_VIRT
+	bool "QEMU virt"
+	select ARM_PSCI_CLIENT
+	select BOARD_ARM_GENERIC_DT
 
 endif
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
