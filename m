Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dL4gx-0007Z5-SI
 for barebox@lists.infradead.org; Wed, 14 Jun 2017 09:34:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Jun 2017 11:34:00 +0200
Message-Id: <20170614093400.5940-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: Initial OP-TEE support
To: Barebox List <barebox@lists.infradead.org>

This adds initial support for OP-TEE, see https://www.op-tee.org/

This is for testing only, not meant to be merged upstream in this
state.

barebox starts in secure mode as usual. When booting a kernel
the bootm code also loads the optee_os binary. Instead of jumping
into the kernel barebox jumps into the optee_os binary and puts
the kernel execution address into the lr register. OP-TEE then
jumps into the kernel in nonsecure mode.

The optee_os binary is passed with the -t option to bootm or
with global.bootm.tee.

Note that with this patch barebox keeps the last 32MiB of SDRAM
free for OP-TEE. The OP-TEE binary must be linked to this location
(which of course is not so nice for boards with different amounts
of RAM).

This patch was tested on a i.MX6 SabreLite board and a i.MX6 Phytec
phyFLEX board.

We currently assume that when OP-TEE is used, the secondary core startup
is done via PSCI. Normally OP-TEE should add the PSCI node to the
device tree, because it actually knows which enable method it
implements. Currently OP-TEE doesn't do this, so we add the node in
barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Makefile              |  2 +
 arch/arm/cpu/start-kernel-optee.S  | 14 ++++++
 arch/arm/cpu/start.c               |  3 ++
 arch/arm/include/asm/armlinux.h    |  2 +-
 arch/arm/include/asm/barebox-arm.h |  9 ++++
 arch/arm/lib/bootm.c               | 94 +++++++++++++++++++++++++++++++++++++-
 arch/arm/lib/bootu.c               |  2 +-
 arch/arm/lib32/armlinux.c          | 10 +++-
 arch/arm/lib32/bootz.c             |  2 +-
 commands/bootm.c                   | 11 ++++-
 common/Kconfig                     | 11 +++++
 common/bootm.c                     |  6 +++
 include/bootm.h                    |  4 ++
 include/tee/optee.h                | 30 ++++++++++++
 14 files changed, 193 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/cpu/start-kernel-optee.S
 create mode 100644 include/tee/optee.h

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 13fe12c31f..215e4e8fc1 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -22,6 +22,8 @@ obj-y += setupc.o
 pbl-y += setupc.o
 endif
 
+obj-$(CONFIG_BOOTM_OPTEE) += start-kernel-optee.o
+
 #
 # Any variants can be called as start-armxyz.S
 #
diff --git a/arch/arm/cpu/start-kernel-optee.S b/arch/arm/cpu/start-kernel-optee.S
new file mode 100644
index 0000000000..ce5ac178a4
--- /dev/null
+++ b/arch/arm/cpu/start-kernel-optee.S
@@ -0,0 +1,14 @@
+#include <linux/linkage.h>
+
+ENTRY(start_kernel_optee)
+        /*
+         * r0 = optee
+         * r1 = kernel
+         * r2 = oftree
+         */
+         mov r4, r0
+         mov r0, #0
+         mov lr, r1
+         mov r1, #0
+         bx r4
+ENDPROC(start_kernel_optee)
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 171e6ad0eb..6c19c6ec82 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -222,6 +222,9 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
 
+	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
+		of_add_reserve_entry(endmem - SZ_32M, endmem - 1);
+
 	pr_debug("starting barebox...\n");
 
 	start_barebox();
diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
index 5c39200a0c..aab0b73ec3 100644
--- a/arch/arm/include/asm/armlinux.h
+++ b/arch/arm/include/asm/armlinux.h
@@ -40,6 +40,6 @@ struct image_data;
 
 void start_linux(void *adr, int swap, unsigned long initrd_address,
 		 unsigned long initrd_size, void *oftree,
-		 enum arm_security_state);
+		 enum arm_security_state, void *optee);
 
 #endif /* __ARCH_ARMLINUX_H */
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 3aea2e070e..7fb486db3e 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -97,6 +97,15 @@ void *barebox_arm_boot_dtb(void);
 static inline unsigned long arm_mem_stack_top(unsigned long membase,
 					      unsigned long endmem)
 {
+	/*
+	 * FIXME:
+	 * OP-TEE expects to be executed somewhere at the end of RAM.
+	 * Since we normally occupy all RAM at the end, move ourselves
+	 * a bit lower.
+	 */
+	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
+		return endmem - SZ_32M - SZ_64K;
+
 	return endmem - SZ_64K;
 }
 
diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 8068a53be0..67e72aea7c 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -19,6 +19,7 @@
 #include <binfmt.h>
 #include <restart.h>
 #include <globalvar.h>
+#include <tee/optee.h>
 
 #include <asm/byteorder.h>
 #include <asm/setup.h>
@@ -130,10 +131,86 @@ static int get_kernel_addresses(size_t image_size,
 	return 0;
 }
 
+/*
+ * FIXME: The same code already exists in of_psci_fixup,
+ * we should share it.
+ */
+static int optee_add_psci_node(struct device_node *root, void *ctx)
+{
+	int ret;
+	struct device_node *psci;
+
+	printf("Starting with OP-TEE, adding PSCI device node\n");
+
+	psci = of_create_node(root, "/psci");
+	if (!psci)
+		return -EINVAL;
+
+	ret = of_property_write_string(psci, "compatible", "arm,psci-1.0");
+	if (ret)
+		return ret;
+
+	ret = of_property_write_string(psci, "method", "smc");
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int bootm_load_tee(struct image_data *data)
+{
+	int fd, ret;
+	struct optee_header hdr;
+
+	fd = open(data->tee_file, O_RDONLY);
+	if (fd < 0)
+		return fd;
+
+	ret = read(fd, &hdr, sizeof(hdr));
+	if (ret < 0)
+		goto out;
+
+	if (hdr.magic != OPTEE_MAGIC) {
+		printf("Invalid header magic 0x%08x, expected 0x%08x\n",
+		       hdr.magic, OPTEE_MAGIC);
+		ret = -EINVAL;
+		goto out;
+	}
+
+	if (hdr.arch != OPTEE_ARCH_ARM32 || hdr.init_load_addr_hi) {
+		printf("Only 32bit supported\n");
+		ret = -EINVAL;
+		goto out;
+	}
+
+	data->tee_res = request_sdram_region("TEE", hdr.init_load_addr_lo, hdr.init_size);
+	if (!data->tee_res) {
+		ret = -EBUSY;
+		printf("Cannot request SDRAM region 0x%08x-0x%08x: %s\n",
+		       hdr.init_load_addr_lo, hdr.init_load_addr_lo + hdr.init_size - 1,
+		       strerror(-ret));
+	}
+
+	ret = read_full(fd, (void *)data->tee_res->start, hdr.init_size);
+	if (ret < 0)
+		goto out;
+
+	of_register_fixup(optee_add_psci_node, NULL);
+
+	printf("Read optee file to 0x%08x, size 0x%08x\n", data->tee_res->start, hdr.init_size);
+
+	ret = 0;
+out:
+	close(fd);
+
+	return ret;
+}
+
 static int __do_bootm_linux(struct image_data *data, unsigned long free_mem, int swap)
 {
 	unsigned long kernel;
 	unsigned long initrd_start = 0, initrd_size = 0, initrd_end = 0;
+	void *tee;
 	enum arm_security_state state = bootm_arm_security_state();
 	int ret;
 
@@ -163,7 +240,17 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem, int
 		free_mem = PAGE_ALIGN(initrd_end + 1);
 	}
 
+	if (IS_ENABLED(CONFIG_BOOTM_OPTEE) && data->tee_file) {
+		ret = bootm_load_tee(data);
+		if (ret)
+			return ret;
+	}
+
 	ret = bootm_load_devicetree(data, free_mem);
+
+	if (IS_ENABLED(CONFIG_BOOTM_OPTEE) && data->tee_file)
+		of_unregister_fixup(optee_add_psci_node, NULL);
+
 	if (ret)
 		return ret;
 
@@ -188,8 +275,13 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem, int
 	if (data->dryrun)
 		return 0;
 
+	if (data->tee_res)
+		tee = (void* )data->tee_res->start;
+	else
+		tee = NULL;
+
 	start_linux((void *)kernel, swap, initrd_start, initrd_size, data->oftree,
-		    state);
+		    state, tee);
 
 	restart_machine();
 
diff --git a/arch/arm/lib/bootu.c b/arch/arm/lib/bootu.c
index d811da39ce..24c744da58 100644
--- a/arch/arm/lib/bootu.c
+++ b/arch/arm/lib/bootu.c
@@ -26,7 +26,7 @@ static int do_bootu(int argc, char *argv[])
 	oftree = of_get_fixed_tree(NULL);
 #endif
 
-	start_linux(kernel, 0, 0, 0, oftree, ARM_STATE_SECURE);
+	start_linux(kernel, 0, 0, 0, oftree, ARM_STATE_SECURE, NULL);
 
 	return 1;
 }
