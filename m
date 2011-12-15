Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8ae-0001aV-Sg
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:31:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 11:30:29 +0100
Message-Id: <1323945034-19687-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
References: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 07/12] bootm: use new uimage code
To: barebox@lists.infradead.org

This switches the bootm code to the new uimage code. Also
bootm can now handle other types of images than uImages.
Currently the only architecture making use of this is
arm which allows to boot zImages, raw images and barebox
images.
I intended to make a more bisectable series from this but
I failed becuase there are many dependencies and no matter
how I tried the patches grew bigger and and bigger. So I
decided to put this all in a single patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c               |  222 +++++++++++++++++--
 arch/blackfin/lib/blackfin_linux.c |   12 +-
 arch/nios2/lib/bootm.c             |   11 +-
 arch/ppc/lib/ppclinux.c            |   16 +-
 commands/Kconfig                   |   22 ++
 commands/bootm.c                   |  451 ++++++++++++++++++++++++++----------
 include/boot.h                     |   62 +++++-
 7 files changed, 633 insertions(+), 163 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 1de22bf..d8bb701 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -11,6 +11,8 @@
 #include <malloc.h>
 #include <fcntl.h>
 #include <errno.h>
+#include <sizes.h>
+#include <libbb.h>
 
 #include <asm/byteorder.h>
 #include <asm/setup.h>
@@ -18,33 +20,223 @@
 #include <asm/armlinux.h>
 #include <asm/system.h>
 
-static int do_bootm_linux(struct image_data *data)
+static int __do_bootm_linux(struct image_data *data, int swap)
 {
-	void (*theKernel)(int zero, int arch, void *params);
-	image_header_t *os_header = &data->os->header;
+	unsigned long kernel;
+	unsigned long initrd_start = 0, initrd_size = 0;
+	struct memory_bank *bank;
+	unsigned long load_address;
+
+	if (data->os_res) {
+		load_address = data->os_res->start;
+	} else if (data->os_address != UIMAGE_INVALID_ADDRESS) {
+		load_address = data->os_address;
+	} else {
+		bank = list_first_entry(&memory_banks,
+				struct memory_bank, list);
+		load_address = bank->start + SZ_32K;
+		if (bootm_verbose(data))
+			printf("no os load address, defaulting to 0x%08lx\n",
+				load_address);
+	}
+
+	if (!data->os_res && data->os) {
+		data->os_res = uimage_load_to_sdram(data->os,
+			data->os_num, load_address);
+		if (!data->os_res)
+			return -ENOMEM;
+	}
+
+	if (!data->os_res) {
+		data->os_res = file_to_sdram(data->os_file, load_address);
+		if (!data->os_res)
+			return -ENOMEM;
+	}
+
+	kernel = data->os_res->start + data->os_entry;
+
+	if (data->initrd_file && data->initrd_address == UIMAGE_INVALID_ADDRESS) {
+		initrd_start = data->os_res->start + SZ_8M;
 
-	theKernel = (void *)image_get_ep(os_header);
+		if (bootm_verbose(data)) {
+			printf("no initrd load address, defaulting to 0x%08lx\n",
+				initrd_start);
+		}
+	}
 
-	debug("## Transferring control to Linux (at address 0x%p) ...\n",
-	       theKernel);
+	if (data->initrd) {
+		data->initrd_res = uimage_load_to_sdram(data->initrd,
+			data->initrd_num, initrd_start);
+		if (!data->initrd_res)
+			return -ENOMEM;
+	} else if (data->initrd_file) {
+		data->initrd_res = file_to_sdram(data->initrd_file, initrd_start);
+		if (!data->initrd_res)
+			return -ENOMEM;
+	}
 
-	/* we assume that the kernel is in place */
-	printf("\nStarting kernel %s...\n\n", data->initrd ? "with initrd " : "");
+	if (data->initrd_res) {
+		initrd_start = data->initrd_res->start;
+		initrd_size = data->initrd_res->size;
+	}
 
-	start_linux((void *)theKernel, 0, data->initrd_address, data->initrd_size,
-			data->oftree);
+	if (bootm_verbose(data)) {
+		printf("\nStarting kernel at 0x%08lx", kernel);
+		if (initrd_size)
+			printf(", initrd at 0x%08lx", initrd_start);
+		if (data->oftree)
+			printf(", oftree at 0x%p", data->oftree);
+		printf("...\n");
+	}
 
-	return -1;
+	start_linux((void *)kernel, swap, initrd_start, initrd_size, data->oftree);
+
+	reset_cpu(0);
+
+	return -ERESTARTSYS;
+}
+
+static int do_bootm_linux(struct image_data *data)
+{
+	return __do_bootm_linux(data, 0);
 }
 
