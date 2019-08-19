Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhsQ-0002kk-OP
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 13:39:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Aug 2019 15:38:45 +0200
Message-Id: <20190819133847.17015-7-s.hauer@pengutronix.de>
In-Reply-To: <20190819133847.17015-1-s.hauer@pengutronix.de>
References: <20190819133847.17015-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] ARM: Add generic device tree 2nd stage support
To: Barebox List <barebox@lists.infradead.org>

This adds support for building a barebox image that boots with the
Linux ARM Kernel booting convention. Support for this image can be
enabled in Kconfig. It picks up a device tree passed in r2. This new
image helps for example with qemu. It can be started with:

qemu-system-aarch64 -m 2G -M virt -kernel images/barebox-dt-2nd.img -cpu cortex-a57 -serial stdio

or:

qemu-system-arm -m 1G -M sabrelite -kernel images/barebox-dt-2nd.img -nographic -dtb arch/arm/dts/imx6q-sabrelite.dtb

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                    |  11 +++
 arch/arm/cpu/Makefile               |   3 +
 arch/arm/cpu/board-dt-2nd-aarch64.S |  11 +++
 arch/arm/cpu/board-dt-2nd.c         | 127 ++++++++++++++++++++++++++++
 images/Makefile                     |   4 +
 5 files changed, 156 insertions(+)
 create mode 100644 arch/arm/cpu/board-dt-2nd-aarch64.S
 create mode 100644 arch/arm/cpu/board-dt-2nd.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index de45bcf82a..cfca459984 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -314,6 +314,17 @@ source "arch/arm/mach-zynq/Kconfig"
 source "arch/arm/mach-qemu/Kconfig"
 source "arch/arm/mach-zynqmp/Kconfig"
 
+config BOARD_ARM_GENERIC_DT
+	select LIBFDT
+	select ARM_AMBA
+	bool "Build generic dt image"
+
+config BOARD_ARM_GENERIC_DT_AARCH64
+	bool
+	depends on CPU_V8
+	depends on BOARD_ARM_GENERIC_DT
+	default y
+
 config ARM_ASM_UNIFIED
 	bool
 
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 9b737f80ef..97e4eb52e3 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -10,6 +10,9 @@ AFLAGS_pbl-hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
 
 obj-y += start.o entry.o
 
+pbl-$(CONFIG_BOARD_ARM_GENERIC_DT) += board-dt-2nd.o
+pbl-$(CONFIG_BOARD_ARM_GENERIC_DT_AARCH64) += board-dt-2nd-aarch64.o
+
 obj-pbl-y += setupc$(S64).o cache$(S64).o
 
 obj-$(CONFIG_BOOTM_OPTEE) += start-kernel-optee.o
