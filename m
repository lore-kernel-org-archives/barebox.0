Delivery-date: Tue, 20 Jan 2026 15:56:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viD9Y-003QEm-2x
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 15:56:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viD9X-0008W5-Ds
	for lore@pengutronix.de; Tue, 20 Jan 2026 15:56:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ENACjZMo25FJA97cPgLOq07eaVDz8JRJ0Qy10hxb9Jc=; b=y05YTfy6N2943WI2taxuTLYLS4
	WupwPt6IaqWiEwO8ZSjszbHgDnvwafboY+eZiMJ0/l4aoNp5Pb1cdM/wMx99DmeFuZiwthc0ombrE
	URfrXRlC935ZGJvFc+LWJ98yf/bBNvqRNVn2iYbIfSNvTyYJrSZlUtIp48KabIOdFQIO2p9kpdIf3
	gm7dryKCzjQ5/rnbPD+Am0XoDfYAS6/iupgeKf4Rs5EoaOvgnr7m+cCs1yfd+wtjXAjBxjkyv+bZo
	pfZzO7KIKv41L6skFAveyeIuiDBfJc8oJiQrHnc3MgjmijncTeHm66CC2VzPUIdWboirwziScWYjz
	ySsVuIeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viD99-000000041zR-0yrY;
	Tue, 20 Jan 2026 14:55:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viD98-000000041yn-0eON
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 14:55:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ENACjZMo25FJA97cPgLOq07eaVDz8JRJ0Qy10hxb9Jc=; b=JeZbJyEYtY7Sr7O4ZFq3HN4VLU
	CiYOBjesNZYsPeokhQKonnqChnW4NPHK9ATlslV0dNqh4+9+++SPNSUwKrxXShQeidVv9MN2A8pVT
	q0/lnzgVI8CAq09Os0KWRZJmllp5oDyO6XAcQMMJtOQ04cXI3Op+Au8tB5JmYeDtQNRGUE5ZuCmOz
	peteFDetpCGG4OndG0vUW0lWtlZDXzcErDZsY5N1vXMCD0lEP2zzCAdhVJCNiX+yoPjpcs/bZthrE
	vFDuGy0rJicYg8//gX7rPtjuIdvzQUUsmh1kgEk3v+E3+E4AxWU4St1a9o6Fh1XDkQ8dEgIo82z5n
	9PRA+rTQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viD95-0000000EGFM-1RIc
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 14:55:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1viD8o-0008Hu-Vn; Tue, 20 Jan 2026 15:55:34 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1viD8p-001bKY-1Q;
	Tue, 20 Jan 2026 15:55:34 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1viD8o-00000000RaZ-2p5C;
	Tue, 20 Jan 2026 15:55:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Jan 2026 15:55:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260120-android-image-v1-2-820595a1b8a4@pengutronix.de>
References: <20260120-android-image-v1-0-820595a1b8a4@pengutronix.de>
In-Reply-To: <20260120-android-image-v1-0-820595a1b8a4@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768920934; l=9734;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=XaPmP7+gZyWcywm311IrKuOxWqHc+bwaq0YO9NRn7Y8=;
 b=e4WyV+Dywo2mQKjvBf5Y41X150BjPrzUFelKn8bjParyJU4+ZarBPYBUhFCXF/UJscCR4vEDe
 P8Z6lcwvYkeCYMHWfD5iTwu/rayRAu9cWn8URDFWbAjHGIQQwMw/xNr
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_145551_600926_2306E57F 
X-CRM114-Status: GOOD (  25.87  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] bootm: add generic android image handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

An Android image handler is particularly useful for use with fastboot.
The fastboot protocol supports a "boot" command which can be used to
boot a kernel via fastboot. The fastboot host tool encapsulates the
Kernel binary in a Android image format which is then transferred.

This patch brings us an image handler which extracts the Kernel binary
and optionally an initrd and passes this on to bootm.