-static struct image_handler handler = {
+static struct image_handler uimage_handler = {
+	.name = "ARM Linux uImage",
 	.bootm = do_bootm_linux,
-	.image_type = IH_OS_LINUX,
+	.filetype = filetype_uimage,
+	.ih_os = IH_OS_LINUX,
 };
 
-static int armlinux_register_image_handler(void)
+static struct image_handler rawimage_handler = {
+	.name = "ARM raw image",
+	.bootm = do_bootm_linux,
+	.filetype = filetype_unknown,
+};
+
+struct zimage_header {
+	u32	unused[9];
+	u32	magic;
+	u32	start;
+	u32	end;
+};
+
+#define ZIMAGE_MAGIC 0x016F2818
+
+static int do_bootz_linux(struct image_data *data)
+{
+	int fd, ret, swap = 0;
+	struct zimage_header __header, *header;
+	void *zimage;
+	u32 end;
+	unsigned long load_address = data->os_address;
+
+	if (load_address == UIMAGE_INVALID_ADDRESS) {
+		struct memory_bank *bank = list_first_entry(&memory_banks,
+				struct memory_bank, list);
+		data->os_address = bank->start + SZ_8M;
+		if (bootm_verbose(data))
+			printf("no os load address, defaulting to 0x%08lx\n",
+				load_address);
+	}
+
+	fd = open(data->os_file, O_RDONLY);
+	if (fd < 0) {
+		perror("open");
+		return 1;
+	}
+
+	header = &__header;
+	ret = read(fd, header, sizeof(*header));
+	if (ret < sizeof(*header)) {
+		printf("could not read %s\n", data->os_file);
+		goto err_out;
+	}
+
+	switch (header->magic) {
+	case swab32(ZIMAGE_MAGIC):
+		swap = 1;
+		/* fall through */
+	case ZIMAGE_MAGIC:
+		break;
+	default:
+		printf("invalid magic 0x%08x\n", header->magic);
+		ret = -EINVAL;
+		goto err_out;
+	}
+
+	end = header->end;
+
+	if (swap)
+		end = swab32(end);
+
+	data->os_res = request_sdram_region("zimage", load_address, end);
+	if (!data->os_res) {
+		ret = -ENOMEM;
+		goto err_out;
+	}
+
+	zimage = (void *)data->os_res->start;
+
+	memcpy(zimage, header, sizeof(*header));
+
+	ret = read_full(fd, zimage + sizeof(*header), end - sizeof(*header));
+	if (ret < 0)
+		goto err_out;
+	if (ret < end - sizeof(*header)) {
+		printf("premature end of image\n");
+		ret = -EIO;
+		goto err_out;
+	}
+
+	if (swap) {
+		void *ptr;
+		for (ptr = zimage; ptr < zimage + end; ptr += 4)
+			*(u32 *)ptr = swab32(*(u32 *)ptr);
+	}
+
+	return __do_bootm_linux(data, swap);
+
+err_out:
+	close(fd);
+
+	return ret;
+}
+
+static struct image_handler zimage_handler = {
+	.name = "ARM zImage",
+	.bootm = do_bootz_linux,
+	.filetype = filetype_arm_zimage,
+};
+
+static int do_bootm_barebox(struct image_data *data)
 {
-	return register_image_handler(&handler);
+	void (*barebox)(void);
+
+	barebox = read_file(data->os_file, NULL);
+	if (!barebox)
+		return -EINVAL;
+
+	shutdown_barebox();
+
+	barebox();
+
+	reset_cpu(0);
 }
 
+static struct image_handler barebox_handler = {
+	.name = "ARM barebox",
+	.bootm = do_bootm_barebox,
+	.filetype = filetype_arm_barebox,
+};
+
+static int armlinux_register_image_handler(void)
+{
+	register_image_handler(&barebox_handler);
+	register_image_handler(&uimage_handler);
+	register_image_handler(&rawimage_handler);
+	register_image_handler(&zimage_handler);
+
+	return 0;
+}
 late_initcall(armlinux_register_image_handler);
diff --git a/arch/blackfin/lib/blackfin_linux.c b/arch/blackfin/lib/blackfin_linux.c
index 9da9ec4..458d1b1 100644
--- a/arch/blackfin/lib/blackfin_linux.c
+++ b/arch/blackfin/lib/blackfin_linux.c
@@ -34,6 +34,7 @@
 #include <asm/byteorder.h>
 #include <asm/cpu.h>
 #include <asm/blackfin.h>
+#include <errno.h>
 #include <init.h>
 #include <boot.h>
 
@@ -44,10 +45,11 @@ static int do_bootm_linux(struct image_data *idata)
 	int (*appl)(char *cmdline);
 	const char *cmdline = getenv("bootargs");
 	char *cmdlinedest = (char *) CMD_LINE_ADDR;
-	struct image_handle *os_handle = idata->os;
-	image_header_t *os_header = &os_handle->header;
 
-	appl = (int (*)(char *))image_get_ep(os_header);
+	if (!idata->os_res)
+		return -EINVAL;
+
+	appl = (void *)(idata->os_address + idata->os_entry);
 	printf("Starting Kernel at 0x%p\n", appl);
 
 	icache_disable();
@@ -63,8 +65,10 @@ static int do_bootm_linux(struct image_data *idata)
 }
 
 static struct image_handler handler = {
+	.name = "Blackfin Linux",
 	.bootm = do_bootm_linux,
-	.image_type = IH_OS_LINUX,
+	.filetype = filetype_uimage,
+	.ih_os = IH_OS_LINUX,
 };
 
 static int bfinlinux_register_image_handler(void)
