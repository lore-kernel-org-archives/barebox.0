Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpPT0-0005fz-7J
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 20:58:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Jun 2013 22:58:33 +0200
Message-Id: <1371675513-6246-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] bootm: factor out code to make it usable from C
To: barebox@lists.infradead.org

Much of the bootm code is implemented in the command itself. Move
it to a common place to be able to call it from C aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig |   1 +
 commands/bootm.c | 281 +--------------------------------------------------
 common/Kconfig   |   3 +
 common/Makefile  |   1 +
 common/bootm.c   | 303 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/boot.h   |   8 ++
 6 files changed, 321 insertions(+), 276 deletions(-)
 create mode 100644 common/bootm.c

diff --git a/commands/Kconfig b/commands/Kconfig
index a62ed98..384643b 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -420,6 +420,7 @@ menu "booting"
 config CMD_BOOTM
 	tristate
 	default y
+	select BOOTM
 	select CRC32
 	select UIMAGE
 	select UNCOMPRESS
diff --git a/commands/bootm.c b/commands/bootm.c
index 6ce2ca9..97a6698 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -46,172 +46,11 @@
 #include <magicvar.h>
 #include <asm-generic/memory_layout.h>
 
-static LIST_HEAD(handler_list);
-
 /*
  * Additional oftree size for the fixed tree
  */
 #define OFTREE_SIZE_INCREASE	0x8000
 
