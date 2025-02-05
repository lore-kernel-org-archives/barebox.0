Delivery-date: Wed, 05 Feb 2025 10:49:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfc1s-008kZc-1F
	for lore@lore.pengutronix.de;
	Wed, 05 Feb 2025 10:49:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfc1r-0004mY-Dp
	for lore@pengutronix.de; Wed, 05 Feb 2025 10:49:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IO9Rh0GJwHDO99mQin47uqb8jps8GjsXpy4D0z24oOI=; b=2x40+mzZtShaTqyzXZT7Sv70qD
	6X/tpUAb9kPrgYh0GVSi6s62IL2uc35xwhH2fdU+4zeJzfH5/taZpIJDHD96fY/mZGrLLFpt1i8FN
	dHuz/ygwaoR09txtaV59PEWusiz/lKW2Qz2KO85oEfyIF0/gfvPbUHdumXQV1fNtrjtetcm0sFWfC
	lzUOxH7VurIjIbt8aOVnQg4Mr2TgyZg/ZzAXQlWAqw4r7RIj4oi0YIynxA/3cbMjGNRlrFjNfEB5r
	t3MlQspkftgeOWbXKaUSRYDqniVVDYVL5Ff0FflLuWq3LxfJWzmC/kC4tZ9XWybn5VYvL7xRzlCIF
	ZWfR9e7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfc1K-00000002kTB-2T5K;
	Wed, 05 Feb 2025 09:48:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfc1H-00000002kPW-0HPn
	for barebox@lists.infradead.org;
	Wed, 05 Feb 2025 09:48:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-00048O-Qo; Wed, 05 Feb 2025 10:48:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-003c2f-1F;
	Wed, 05 Feb 2025 10:48:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-00F0Mw-0v;
	Wed, 05 Feb 2025 10:48:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 05 Feb 2025 10:48:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-k3-emmc-v1-4-06679246be41@pengutronix.de>
References: <20250205-k3-emmc-v1-0-06679246be41@pengutronix.de>
In-Reply-To: <20250205-k3-emmc-v1-0-06679246be41@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738748893; l=15281;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=D6k9eGMJE6LYrTI3qWVTjdviCHGfh4B4dwotgaQ4+6I=;
 b=LBe+mmwzeI9nU8GnnexsVJN+7H6TdO7XruMygJsNrchL2clteQO4hANYP1RjfznRp41VjtKSL
 kdaPPJABouXD+E1YMzXZ1miY5w9/m4WPYzxECykdMzJOUFTz8rJEGSh
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_014831_426589_1CF320A7 
X-CRM114-Status: GOOD (  33.44  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/9] ARM: k3: r5: add USB DFU and eMMC boot support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch adds USB DFU and eMMC boot support for the k3 SoCs.

DFU mode is entered when the SoC is booted from USB. For continuing the
boot we need several binaries (bl31, OP-TEE, barebox, ti-dm firmware),
these can be uploaded as distinct files or combined together as a FIP
image. This patch also adds the possibility to put a FIP image on the
SD/eMMC card which is then preferred over the distinct files which were
previously expected on SD/eMMC cards.

Also the K3 SoCs have a boot mode to boot from eMMC boot partitions for
which this patch adds support. When this bootmode is selected the
tiboot3.bin file is loaded from the active boot partition. We then need
to load the FIP image from the same boot partition. This image is
expected to be at offset 1MiB in the boot partition.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/ti-k3.rst |  47 ++++++
 arch/arm/mach-k3/r5.c          | 367 +++++++++++++++++++++++++++++++++++++----
 include/mach/k3/common.h       |   7 +
 3 files changed, 390 insertions(+), 31 deletions(-)

diff --git a/Documentation/boards/ti-k3.rst b/Documentation/boards/ti-k3.rst
index a1bf0b92e8..4b3822c020 100644
--- a/Documentation/boards/ti-k3.rst
+++ b/Documentation/boards/ti-k3.rst
@@ -69,6 +69,9 @@ OP-TEE is built from https://github.com/OP-TEE/optee_os.git::
         PLATFORM=k3-am62x
   cp out/arm-plat-k3/core/tee-raw.bin $TI_BOOT/optee.bin
 
+OP-TEE is optional. barebox will continue without ``optee.bin`` when the file
+does not exist.
+
 Copying ti-dm.bin
 -----------------
 
@@ -77,3 +80,47 @@ copied to the eMMC/SD as well::
 
   cp $TI_LINUX_FIRMWARE/ti-dm/am62xx/ipc_echo_testb_mcu1_0_release_strip.xer5f $TI_BOOT/ti-dm.bin
 