diff --git a/arch/arm/lib32/armlinux.c b/arch/arm/lib32/armlinux.c
index 2520fe210c..e738892b83 100644
--- a/arch/arm/lib32/armlinux.c
+++ b/arch/arm/lib32/armlinux.c
@@ -258,9 +258,11 @@ static void setup_tags(unsigned long initrd_address,
 
 }
 
+void start_kernel_optee(void *optee, void *kernel, void *oftree);
+
 void start_linux(void *adr, int swap, unsigned long initrd_address,
 		 unsigned long initrd_size, void *oftree,
-		 enum arm_security_state state)
+		 enum arm_security_state state, void *optee)
 {
 	void (*kernel)(int zero, int arch, void *params) = adr;
 	void *params = NULL;
@@ -294,5 +296,9 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 		__asm__ __volatile__("mcr p15, 0, %0, c1, c0" :: "r" (reg));
 	}
 
-	kernel(0, architecture, params);
+	if (optee) {
+		start_kernel_optee(optee, kernel, oftree);
+	} else {
+		kernel(0, architecture, params);
+	}
 }
diff --git a/arch/arm/lib32/bootz.c b/arch/arm/lib32/bootz.c
index c0ffd93c2b..a2a26ac2f9 100644
--- a/arch/arm/lib32/bootz.c
+++ b/arch/arm/lib32/bootz.c
@@ -112,7 +112,7 @@ static int do_bootz(int argc, char *argv[])
 	oftree = of_get_fixed_tree(NULL);
 #endif
 
-	start_linux(zimage, swap, 0, 0, oftree, ARM_STATE_SECURE);
+	start_linux(zimage, swap, 0, 0, oftree, ARM_STATE_SECURE, NULL);
 
 	return 0;
 
diff --git a/commands/bootm.c b/commands/bootm.c
index c7cbdbe0f4..100c2e99fb 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -45,7 +45,7 @@
 #include <magicvar.h>
 #include <asm-generic/memory_layout.h>
 
-#define BOOTM_OPTS_COMMON "sca:e:vo:fd"
+#define BOOTM_OPTS_COMMON "sca:e:vo:fdt:"
 
 #ifdef CONFIG_BOOTM_INITRD
 #define BOOTM_OPTS BOOTM_OPTS_COMMON "L:r:"
@@ -96,6 +96,9 @@ static int do_bootm(int argc, char *argv[])
 		case 'd':
 			data.dryrun = 1;
 			break;
+		case 't':
+			data.tee_file = optarg;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -134,6 +137,9 @@ BAREBOX_CMD_HELP_OPT ("-e OFFS\t","entry point to the image relative to start (0
 #ifdef CONFIG_OFTREE
 BAREBOX_CMD_HELP_OPT ("-o DTB\t","specify open firmware device tree")
 #endif
+#ifdef CONFIG_BOOTM_OPTEE
+BAREBOX_CMD_HELP_OPT ("-t TEE\t","specify TEE image")
+#endif
 #ifdef CONFIG_BOOTM_VERBOSE
 BAREBOX_CMD_HELP_OPT ("-v\t","verbose")
 #endif
@@ -153,6 +159,9 @@ BAREBOX_CMD_START(bootm)
 #ifdef CONFIG_BOOTM_VERBOSE
 					  "v"
 #endif
+#ifdef CONFIG_BOOTM_OPTEE
+					  "t"
+#endif
 					  "] IMAGE")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_bootm_help)
diff --git a/common/Kconfig b/common/Kconfig
index bc7cb0fe76..786a0383b6 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -641,6 +641,17 @@ config BOOTM_FORCE_SIGNED_IMAGES
 	  are refused to boot. Effectively this means only FIT images can be booted
 	  since they are the only supported image type that support signing.
 
+config BOOTM_OPTEE
+	bool
+	prompt "support booting OP-TEE"
+	depends on BOOTM && ARM
+	help
+	  OP-TEE is a trusted execution environment (TEE). With this option
+	  enabled barebox supports starting optee_os as part of the bootm command.
+	  Instead of the kernel bootm starts the optee_os binary which then starts
+	  the kernel in nonsecure mode. Pass the optee_os binary with the -t option
+	  or in the global.bootm.tee variable.
+
 config BLSPEC
 	depends on BLOCK
 	depends on FLEXIBLE_BOOTARGS
diff --git a/common/bootm.c b/common/bootm.c
index 81625d9157..a90c2a9a69 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -58,6 +58,7 @@ void bootm_data_init_defaults(struct bootm_data *data)
 	data->initrd_address = UIMAGE_INVALID_ADDRESS;
 	data->os_address = UIMAGE_SOME_ADDRESS;
 	data->oftree_file = getenv_nonempty("global.bootm.oftree");
