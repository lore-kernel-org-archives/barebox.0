Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnohU-0000Q0-Di
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 19:35:25 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Tue, 23 Jun 2020 21:35:06 +0200
Message-Id: <20200623193506.13716-5-cleger@kalray.eu>
In-Reply-To: <20200623193506.13716-1-cleger@kalray.eu>
References: <20200623193506.13716-1-cleger@kalray.eu>
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
Subject: [PATCH 4/4] kvx: add support for elf loading using bootm
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

From: Clement Leger <clement.leger@kalray.eu>

In order to boot elfs files, add bootm command support for kvx. This support
can boot elf files using bootm elf support. initrd and device-tree handling
is also included and loads them after the elf file load address.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 arch/kvx/Kconfig                   |   5 ++
 arch/kvx/configs/generic_defconfig |   3 +-
 arch/kvx/include/asm/bootm.h       |  11 +++
 arch/kvx/include/asm/elf.h         |   3 +
 arch/kvx/lib/Makefile              |   2 +-
 arch/kvx/lib/bootm.c               | 134 +++++++++++++++++++++++++++++
 6 files changed, 156 insertions(+), 2 deletions(-)
 create mode 100644 arch/kvx/include/asm/bootm.h
 create mode 100644 arch/kvx/lib/bootm.c

diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
index 5463bb4f1..3327021e1 100644
--- a/arch/kvx/Kconfig
+++ b/arch/kvx/Kconfig
@@ -1,9 +1,14 @@
 config KVX
 	bool
 	select 64BIT
+	select BOOTM
+	select BOOTM_ELF
+	select BOOTM_OFTREE
+	select BOOTM_INITRD
 	select CLKDEV_LOOKUP
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
+	select ELF
 	select FLEXIBLE_BOOTARGS
 	select GENERIC_FIND_NEXT_BIT
 	select LIBFDT
diff --git a/arch/kvx/configs/generic_defconfig b/arch/kvx/configs/generic_defconfig
index f9ff773a0..816217174 100644
--- a/arch/kvx/configs/generic_defconfig
+++ b/arch/kvx/configs/generic_defconfig
@@ -1,7 +1,8 @@
 CONFIG_AUTO_COMPLETE=y
 CONFIG_BAUDRATE=115200
-# CONFIG_BOOTM is not set
 CONFIG_CLOCKSOURCE_KVX=y
+CONFIG_CMD_BOOT=y
+CONFIG_CMD_BOOTM=y
 CONFIG_CMD_CMP=y
 CONFIG_CMD_OF_DUMP=y
 CONFIG_CMD_POWEROFF=y
diff --git a/arch/kvx/include/asm/bootm.h b/arch/kvx/include/asm/bootm.h
new file mode 100644
index 000000000..7ad7e2e87
--- /dev/null
+++ b/arch/kvx/include/asm/bootm.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_KVX_BOOTM_H
+#define _ASM_KVX_BOOTM_H
+
+#define LINUX_BOOT_PARAM_MAGIC 0x31564752414E494CULL
+
+#endif /* _ASM_KVX_BOOTM_H */
diff --git a/arch/kvx/include/asm/elf.h b/arch/kvx/include/asm/elf.h
index 7cc09d7ba..2975ad1b9 100644
--- a/arch/kvx/include/asm/elf.h
+++ b/arch/kvx/include/asm/elf.h
@@ -11,6 +11,9 @@
  */
 #include <linux/types.h>
 
+#define EM_KVX		256
+
+#define ELF_ARCH	EM_KVX
 #define ELF_CLASS	ELFCLASS32
 #define ELF_DATA	ELFDATA2MSB
 
diff --git a/arch/kvx/lib/Makefile b/arch/kvx/lib/Makefile
index 352e7034a..6e56462da 100644
--- a/arch/kvx/lib/Makefile
+++ b/arch/kvx/lib/Makefile
@@ -3,4 +3,4 @@
 # Copyright (C) 2019 Kalray Inc.
 #
 
