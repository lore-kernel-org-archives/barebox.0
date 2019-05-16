Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRH82-0003X6-Fm
 for barebox@lists.infradead.org; Thu, 16 May 2019 14:13:05 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 16 May 2019 16:12:47 +0200
Message-Id: <20190516141247.22717-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2] ARM: Initial OP-TEE support
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

From: Sascha Hauer <s.hauer@pengutronix.de>

This adds initial support for OP-TEE, see https://www.op-tee.org/

barebox starts in secure mode as usual. When booting a kernel
the bootm code also loads the optee_os binary. Instead of jumping
into the kernel barebox jumps into the optee_os binary and puts
the kernel execution address into the lr register. OP-TEE then
jumps into the kernel in nonsecure mode.

The optee_os binary is passed with the -t option to bootm or
with global.bootm.tee.

Optionally OP-TEE can be compiled into barebox using the builtin firmware
feature. Enable the Kconfig option and place or link your tee binary as
optee.bin into the firmware directory.

The amount of SDRAM which is kept free for OP-TEE is configurable.

This patch was tested on a i.MX6 Nitrogen6x board.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
In contrast to v1, this patch contains no firmware support.
For production boards, OP-TEE loading should be implemented in the
prebootloader, resulting in the following boot chain: 

barebox pbl -> op-tee -> barebox

Since OP-TEE modifies the device tree, a way needs to established to
communicate the necessary fixups from OP-TEE to barebox or to pass
another device tree to OP-TEE for fixups.

 arch/arm/cpu/Makefile               |  2 +
 arch/arm/cpu/start-kernel-optee.S   | 14 +++++
 arch/arm/cpu/start.c                |  3 ++
 arch/arm/include/asm/armlinux.h     |  2 +-
 arch/arm/include/asm/barebox-arm.h  |  9 ++++
 arch/arm/lib32/armlinux.c           | 10 +++-
 arch/arm/lib32/bootm.c              | 81 ++++++++++++++++++++++++++++-
 arch/arm/lib32/bootu.c              |  2 +-
 arch/arm/lib32/bootz.c              |  2 +-
 commands/bootm.c                    | 11 +++-
 common/Kconfig                      | 21 ++++++++
 common/bootm.c                      |  6 +++
 include/asm-generic/memory_layout.h |  6 +++
 include/bootm.h                     |  3 ++
 include/tee/optee.h                 | 30 +++++++++++
 15 files changed, 195 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/cpu/start-kernel-optee.S
 create mode 100644 include/tee/optee.h

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 8e1af8bf8d..ed0f75da8c 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -12,6 +12,8 @@ obj-y += start.o entry.o
 
 obj-pbl-y += setupc$(S64).o cache$(S64).o
 
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
index 6573c2ef74..1b1659b315 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -234,6 +234,9 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
 
+	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
+		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1);
+
 	pr_debug("starting barebox...\n");
 
 	start_barebox();
diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
index 135f11b860..6af98968fa 100644
--- a/arch/arm/include/asm/armlinux.h
+++ b/arch/arm/include/asm/armlinux.h
@@ -40,6 +40,6 @@ struct image_data;
 
 void start_linux(void *adr, int swap, unsigned long initrd_address,
 		 unsigned long initrd_size, void *oftree,
-		 enum arm_security_state);
+		 enum arm_security_state, void *optee);
 
 #endif /* __ARCH_ARMLINUX_H */
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index a11d34923d..d3432d3314 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -110,6 +110,15 @@ void *barebox_arm_boot_dtb(void);
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
+		endmem -= OPTEE_SIZE;
+
 	return endmem - SZ_64K;
 }
 
diff --git a/arch/arm/lib32/armlinux.c b/arch/arm/lib32/armlinux.c
index c970f029c5..1cb9fd2e51 100644
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
+	if (optee && IS_ENABLED(CONFIG_BOOTM_OPTEE)) {
+		start_kernel_optee(optee, kernel, oftree);
+	} else {
+		kernel(0, architecture, params);
+	}
 }
diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 4cf570e577..c8b6d1d84b 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -19,6 +19,7 @@
 #include <binfmt.h>
 #include <restart.h>
 #include <globalvar.h>
+#include <tee/optee.h>
 
 #include <asm/byteorder.h>
 #include <asm/setup.h>
@@ -133,11 +134,75 @@ static int get_kernel_addresses(size_t image_size,
 	return 0;
 }
 
