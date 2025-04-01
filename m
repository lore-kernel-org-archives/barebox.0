Delivery-date: Tue, 01 Apr 2025 13:09:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZUQ-006y1x-0F
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 13:09:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZUP-0004VD-4l
	for lore@pengutronix.de; Tue, 01 Apr 2025 13:09:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kENyRrVAnozx3N4AzjL9JjXfQqOptQ7zfiU8QixSN7A=; b=uRrWKtYCow6+xlf4/26YY93bka
	l1qxwwC5BFhyjJ2hZpaFnlabevtSnD2tjzYvrv85JdAK0P61JsBDvuyGigyyNgkYCIpdOP5Ir2D0Z
	40syVEOLrDadun0ggFwVPWC9yYACRKkJsfTn11uxY50nroxhHDe3O+StEMAuRM729wTH05R7OargH
	rx82rEWSeTfCIFEMY3ywX3iP5tu1qtNxPOhkHyGu2nx2q9+XWAVUiqCrI5/gXLPHtaymU+mvuYym9
	WyLApY7yYKZg5sEOgIQuIfbJa+nLc8fe9FKHTBVQaDWf/PA5es2N/LMgecaUjNRrzhMKt9Thu2qvV
	Q7u6bUWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZTx-00000002jyS-0GB3;
	Tue, 01 Apr 2025 11:08:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZQA-00000002igG-0J1U
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 11:04:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZQ8-0002XK-Ry; Tue, 01 Apr 2025 13:04:40 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZQ8-002kdJ-2A;
	Tue, 01 Apr 2025 13:04:40 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-00GcAa-28;
	Tue, 01 Apr 2025 12:48:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Apr 2025 12:48:01 +0200
Message-Id: <20250401104806.3959859-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
References: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_040442_351331_1944E887 
X-CRM114-Status: GOOD (  20.30  )
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
Subject: [PATCH 11/16] block: fixup rootwait argument when needed by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The rootwait command-line option is usually added to the bootloader spec
options line, which is a bit out-of-place in combination with
linux-appendroot as it hardcodes an assumption about what device the
bootloader spec entries are installed to.

Instead, allow barebox to fix it up on demand, when booting from SD/MMC,
USB or NFS.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig               | 11 +++++++++++
 common/block.c               |  5 +++++
 common/bootargs.c            | 12 ++++++++++++
 common/bootm.c               |  5 +++++
 drivers/block/efi-block-io.c | 10 +++++++---
 drivers/mci/mci-core.c       |  1 +
 drivers/usb/storage/usb.c    |  1 +
 fs/nfs.c                     |  4 ++++
 include/block.h              |  1 +
 include/bootargs.h           |  7 +++++++
 10 files changed, 54 insertions(+), 3 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index f0cd2f0729a4..4d2a2a73f39b 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -781,6 +781,17 @@ config FLEXIBLE_BOOTARGS
 	  to replace parts of the bootargs string without reconstructing it
 	  completely.
 
+config ROOTWAIT_BOOTARG
+	def_bool y
+	prompt "fixup 'rootwait' into kernel command-line when needed"
+	depends on FLEXIBLE_BOOTARGS
+	help
+	  Adds a rootwait= argument into the kernel command-line argument
+	  for boot media that requires it, like USB, SD/MMC or NFS.
+	  The duration chosen is controlled by the linux.rootwait
+	  parameter and defaults to 10 seconds. Setting the variable
+	  to 0 will wait indefinitely.
+
 config MMCBLKDEV_ROOTARG
 	bool
 	prompt "Support 'root=mmcblkXpN' cmdline appending"
diff --git a/common/block.c b/common/block.c
index 7066abc5f404..d401e979abff 100644
--- a/common/block.c
+++ b/common/block.c
@@ -12,6 +12,7 @@
 #include <linux/list.h>
 #include <dma.h>
 #include <range.h>
+#include <bootargs.h>
 #include <file-list.h>
 
 LIST_HEAD(block_device_list);
@@ -609,5 +610,9 @@ char *cdev_get_linux_rootarg(const struct cdev *partcdev)
 	if (!rootarg && partcdev->partuuid[0] != 0)
 		rootarg = basprintf("root=PARTUUID=%s", partcdev->partuuid);
 
+	if (IS_ENABLED(CONFIG_ROOTWAIT_BOOTARG) && blk->rootwait)
+		rootarg = linux_bootargs_append_rootwait(rootarg);
+
 	return rootarg;
 }
+
diff --git a/common/bootargs.c b/common/bootargs.c
index c49136609f48..ad8007d32a42 100644
--- a/common/bootargs.c
+++ b/common/bootargs.c
@@ -75,6 +75,18 @@ int linux_bootargs_overwrite(const char *bootargs)
 	return 0;
 }
 
+char *linux_bootargs_append_rootwait(char *rootarg_old)
+{
+	char *rootarg = xasprintf("%s rootwait=%d",
+				  rootarg_old, linux_rootwait_secs);
+	free(rootarg_old);
+	return rootarg;
+}
+
+
 BAREBOX_MAGICVAR(global.linux.bootargs.*, "Linux bootargs variables");
 BAREBOX_MAGICVAR(global.linux.mtdparts.*, "Linux mtdparts variables");
 BAREBOX_MAGICVAR(global.linux.blkdevparts.*, "Linux blkdevparts variables");