+Combining binaries into a FIP image
+-----------------------------------
+
+Alternatively to putting the different binaries (``barebox.bin``, ``bl31.bin``, ``optee.bin``
+and ``ti-dm.bin``) into the FAT image the files can be combined into a FIP image named
+``k3.fip``.::
+
+  fiptool create --soc-fw bl31.bin \
+    --tos-fw optee.bin \
+    --nt-fw barebox-beagleplay.img \
+    --blob uuid=9e8c2017-8b94-4e2b-a7b3-a0f88eabb8ae,file=ti-dm.bin k3.fip
+
+USB DFU boot
+------------
+K3 Boards can be booted via USB DFU. When in USB boot mode the initial stage can be uploaded
+using ``dfu-util``::
+
+  dfu-util -D barebox-beagleplay-r5.img -a bootloader
+
+This will start the initial stage which then expects the following stages which can
+be uploaded with ``dfu-util`` as well, either as FIP image::
+
+  dfu-util -D k3.fip -a fip
+
+or as separate files::
+
+  dfu-util -D blb31.bin -a tfa
+  dfu-util -D optee.bin -a optee
+  dfu-util -D ti-dm.bin -a ti-dm
+  dfu-util -D barebox-beagleplay.img -a barebox
+
+Uploading optee.bin can be skipped in case it's not needed.
+
+eMMC boot
+---------
+K3 boards can boot from eMMC boot partitions. In this mode the ROM reads the tiboot3.bin
+raw from the active boot partition. In this mode barebox expects the FIP image with the
+following stages in the same boot partition at offset 1MiB. There is a barebox update handler
+which takes a combined image consisting of tiboot3.bin and the FIP image to allow for a
+failsafe update. This image can't be generated by the barebox build system though. It has
+to be generated by a build system or manually::
+
+  dd if=images/barebox-beagleplay-r5.img of=barebox-beagleplay-emmc.img
+  dd if=k3.fip of=barebox-beagleplay-emmc.img bs=1024 seek=1024
diff --git a/arch/arm/mach-k3/r5.c b/arch/arm/mach-k3/r5.c
index 32d98fe89a..8fa65eaaf9 100644
--- a/arch/arm/mach-k3/r5.c
+++ b/arch/arm/mach-k3/r5.c
@@ -6,6 +6,7 @@
 #include <init.h>
 #include <libfile.h>
 #include <fs.h>
+#include <fip.h>
 #include <firmware.h>
 #include <linux/remoteproc.h>
 #include <soc/ti/ti_sci_protocol.h>
@@ -14,6 +15,10 @@
 #include <asm/cache.h>
 #include <linux/sizes.h>
 #include <barebox.h>
+#include <bootsource.h>
+#include <linux/usb/gadget-multi.h>
+#include <mach/k3/common.h>
+#include <mci.h>
 
 #define RTC_BASE_ADDRESS		0x2b1f0000
 #define K3RTC_KICK0_UNLOCK_VALUE	0x83e70b13
@@ -217,38 +222,279 @@ void am625_early_init(void)
 	ti_pd_wait(pd_base, 0);
 }
 
+#if IN_PROPER
+
 /*
  * The bl31 and optee binaries are relocatable, but these addresses
  * are hardcoded as reserved mem regions in the upstream device trees.
  */
-#define BL31_ADDRESS 0x9e780000
-#define OPTEE_ADDRESS 0x9e800000
+#define BL31_ADDRESS (void *)0x9e780000
+#define BL32_ADDRESS (void *)0x9e800000
+#define BAREBOX_ADDRESS (void *)0x80080000
 
