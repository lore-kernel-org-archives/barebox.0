Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZup1-0004W4-Ex
 for barebox@lists.infradead.org; Tue, 03 Nov 2020 11:49:57 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  3 Nov 2020 12:49:48 +0100
Message-Id: <20201103114948.31021-2-r.czerwinski@pengutronix.de>
In-Reply-To: <20201103114948.31021-1-r.czerwinski@pengutronix.de>
References: <20201103114948.31021-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: qemu: add support for qemu virt platform
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Necessary support to boot barebox on ARM qemu virt platforms.
No internal device tree, since it is passed by qemu. Also currently
expects -m 1024M because of the hard set memsize.
Future improvements to read the memory size directly from the dtb
welcome.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/boards/Makefile                  |  1 +
 arch/arm/boards/qemu-virt/Makefile        |  2 ++
 arch/arm/boards/qemu-virt/board.c         | 25 +++++++++++++
 arch/arm/boards/qemu-virt/lowlevel.c      | 43 +++++++++++++++++++++++
 arch/arm/boards/qemu-virt/lowlevel_init.S | 10 ++++++
 arch/arm/mach-qemu/Kconfig                |  7 ++++
 arch/arm/mach-qemu/Makefile               |  2 +-
 7 files changed, 89 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/qemu-virt/Makefile
 create mode 100644 arch/arm/boards/qemu-virt/board.c
 create mode 100644 arch/arm/boards/qemu-virt/lowlevel.c
 create mode 100644 arch/arm/boards/qemu-virt/lowlevel_init.S

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
index 0000000000..03def2a918
--- /dev/null
+++ b/arch/arm/boards/qemu-virt/Makefile
@@ -0,0 +1,2 @@
+lwl-y += lowlevel.o lowlevel_init.o
+obj-y += board.o
diff --git a/arch/arm/boards/qemu-virt/board.c b/arch/arm/boards/qemu-virt/board.c
new file mode 100644
index 0000000000..e39b104705
--- /dev/null
+++ b/arch/arm/boards/qemu-virt/board.c
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2020 Pengutronix e.K.
+ *
+ */
+#include <common.h>
+#include <init.h>
+#include <asm/armlinux.h>
+#include <asm/system_info.h>
+#include <asm/pgtable64.h>
+#include <mach/devices.h>
+#include <environment.h>
+#include <linux/sizes.h>
+#include <io.h>
+#include <envfs.h>
+#include <globalvar.h>
+#include <asm/mmu.h>
+
+static int virt_console_init(void)
+{
+	virt_register_uart(0);
+
+	return 0;
+}
+console_initcall(virt_console_init);
diff --git a/arch/arm/boards/qemu-virt/lowlevel.c b/arch/arm/boards/qemu-virt/lowlevel.c
new file mode 100644
index 0000000000..9024eed5f9
--- /dev/null
+++ b/arch/arm/boards/qemu-virt/lowlevel.c
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2020 Pengutronix e.K.
+ *
+ */
+
+#include <common.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <asm/system_info.h>
+#include <asm/unaligned.h>
+
+void qemu_virt_start(uint32_t, uint32_t, uint32_t);
+
+static void virt_entry(uint32_t r2) {
+	void *fdt = NULL;
+    	unsigned long membase = 0x40000000;
+	unsigned long memsize = SZ_512M;
+
+	if (IS_ENABLED(CONFIG_OFDEVICE) &&
+	    get_unaligned_be32((void*)r2) == FDT_MAGIC) {
+		fdt = (void*)r2;
+		/*
+		 * Need to move membase a bit as the PBL wants to relocate
+		 * to the start of RAM, which would overwrite the DTB.
+		 */
+	}
+
+	barebox_arm_entry(membase, memsize, fdt);
+}
+
+void noinline qemu_virt_start(uint32_t r0, uint32_t r1, uint32_t r2)
+{
+	arm_cpu_lowlevel_init();
+
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
+	virt_entry(r2);
+}
+
diff --git a/arch/arm/boards/qemu-virt/lowlevel_init.S b/arch/arm/boards/qemu-virt/lowlevel_init.S
new file mode 100644
index 0000000000..3558df0591
--- /dev/null
+++ b/arch/arm/boards/qemu-virt/lowlevel_init.S
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+
+/* The DRAM is already setup */
+#define STACK_TOP 0x50000000
+
+.globl barebox_arm_reset_vector
+barebox_arm_reset_vector:
+	mov r0, #STACK_TOP
+	mov sp, r0
+	b qemu_virt_start
diff --git a/arch/arm/mach-qemu/Kconfig b/arch/arm/mach-qemu/Kconfig
index d30bae4c6f..dd3ccd8740 100644
--- a/arch/arm/mach-qemu/Kconfig
+++ b/arch/arm/mach-qemu/Kconfig
@@ -14,5 +14,12 @@ config MACH_QEMU_VIRT64
 	select ARM_AMBA
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 
+config MACH_QEMU_VIRT
+	bool "QEMU arm virt machine"
+	select CPU_V7
+	select ARM_AMBA
+	select RELOCATABLE
+	select ARM_PSCI_CLIENT
+
 endchoice
 endif
diff --git a/arch/arm/mach-qemu/Makefile b/arch/arm/mach-qemu/Makefile
index ece277ce0e..8f73aa41a5 100644
--- a/arch/arm/mach-qemu/Makefile
+++ b/arch/arm/mach-qemu/Makefile
@@ -1 +1 @@
-obj-$(CONFIG_MACH_QEMU_VIRT64) += virt_devices.o
+obj-$(CONFIG_ARCH_QEMU) += virt_devices.o
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