+#ifdef CONFIG_ROOTWAIT_BOOTARG
+BAREBOX_MAGICVAR(global.linux.rootwait, "Argument (in seconds) for Linux rootwait= option if it's fixed up. A negative value waits indefinitely");
+#endif
diff --git a/common/bootm.c b/common/bootm.c
index e781b48b0e7d..db79e145c9f3 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -1096,6 +1096,8 @@ static struct image_handler zstd_bootm_handler = {
 	.filetype = filetype_zstd_compressed,
 };
 
+int linux_rootwait_secs = 10;
+
 static int bootm_init(void)
 {
 	globalvar_add_simple("bootm.image", NULL);
@@ -1121,6 +1123,9 @@ static int bootm_init(void)
 	globalvar_add_simple_enum("bootm.verify", (unsigned int *)&bootm_verify_mode,
 				  bootm_verify_names, ARRAY_SIZE(bootm_verify_names));
 
+	if (IS_ENABLED(CONFIG_ROOTWAIT_BOOTARG))
+		globalvar_add_simple_int("linux.rootwait",
+					 &linux_rootwait_secs, "%d");
 
 	if (IS_ENABLED(CONFIG_BZLIB))
 		register_image_handler(&bzip2_bootm_handler);
diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index 2f439d89419e..1c2d801a42ef 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -108,12 +108,12 @@ static void efi_bio_print_info(struct device *dev)
 
 static bool is_bio_usbdev(struct efi_device *efidev)
 {
-	return IS_ENABLED(CONFIG_EFI_BLK_SEPARATE_USBDISK) &&
-		efi_device_has_guid(efidev, EFI_USB_IO_PROTOCOL_GUID);
+	return efi_device_has_guid(efidev, EFI_USB_IO_PROTOCOL_GUID);
 }
 
 static int efi_bio_probe(struct efi_device *efidev)
 {
+	bool is_usbdev;
 	int instance;
 	struct efi_bio_priv *priv;
 	struct efi_block_io_media *media;
@@ -134,7 +134,11 @@ static int efi_bio_probe(struct efi_device *efidev)
 		efi_bio_print_info(dev);
 	priv->dev = &efidev->dev;
 
-	if (is_bio_usbdev(efidev)) {
+	is_usbdev = is_bio_usbdev(efidev);
+	if (is_usbdev)
+		priv->blk.rootwait = true;
+
+	if (IS_ENABLED(CONFIG_EFI_BLK_SEPARATE_USBDISK) && is_usbdev) {
 		instance = cdev_find_free_index("usbdisk");
 		priv->blk.cdev.name = xasprintf("usbdisk%d", instance);
 	} else {
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index aae63484a09b..2c82379b0d73 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2659,6 +2659,7 @@ static int mci_register_partition(struct mci_part *part)
 	part->blk.dev = &mci->dev;
 	part->blk.ops = &mci_ops;
 	part->blk.type = IS_SD(mci) ? BLK_TYPE_SD : BLK_TYPE_MMC;
+	part->blk.rootwait = true;
 
 	if (part->area_type == MMC_BLK_DATA_AREA_RPMB)
 		return 0;
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index cc241e69be1b..e106174f37d8 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -422,6 +422,7 @@ static int usb_stor_add_blkdev(struct us_data *us, unsigned char lun)
 	pblk_dev->blk.cdev.name = basprintf("disk%d", result);
 	pblk_dev->blk.blockbits = SECTOR_SHIFT;
 	pblk_dev->blk.type = BLK_TYPE_USB;
+	pblk_dev->blk.rootwait = true;
 
 	result = blockdevice_register(&pblk_dev->blk);
 	if (result != 0) {
diff --git a/fs/nfs.c b/fs/nfs.c
index bc3ab3aa8e87..4311971c479d 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -34,6 +34,7 @@
 #include <byteorder.h>
 #include <globalvar.h>
 #include <parseopt.h>
+#include <bootargs.h>
 #include <magicvar.h>
 
 #define SUNRPC_PORT     111
@@ -1423,6 +1424,9 @@ static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device *fsdev)
 		str = tmp;
 	}
 
+	if (IS_ENABLED(CONFIG_ROOTWAIT_BOOTARG))
+		str = linux_bootargs_append_rootwait(str);
+
 	fsdev_set_linux_rootarg(fsdev, str);
 
 	free(str);
diff --git a/include/block.h b/include/block.h
index a992eba43191..0ca6c6aff6e9 100644
--- a/include/block.h
+++ b/include/block.h
@@ -44,6 +44,7 @@ struct block_device {
 	struct block_device_ops *ops;
 	u8 blockbits;
 	u8 type; /* holds enum blk_type */
+	u8 rootwait:1;
 	blkcnt_t num_blocks;
 	int rdbufsize;
 	int blkmask;
diff --git a/include/bootargs.h b/include/bootargs.h
index c85fd4c4a797..1cf88bd38056 100644
--- a/include/bootargs.h
+++ b/include/bootargs.h
@@ -4,9 +4,12 @@
 
 #include <environment.h>
 
+extern int linux_rootwait_secs;
+
 #ifdef CONFIG_FLEXIBLE_BOOTARGS
 const char *linux_bootargs_get(void);
 int linux_bootargs_overwrite(const char *bootargs);
+char *linux_bootargs_append_rootwait(char *rootarg_old);
 #else
 static inline const char *linux_bootargs_get(void)
 {
@@ -17,6 +20,10 @@ static inline int linux_bootargs_overwrite(const char *bootargs)
 {
 	return setenv("bootargs", bootargs);
 }
+static inline char *linux_bootargs_append_rootwait(char *rootarg)
+{
+	return rootarg;
+}
 #endif
 
 #endif /* __BOOTARGS_H */
-- 
2.39.5



