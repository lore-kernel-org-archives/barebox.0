Delivery-date: Thu, 30 Jan 2025 13:29:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdTgB-006Kuh-1j
	for lore@lore.pengutronix.de;
	Thu, 30 Jan 2025 13:29:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdTgB-0004pA-2o
	for lore@pengutronix.de; Thu, 30 Jan 2025 13:29:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uIuLSbigt/0CPVCFycB0H8eTim0ZxHMClYby9QBEm1A=; b=yI8A9Uua4tdMEcTP0ClPGPGYs2
	VPyZliuusibQqy11R0g1XUWneVV/JZubKMiwhNQnsgtMhCEa98kadlV7JUgSCGXhv7ZwCDOKoudvv
	6RO1DGGp8pxInEmkeqp6PTAb3PsMuU8rj/CJ40UHZwWhiNdBJRSy6J8OSedlLkc0aUPql28ONQXg7
	/SIEYr/IGEn/70Wom6RXNFJaDDUdZVcC8/rWBcU4DG8EJv6YBmBpD+4e5EupAqg6U8bJQbUsbG/QZ
	rFyLYWNaBX/ZwqVVGpoh+tDnMHxy2doLNlMD9AOiYIzdiMPfVNTrCbOusgJSzmpmz80KEJFA1WK+1
	KrUMvBkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdTfh-00000008lgM-2UVv;
	Thu, 30 Jan 2025 12:29:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdTfe-00000008lfy-1EVg
	for barebox@lists.infradead.org;
	Thu, 30 Jan 2025 12:29:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tdTfd-0004k1-1O; Thu, 30 Jan 2025 13:29:21 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tdTfc-002d7D-2i;
	Thu, 30 Jan 2025 13:29:20 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tdTfc-00Fz9Q-2F;
	Thu, 30 Jan 2025 13:29:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 30 Jan 2025 13:29:17 +0100
Message-Id: <20250130122917.3809977-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250130_042922_489880_3FD9EA44 
X-CRM114-Status: GOOD (  27.53  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: k3: r5: add USB DFU support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch adds USB support for the k3 SoCs. DFU mode is entered when
the SoC is booted from USB. For continuing the boot we need several
binaries (bl31, OP-TEE, barebox, ti-dm firmware), these can be uploaded
as distinct files or combined together as a FIP image. This patch
also adds the possibility to put a FIP image on the SD/eMMC card which
is then preferred over the distinct files which were previously expected
on SD/eMMC cards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/ti-k3.rst |  35 +++++
 arch/arm/mach-k3/r5.c          | 231 ++++++++++++++++++++++++++++-----
 2 files changed, 236 insertions(+), 30 deletions(-)

diff --git a/Documentation/boards/ti-k3.rst b/Documentation/boards/ti-k3.rst
index a1bf0b92e8..7962491e41 100644
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
 
@@ -77,3 +80,35 @@ copied to the eMMC/SD as well::
 
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
diff --git a/arch/arm/mach-k3/r5.c b/arch/arm/mach-k3/r5.c
index ae2c8607e5..9bb2aeb6b6 100644
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
@@ -14,6 +15,8 @@
 #include <asm/cache.h>
 #include <linux/sizes.h>
 #include <barebox.h>
+#include <bootsource.h>
+#include <linux/usb/gadget-multi.h>
 
 #define CTRLMMR_LOCK_KICK0_UNLOCK_VAL	0x68ef3490
 #define CTRLMMR_LOCK_KICK1_UNLOCK_VAL	0xd172bc5a
@@ -179,34 +182,175 @@ void am625_early_init(void)
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
+#define UUID_TI_DM_FW \
+        UUID_INIT(0x9e8c2017, 0x8b94, 0x4e2b, 0xa7, 0xb3, 0xa0, 0xf8, 0x8e, 0xab, 0xb8, 0xae)
+
+static uuid_t uuid_bl31 = UUID_EL3_RUNTIME_FIRMWARE_BL31;
+static uuid_t uuid_ti_dm_fw = UUID_TI_DM_FW;
+static uuid_t uuid_bl33 = UUID_NON_TRUSTED_FIRMWARE_BL33;
+static uuid_t uuid_bl32 = UUID_SECURE_PAYLOAD_BL32;
+
+static int load_fip(const char *filename)
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
+	void *buf, *bufend;
+	fip_toc_header_t *toc_header;
+	fip_toc_entry_t *toc_entry;
+	size_t st_size;
+	int ret;
 
-	ti_sci = ti_sci_get_handle(NULL);
-	if (IS_ERR(ti_sci))
-		return -EINVAL;
+	ret = read_file_2(filename, &st_size, &buf, FILESIZE_MAX);
+	if (ret)
+		return ret;
 
-	arm64_rproc = ti_k3_am64_get_handle();
-	if (!arm64_rproc) {
-		pr_err("Cannot get rproc handle\n");
+	bufend = buf + st_size;
+
+	if (st_size < sizeof(fip_toc_header_t)) {
+		pr_err("FIP %s is truncated\n", filename);
+		return -ENODATA;
+	}
+
+	toc_header = (fip_toc_header_t *)buf;
+	toc_entry = (fip_toc_entry_t *)(toc_header + 1);
+
+	if (toc_header->name != TOC_HEADER_NAME) {
+		pr_err("%s is not a FIP file: unknown magic = 0x%08x\n",
+		       filename, toc_header->name);
 		return -EINVAL;
 	}
 
-	size = read_file_into_buf("/boot/optee.bin", optee, SZ_32M);
+	while ((void *)toc_entry + sizeof(*toc_entry) - 1 < bufend) {
+		/* Found the ToC terminator, we are done. */
+		if (memcmp(&toc_entry->uuid, &uuid_null, sizeof(uuid_t)) == 0)
+			break;
+
+		/* Overflow checks before memory copy. */
+		if (toc_entry->size > (uint64_t)-1 - toc_entry->offset_address) {
+			pr_err("FIP %s is corrupted: entry size exceeds 64 bit address space\n",
+			       filename);
+			ret = -EINVAL;
+			break;
+		}
+		if (toc_entry->size + toc_entry->offset_address > st_size) {
+			pr_err("FIP %s is corrupted: entry size (0x%llx) exceeds FIP file size (0x%zx)\n",
+				filename, toc_entry->size + toc_entry->offset_address, st_size);
+			ret = -EINVAL;
+			break;
+		}
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
+
+		toc_entry++;
+	}
+
+	free(buf);
+
+	return ret;
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
+			load_fip("/fip.img");
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
+	err = load_fip("/boot/k3.fip");
+	if (!err)
+		return 0;
+
+	size = read_file_into_buf("/boot/optee.bin", BL32_ADDRESS, SZ_32M);
 	if (size < 0) {
 		if (size != -ENOENT) {
 			pr_err("Cannot load optee.bin: %pe\n", ERR_PTR(size));
@@ -214,31 +358,58 @@ static int k3_r5_start_image(void)
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
@@ -250,9 +421,9 @@ static int k3_r5_start_image(void)
 		elf_close(elf);
 	}
 
-	free(ti_dm_buf);
+	free(k3_ti_dm);
 
-	fw.data = bl31;
+	fw.data = BL31_ADDRESS;
 
 	/* Release all the exclusive devices held by SPL before starting ATF */
 	pr_info("Starting TF-A on A53 core\n");
-- 
2.39.5