-obj-y	+= cpuinfo.o board.o dtb.o poweroff.o
+obj-y	+= cpuinfo.o board.o dtb.o poweroff.o bootm.o
diff --git a/arch/kvx/lib/bootm.c b/arch/kvx/lib/bootm.c
new file mode 100644
index 000000000..02bd0b5cf
--- /dev/null
+++ b/arch/kvx/lib/bootm.c
@@ -0,0 +1,134 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#include <elf.h>
+#include <boot.h>
+#include <init.h>
+#include <bootm.h>
+#include <binfmt.h>
+#include <common.h>
+#include <libfile.h>
+#include <linux/kernel.h>
+
+#include <asm/cache.h>
+#include <asm/bootm.h>
+
+typedef void __noreturn (*boot_func_entry)(unsigned long, void *);
+
+static int do_boot_entry(struct image_data *data, boot_func_entry entry,
+			 void *fdt_load_addr)
+{
+	printf("starting elf (entry at %p)\n", entry);
+
+	if (data->dryrun)
+		return 0;
+
+	shutdown_barebox();
+
+	/* flushes instruction and clear dcache caches before execution */
+	sync_dcache_icache();
+	dcache_inval();
+
+	/**
+	 * Parameters passing
+	 * r0: boot magic
+	 * r1: device tree pointer
+	 */
+	entry(LINUX_BOOT_PARAM_MAGIC, (void *) fdt_load_addr);
+
+	/* should never return ! */
+	panic("Returned from boot program !\n");
+
+	return -EINVAL;
+}
+
+static int do_boot_elf(struct image_data *data, struct elf_image *elf)
+{
+	int ret;
+	void *fdt;
+	boot_func_entry entry;
+	unsigned long load_addr, initrd_address;
+
+	/* load initrd after the elf */
+	load_addr = PAGE_ALIGN((unsigned long) elf->high_addr);
+	if (bootm_has_initrd(data)) {
+		if (data->initrd_address != UIMAGE_INVALID_ADDRESS)
+			initrd_address = data->initrd_address;
+		else
+			initrd_address = load_addr;
+
+		printf("Loading initrd at 0x%lx\n", initrd_address);
+		ret = bootm_load_initrd(data, initrd_address);
+		if (ret) {
+			printf("Failed to load initrd\n");
+			return ret;
+		}
+
+		if (data->initrd_address == UIMAGE_INVALID_ADDRESS) {
+			load_addr += resource_size(data->initrd_res);
+			load_addr = PAGE_ALIGN(load_addr);
+		}
+	}
+
+	fdt = bootm_get_devicetree(data);
+	if (IS_ERR(fdt)) {
+		printf("Failed to load dtb\n");
+		return PTR_ERR(fdt);
+	}
+
+	printf("Loading device tree at %lx\n", load_addr);
+	/* load device tree after the initrd if any */
+	ret = bootm_load_devicetree(data, fdt, load_addr);
+	if (ret) {
+		printf("Failed to load device tree: %d\n", ret);
+		goto err_free_fdt;
+	}
+
+	entry = (boot_func_entry) data->os_address;
+
+	ret = do_boot_entry(data, entry, fdt);
+
+err_free_fdt:
+	free(fdt);
+
+	return ret;
+}
+
+static int do_bootm_elf(struct image_data *data)
+{
+	int ret;
+
+	ret = bootm_load_os(data, data->os_address);
+	if (ret)
+		return ret;
+
+	return do_boot_elf(data, data->elf);
+}
+
+static struct image_handler elf_handler = {
+	.name = "ELF",
+	.bootm = do_bootm_elf,
+	.filetype = filetype_elf,
+};
+
+static struct binfmt_hook binfmt_elf_hook = {
+	.type = filetype_elf,
+	.exec = "bootm",
+};
+
+static int kvx_register_image_handler(void)
+{
+	register_image_handler(&elf_handler);
+
+	binfmt_register(&binfmt_elf_hook);
+
+	return 0;
+}
+
+late_initcall(kvx_register_image_handler);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