-static int k3_r5_start_image(void)
+static void *k3_ti_dm;
+
+static bool have_bl31;
+static bool have_bl32;
+static bool have_bl33;
+
+static uuid_t uuid_bl31 = UUID_EL3_RUNTIME_FIRMWARE_BL31;
+static uuid_t uuid_ti_dm_fw = UUID_TI_DM_FW;
+static uuid_t uuid_bl33 = UUID_NON_TRUSTED_FIRMWARE_BL33;
+static uuid_t uuid_bl32 = UUID_SECURE_PAYLOAD_BL32;
+
+struct fip_image {
+	struct list_head entries;
+	void *buf;
+};
+
+struct fip_image_entry {
+	struct fip_toc_entry entry;
+	struct list_head list;
+};
+
+static void fip_image_free(struct fip_image *fip_image)
 {
-	int err;
-	void *ti_dm_buf;
-	ssize_t size;
-	struct firmware fw;
-	const struct ti_sci_handle *ti_sci;
-	void *bl31 = (void *)BL31_ADDRESS;
-	void *barebox = (void *)0x80080000;
-	void *optee = (void *)OPTEE_ADDRESS;
-	struct elf_image *elf;
-	void __noreturn (*ti_dm)(void);
-	struct rproc *arm64_rproc;
+	struct fip_image_entry *e, *tmp;
 
-	ti_sci = ti_sci_get_handle(NULL);
-	if (IS_ERR(ti_sci))
-		return -EINVAL;
+	if (!fip_image)
+		return;
 
-	arm64_rproc = ti_k3_am64_get_handle();
-	if (!arm64_rproc) {
-		pr_err("Cannot get rproc handle\n");
-		return -EINVAL;
+	list_for_each_entry_safe(e, tmp, &fip_image->entries, list)
+		free(e);
+
+	free(fip_image->buf);
+	free(fip_image);
+}
+
+static struct fip_image *open_fip(const char *filename, size_t offset)
+{
+	fip_toc_header_t toc_header;
+	int ret;
+	int fd;
+	struct fip_image *fip_image = NULL;
+	LIST_HEAD(entries);
+	size_t fip_headers_size, total = 0;
+	struct fip_image_entry *e;
+	off_t pos;
+	int n_entries = 0;
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0)
+		return ERR_PTR(fd);
+
+	pos = lseek(fd, offset, SEEK_SET);
+	if (pos != offset) {
+		ret = -EINVAL;
+		goto err;
+	}
+
+	fip_image = xzalloc(sizeof(*fip_image));
+	INIT_LIST_HEAD(&fip_image->entries);
+
+	ret = read_full(fd, &toc_header, sizeof(toc_header));
+	if (ret < 0)
+		goto err;
+
+	if (ret < sizeof(toc_header)) {
+		ret = -ENODATA;
+		goto err;
+	}
+
+	if (toc_header.name != TOC_HEADER_NAME) {
+		pr_err("%s is not a FIP file: unknown magic = 0x%08x\n",
+		       filename, toc_header.name);
+		ret = -EINVAL;
+		goto err;
+	}
+
+	/* read all toc entries */
+	while (1) {
+		struct fip_image_entry *entry = xzalloc(sizeof(*entry));
+		struct fip_toc_entry *toc_entry = &entry->entry;
+
+		ret = read_full(fd, toc_entry, sizeof(*toc_entry));
+		if (ret < 0)
+			goto err;
+		if (ret < sizeof(*toc_entry)) {
+			ret = -ENODATA;
+			goto err;
+		}
+
+		list_add_tail(&entry->list, &fip_image->entries);
+
+		pr_debug("Read TOC entry %pU %llu %llu\n", &toc_entry->uuid,
+			 toc_entry->offset_address, toc_entry->size);
+
+		/* Found the ToC terminator, we are done. */
+		if (memcmp(&toc_entry->uuid, &uuid_null, sizeof(uuid_t)) == 0)
+			break;
+	}
+
+	/* determine buffer size */
+	list_for_each_entry(e, &fip_image->entries, list) {
+		uint64_t this_end = e->entry.offset_address + e->entry.size;
+
+		if (this_end > total)
+			total = this_end;
+		n_entries++;
+	}
+
+	fip_headers_size = n_entries * sizeof(struct fip_toc_entry) + sizeof(fip_toc_header_t);
+
+	total -= fip_headers_size;
+
+	fip_image->buf = malloc(total);
+	if (!fip_image->buf) {
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	ret = read_full(fd, fip_image->buf, total);
+	if (ret < 0)
+		goto err;
+
+	if (ret < total) {
+		ret = -ENODATA;
+		goto err;
 	}
 
-	size = read_file_into_buf("/boot/optee.bin", optee, SZ_32M);
+	close(fd);
+
+	list_for_each_entry(e, &fip_image->entries, list)
+		e->entry.offset_address -= fip_headers_size;
+
+	return fip_image;
+err:
+	close(fd);
+	fip_image_free(fip_image);
+
+	return ERR_PTR(ret);
+}
+
+static void fip_copy(struct fip_image *fip_image)
+{
+	struct fip_image_entry *e;
+	void *buf = fip_image->buf;
+
+	list_for_each_entry(e, &fip_image->entries, list) {
+		struct fip_toc_entry *toc_entry = &e->entry;
+
+		if (!memcmp(&toc_entry->uuid, &uuid_bl31, sizeof(uuid_t))) {
+			memcpy(BL31_ADDRESS, buf + toc_entry->offset_address, toc_entry->size);
+			have_bl31 = true;
+		}
+
+		if (!memcmp(&toc_entry->uuid, &uuid_bl33, sizeof(uuid_t))) {
+			memcpy(BAREBOX_ADDRESS, buf + toc_entry->offset_address, toc_entry->size);
+			have_bl33 = true;
+		}
+
+		if (!memcmp(&toc_entry->uuid, &uuid_bl32, sizeof(uuid_t))) {
+			memcpy(BL32_ADDRESS, buf + toc_entry->offset_address, toc_entry->size);
+			have_bl32 = true;
+		}
+
+		if (!memcmp(&toc_entry->uuid, &uuid_ti_dm_fw, sizeof(uuid_t))) {
+			k3_ti_dm = xmemdup(buf + toc_entry->offset_address, toc_entry->size);
+		}
+	}
+}
+
+static int load_fip(const char *filename, off_t offset)
+{
+	struct fip_image *fip_image;
+
+	fip_image = open_fip(filename, offset);
+	if (IS_ERR(fip_image)) {
+		pr_err("Cannot open FIP image: %pe\n", fip_image);
+		return PTR_ERR(fip_image);
+	}
+
+	fip_copy(fip_image);
+
+	fip_image_free(fip_image);
+
+	return 0;
+}
+
+static void do_dfu(void)
+{
+	struct usbgadget_funcs funcs = {};
+	int ret;
+	struct stat s;
+	ssize_t size;
+
+	funcs.flags |= USBGADGET_DFU;
+	funcs.dfu_opts = "/optee.bin(optee)c,"
+			 "/bl31.bin(tfa)c,"
+			 "/ti-dm.bin(ti-dm)c,"
+			 "/barebox.bin(barebox)cs,"
+			 "/fip.img(fip)cs";
+
+	ret = usbgadget_prepare_register(&funcs);
+	if (ret)
+		goto err;
+
+	while (1) {
+		if (!have_bl32) {
+			size = read_file_into_buf("/optee.bin", BL32_ADDRESS, SZ_32M);
+			if (size > 0) {
+				printf("Downloaded OP-TEE\n");
+				have_bl32 = true;
+			}
+		}
+
+		if (!have_bl31) {
+			size = read_file_into_buf("/bl31.bin", BL31_ADDRESS, SZ_32M);
+			if (size > 0) {
+				printf("Downloaded TF-A\n");
+				have_bl31 = true;
+			}
+		}
+
+		if (!k3_ti_dm) {
+			ret = read_file_2("/ti-dm.bin", &size, &k3_ti_dm, FILESIZE_MAX);
+			if (!ret) {
+				printf("Downloaded TI-DM\n");
+			}
+		}
+
+		size = read_file_into_buf("/barebox.bin", BAREBOX_ADDRESS, SZ_32M);
+		if (size > 0) {
+			have_bl33 = true;
+			printf("Downloaded barebox image, DFU done\n");
+			break;
+		}
+
+		ret = stat("/fip.img", &s);
+		if (!ret) {
+			printf("Downloaded FIP image, DFU done\n");
+			load_fip("/fip.img", 0);
+			break;
+		}
+
+		command_slice_release();
+		mdelay(50);
+		command_slice_acquire();
+	};
+
+	return;
+
+err:
+	pr_err("DFU failed with: %pe\n", ERR_PTR(ret));
+}
+
+static int load_images(void)
+{
+	ssize_t size;
+	int err;
+
+	err = load_fip("/boot/k3.fip", 0);
+	if (!err)
+		return 0;
+
+	size = read_file_into_buf("/boot/optee.bin", BL32_ADDRESS, SZ_32M);
 	if (size < 0) {
 		if (size != -ENOENT) {
 			pr_err("Cannot load optee.bin: %pe\n", ERR_PTR(size));
@@ -256,31 +502,89 @@ static int k3_r5_start_image(void)
 		}
 		pr_info("optee.bin not found, continue without\n");
 	} else {
-		pr_debug("Loaded optee.bin (size %u) to 0x%p\n", size, optee);
+		pr_debug("Loaded optee.bin (size %u) to 0x%p\n", size, BL32_ADDRESS);
 	}
 
-	size = read_file_into_buf("/boot/barebox.bin", barebox, optee - barebox);
+	size = read_file_into_buf("/boot/barebox.bin", BAREBOX_ADDRESS, SZ_32M);
 	if (size < 0) {
 		pr_err("Cannot load barebox.bin: %pe\n", ERR_PTR(size));
 		return size;
 	}
-	pr_debug("Loaded barebox.bin (size %u) to 0x%p\n", size, barebox);
+	pr_debug("Loaded barebox.bin (size %u) to 0x%p\n", size, BAREBOX_ADDRESS);
 
-	size = read_file_into_buf("/boot/bl31.bin", bl31, barebox - optee);
+	size = read_file_into_buf("/boot/bl31.bin", BL31_ADDRESS, SZ_32M);
 	if (size < 0) {
 		pr_err("Cannot load bl31.bin: %pe\n", ERR_PTR(size));
 		return size;
 	}
-	pr_debug("Loaded bl31.bin (size %u) to 0x%p\n", size, bl31);
+	pr_debug("Loaded bl31.bin (size %u) to 0x%p\n", size, BL31_ADDRESS);
 
-	err = read_file_2("/boot/ti-dm.bin", &size, &ti_dm_buf, FILESIZE_MAX);
+	err = read_file_2("/boot/ti-dm.bin", &size, &k3_ti_dm, FILESIZE_MAX);
 	if (err) {
 		pr_err("Cannot load ti-dm.bin: %pe\n", ERR_PTR(err));
 		return err;
 	}
 	pr_debug("Loaded ti-dm.bin (size %u)\n", size);
 
-	elf = elf_open_binary(ti_dm_buf);
+	return 0;
+}
+
+static int load_fip_emmc(void)
+{
+	int bootpart;
+	struct mci *mci;
+	char *fname;
+	const char *mmcdev = "mmc0";
+
+	device_detect_by_name(mmcdev);
+
+	mci = mci_get_device_by_name(mmcdev);
+	if (!mci)
+		return -EINVAL;
+
+	bootpart = mci->bootpart;
+
+	if (bootpart != 1 && bootpart != 2) {
+		pr_err("Unexpected bootpart value %d\n", bootpart);
+		bootpart = 1;
+	}
+
+	fname = xasprintf("/dev/%s.boot%d", mmcdev, bootpart - 1);
+
+	load_fip(fname, K3_EMMC_BOOTPART_TIBOOT3_BIN_SIZE);
+
+	free(fname);
+
+	return 0;
+}
+
+static int k3_r5_start_image(void)
+{
+	int err;
+	struct firmware fw;
+	const struct ti_sci_handle *ti_sci;
+	struct elf_image *elf;
+	void __noreturn (*ti_dm)(void);
+	struct rproc *arm64_rproc;
+
+	if (IS_ENABLED(CONFIG_USB_GADGET_DFU) && bootsource_get() == BOOTSOURCE_SERIAL)
+		do_dfu();
+	else if (k3_boot_is_emmc())
+		load_fip_emmc();
+	else
+		load_images();
+
+	ti_sci = ti_sci_get_handle(NULL);
+	if (IS_ERR(ti_sci))
+		return -EINVAL;
+
+	arm64_rproc = ti_k3_am64_get_handle();
+	if (!arm64_rproc) {
+		pr_err("Cannot get rproc handle\n");
+		return -EINVAL;
+	}
+
+	elf = elf_open_binary(k3_ti_dm);
 	if (IS_ERR(elf)) {
 		pr_err("Cannot open ELF image %pe\n", elf);
 		return PTR_ERR(elf);
@@ -292,9 +596,9 @@ static int k3_r5_start_image(void)
 		elf_close(elf);
 	}
 
-	free(ti_dm_buf);
+	free(k3_ti_dm);
 
-	fw.data = bl31;
+	fw.data = BL31_ADDRESS;
 
 	/* Release all the exclusive devices held by SPL before starting ATF */
 	pr_info("Starting TF-A on A53 core\n");
@@ -324,3 +628,4 @@ static int xload(void)
 	hang();
 }
 postenvironment_initcall(xload);
+#endif /* IN_PROPER */
diff --git a/include/mach/k3/common.h b/include/mach/k3/common.h
index 7f0796f7f4..14dfc4a28a 100644
--- a/include/mach/k3/common.h
+++ b/include/mach/k3/common.h
@@ -2,6 +2,11 @@
 #define __MACH_K3_COMMON_H
 
 #include <bootsource.h>
+#include <linux/sizes.h>
+#include <linux/uuid.h>
+
+#define UUID_TI_DM_FW \
+        UUID_INIT(0x9e8c2017, 0x8b94, 0x4e2b, 0xa7, 0xb3, 0xa0, 0xf8, 0x8e, 0xab, 0xb8, 0xae)
 
 void am625_get_bootsource(enum bootsource *src, int *instance);
 bool k3_boot_is_emmc(void);
@@ -9,4 +14,6 @@ u64 am625_sdram_size(void);
 void am625_register_dram(void);
 void am625_enable_32k_crystal(void);
 
+#define K3_EMMC_BOOTPART_TIBOOT3_BIN_SIZE	SZ_1M
+
 #endif /* __MACH_K3_COMMON_H */

-- 
2.39.5