+static int optee_verify_header_request_region(struct image_data *data, struct optee_header *hdr)
+{
+	int ret = 0;
+	if (hdr->magic != OPTEE_MAGIC) {
+		printf("Invalid header magic 0x%08x, expected 0x%08x\n",
+		       hdr->magic, OPTEE_MAGIC);
+		return -EINVAL;
+	}
+
+	if (hdr->arch != OPTEE_ARCH_ARM32 || hdr->init_load_addr_hi) {
+		printf("Only 32bit supported\n");
+		return -EINVAL;
+	}
+
+	data->tee_res = request_sdram_region("TEE", hdr->init_load_addr_lo, hdr->init_size);
+	if (!data->tee_res) {
+		printf("Cannot request SDRAM region 0x%08x-0x%08x: %s\n",
+		       hdr->init_load_addr_lo, hdr->init_load_addr_lo + hdr->init_size - 1,
+		       strerror(-EINVAL));
+		return -EINVAL;
+	}
+
+	return ret;
+}
+
+static int bootm_load_tee_from_file(struct image_data *data)
+{
+	int fd, ret;
+	struct optee_header hdr;
+
+	fd = open(data->tee_file, O_RDONLY);
+        if (fd < 0) {
+		printf("Could not open file: %d\n", errno);
+		return -errno;
+	}
+
+        if (read_full(fd, &hdr, sizeof(hdr)) < 0) {
+		printf("read failed: %d\n",errno);
+		ret = -errno;
+		goto out;
+	}
+
+        if (optee_verify_header_request_region(data, &hdr) < 0) {
+		printf("verify failed: %d\n",errno);
+		ret = -errno;
+		goto out;
+	}
+
+        if (read_full(fd, (void *)data->tee_res->start, hdr.init_size) < 0) {
+		printf("read header failed: %d\n",errno);
+		ret = -errno;
+		goto out;
+	}
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
 static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
 			    int swap, void *fdt)
 {
 	unsigned long kernel;
 	unsigned long initrd_start = 0, initrd_size = 0, initrd_end = 0;
+	void *tee;
 	enum arm_security_state state = bootm_arm_security_state();
 	void *fdt_load_address = NULL;
 	int ret;
@@ -189,6 +254,15 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
 			return ret;
 	}
 
+	if (IS_ENABLED(CONFIG_BOOTM_OPTEE)) {
+		if (data->tee_file) {
+			ret = bootm_load_tee_from_file(data);
+			if (ret)
+				return ret;
+		}
+	}
+
+
 	if (bootm_verbose(data)) {
 		printf("\nStarting kernel at 0x%08lx", kernel);
 		if (initrd_size)
@@ -210,8 +284,13 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
 	if (data->dryrun)
 		return 0;
 
+	if (data->tee_res)
+		tee = (void *)data->tee_res->start;
+	else
+		tee = NULL;
+
 	start_linux((void *)kernel, swap, initrd_start, initrd_size,
-		    fdt_load_address, state);
+		    fdt_load_address, state, tee);
 
 	restart_machine();
 
diff --git a/arch/arm/lib32/bootu.c b/arch/arm/lib32/bootu.c
index d811da39ce..24c744da58 100644
--- a/arch/arm/lib32/bootu.c
+++ b/arch/arm/lib32/bootu.c
@@ -26,7 +26,7 @@ static int do_bootu(int argc, char *argv[])
 	oftree = of_get_fixed_tree(NULL);
 #endif
 
-	start_linux(kernel, 0, 0, 0, oftree, ARM_STATE_SECURE);
+	start_linux(kernel, 0, 0, 0, oftree, ARM_STATE_SECURE, NULL);
 
 	return 1;
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
@@ -152,6 +158,9 @@ BAREBOX_CMD_START(bootm)
 #endif
 #ifdef CONFIG_BOOTM_VERBOSE
 					  "v"
+#endif
+#ifdef CONFIG_BOOTM_OPTEE
+					  "t"
 #endif
 					  "] IMAGE")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
diff --git a/common/Kconfig b/common/Kconfig
index 7832df5c55..899d224750 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -643,6 +643,27 @@ config BOOTM_FORCE_SIGNED_IMAGES
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
+config BOOTM_OPTEE_SIZE
+	hex
+	default 0x02000000
+	prompt "OP-TEE Memory Size"
+	depends on BOOTM_OPTEE
+	help
+	  Size to reserve in main memory for OP-TEE.
+	  Can be smaller than the actual size used by OP-TEE, this is used to prevent
+	  barebox from allocating memory in this area.
+
 config BLSPEC
 	depends on FLEXIBLE_BOOTARGS
 	depends on !SHELL_NONE