-int register_image_handler(struct image_handler *handler)
-{
-	list_add_tail(&handler->list, &handler_list);
-	return 0;
-}
-
-#define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
-
-static int bootm_open_os_uimage(struct image_data *data)
-{
-	int ret;
-
-	data->os = uimage_open(data->os_file);
-	if (!data->os)
-		return -EINVAL;
-
-	if (data->verify) {
-		ret = uimage_verify(data->os);
-		if (ret) {
-			printf("Checking data crc failed with %s\n",
-					strerror(-ret));
-			uimage_close(data->os);
-			return ret;
-		}
-	}
-
-	uimage_print_contents(data->os);
-
-	if (data->os->header.ih_arch != IH_ARCH) {
-		printf("Unsupported Architecture 0x%x\n",
-		       data->os->header.ih_arch);
-		uimage_close(data->os);
-		return -EINVAL;
-	}
-
-	if (data->os_address == UIMAGE_SOME_ADDRESS)
-		data->os_address = data->os->header.ih_load;
-
-	if (data->os_address != UIMAGE_INVALID_ADDRESS) {
-		data->os_res = uimage_load_to_sdram(data->os, 0,
-				data->os_address);
-		if (!data->os_res) {
-			uimage_close(data->os);
-			return -ENOMEM;
-		}
-	}
-
-	return 0;
-}
-
-static int bootm_open_initrd_uimage(struct image_data *data)
-{
-	int ret;
-
-	if (!data->initrd_file)
-		return 0;
-
-	if (strcmp(data->os_file, data->initrd_file)) {
-		data->initrd = uimage_open(data->initrd_file);
-		if (!data->initrd)
-			return -EINVAL;
-
-		if (data->verify) {
-			ret = uimage_verify(data->initrd);
-			if (ret) {
-				printf("Checking data crc failed with %s\n",
-					strerror(-ret));
-			}
-		}
-		uimage_print_contents(data->initrd);
-	} else {
-		data->initrd = data->os;
-	}
-
-	return 0;
-}
-
-#ifdef CONFIG_OFTREE
-static int bootm_open_oftree(struct image_data *data, const char *oftree, int num)
-{
-	enum filetype ft;
-	struct fdt_header *fdt;
-	size_t size;
-
-	printf("Loading devicetree from '%s'\n", oftree);
-
-	ft = file_name_detect_type(oftree);
-	if ((int)ft < 0) {
-		printf("failed to open %s: %s\n", oftree, strerror(-(int)ft));
-		return ft;
-	}
-
-	if (ft == filetype_uimage) {
-#ifdef CONFIG_CMD_BOOTM_OFTREE_UIMAGE
-		struct uimage_handle *of_handle;
-		int release = 0;
-
-		if (!strcmp(data->os_file, oftree)) {
-			of_handle = data->os;
-		} else if (!strcmp(data->initrd_file, oftree)) {
-			of_handle = data->initrd;
-		} else {
-			of_handle = uimage_open(oftree);
-			if (!of_handle)
-				return -ENODEV;
-			uimage_print_contents(of_handle);
-			release = 1;
-		}
-
-		fdt = uimage_load_to_buf(of_handle, num, &size);
-
-		if (release)
-			uimage_close(of_handle);
-#else
-		return -EINVAL;
-#endif
-	} else {
-		fdt = read_file(oftree, &size);
-		if (!fdt) {
-			perror("open");
-			return -ENODEV;
-		}
-	}
-
-	ft = file_detect_type(fdt, size);
-	if (ft != filetype_oftree) {
-		printf("%s is not an oftree but %s\n", oftree,
-				file_type_to_string(ft));
-	}
-
-	data->of_root_node = of_unflatten_dtb(NULL, fdt);
-	if (!data->of_root_node) {
-		pr_err("unable to unflatten devicetree\n");
-		return -EINVAL;
-	}
-
-	free(fdt);
-
-	return 0;
-}
-#endif
-
-static struct image_handler *bootm_find_handler(enum filetype filetype,
-		struct image_data *data)
-{
-	struct image_handler *handler;
-
-	list_for_each_entry(handler, &handler_list, list) {
-		if (filetype != filetype_uimage &&
-				handler->filetype == filetype)
-			return handler;
-		if  (filetype == filetype_uimage &&
-				handler->ih_os == data->os->header.ih_os)
-			return handler;
-	}
-
-	return NULL;
-}
-
 static char *bootm_image_name_and_no(const char *name, int *no)
 {
 	char *at, *ret;
@@ -244,12 +83,9 @@ static char *bootm_image_name_and_no(const char *name, int *no)
 static int do_bootm(int argc, char *argv[])
 {
 	int opt;
-	struct image_handler *handler;
 	struct image_data data;
 	int ret = 1;
-	enum filetype os_type, initrd_type = filetype_unknown;
 	const char *oftree = NULL, *initrd_file = NULL, *os_file = NULL;
-	int fallback = 0;
 
 	memset(&data, 0, sizeof(struct image_data));
 
@@ -289,7 +125,7 @@ static int do_bootm(int argc, char *argv[])
 			oftree = optarg;
 			break;
 		case 'f':
-			fallback = 1;
+			data.force = 1;
 			break;
 		default:
 			break;
@@ -311,124 +147,17 @@ static int do_bootm(int argc, char *argv[])
 		oftree = NULL;
 
 	data.os_file = bootm_image_name_and_no(os_file, &data.os_num);
+	data.oftree_file = bootm_image_name_and_no(oftree, &data.oftree_num);
+	data.initrd_file = bootm_image_name_and_no(initrd_file, &data.initrd_num);
 
-	os_type = file_name_detect_type(data.os_file);
-	if ((int)os_type < 0) {
-		printf("could not open %s: %s\n", data.os_file,
-				strerror(-os_type));
-		goto err_out;
-	}
-
-	if (!fallback && os_type == filetype_unknown) {
-		printf("Unknown OS filetype (try -f)\n");
-		goto err_out;
-	}
-
-	if (os_type == filetype_uimage) {
-		ret = bootm_open_os_uimage(&data);
-		if (ret) {
-			printf("loading os image failed with %s\n",
-					strerror(-ret));
-			goto err_out;
-		}
-	}
-
-	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD) && initrd_file) {
-		data.initrd_file = bootm_image_name_and_no(initrd_file, &data.initrd_num);
-
-		initrd_type = file_name_detect_type(data.initrd_file);
-		if ((int)initrd_type < 0) {
-			printf("could not open %s: %s\n", data.initrd_file,
-					strerror(-initrd_type));
-			goto err_out;
-		}
-		if (initrd_type == filetype_uimage) {
-			ret = bootm_open_initrd_uimage(&data);
-			if (ret) {
-				printf("loading initrd failed with %s\n",
-						strerror(-ret));
-				goto err_out;
-			}
-		}
-	}
-
-	printf("\nLoading OS %s '%s'", file_type_to_string(os_type),
-			data.os_file);
-	if (os_type == filetype_uimage &&
-			data.os->header.ih_type == IH_TYPE_MULTI)
-		printf(", multifile image %d", data.os_num);
-	printf("\n");
-
-	if (bootm_verbose(&data)) {
-		if (data.os_res)
-			printf("OS image is at 0x%08x-0x%08x\n",
-					data.os_res->start,
-					data.os_res->end);
-		else
-			printf("OS image not yet relocated\n");
-
-		if (data.initrd_file) {
-			printf("Loading initrd %s '%s'",
-					file_type_to_string(initrd_type),
-					data.initrd_file);
-			if (initrd_type == filetype_uimage &&
-					data.initrd->header.ih_type == IH_TYPE_MULTI)
-				printf(", multifile image %d", data.initrd_num);
-			printf("\n");
-			if (data.initrd_res)
-				printf("initrd is at 0x%08x-0x%08x\n",
-					data.initrd_res->start,
-					data.initrd_res->end);
-			else
-				printf("initrd image not yet relocated\n");
-		}
-	}
-
-#ifdef CONFIG_OFTREE
-	if (oftree) {
-		int oftree_num;
-
-		oftree = bootm_image_name_and_no(oftree, &oftree_num);
-
-		ret = bootm_open_oftree(&data, oftree, oftree_num);
-		if (ret)
-			goto err_out;
-	} else {
-		data.of_root_node = of_get_root_node();
-		if (data.of_root_node)
-			printf("using internal devicetree\n");
-	}
-#endif
-	if (data.os_address == UIMAGE_SOME_ADDRESS)
-		data.os_address = UIMAGE_INVALID_ADDRESS;
-
-	handler = bootm_find_handler(os_type, &data);
-	if (!handler) {
-		printf("no image handler found for image type %s\n",
-			file_type_to_string(os_type));
-		if (os_type == filetype_uimage)
-			printf("and os type: %d\n", data.os->header.ih_os);
-		goto err_out;
-	}
-
-	if (bootm_verbose(&data))
-		printf("Passing control to %s handler\n", handler->name);
-
-	ret = handler->bootm(&data);
+	ret = bootm_boot(&data);
 
 	printf("handler failed with %s\n", strerror(-ret));
 
 err_out:
 	free(data.initrd_file);
 	free(data.os_file);