diff --git a/arch/nios2/lib/bootm.c b/arch/nios2/lib/bootm.c
index b5b344f..1cd43c8 100644
--- a/arch/nios2/lib/bootm.c
+++ b/arch/nios2/lib/bootm.c
@@ -31,17 +31,20 @@
 #include <environment.h>
 #include <init.h>
 #include <boot.h>
+#include <errno.h>
 #include <asm/cache.h>
 
 #define NIOS_MAGIC 0x534f494e /* enable command line and initrd passing */
 
 static int do_bootm_linux(struct image_data *idata)
 {
-	image_header_t *os_header = &idata->os->header;
 	void (*kernel)(int, int, int, const char *);
 	const char *commandline = getenv ("bootargs");
 
-	kernel = (void (*)(int, int, int, const char *))ntohl(os_header->ih_ep);
+	if (!idata->os_res)
+		return -EINVAL;
+
+	kernel = (void *)(idata->os_address + idata->os_entry);
 
 	/* kernel parameters passing
 	 * r4 : NIOS magic
@@ -63,8 +66,10 @@ static int do_bootm_linux(struct image_data *idata)
 }
 
 static struct image_handler handler = {
+	.name = "NIOS2 Linux",
 	.bootm = do_bootm_linux,
-	.image_type = IH_OS_LINUX,
+	.filetype = filetype_uimage,
+	.ih_os = IH_OS_LINUX,
 };
 
 int nios2_register_image_handler(void)
diff --git a/arch/ppc/lib/ppclinux.c b/arch/ppc/lib/ppclinux.c
index f7d3950..3c1b3fa 100644
--- a/arch/ppc/lib/ppclinux.c
+++ b/arch/ppc/lib/ppclinux.c
@@ -11,18 +11,15 @@
 #include <errno.h>
 #include <fs.h>
 
-#ifdef CONFIG_OF_FLAT_TREE
-#include <ft_build.h>
-#endif
-extern bd_t *bd;
-
 static int do_bootm_linux(struct image_data *data)
 {
 	void	(*kernel)(void *, void *, unsigned long,
 			unsigned long, unsigned long);
-	struct image_header *os_header = &data->os->header;
 
-	kernel = (void *)image_get_ep(os_header);
+	if (!data->os_res)
+		return -EINVAL;
+
+	kernel = (void *)(data->os_address + data->os_entry);
 
 	/*
 	 * Linux Kernel Parameters (passing device tree):
@@ -41,8 +38,10 @@ static int do_bootm_linux(struct image_data *data)
 }
 
 static struct image_handler handler = {
+	.name = "PowerPC Linux",
 	.bootm = do_bootm_linux,
-	.image_type = IH_OS_LINUX,
+	.filetype = filetype_uimage,
+	.ih_os = IH_OS_LINUX,
 };
 
 static int ppclinux_register_image_handler(void)
@@ -51,4 +50,3 @@ static int ppclinux_register_image_handler(void)
 }
 
 late_initcall(ppclinux_register_image_handler);
-
diff --git a/commands/Kconfig b/commands/Kconfig
index ebc9c7f..3cf2d08 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -310,6 +310,28 @@ config CMD_BOOTM_SHOW_TYPE
 	depends on CMD_BOOTM
 	prompt "show image information"
 
+config CMD_BOOTM_VERBOSE
+	bool
+	prompt "bootm verbose support"
+	depends on CMD_BOOTM
+	help
+	  support verbose bootm (-v switch)
+
+config CMD_BOOTM_INITRD
+	bool
+	prompt "bootm initrd support"
+	depends on CMD_BOOTM
+	help
+	  support initrds in bootm
+
+config CMD_BOOTM_OFTREE_UIMAGE
+	bool
+	prompt "support passing oftree uImages"
+	depends on CMD_BOOTM
+	help
+	  Support using oftree uImages. Without this only raw oftree
+	  blobs can be used.
+
 config CMD_IMINFO
 	bool
 	prompt "iminfo"
diff --git a/commands/bootm.c b/commands/bootm.c
index 265ad46..d980586 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -39,202 +39,410 @@
 #include <errno.h>
 #include <boot.h>
 #include <of.h>
+#include <libfdt.h>
 #include <rtc.h>
 #include <init.h>
+#include <of.h>
 #include <magicvar.h>
 #include <uncompress.h>
+#include <memory.h>
+#include <filetype.h>
 #include <asm-generic/memory_layout.h>
 
-struct image_handle_data* image_handle_data_get_by_num(struct image_handle* handle, int num)
+static LIST_HEAD(handler_list);
+
+#ifdef CONFIG_CMD_BOOTM_INITRD
+static inline int bootm_initrd(struct image_data *data)
+{
+	return data->initrd ? 1 : 0;
+}
+#else
+static inline int bootm_initrd(struct image_data *data)
 {
-	if (!handle || num < 0 || num >= handle->nb_data_entries)
-		return NULL;
+	return 0;
+}
+#endif
 
-	return &handle->data_entries[num];
+int register_image_handler(struct image_handler *handler)
+{
+	list_add_tail(&handler->list, &handler_list);
+	return 0;
 }
 
-int relocate_image(struct image_handle *handle, void *load_address)
+#define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
+
+static int bootm_open_os_uimage(struct image_data *data)
 {
-	image_header_t *hdr = &handle->header;
-	unsigned long len  = image_get_size(hdr);
-	struct image_handle_data *iha;
-	void *data;
 	int ret;
 
-	iha = image_handle_data_get_by_num(handle, 0);
-	data = iha->data;
+	data->os = uimage_open(data->os_file);
+	if (!data->os)
+		return -EINVAL;
 
-	switch (image_get_comp(hdr)) {
-	case IH_COMP_NONE:
-		if (load_address == data) {
-			printf ("   XIP ... ");
-		} else {
-			memmove(load_address, data, len);
-		}
-		break;
-	default:
-		printf ("   Uncompressing ... ");
-		ret = uncompress(data, len, NULL, NULL, load_address, NULL,
-				uncompress_err_stdout);
-		if (ret)
+	if (data->verify) {
+		ret = uimage_verify(data->os);
+		if (ret) {
+			printf("Checking data crc failed with %s\n",
+					strerror(-ret));
 			return ret;
-		break;
+		}
+	}
+
+	uimage_print_contents(data->os);
+
+	if (data->os->header.ih_arch != IH_ARCH) {
+		printf("Unsupported Architecture 0x%x\n",
+		       data->os->header.ih_arch);
+		return -EINVAL;
+	}
+
+	if (data->os_address == UIMAGE_SOME_ADDRESS)
+		data->os_address = data->os->header.ih_load;
+
+	if (data->os_address != UIMAGE_INVALID_ADDRESS) {
+		data->os_res = uimage_load_to_sdram(data->os, 0,
+				data->os_address);
+		if (!data->os_res)
+			return -ENOMEM;
 	}
 
 	return 0;
 }
-EXPORT_SYMBOL(relocate_image);
-
-static LIST_HEAD(handler_list);
 
-int register_image_handler(struct image_handler *handler)
+static int bootm_open_initrd_uimage(struct image_data *data)
 {
-	list_add_tail(&handler->list, &handler_list);
+	int ret;
+
+	if (!data->initrd_file)
+		return 0;
+
+	if (strcmp(data->os_file, data->initrd_file)) {
+		data->initrd = uimage_open(data->initrd_file);
+		if (!data->initrd)
+			return -EINVAL;
+
+		if (data->verify) {
+			ret = uimage_verify(data->initrd);
+			if (ret) {
+				printf("Checking data crc failed with %s\n",
+					strerror(-ret));
+			}
+		}
+		uimage_print_contents(data->initrd);
+	} else {
+		data->initrd = data->os;
+	}
+
+	if (data->initrd_address == UIMAGE_SOME_ADDRESS)
+		data->initrd_address = data->initrd->header.ih_load;
+
+	if (data->initrd_address != UIMAGE_INVALID_ADDRESS) {
+		data->initrd_res = uimage_load_to_sdram(data->initrd,
+				data->initrd_num,
+				data->initrd_address);
+		if (!data->initrd_res)
+			return -ENOMEM;
+	}
+
 	return 0;
 }
 
-/*
- * generate a image_handle from a multi_image
- * this image_handle can be freed by unmap_image
- */
-static struct image_handle *get_fake_image_handle(struct image_data *data, int num)
+#ifdef CONFIG_OFTREE
+static int bootm_open_oftree(struct image_data *data, char *oftree, int num)
 {
-	struct image_handle *handle;
-	struct image_handle_data* iha;
-	image_header_t *header;
+	enum filetype ft;
+	struct fdt_header *fdt;
+	int ret;
+	size_t size;
+
+	ft = file_name_detect_type(oftree);
+	if ((int)ft < 0)
+		return ft;
+
+	if (ft == filetype_uimage) {
+#ifdef CONFIG_CMD_BOOTM_OFTREE_UIMAGE
+		struct uimage_handle *of_handle;
+		int release = 0;
+
+		if (!strcmp(data->os_file, oftree)) {
+			of_handle = data->os;
+		} else if (!strcmp(data->initrd_file, oftree)) {
+			of_handle = data->initrd;
+		} else {
+			of_handle = uimage_open(oftree);
+			if (!of_handle)
+				return -ENODEV;
+			uimage_print_contents(of_handle);
+			release = 1;
+		}
+
+		fdt = uimage_load_to_buf(of_handle, num, &size);
+
+		if (release)
+			uimage_close(of_handle);
+#else
+		return -EINVAL;
+#endif
+	} else {
+		fdt = read_file(oftree, &size);
+		if (!fdt) {
+			perror("open");
+			return -ENODEV;
+		}
+	}
+
+	ft = file_detect_type(fdt);
+	if (ft != filetype_oftree) {
+		printf("%s is not a oftree but %s\n", oftree,
+				file_type_to_string(ft));
+	}
+
+	if (bootm_verbose(data))
+		printf("Loading oftree from '%s'\n", oftree);
+
+	fdt = xrealloc(fdt, size + 0x8000);
+	fdt_open_into(fdt, fdt, size + 0x8000);
+
+	if (!fdt) {
+		printf("unable to read %s\n", oftree);
+		return -ENODEV;
+	}
+
+	ret = of_fix_tree(fdt);
+	if (ret)
+		return ret;
 
-	iha = image_handle_data_get_by_num(data->os, num);
+	if (bootm_verbose(data) > 1)
+		fdt_print(fdt, "/");
 
-	handle = xzalloc(sizeof(struct image_handle));
-	header = &handle->header;
-	handle->data_entries = gen_image_handle_data(iha->data, iha->len);
-	handle->nb_data_entries = 1;
-	header->ih_size = cpu_to_uimage(iha->len);
-	handle->data = handle->data_entries[0].data;
+	data->oftree = fdt;
 
-	return handle;
+	return ret;
+}
+#endif
+
+static struct image_handler *bootm_find_handler(enum filetype filetype,
+		struct image_data *data)
+{
+	struct image_handler *handler;
+
+	list_for_each_entry(handler, &handler_list, list) {
+		if (filetype != filetype_uimage &&
+				handler->filetype == filetype)
+			return handler;
+		if  (filetype == filetype_uimage &&
+				handler->ih_os == data->os->header.ih_os)
+			return handler;
+	}
+
+	return NULL;
+}
+
+static void bootm_image_name_and_no(char *name, int *no)
+{
+	char *at;
+
+	*no = 0;
+
+	at = strchr(name, '@');
+	if (!at)
+		return;
+
+	*at++ = 0;
+
+	*no = simple_strtoul(at, NULL, 10);
 }
 
 static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 {
-	int	opt;
-	image_header_t *os_header;
-	struct image_handle *os_handle = NULL;
+	int opt;
 	struct image_handler *handler;
 	struct image_data data;
-	const char *initrdname = NULL;
 	int ret = 1;
+	enum filetype os_type, initrd_type = filetype_unknown;
+	char *oftree = NULL;
+	int fallback = 0;
 
 	memset(&data, 0, sizeof(struct image_data));
-	data.verify = 1;
-	data.initrd_address = ~0;
 
-	while ((opt = getopt(argc, argv, "nr:L:")) > 0) {
+	data.initrd_address = UIMAGE_SOME_ADDRESS;
+	data.os_address = UIMAGE_SOME_ADDRESS;
+	data.verify = 0;
+	data.verbose = 0;
+
+	while ((opt = getopt(argc, argv, "cL:r:a:e:vo:f")) > 0) {
 		switch(opt) {
-		case 'n':
-			data.verify = 0;
+		case 'c':
+			data.verify = 1;
 			break;
+#ifdef CONFIG_CMD_BOOTM_INITRD
 		case 'L':
 			data.initrd_address = simple_strtoul(optarg, NULL, 0);
 			break;
 		case 'r':
-			initrdname = optarg;
+			data.initrd_file = optarg;
+			break;
+#endif
+		case 'a':
+			data.os_address = simple_strtoul(optarg, NULL, 0);
+			break;
+		case 'e':
+			data.os_entry = simple_strtoul(optarg, NULL, 0);
+			break;
+		case 'v':
+			data.verbose++;
+			break;
+		case 'o':
+			oftree = optarg;
+			break;
+		case 'f':
+			fallback = 1;
 			break;
 		default:
 			break;
 		}
 	}
 
-#ifdef CONFIG_OFTREE
-	data.oftree = of_get_fixed_tree();
-#endif
+	if (optind == argc)
+		return COMMAND_ERROR_USAGE;
+
+	data.os_file = argv[optind];
 
-	if (optind == argc) {
-		ret = COMMAND_ERROR_USAGE;
+	bootm_image_name_and_no(data.os_file, &data.os_num);
+
+	os_type = file_name_detect_type(data.os_file);
+	if ((int)os_type < 0) {
+		printf("could not open %s: %s\n", data.os_file,
+				strerror(-os_type));
 		goto err_out;
 	}
 
-	os_handle = map_image(argv[optind], data.verify);
-	if (!os_handle)
+	if (!fallback && os_type == filetype_unknown) {
+		printf("Unknown OS filetype (try -f)\n");
 		goto err_out;
-	data.os = os_handle;
-
-	os_header = &os_handle->header;
+	}
 
-	if (image_get_arch(os_header) != IH_ARCH) {
-		printf("Unsupported Architecture 0x%x\n",
-		       image_get_arch(os_header));
-		goto err_out;
+	if (os_type == filetype_uimage) {
+		ret = bootm_open_os_uimage(&data);
+		if (ret) {
+			printf("loading initrd failed with %s\n",
+					strerror(-ret));
+			goto err_out;
+		}
 	}
 
-	if (initrdname) {
-		/* check for multi image @<num> */
-		if (initrdname[0] == '@') {
-			int num = simple_strtol(optarg + 1, NULL, 0);
+	if (bootm_initrd(&data)) {
+		bootm_image_name_and_no(data.initrd_file, &data.initrd_num);
 
-			data.initrd = get_fake_image_handle(&data, num);
-		} else {
-			data.initrd = map_image(optarg, data.verify);
-		}
-		if (!data.initrd)
+		initrd_type = file_name_detect_type(data.initrd_file);
+		if ((int)initrd_type < 0) {
+			printf("could not open %s: %s\n", data.initrd_file,
+					strerror(-initrd_type));
 			goto err_out;
+		}
+		if (initrd_type == filetype_uimage) {
+			ret = bootm_open_initrd_uimage(&data);
+			if (ret) {
+				printf("loading initrd failed with %s\n",
+						strerror(-ret));
+				goto err_out;
+			}
+		}
 	}
 
-	/*
-	 * We have reached the point of no return: we are going to
-	 * overwrite all exception vector code, so we cannot easily
-	 * recover from any failures any more...
-	 */
-
-	puts ("OK\n");
-
-	/*
-	 * FIXME: we do not check at all whether
-	 * - we will write the image to sdram
-	 * - we overwrite ourselves
-	 * - kernel and initrd overlap
-	 */
-	ret = relocate_image(data.os, (void *)image_get_load(os_header));
-	if (ret)
-		goto err_out;
+	if (bootm_verbose(&data)) {
+		printf("\nLoading OS %s '%s'", file_type_to_string(os_type),
+				data.os_file);
+		if (os_type == filetype_uimage &&
+				data.os->header.ih_type == IH_TYPE_MULTI)
+			printf(", multifile image %d", data.os_num);
+		printf("\n");
+		if (data.os_res)
+			printf("OS image is at 0x%08x-0x%08x\n",
+					data.os_res->start,
+					data.os_res->start +
+					data.os_res->size - 1);
+		else
+			printf("OS image not yet relocated\n");
+
+		if (data.initrd_file) {
+			printf("Loading initrd %s '%s'",
+					file_type_to_string(initrd_type),
+					data.initrd_file);
+			if (initrd_type == filetype_uimage &&
+					data.initrd->header.ih_type == IH_TYPE_MULTI)
+				printf(", multifile image %d", data.initrd_num);
+			printf("\n");
+			if (data.initrd_res)
+				printf("initrd is at 0x%08x-0x%08x\n",
+					data.initrd_res->start,
+					data.initrd_res->start +
+					data.initrd_res->size - 1);
+			else
+				printf("initrd image not yet relocated\n");
+		}
+	}
 
-	if (data.initrd) {
-		if (data.initrd && data.initrd_address == ~0)
-			data.initrd_address = uimage_to_cpu(data.initrd->header.ih_load);
+#ifdef CONFIG_OFTREE
+	if (oftree) {
+		int oftree_num;
 
-		data.initrd_size = image_get_data_size(&data.initrd->header);
+		bootm_image_name_and_no(oftree, &oftree_num);
 
-		ret = relocate_image(data.initrd, (void *)data.initrd_address);
+		ret = bootm_open_oftree(&data, oftree, oftree_num);
 		if (ret)
 			goto err_out;
 	}
-
-	/* loop through the registered handlers */
-	list_for_each_entry(handler, &handler_list, list) {
-		if (image_get_os(os_header) == handler->image_type) {
-			handler->bootm(&data);
-			printf("handler returned!\n");
-			goto err_out;
-		}
+#endif
+	if (data.os_address == UIMAGE_SOME_ADDRESS)
+		data.os_address = UIMAGE_INVALID_ADDRESS;
+	if (data.initrd_address == UIMAGE_SOME_ADDRESS)
+		data.initrd_address = UIMAGE_INVALID_ADDRESS;
+
+	handler = bootm_find_handler(os_type, &data);
+	if (!handler) {
+		printf("no image handler found for image type %s\n",
+			file_type_to_string(os_type));
+		if (os_type == filetype_uimage)
+			printf("and os type: %d\n", data.os->header.ih_os);
+		goto err_out;
 	}
 
-	printf("no image handler found for image type %d\n",
-	       image_get_os(os_header));
+	if (bootm_verbose(&data))
+		printf("Passing control to %s handler\n", handler->name);
+
+	ret = handler->bootm(&data);
+
+	printf("handler failed with %s\n", strerror(-ret));
 
 err_out:
-	if (os_handle)
-		unmap_image(os_handle);
-	if (data.initrd)
-		unmap_image(data.initrd);
-	return ret;
+	if (data.os_res)
+		release_sdram_region(data.os_res);
+	if (data.initrd_res)
+		release_sdram_region(data.initrd_res);
+	if (data.initrd && data.initrd != data.os)
+		uimage_close(data.initrd);
+	if (data.os)
+		uimage_close(data.os);
+	return 1;
 }
 
 BAREBOX_CMD_HELP_START(bootm)
 BAREBOX_CMD_HELP_USAGE("bootm [OPTIONS] image\n")
 BAREBOX_CMD_HELP_SHORT("Boot an application image.\n")
-BAREBOX_CMD_HELP_OPT  ("-n",  "Do not verify the image (speeds up boot process)\n")
+BAREBOX_CMD_HELP_OPT  ("-c",  "crc check uImage data\n")
+#ifdef CONFIG_CMD_BOOTM_INITRD
 BAREBOX_CMD_HELP_OPT  ("-r <initrd>","specify an initrd image\n")
-BAREBOX_CMD_HELP_OPT  ("-L <load addr>","specify initrd load address")
+BAREBOX_CMD_HELP_OPT  ("-L <load addr>","specify initrd load address\n")
+#endif
+BAREBOX_CMD_HELP_OPT  ("-a <load addr>","specify os load address\n")
+BAREBOX_CMD_HELP_OPT  ("-e <ofs>","entry point to the image relative to start (0)\n")
+#ifdef CONFIG_OFTREE
+BAREBOX_CMD_HELP_OPT  ("-o <oftree>","specify oftree\n")
+#endif
+#ifdef CONFIG_CMD_BOOTM_VERBOSE
+BAREBOX_CMD_HELP_OPT  ("-v","verbose\n")
+#endif
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(bootm)
@@ -245,13 +453,6 @@ BAREBOX_CMD_END
 
 BAREBOX_MAGICVAR(bootargs, "Linux Kernel parameters");
 
-#ifdef CONFIG_BZLIB
-void bz_internal_error(int errcode)
-{
-	printf ("BZIP2 internal error %d\n", errcode);
-}
-#endif /* CONFIG_BZLIB */
-
 /**
  * @file
  * @brief Boot support for Linux
diff --git a/include/boot.h b/include/boot.h
index 297b944..a17bf25 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -2,25 +2,73 @@
 #define __BOOT_H
 
 #include <image.h>
+#include <filetype.h>
+#include <of.h>
 #include <linux/list.h>
 
 struct image_data {
-	struct image_handle *os;
-	struct image_handle *initrd;
-	void *oftree;
-	int verify;
+	/* simplest case. barebox has already loaded the os here */
+	struct resource *os_res;
+
+	/* if os is an uImage this will be provided */
+	struct uimage_handle *os;
+	int os_num;
+
+	/* otherwise only the filename will be provided */
+	char *os_file;
+
+	/*
+	 * The address the user wants to load the os image to.
+	 * May be UIMAGE_INVALID_ADDRESS to indicate that the
+	 * user has not specified any address. In this case the
+	 * handler may choose a suitable address
+	 */
+	unsigned long os_address;
+
+	/* entry point to the os. relative to the start of the image */
+	unsigned long os_entry;
+
+	/* if initrd is already loaded this resource will be !NULL */
+	struct resource *initrd_res;
+
+	/* if initrd is an uImage this will be provided */
+	struct uimage_handle *initrd;
+	int initrd_num;
+
+	/* otherwise only the filename will be provided */
+	char *initrd_file;
+
 	unsigned long initrd_address;
-	unsigned long initrd_size;
+
+	struct fdt_header *oftree;
+
+	int verify;
+	int verbose;
 };
 
 struct image_handler {
+	const char *name;
+
 	struct list_head list;
 
-	int image_type;
+	int ih_os;
+
+	enum filetype filetype;
 	int (*bootm)(struct image_data *data);
 };
 
 int register_image_handler(struct image_handler *handle);
 
-#endif /* __BOOT_H */
+#ifdef CONFIG_CMD_BOOTM_VERBOSE
+static inline int bootm_verbose(struct image_data *data)
+{
+	return data->verbose;
+}
+#else
+static inline int bootm_verbose(struct image_data *data)
+{
+	return 0;
+}
+#endif
 
+#endif /* __BOOT_H */
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