diff --git a/common/bootm.c b/common/bootm.c
index 36f6c41bbd..d7232f6afa 100644
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
@@ -553,6 +554,8 @@ int bootm_boot(struct bootm_data *bootm_data)
 	bootm_image_name_and_part(bootm_data->os_file, &data->os_file, &data->os_part);
 	bootm_image_name_and_part(bootm_data->oftree_file, &data->oftree_file, &data->oftree_part);
 	bootm_image_name_and_part(bootm_data->initrd_file, &data->initrd_file, &data->initrd_part);
+	if (bootm_data->tee_file)
+		data->tee_file = xstrdup(bootm_data->tee_file);
 	data->verbose = bootm_data->verbose;
 	data->verify = bootm_data->verify;
 	data->force = bootm_data->force;
@@ -693,6 +696,7 @@ err_out:
 	free(data->os_file);
 	free(data->oftree_file);
 	free(data->initrd_file);
+	free(data->tee_file);
 	free(data);
 
 	return ret;
@@ -703,6 +707,7 @@ static int bootm_init(void)
 	globalvar_add_simple("bootm.image", NULL);
 	globalvar_add_simple("bootm.image.loadaddr", NULL);
 	globalvar_add_simple("bootm.oftree", NULL);
+	globalvar_add_simple("bootm.tee", NULL);
 	globalvar_add_simple_bool("bootm.appendroot", &bootm_appendroot);
 	if (IS_ENABLED(CONFIG_BOOTM_INITRD)) {
 		globalvar_add_simple("bootm.initrd", NULL);
@@ -727,6 +732,7 @@ BAREBOX_MAGICVAR_NAMED(global_bootm_image_loadaddr, global.bootm.image.loadaddr,
 BAREBOX_MAGICVAR_NAMED(global_bootm_initrd, global.bootm.initrd, "bootm default initrd");
 BAREBOX_MAGICVAR_NAMED(global_bootm_initrd_loadaddr, global.bootm.initrd.loadaddr, "bootm default initrd loadaddr");
 BAREBOX_MAGICVAR_NAMED(global_bootm_oftree, global.bootm.oftree, "bootm default oftree");
+BAREBOX_MAGICVAR_NAMED(global_bootm_tee, global.bootm.tee, "bootm default tee image");
 BAREBOX_MAGICVAR_NAMED(global_bootm_verify, global.bootm.verify, "bootm default verify level");
 BAREBOX_MAGICVAR_NAMED(global_bootm_verbose, global.bootm.verbose, "bootm default verbosity level (0=quiet)");
 BAREBOX_MAGICVAR_NAMED(global_bootm_appendroot, global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from");
diff --git a/include/asm-generic/memory_layout.h b/include/asm-generic/memory_layout.h
index 45e0ed8023..3f69664aa0 100644
--- a/include/asm-generic/memory_layout.h
+++ b/include/asm-generic/memory_layout.h
@@ -11,6 +11,12 @@
 #define MALLOC_BASE CONFIG_MALLOC_BASE
 #endif
 
+#ifdef CONFIG_BOOTM_OPTEE_SIZE
+#define OPTEE_SIZE CONFIG_BOOTM_OPTEE_SIZE
+#else
+#define OPTEE_SIZE 0
+#endif
+
 #define HEAD_TEXT_BASE MALLOC_BASE
 #define MALLOC_SIZE CONFIG_MALLOC_SIZE
 #define STACK_SIZE  CONFIG_STACK_SIZE
diff --git a/include/bootm.h b/include/bootm.h
index fdc73f711a..5ce3318ecc 100644
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
@@ -86,6 +87,8 @@ struct image_data {
 	 * it.
 	 */
 	void *os_header;
+	char *tee_file;
+	struct resource *tee_res;
 
 	enum bootm_verify verify;
 	int verbose;
diff --git a/include/tee/optee.h b/include/tee/optee.h
new file mode 100644
index 0000000000..8cfe06d889
--- /dev/null
+++ b/include/tee/optee.h
@@ -0,0 +1,30 @@
+/*
+ * OP-TEE related definitions
+ *
+ * (C) Copyright 2016 Linaro Limited
+ * Andrew F. Davis <andrew.davis@xxxxxxxxxx>
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
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
