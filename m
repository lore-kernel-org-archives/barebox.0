Delivery-date: Wed, 12 Feb 2025 15:33:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDoO-001Snu-0h
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:33:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDoM-0006Ta-01
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:33:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rX8Ks9OISRqsnWD0GLoHxW0pj+J75aNSrqUVLmk+F5Y=; b=3IbS1an9PgFEJqnKPS7CSt6o6x
	qdE0yl/Zb+eT0OqXuduM+kIkBsKXhY0fozdz1Yqd8RKJnGsopSpBpzIC68OV9xjT5BvlZ93zmH1tR
	ZUmYfsCFXsceSlvf/cH+Y9+BHmGsIFOtu1O0HD7qLxmjCM6WNgKmoa3x9xfrPMgVsvxDmTaoaNuzg
	3Qh44+siDVLfQNi+0nGt5PtduKY0VDPsS/2DxUEaOZzBJlv45GusRtWzb7RSGUdRxESC2eyrBEbGu
	9GFtZL4pIwgye5aWQiDWsilqVU7N4FqW4G9962CjqwEpRslpKr/vVcr+zIS/Uf5Ir+1fiGwibYEM3
	5oA790sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDnn-00000007gKf-0LPU;
	Wed, 12 Feb 2025 14:33:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDnf-00000007gAt-2ex3
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:33:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDne-0005pq-0j; Wed, 12 Feb 2025 15:33:14 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDnd-000bGl-2g;
	Wed, 12 Feb 2025 15:33:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-00AeO5-1u;
	Wed, 12 Feb 2025 15:09:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Feb 2025 15:09:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-k3-emmc-v2-10-8dd1bb0ce60a@pengutronix.de>
References: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
In-Reply-To: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739369370; l=12605;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=q5r2p2xweImUQacvxwMEWr/gjCuWjchUpyEdROz5Slg=;
 b=1LfZqBVZ30qkeGkId/Pos2LE8+XpO2tPcOGKEoPOCyurb9EkKTMUtxIl5EfghE1zOKCLx7ZYJ
 ara3IgMdXKZDOdkjT5p1dxdfj/MIHGiazy5HcxTn8lrI4BU6Ba8yg0U
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_063315_995789_7E6F1EE0 
X-CRM114-Status: GOOD (  32.15  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/20] ARM: k3: r5: add USB DFU and eMMC boot support
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
 Documentation/boards/ti-k3.rst |  47 +++++++++
 arch/arm/mach-k3/Kconfig       |   1 +
 arch/arm/mach-k3/r5.c          | 232 +++++++++++++++++++++++++++++++++++------
 include/mach/k3/common.h       |   7 ++
 4 files changed, 256 insertions(+), 31 deletions(-)

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
diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
index 51b02b697c..50919dc7e3 100644
--- a/arch/arm/mach-k3/Kconfig
+++ b/arch/arm/mach-k3/Kconfig
@@ -15,6 +15,7 @@ config MACH_K3_CORTEX_R5
 	select ARMV7R_MPU
 	select ELF
 	select K3_DDRSS
+	select FIP
 	depends on 32BIT
 	select ARM_USE_COMPRESSED_DTB
 	default y
diff --git a/arch/arm/mach-k3/r5.c b/arch/arm/mach-k3/r5.c
index 32d98fe89a..ced1eb2856 100644
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
@@ -14,6 +15,11 @@
 #include <asm/cache.h>
 #include <linux/sizes.h>
 #include <barebox.h>
+#include <bootsource.h>
+#include <linux/usb/gadget-multi.h>
+#include <mach/k3/common.h>
+#include <mci.h>
+#include <fiptool.h>
 
 #define RTC_BASE_ADDRESS		0x2b1f0000
 #define K3RTC_KICK0_UNLOCK_VALUE	0x83e70b13
@@ -217,38 +223,143 @@ void am625_early_init(void)
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
+static int load_fip(const char *filename, off_t offset)
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
+	struct fip_state *fip;
+	struct fip_image_desc *desc;
 
-	ti_sci = ti_sci_get_handle(NULL);
-	if (IS_ERR(ti_sci))
-		return -EINVAL;
+	fip = fip_image_open(filename, offset);
+	if (IS_ERR(fip)) {
+		pr_err("Cannot open FIP image: %pe\n", fip);
+		return PTR_ERR(fip);
+	}
 
-	arm64_rproc = ti_k3_am64_get_handle();
-	if (!arm64_rproc) {
-		pr_err("Cannot get rproc handle\n");
-		return -EINVAL;
+	fip_for_each_desc(fip, desc) {
+		struct fip_toc_entry *toc_entry = &desc->image->toc_e;
+
+		if (uuid_equal(&toc_entry->uuid, &uuid_bl31)) {
+			memcpy(BL31_ADDRESS, desc->image->buffer, toc_entry->size);
+			have_bl31 = true;
+		}
+
+		if (uuid_equal(&toc_entry->uuid, &uuid_bl33)) {
+			memcpy(BAREBOX_ADDRESS, desc->image->buffer, toc_entry->size);
+			have_bl33 = true;
+		}
+
+		if (uuid_equal(&toc_entry->uuid, &uuid_bl32)) {
+			memcpy(BL32_ADDRESS, desc->image->buffer, toc_entry->size);
+			have_bl32 = true;
+		}
+
+		if (uuid_equal(&toc_entry->uuid, &uuid_ti_dm_fw)) {
+			k3_ti_dm = xmemdup(desc->image->buffer, toc_entry->size);
+		}
 	}
 
-	size = read_file_into_buf("/boot/optee.bin", optee, SZ_32M);
+	fip_free(fip);
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
@@ -256,31 +367,89 @@ static int k3_r5_start_image(void)
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
@@ -292,9 +461,9 @@ static int k3_r5_start_image(void)
 		elf_close(elf);
 	}
 
-	free(ti_dm_buf);
+	free(k3_ti_dm);
 
-	fw.data = bl31;
+	fw.data = BL31_ADDRESS;
 
 	/* Release all the exclusive devices held by SPL before starting ATF */
 	pr_info("Starting TF-A on A53 core\n");
@@ -324,3 +493,4 @@ static int xload(void)
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