+	data->tee_file = getenv_nonempty("global.bootm.tee");
 	data->os_file = getenv_nonempty("global.bootm.image");
 	getenv_ul("global.bootm.image.loadaddr", &data->os_address);
 	getenv_ul("global.bootm.initrd.loadaddr", &data->initrd_address);
@@ -526,6 +527,8 @@ int bootm_boot(struct bootm_data *bootm_data)
 	bootm_image_name_and_part(bootm_data->os_file, &data->os_file, &data->os_part);
 	bootm_image_name_and_part(bootm_data->oftree_file, &data->oftree_file, &data->oftree_part);
 	bootm_image_name_and_part(bootm_data->initrd_file, &data->initrd_file, &data->initrd_part);
+	if (bootm_data->tee_file)
+		data->tee_file = xstrdup(bootm_data->tee_file);
 	data->verbose = bootm_data->verbose;
 	data->verify = bootm_data->verify;
 	data->force = bootm_data->force;
@@ -649,6 +652,7 @@ err_out:
 	free(data->os_file);
 	free(data->oftree_file);
 	free(data->initrd_file);
+	free(data->tee_file);
 	free(data);
 
 	return ret;
@@ -659,6 +663,7 @@ static int bootm_init(void)
 	globalvar_add_simple("bootm.image", NULL);
 	globalvar_add_simple("bootm.image.loadaddr", NULL);
 	globalvar_add_simple("bootm.oftree", NULL);
+	globalvar_add_simple("bootm.tee", NULL);
 	globalvar_add_simple_bool("bootm.appendroot", &bootm_appendroot);
 	if (IS_ENABLED(CONFIG_BOOTM_INITRD)) {
 		globalvar_add_simple("bootm.initrd", NULL);
@@ -683,6 +688,7 @@ BAREBOX_MAGICVAR_NAMED(global_bootm_image_loadaddr, global.bootm.image.loadaddr,
 BAREBOX_MAGICVAR_NAMED(global_bootm_initrd, global.bootm.initrd, "bootm default initrd");
 BAREBOX_MAGICVAR_NAMED(global_bootm_initrd_loadaddr, global.bootm.initrd.loadaddr, "bootm default initrd loadaddr");
 BAREBOX_MAGICVAR_NAMED(global_bootm_oftree, global.bootm.oftree, "bootm default oftree");
+BAREBOX_MAGICVAR_NAMED(global_bootm_tee, global.bootm.tee, "bootm default tee image");
 BAREBOX_MAGICVAR_NAMED(global_bootm_verify, global.bootm.verify, "bootm default verify level");
 BAREBOX_MAGICVAR_NAMED(global_bootm_verbose, global.bootm.verbose, "bootm default verbosity level (0=quiet)");
 BAREBOX_MAGICVAR_NAMED(global_bootm_appendroot, global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from");
diff --git a/include/bootm.h b/include/bootm.h
index 6e9777a9ac..f4f3388ad8 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -16,6 +16,7 @@ struct bootm_data {
 	const char *os_file;
 	const char *initrd_file;
 	const char *oftree_file;
+	const char *tee_file;
 	int verbose;
 	enum bootm_verify verify;
 	bool force;
@@ -77,6 +78,9 @@ struct image_data {
 	struct fdt_header *oftree;
 	struct resource *oftree_res;
 
+	char *tee_file;
+	struct resource *tee_res;
+
 	enum bootm_verify verify;
 	int verbose;
 	int force;
diff --git a/include/tee/optee.h b/include/tee/optee.h
new file mode 100644
index 0000000000..34a4e480f5
--- /dev/null
+++ b/include/tee/optee.h
@@ -0,0 +1,30 @@
+/*
+ * OP-TEE related definitions
+ *
+ * (C) Copyright 2016 Linaro Limited
+ * Andrew F. Davis <andrew.davis@linaro.org>
+ *
+ * SPDX-License-Identifier: BSD-2-Clause
+ */
+
+#ifndef _OPTEE_H
+#define _OPTEE_H
+
+#define OPTEE_MAGIC             0x4554504f
+#define OPTEE_VERSION           1
+#define OPTEE_ARCH_ARM32        0
+#define OPTEE_ARCH_ARM64        1
+
+struct optee_header {
+	uint32_t magic;
+	uint8_t version;
+	uint8_t arch;
+	uint16_t flags;
+	uint32_t init_size;
+	uint32_t init_load_addr_hi;
+	uint32_t init_load_addr_lo;
+	uint32_t init_mem_usage;
+	uint32_t paged_size;
+};
+
+#endif /* _OPTEE_H */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