diff --git a/arch/arm/cpu/board-dt-2nd-aarch64.S b/arch/arm/cpu/board-dt-2nd-aarch64.S
new file mode 100644
index 0000000000..0540a1690d
--- /dev/null
+++ b/arch/arm/cpu/board-dt-2nd-aarch64.S
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#include <linux/linkage.h>
+#include <asm/barebox-arm64.h>
+
+ENTRY_PROC(start_dt_2nd)
+	adr x1, stack
+	mov sp, x1
+	b dt_2nd_aarch64
+.word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
+stack:
+ENTRY_PROC_END(start_dt_2nd)
diff --git a/arch/arm/cpu/board-dt-2nd.c b/arch/arm/cpu/board-dt-2nd.c
new file mode 100644
index 0000000000..655c4b02b3
--- /dev/null
+++ b/arch/arm/cpu/board-dt-2nd.c
@@ -0,0 +1,127 @@
+#include <common.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <io.h>
+#include <debug_ll.h>
+#include <asm/cache.h>
+#include <asm/sections.h>
+#include <linux/libfdt.h>
+
+static void find_mem(void *fdt, unsigned long *membase,
+		     unsigned long *memsize)
+{
+	const __be32 *nap, *nsp, *reg;
+	uint32_t na, ns;
+	uint64_t memsize64, membase64;
+	int node, size, i;
+
+	/* Make sure FDT blob is sane */
+	if (fdt_check_header(fdt) != 0) {
+		pr_err("Invalid device tree blob\n");
+		goto err;
+	}
+
+	/* Find the #address-cells and #size-cells properties */
+	node = fdt_path_offset(fdt, "/");
+	if (node < 0) {
+		pr_err("Cannot find root node\n");
+		goto err;
+	}
+
+	nap = fdt_getprop(fdt, node, "#address-cells", &size);
+	if (!nap || (size != 4)) {
+		pr_err("Cannot find #address-cells property");
+		goto err;
+	}
+	na = fdt32_to_cpu(*nap);
+
+	nsp = fdt_getprop(fdt, node, "#size-cells", &size);
+	if (!nsp || (size != 4)) {
+		pr_err("Cannot find #size-cells property");
+		goto err;
+	}
+	ns = fdt32_to_cpu(*nap);
+
+	/* Find the memory range */
+	node = fdt_node_offset_by_prop_value(fdt, -1, "device_type",
+					     "memory", sizeof("memory"));
+	if (node < 0) {
+		pr_err("Cannot find memory node\n");
+		goto err;
+	}
+
+	reg = fdt_getprop(fdt, node, "reg", &size);
+	if (size < (na + ns) * sizeof(u32)) {
+		pr_err("cannot get memory range\n");
+		goto err;
+	}
+
+	membase64 = 0;
+	for (i = 0; i < na; i++)
+		membase64 = (membase64 << 32) | fdt32_to_cpu(*reg++);
+
+	/* get the memsize and truncate it to under 4G on 32 bit machines */
+	memsize64 = 0;
+	for (i = 0; i < ns; i++)
+		memsize64 = (memsize64 << 32) | fdt32_to_cpu(*reg++);
+
+	*membase = membase64;
+	*memsize = memsize64;
+
+	return;
+err:
+	pr_err("No memory, cannot continue\n");
+	while (1);
+}
+
+#ifdef CONFIG_CPU_V8
+
+static noinline void dt_2nd_continue_aarch64(void *fdt)
+{
+	unsigned long membase, memsize;
+
+	find_mem(fdt, &membase, &memsize);
+
+	barebox_arm_entry(membase, memsize, fdt);
+}
+
+/* called from assembly */
+void dt_2nd_aarch64(void *fdt);
+
+void dt_2nd_aarch64(void *fdt)
+{
+	unsigned long image_start = (unsigned long)_text + global_variable_offset();
+
+	arm_setup_stack(image_start);
+
+	relocate_to_current_adr();
+	setup_c();
+
+	dt_2nd_continue_aarch64(fdt);
+}
+
+#else
+
+static noinline void dt_2nd_continue(void *fdt)
+{
+	unsigned long membase, memsize;
+
+	find_mem(fdt, &membase, &memsize);
+
+	barebox_arm_entry(membase, memsize, fdt);
+}
+
+ENTRY_FUNCTION(start_dt_2nd, r0, r1, r2)
+{
+	unsigned long image_start = (unsigned long)_text + global_variable_offset();
+
+	arm_setup_stack(image_start);
+
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
+	dt_2nd_continue((void *)r2);
+}
+#endif
diff --git a/images/Makefile b/images/Makefile
index 907986e2d0..dd39f44afb 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -164,6 +164,10 @@ include $(srctree)/images/Makefile.at91
 include $(srctree)/images/Makefile.zynqmp
 include $(srctree)/images/Makefile.layerscape
 
+pblb-$(CONFIG_BOARD_ARM_GENERIC_DT) += start_dt_2nd
+FILE_barebox-dt-2nd.img = start_dt_2nd.pblb
+image-$(CONFIG_BOARD_ARM_GENERIC_DT) += barebox-dt-2nd.img
+
 ifneq ($(pblx-y)$(pblx-),)
   $(error pblx- has been removed. Please use pblb- instead.)
 endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