-	if (data.os_res)
-		release_sdram_region(data.os_res);
-	if (data.initrd_res)
-		release_sdram_region(data.initrd_res);
-	if (data.initrd && data.initrd != data.os)
-		uimage_close(data.initrd);
-	if (data.os)
-		uimage_close(data.os);
+
 	return 1;
 }
 
diff --git a/common/Kconfig b/common/Kconfig
index 4cfbe4e..8a82320 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -31,6 +31,9 @@ config ENV_HANDLING
 config GENERIC_GPIO
 	bool
 
+config BOOTM
+	bool
+
 config BLOCK
 	bool
 
diff --git a/common/Makefile b/common/Makefile
index 2f0bd34..34eb7e4 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -42,6 +42,7 @@ obj-$(CONFIG_MODULES) += module.o
 obj-$(CONFIG_FLEXIBLE_BOOTARGS) += bootargs.o
 obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
 obj-y += bootsource.o
+obj-$(CONFIG_BOOTM) += bootm.o
 extra-$(CONFIG_MODULES) += module.lds
 extra-y += barebox_default_env barebox_default_env.h
 
diff --git a/common/bootm.c b/common/bootm.c
new file mode 100644
index 0000000..1987a09
--- /dev/null
+++ b/common/bootm.c
@@ -0,0 +1,303 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <boot.h>
+#include <fs.h>
+#include <malloc.h>
+#include <memory.h>
+
+static LIST_HEAD(handler_list);
+
+int register_image_handler(struct image_handler *handler)
+{
+	list_add_tail(&handler->list, &handler_list);
+
+	return 0;
+}
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
+static int bootm_open_os_uimage(struct image_data *data)
+{
+	int ret;
+
+	data->os = uimage_open(data->os_file);
+	if (!data->os)
+		return -EINVAL;
+
+	if (data->verify) {
+		ret = uimage_verify(data->os);
+		if (ret) {
+			printf("Checking data crc failed with %s\n",
+					strerror(-ret));
+			uimage_close(data->os);
+			return ret;
+		}
+	}
+
+	uimage_print_contents(data->os);
+
+	if (data->os->header.ih_arch != IH_ARCH) {
+		printf("Unsupported Architecture 0x%x\n",
+		       data->os->header.ih_arch);
+		uimage_close(data->os);
+		return -EINVAL;
+	}
+
+	if (data->os_address == UIMAGE_SOME_ADDRESS)
+		data->os_address = data->os->header.ih_load;
+
+	if (data->os_address != UIMAGE_INVALID_ADDRESS) {
+		data->os_res = uimage_load_to_sdram(data->os, 0,
+				data->os_address);
+		if (!data->os_res) {
+			uimage_close(data->os);
+			return -ENOMEM;
+		}
+	}
+
+	return 0;
+}
+
+static int bootm_open_initrd_uimage(struct image_data *data)
+{
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
+	return 0;
+}
+
+static int bootm_open_oftree(struct image_data *data, const char *oftree, int num)
+{
+	enum filetype ft;
+	struct fdt_header *fdt;
+	size_t size;
+
+	printf("Loading devicetree from '%s'\n", oftree);
+
+	ft = file_name_detect_type(oftree);
+	if ((int)ft < 0) {
+		printf("failed to open %s: %s\n", oftree, strerror(-(int)ft));
+		return ft;
+	}
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
+	ft = file_detect_type(fdt, size);
+	if (ft != filetype_oftree) {
+		printf("%s is not an oftree but %s\n", oftree,
+				file_type_to_string(ft));
+	}
+
+	data->of_root_node = of_unflatten_dtb(NULL, fdt);
+	if (!data->of_root_node) {
+		pr_err("unable to unflatten devicetree\n");
+		return -EINVAL;
+	}
+
+	free(fdt);
+
+	return 0;
+}
+
+static void bootm_print_info(struct image_data *data)
+{
+	if (data->os_res)
+		printf("OS image is at 0x%08x-0x%08x\n",
+				data->os_res->start,
+				data->os_res->end);
+	else
+		printf("OS image not yet relocated\n");
+
+	if (data->initrd_file) {
+		enum filetype initrd_type = file_name_detect_type(data->initrd_file);
+
+		printf("Loading initrd %s '%s'",
+				file_type_to_string(initrd_type),
+				data->initrd_file);
+		if (initrd_type == filetype_uimage &&
+				data->initrd->header.ih_type == IH_TYPE_MULTI)
+			printf(", multifile image %d", data->initrd_num);
+		printf("\n");
+		if (data->initrd_res)
+			printf("initrd is at 0x%08x-0x%08x\n",
+				data->initrd_res->start,
+				data->initrd_res->end);
+		else
+			printf("initrd image not yet relocated\n");
+	}
+}
+
+int bootm_boot(struct image_data *data)
+{
+	struct image_handler *handler;
+	int ret;
+	enum filetype os_type, initrd_type = filetype_unknown;
+
+	os_type = file_name_detect_type(data->os_file);
+	if ((int)os_type < 0) {
+		printf("could not open %s: %s\n", data->os_file,
+				strerror(-os_type));
+		ret = (int)os_type;
+		goto err_out;
+	}
+
+	if (!data->force && os_type == filetype_unknown) {
+		printf("Unknown OS filetype (try -f)\n");
+		ret = -EINVAL;
+		goto err_out;
+	}
+
+	if (os_type == filetype_uimage) {
+		ret = bootm_open_os_uimage(data);
+		if (ret) {
+			printf("loading os image failed with %s\n",
+					strerror(-ret));
+			goto err_out;
+		}
+	}
+
+	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD) && data->initrd_file) {
+
+		initrd_type = file_name_detect_type(data->initrd_file);
+		if ((int)initrd_type < 0) {
+			printf("could not open %s: %s\n", data->initrd_file,
+					strerror(-initrd_type));
+			ret = (int)initrd_type;
+			goto err_out;
+		}
+		if (initrd_type == filetype_uimage) {
+			ret = bootm_open_initrd_uimage(data);
+			if (ret) {
+				printf("loading initrd failed with %s\n",
+						strerror(-ret));
+				goto err_out;
+			}
+		}
+	}
+
+	printf("\nLoading OS %s '%s'", file_type_to_string(os_type),
+			data->os_file);
+	if (os_type == filetype_uimage &&
+			data->os->header.ih_type == IH_TYPE_MULTI)
+		printf(", multifile image %d", data->os_num);
+	printf("\n");
+
+	if (IS_ENABLED(CONFIG_OFTREE)) {
+		if (data->oftree_file) {
+			ret = bootm_open_oftree(data, data->oftree_file, data->oftree_num);
+			if (ret)
+				goto err_out;
+		} else {
+			data->of_root_node = of_get_root_node();
+			if (data->of_root_node)
+				printf("using internal devicetree\n");
+		}
+	}
+
+	if (data->os_address == UIMAGE_SOME_ADDRESS)
+		data->os_address = UIMAGE_INVALID_ADDRESS;
+
+	handler = bootm_find_handler(os_type, data);
+	if (!handler) {
+		printf("no image handler found for image type %s\n",
+			file_type_to_string(os_type));
+		if (os_type == filetype_uimage)
+			printf("and os type: %d\n", data->os->header.ih_os);
+		ret = -ENODEV;
+		goto err_out;
+	}
+
+	if (bootm_verbose(data)) {
+		bootm_print_info(data);
+		printf("Passing control to %s handler\n", handler->name);
+	}
+
+	ret = handler->bootm(data);
+err_out:
+	if (data->os_res)
+		release_sdram_region(data->os_res);
+	if (data->initrd_res)
+		release_sdram_region(data->initrd_res);
+	if (data->initrd && data->initrd != data->os)
+		uimage_close(data->initrd);
+	if (data->os)
+		uimage_close(data->os);
+
+	return ret;
+}
diff --git a/include/boot.h b/include/boot.h
index 971a403..ccce8e1 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -41,11 +41,15 @@ struct image_data {
 
 	unsigned long initrd_address;
 
+	char *oftree_file;
+	int oftree_num;
+
 	struct device_node *of_root_node;
 	struct fdt_header *oftree;
 
 	int verify;
 	int verbose;
+	int force;
 };
 
 struct image_handler {
@@ -88,4 +92,8 @@ static inline int linux_bootargs_overwrite(const char *bootargs)
 }
 #endif
 
+#define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
+
+int bootm_boot(struct image_data *);
+
 #endif /* __BOOT_H */
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