We previously already had an Android image handler, but this is very
limited and replaced with this patch. The existing handler was only
supported on ARM32 and only zImages. It hasn't seen any active changes
for more than 10 years.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/bootm.c       | 174 -------------------------------------------
 common/Makefile              |   1 +
 common/bootm-android-image.c | 154 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 155 insertions(+), 174 deletions(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index dca4fec020..2ae132d435 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -567,180 +567,6 @@ static struct image_handler socfpga_xload_handler = {
 	.filetype = filetype_socfpga_xload,
 };
 
-#include <aimage.h>
-
-static int aimage_load_resource(int fd, struct resource *r, void* buf, int ps)
-{
-	int ret;
-	void *image = (void *)r->start;
-	unsigned to_read = ps - resource_size(r) % ps;
-
-	ret = read_full(fd, image, resource_size(r));
-	if (ret < 0)
-		return ret;
-
-	ret = read_full(fd, buf, to_read);
-	if (ret < 0)
-		printf("could not read dummy %u\n", to_read);
-
-	return ret;
-}
-
-static int do_bootm_aimage(struct image_data *data)
-{
-	struct resource *snd_stage_res;
-	int fd, ret;
-	struct android_header __header, *header;
-	void *buf;
-	int to_read;
-	struct android_header_comp *cmp;
-	unsigned long mem_free;
-	unsigned long mem_start, mem_size;
-
-	ret = sdram_start_and_size(&mem_start, &mem_size);
-	if (ret)
-		return ret;
-
-	fd = open(data->os_file, O_RDONLY);
-	if (fd < 0) {
-		perror("open");
-		return 1;
-	}
-
-	header = &__header;
-	ret = read(fd, header, sizeof(*header));
-	if (ret < sizeof(*header)) {
-		printf("could not read %s\n", data->os_file);
-		goto err_out;
-	}
-
-	printf("Android Image for '%s'\n", header->name);
-
-	/*
-	 * As on tftp we do not support lseek and we will just have to seek
-	 * for the size of a page - 1 max just buffer instead to read to dummy
-	 * data
-	 */
-	buf = xmalloc(header->page_size);
-
-	to_read = header->page_size - sizeof(*header);
-	ret = read_full(fd, buf, to_read);
-	if (ret < 0) {
-		printf("could not read dummy %d from %s\n", to_read, data->os_file);
-		goto err_out;
-	}
-
-	cmp = &header->kernel;
-	data->os_res = request_sdram_region("akernel", cmp->load_addr, cmp->size,
-					    MEMTYPE_LOADER_CODE, MEMATTRS_RWX);
-	if (!data->os_res) {
-		pr_err("Cannot request region 0x%08x - 0x%08x, using default load address\n",
-				cmp->load_addr, cmp->size);
-
-		data->os_address = mem_start + PAGE_ALIGN(cmp->size * 4);
-		data->os_res = request_sdram_region("akernel", data->os_address, cmp->size,
-						    MEMTYPE_LOADER_CODE, MEMATTRS_RWX);
-		if (!data->os_res) {
-			pr_err("Cannot request region 0x%08x - 0x%08x\n",
-					cmp->load_addr, cmp->size);
-			ret = -ENOMEM;
-			goto err_out;
-		}
-	}
-
-	ret = aimage_load_resource(fd, data->os_res, buf, header->page_size);
-	if (ret < 0) {
-		perror("could not read kernel");
-		goto err_out;
-	}
-
-	/*
-	 * fastboot always expect a ramdisk
-	 * in barebox we can be less restrictive
-	 */
-	cmp = &header->ramdisk;
-	if (cmp->size) {
-		data->initrd_res = request_sdram_region("ainitrd", cmp->load_addr, cmp->size,
-							MEMTYPE_LOADER_DATA, MEMATTRS_RW);
-		if (!data->initrd_res) {
-			ret = -ENOMEM;
-			goto err_out;
-		}
-
-		ret = aimage_load_resource(fd, data->initrd_res, buf, header->page_size);
-		if (ret < 0) {
-			perror("could not read initrd");
-			goto err_out;
-		}
-	}
-
-	if (!getenv("aimage_noverwrite_bootargs"))
-		linux_bootargs_overwrite(header->cmdline);
-
-	if (!getenv("aimage_noverwrite_tags"))
-		armlinux_set_bootparams((void *)(unsigned long)header->tags_addr);
-
-	cmp = &header->second_stage;
-	if (cmp->size) {
-		void (*second)(void);
-
-		snd_stage_res = request_sdram_region("asecond", cmp->load_addr, cmp->size,
-						     MEMTYPE_LOADER_CODE, MEMATTRS_RWX);
-		if (!snd_stage_res) {
-			ret = -ENOMEM;
-			goto err_out;
-		}
-
-		ret = aimage_load_resource(fd, snd_stage_res, buf, header->page_size);
-		if (ret < 0) {
-			perror("could not read initrd");
-			goto err_out;
-		}
-
-		second = (void*)snd_stage_res->start;
-		shutdown_barebox();
-
-		second();
-
-		restart_machine(0);
-	}
-
-	close(fd);
-
-	/*
-	 * Put devicetree right after initrd if present or after the kernel
-	 * if not.
-	 */
-	if (data->initrd_res)
-		mem_free = PAGE_ALIGN(data->initrd_res->end);
-	else
-		mem_free = PAGE_ALIGN(data->os_res->end + SZ_1M);
-
-	return __do_bootm_linux(data, mem_free, 0, NULL);
-
-err_out:
-	linux_bootargs_overwrite(NULL);
-	close(fd);
-
-	return ret;
-}
-
-static struct image_handler aimage_handler = {
-	.name = "ARM Android Image",
-	.bootm = do_bootm_aimage,
-	.filetype = filetype_aimage,
-};
-
-#ifdef CONFIG_BOOTM_AIMAGE
-BAREBOX_MAGICVAR(aimage_noverwrite_bootargs, "Disable overwrite of the bootargs with the one present in aimage");
-BAREBOX_MAGICVAR(aimage_noverwrite_tags, "Disable overwrite of the tags addr with the one present in aimage");
-#endif
-
-static struct binfmt_hook binfmt_aimage_hook = {
-	.type = filetype_aimage,
-	.exec = "bootm",
-};
-
 static struct binfmt_hook binfmt_arm_zimage_hook = {
 	.type = filetype_arm_zimage,
 	.exec = "bootm",
diff --git a/common/Makefile b/common/Makefile
index 36dee5f7a9..54120d3d8a 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -28,6 +28,7 @@ obj-$(CONFIG_BINFMT)		+= binfmt.o
 obj-$(CONFIG_BLOCK)		+= block.o
 obj-$(CONFIG_BLSPEC)		+= blspec.o
 obj-$(CONFIG_BOOTM)		+= bootm.o booti.o
+obj-$(CONFIG_BOOTM_AIMAGE)	+= bootm-android-image.o
 obj-$(CONFIG_CMD_LOADS)		+= s_record.o
 obj-$(CONFIG_MEMTEST)		+= memtest.o
 obj-$(CONFIG_COMMAND_SUPPORT)	+= command.o
diff --git a/common/bootm-android-image.c b/common/bootm-android-image.c
new file mode 100644
index 0000000000..cb86123659
--- /dev/null
+++ b/common/bootm-android-image.c
@@ -0,0 +1,154 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#define pr_fmt(fmt) "android-image: " fmt
+
+#include <bootm.h>
+#include <aimage.h>
+#include <init.h>
+#include <fcntl.h>
+#include <libfile.h>
+#include <linux/fs.h>
+#include <linux/sizes.h>
+#include <linux/align.h>
+#include <unistd.h>
+#include <filetype.h>
+
+static char *aimage_copy_component(int from, size_t ofs, size_t size)
+{
+	char *path;
+	int to, ret;
+	loff_t pos;
+
+	path = make_temp("aimage");
+	if (!path) {
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	pos = lseek(from, ofs, SEEK_SET);
+	if (pos < 0) {
+		ret = -errno;
+		goto err;
+	}
+
+	to = open(path, O_CREAT | O_WRONLY);
+	if (to < 0) {
+		ret = to;
+		goto err;
+	}
+
+	ret = copy_fd(from, to, size);
+
+	close(to);
+
+	if (!ret)
+		return path;
+err:
+	free(path);
+
+	return ERR_PTR(ret);
+}
+
+static int do_bootm_aimage(struct image_data *img_data)
+{
+	struct bootm_data bootm_data = {
+		.oftree_file = img_data->oftree_file,
+		.initrd_file = img_data->initrd_file,
+		.tee_file = img_data->tee_file,
+		.verbose = img_data->verbose,
+		.verify = img_data->verify,
+		.force = img_data->force,
+		.dryrun = img_data->dryrun,
+		.initrd_address = img_data->initrd_address,
+		.os_address = img_data->os_address,
+		.os_entry = img_data->os_entry,
+	};
+	struct android_header *hdr;
+	int fd, ret;
+	char *kernel = NULL, *initrd = NULL;
+	size_t ofs;
+
+	hdr = xmalloc(sizeof(*hdr));
+
+	fd = open(img_data->os_file, O_RDONLY);
+	if (fd < 0) {
+		ret = fd;
+		goto err;
+	}
+
+	ret = read_full(fd, hdr, sizeof(*hdr));
+	if (ret < 0)
+		goto err_close;
+
+	if (ret < sizeof(*hdr)) {
+		ret = -EINVAL;
+		goto err_close;
+	}
+
+	if (file_detect_type(hdr, sizeof(*hdr)) != filetype_aimage) {
+		pr_err("Image is not an Android image\n");
+		ret = -EINVAL;
+		goto err;
+	}
+
+	if (hdr->page_size < sizeof(*hdr) || hdr->page_size > SZ_64K) {
+		pr_err("Invalid page_size 0x%08x\n", hdr->page_size);
+		ret = -EINVAL;
+		goto err_close;
+	}
+
+	ofs = hdr->page_size;
+	if (hdr->kernel.size) {
+		kernel = aimage_copy_component(fd, ofs, hdr->kernel.size);
+		if (IS_ERR(kernel)) {
+			kernel = NULL;
+			ret = PTR_ERR(kernel);
+			goto err_close;
+		}
+	}
+
+	ofs += ALIGN(hdr->kernel.size, hdr->page_size);
+
+	if (hdr->ramdisk.size) {
+		initrd = aimage_copy_component(fd, ofs, hdr->ramdisk.size);
+		if (IS_ERR(initrd)) {
+			initrd = NULL;
+			ret = PTR_ERR(initrd);
+			goto err_close;
+		}
+	}
+
+	if (kernel)
+		bootm_data.os_file = kernel;
+
+	if (initrd)
+		bootm_data.initrd_file = initrd;
+
+	close(fd);
+
+	ret = bootm_boot(&bootm_data);
+
+err_close:
+	close(fd);
+
+	if (kernel)
+		unlink(kernel);
+	if (initrd)
+		unlink(initrd);
+err:
+	free(hdr);
+
+	return ret;
+}
+
+static struct image_handler aimage_bootm_handler = {
+	.name = "Android boot image",
+	.bootm = do_bootm_aimage,
+	.filetype = filetype_aimage,
+};
+
+static int bootm_aimage_register(void)
+{
+	return register_image_handler(&aimage_bootm_handler);
+}
+late_initcall(bootm_aimage_register);

-- 
2.47.3



