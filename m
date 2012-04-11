Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo3.mail-out.ovh.net ([46.105.75.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SHqas-0008Mc-PH
 for barebox@lists.infradead.org; Wed, 11 Apr 2012 05:59:52 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 7BE56FF8BC6
 for <barebox@lists.infradead.org>; Wed, 11 Apr 2012 08:00:50 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Apr 2012 07:42:34 +0200
Message-Id: <1334122954-19623-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] arm: add Android boot image support
To: barebox@lists.infradead.org
Cc: Magnus Damm <magnus.damm@gmail.com>

The Android Image contains 3 components and params

 - kernel
 - initrd
 - second stage (optional)

 - tags addr
 - bootargs

In fast boot the initrd is mandatory, in barebox we are less restrictive
use the initrd only if present

add to env params:
image_noverwrite_bootargs
	Disable overwrite of the bootargs with the one present in aimage

aimage_noverwrite_tags
	Disable overwrite of the tags addr with the one present in aimage

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Magnus Damm <magnus.damm@gmail.com>
---
 arch/arm/lib/bootm.c |  147 ++++++++++++++++++++++++++++++++++++++++++++++++++
 commands/Kconfig     |    7 +++
 include/aimage.h     |   74 +++++++++++++++++++++++++
 3 files changed, 228 insertions(+), 0 deletions(-)
 create mode 100644 include/aimage.h

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 26833bd..305a4c6 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -13,6 +13,7 @@
 #include <errno.h>
 #include <sizes.h>
 #include <libbb.h>
+#include <magicvar.h>
 
 #include <asm/byteorder.h>
 #include <asm/setup.h>
@@ -238,12 +239,158 @@ static struct image_handler barebox_handler = {
 	.filetype = filetype_arm_barebox,
 };
 
+#include <aimage.h>
+
+static int aimage_load_resource(int fd, struct resource *r, void* buf, int ps)
+{
+	int ret;
+	void *image = (void *)r->start;
+	unsigned to_read = ps - r->size % ps;
+
+	ret = read_full(fd, image, r->size);
+	if (ret < 0)
+		return ret;
+
+	ret = read_full(fd, buf, to_read);
+	if (ret < 0)
+		printf("could not read dummy %d\n", to_read);
+
+	return ret;
+}
+
+static int do_bootm_aimage(struct image_data *data)
+{
+	struct resource *snd_stage_res;
+	int fd, ret;
+	struct android_header __header, *header;
+	void *buf;
+	int to_read;
+	struct android_header_comp *cmp;
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
+	printf("Android Image for '%s'\n", header->name);
+
+	/*
+	 * As on tftp we do not support lseek and we will just have to seek
+	 * for the size of a page - 1 max just buffer instead to read to dummy
+	 * data
+	 */
+	buf = xmalloc(header->page_size);
+
+	to_read = header->page_size - sizeof(*header);
+	ret = read_full(fd, buf, to_read);
+	if (ret < 0) {
+		printf("could not read dummy %d from %s\n", to_read, data->os_file);
+		goto err_out;
+	}
+
+	cmp = &header->kernel;
+	data->os_res = request_sdram_region("akernel", cmp->load_addr, cmp->size);
+	if (!data->os_res) {
+		ret = -ENOMEM;
+		goto err_out;
+	}
+
+	ret = aimage_load_resource(fd, data->os_res, buf, header->page_size);
+	if (ret < 0) {
+		perror("could not read kernel");
+		goto err_out;
+	}
+
+	/*
+	 * fastboot always expect a ramdisk
+	 * in barebox we can be less restrictive
+	 */
+	cmp = &header->ramdisk;
+	if (cmp->size) {
+		data->initrd_res = request_sdram_region("ainitrd", cmp->load_addr, cmp->size);
+		if (!data->initrd_res) {
+			ret = -ENOMEM;
+			goto err_out;
+		}
+
+		ret = aimage_load_resource(fd, data->initrd_res, buf, header->page_size);
+		if (ret < 0) {
+			perror("could not read initrd");
+			goto err_out;
+		}
+	}
+
+	if (!getenv("aimage_noverwrite_bootargs"))
+		setenv("bootargs", header->cmdline);
+
+	if (!getenv("aimage_noverwrite_tags"))
+		armlinux_set_bootparams((void*)header->tags_addr);
+
+	if (data->oftree) {
+		ret = of_fix_tree(data->oftree);
+		if (ret)
+			goto err_out;
+	}
+
+	cmp = &header->second_stage;
+	if (cmp->size) {
+		void (*second)(void);
+
+		snd_stage_res = request_sdram_region("asecond", cmp->load_addr, cmp->size);
+		if (!snd_stage_res) {
+			ret = -ENOMEM;
+			goto err_out;
+		}
+
+		ret = aimage_load_resource(fd, snd_stage_res, buf, header->page_size);
+		if (ret < 0) {
+			perror("could not read initrd");
+			goto err_out;
+		}
+
+		second = (void*)snd_stage_res->start;
+		shutdown_barebox();
+
+		second();
+
+		reset_cpu(0);
+	}
+
+	return __do_bootm_linux(data, 0);
+
+err_out:
+	close(fd);
+
+	return ret;
+}
+
+static struct image_handler aimage_handler = {
+	.name = "ARM Android Image",
+	.bootm = do_bootm_aimage,
+	.filetype = filetype_aimage,
+};
+
+#ifdef CONFIG_CMD_BOOTM_AIMAGE
+BAREBOX_MAGICVAR(aimage_noverwrite_bootargs, "Disable overwrite of the bootargs with the one present in aimage");
+BAREBOX_MAGICVAR(aimage_noverwrite_tags, "Disable overwrite of the tags addr with the one present in aimage");
+#endif
+
 static int armlinux_register_image_handler(void)
 {
 	register_image_handler(&barebox_handler);
 	register_image_handler(&uimage_handler);
 	register_image_handler(&rawimage_handler);
 	register_image_handler(&zimage_handler);
+	if (IS_BUILTIN(CONFIG_CMD_BOOTM_AIMAGE))
+		register_image_handler(&aimage_handler);
 
 	return 0;
 }
diff --git a/commands/Kconfig b/commands/Kconfig
index 2409178..e0c2f09 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -364,6 +364,13 @@ config CMD_BOOTM_OFTREE_UIMAGE
 	  Support using oftree uImages. Without this only raw oftree
 	  blobs can be used.
 
+config CMD_BOOTM_AIMAGE
+	bool
+	prompt "bootm Android image support"
+	depends on CMD_BOOTM && ARM
+	help
+	  Support using Android Images.
+
 config CMD_UIMAGE
 	tristate
 	prompt "uimage"
diff --git a/include/aimage.h b/include/aimage.h
new file mode 100644
index 0000000..9702b7d
--- /dev/null
+++ b/include/aimage.h
@@ -0,0 +1,74 @@
+/*
+ * (C) Copyright 2011 Jean-Christhophe PLAGNIOL-VILLARD <plagniol@jcrosoft.com>
+ *
+ * Android boot image
+ *
+ * Under GPLv2 only
+ */
+
+#ifndef __AIMAGE_H__
+#define __AIMAGE_H__
+
+#define BOOT_MAGIC	"ANDROID!"
+#define BOOT_MAGIC_SIZE	8
+#define BOOT_NAME_SIZE	16
+#define BOOT_ARGS_SIZE	512
+
+struct android_header_comp
+{
+	unsigned size;
+	unsigned load_addr;
+};
+
+struct android_header
+{
+	u8 magic[BOOT_MAGIC_SIZE];
+
+	struct android_header_comp kernel;
+
+	struct android_header_comp ramdisk;
+
+	struct android_header_comp second_stage;
+
+	/* physical addr for kernel tags */
+	unsigned tags_addr;
+	/* flash page size we assume */
+	unsigned page_size;
+	/* future expansion: should be 0 */
+	unsigned unused[2];
+
+	unsigned char name[BOOT_NAME_SIZE]; /* asciiz product name */
+
+	unsigned char cmdline[BOOT_ARGS_SIZE];
+
+	unsigned id[8]; /* timestamp / checksum / sha1 / etc */
+};
+
+/*
+ * +-----------------+
+ * | boot header     | 1 page
+ * +-----------------+
+ * | kernel          | n pages
+ * +-----------------+
+ * | ramdisk         | m pages
+ * +-----------------+
+ * | second stage    | o pages
+ * +-----------------+
+ *
+ * n = (kernel_size + page_size - 1) / page_size
+ * m = (ramdisk_size + page_size - 1) / page_size
+ * o = (second_size + page_size - 1) / page_size
+ *
+ * 0. all entities are page_size aligned in flash
+ * 1. kernel and ramdisk are required (size != 0)
+ * 2. second is optional (second_size == 0 -> no second)
+ * 3. load each element (kernel, ramdisk, second) at
+ *    the specified physical address (kernel_addr, etc)
+ * 4. prepare tags at tag_addr.  kernel_args[] is
+ *    appended to the kernel commandline in the tags.
+ * 5. r0 = 0, r1 = MACHINE_TYPE, r2 = tags_addr
+ * 6. if second_size != 0: jump to second_addr
+ *    else: jump to kernel_addr
+ */
+
+#endif /* __AIMAGE_H__ */
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
