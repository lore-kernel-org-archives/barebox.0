Delivery-date: Thu, 18 Dec 2025 12:39:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCLy-00CoQd-2E
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:39:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCLK-0001J0-W1
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:39:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a4+iL92j35VL0+ANG5aHRhyxcOzQwh5iT6/Q/4OPA0U=; b=RK1Wrxl+NKc6RWlKz/J9jU3CXS
	JhXkymOlK7lcAyFjsKrOgOTuNlfQXWi455YXAJBCRrh/gLhn0WZsYmHQzuvDGZgBRrj1ieYZsmHiJ
	TF9GLq0UgCcKxRsZV6I84HMar2CiVPN2hSu1BThe/izRVFwXWl+dbbH0c/cu6HPUXV79wXgDsd9Br
	0PruMQN3x6/iSJ8jd8wunz0sIWQrPEkOOIZG92KMAs0SfZOMNYxF7SnSQNiudV29BwITADAveBQV0
	zklWAQ16ffsxgla3G8KhSNP00Deoryxdub+oigFkySxUHzq2KtLtI0UNBcaJsuMvRLDwPx3IezWpN
	ZDSVWTyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJl-00000008KbR-36zt;
	Thu, 18 Dec 2025 11:37:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJW-00000008KLz-1zdt
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:36:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=a4+iL92j35VL0+ANG5aHRhyxcOzQwh5iT6/Q/4OPA0U=; b=Hin+sQvZq8ArqVIeGixUTOoMVy
	jAR0M47O6txGWr4kwsoAy2lNfs68G+H395io5daho3FGN6Jz6p5qzpGS/ydMvS3cZFyCW3tx3a1dV
	a3ZuD1pd7oxz+DcaRyyVHFPOQEh5Y0kMSVXuhPGdLIR/bCSgLlaWY1nhq+xWmT3kb0OrwJIrkGe3B
	nuN+Ub/SvAfzbwpwTkPoX8bxXQIXN0WWmXuYdttT7sWRHooh4xB/MrXY+ZaQ2DFHu8bqOitFlimsW
	nfIcJ7qubC3Bc4MDC1JAVQhfRWMyi13nSedzmBen+YKbkhGfocavdQcLgUQ1DhTOnjqWmckOvlGGI
	AIMjlRcw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJR-000000063vv-2rvQ
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJO-0008Fh-QJ; Thu, 18 Dec 2025 12:36:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJO-006Gwo-20;
	Thu, 18 Dec 2025 12:36:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-0qDj;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:44 +0100
Message-ID: <20251218111242.1527495-25-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_113653_832511_EF66409D 
X-CRM114-Status: GOOD (  30.43  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 24/54] efi: loader: protocol: add Block IO support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

EFI firmware does usually not bring its own support for block devices,
so we need to support the Block IO protocol and also use that as hook to
register EFI file systems.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/Kconfig                   |   2 +
 efi/loader/protocols/Makefile |   1 +
 efi/loader/protocols/disk.c   | 401 ++++++++++++++++++++++++++++++++++
 include/efi/loader.h          |   2 +
 4 files changed, 406 insertions(+)
 create mode 100644 efi/loader/protocols/disk.c

diff --git a/efi/Kconfig b/efi/Kconfig
index 792073a9ef24..9c559207e95c 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -33,6 +33,8 @@ config EFI_LOADER
 	select EFI_GUID
 	select EFI_DEVICEPATH
 	select CHARSET
+	select BLOCK
+	select PARTITION_DISK
 	select MEMORY_ATTRIBUTES
 	select CRC32
 	help
diff --git a/efi/loader/protocols/Makefile b/efi/loader/protocols/Makefile
index 7cd92eb0bb54..91bea23677e9 100644
--- a/efi/loader/protocols/Makefile
+++ b/efi/loader/protocols/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 
 obj-$(CONFIG_FS) += file.o
+obj-$(CONFIG_DISK) += disk.o
diff --git a/efi/loader/protocols/disk.c b/efi/loader/protocols/disk.c
new file mode 100644
index 000000000000..cb1771e0cf99
--- /dev/null
+++ b/efi/loader/protocols/disk.c
@@ -0,0 +1,401 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/2fdfb802e30a1fbd65a830a283d7bd87631f08c0/lib/efi_loader/efi_disk.c
+/*
+ *  EFI application disk support
+ *
+ *  Copyright (c) 2016 Alexander Graf
+ */
+
+#define pr_fmt(fmt) "efi-loader: disk: " fmt
+
+#include <efi/loader.h>
+#include <efi/devicepath.h>
+#include <efi/guid.h>
+#include <efi/error.h>
+#include <efi/protocol/block.h>
+#include <efi/loader/object.h>
+#include <efi/loader/devicepath.h>
+#include <efi/loader/file.h>
+#include <efi/loader/trace.h>
+#include <efi/partition.h>
+#include <malloc.h>
+#include <bootsource.h>
+#include <block.h>
+#include <fs.h>
+
+const efi_guid_t efi_system_partition_guid = PARTITION_SYSTEM_GUID;
+
+static struct cdev *chosen_esp_cdev;
+static int chosen_esp_dirfd = -1;
+static int max_esp_score;
+
+int efiloader_esp_mount_dir(void)
+{
+	return chosen_esp_dirfd;
+}
+
+/**
+ * struct efi_disk_obj - EFI disk object
+ *
+ * @header:	EFI object header
+ * @ops:	EFI disk I/O protocol interface
+ * @dp:		device path to the block device
+ * @bdev:	internal block device descriptor
+ * @blockbits	of underlying block device
+ */
+struct efi_disk_obj {
+	struct efi_object header;
+	struct efi_block_io_protocol ops;
+	struct efi_block_io_media media;
+	struct efi_device_path *dp;
+	struct cdev *cdev;
+	struct efi_simple_file_system_protocol *volume;
+	u8 blockbits;
+};
+
+#define to_efi_disk_obj(this) container_of(this, struct efi_disk_obj, ops)
+
+/**
+ * efi_disk_reset() - reset block device
+ *
+ * This function implements the Reset service of the EFI_BLOCK_IO_PROTOCOL.
+ *
+ * As barebox block devices do not have a reset function simply return
+ * EFI_SUCCESS.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ *
+ * @this:			pointer to the BLOCK_IO_PROTOCOL
+ * @extended_verification:	extended verification
+ * Return:			status code
+ */
+static efi_status_t EFIAPI efi_disk_reset(struct efi_block_io_protocol *this,
+					  bool extended_verification)
+{
+	EFI_ENTRY("%p, %x", this, extended_verification);
+	return EFI_EXIT(EFI_SUCCESS);
+}
+
+static efi_status_t EFIAPI efi_disk_read(struct efi_block_io_protocol *this,
+					  u32 media_id, u64 lba,
+					  size_t buffer_size, void *buffer)
+{
+	struct efi_disk_obj *disk = to_efi_disk_obj(this);
+	ssize_t ret;
+
+	ret = cdev_read(disk->cdev, buffer, buffer_size, lba << disk->blockbits, 0);
+
+	return ret < 0 ? EFI_DEVICE_ERROR : EFI_SUCCESS;
+}
+
+static efi_status_t EFIAPI efi_disk_write(struct efi_block_io_protocol *this,
+					   u32 media_id, u64 lba,
+					   size_t buffer_size, void *buffer)
+{
+	struct efi_disk_obj *disk = to_efi_disk_obj(this);
+	ssize_t ret;
+
+	ret = cdev_write(disk->cdev, buffer, buffer_size, lba << disk->blockbits, 0);
+
+	return ret ? EFI_DEVICE_ERROR : EFI_SUCCESS;
+}
+
+static efi_status_t EFIAPI efi_disk_flush(struct efi_block_io_protocol *this)
+{
+	return cdev_flush(to_efi_disk_obj(this)->cdev) ? EFI_DEVICE_ERROR : EFI_SUCCESS;
+}
+
+static const struct efi_block_io_protocol block_io_disk_template = {
+	.reset = efi_disk_reset,
+	.read = efi_disk_read,
+	.write = efi_disk_write,
+	.flush = efi_disk_flush,
+};
+
+/**
+ * efi_fs_from_path() - retrieve simple file system protocol
+ *
+ * Gets the simple file system protocol for a file device path.
+ *
+ * The full path provided is split into device part and into a file
+ * part. The device part is used to find the handle on which the
+ * simple file system protocol is installed.
+ *
+ * @full_path:	device path including device and file
+ * Return:	simple file system protocol
+ */
+struct efi_simple_file_system_protocol *
+efi_fs_from_path(struct efi_device_path *full_path)
+{
+	struct efi_object *efiobj;
+	struct efi_handler *handler;
+	struct efi_device_path *device_path;
+	struct efi_device_path *file_path;
+	efi_status_t ret;
+
+	/* Split the path into a device part and a file part */
+	ret = efi_dp_split_file_path(full_path, &device_path, &file_path);
+	if (ret != EFI_SUCCESS)
+		return NULL;
+	efi_free_pool(file_path);
+
+	/* Get the EFI object for the partition */
+	efiobj = efi_dp_find_obj(device_path, NULL, NULL);
+	efi_free_pool(device_path);
+	if (!efiobj)
+		return NULL;
+
+	/* Find the simple file system protocol */
+	ret = efi_search_protocol(efiobj, &efi_simple_file_system_protocol_guid,
+				  &handler);
+	if (ret != EFI_SUCCESS)
+		return NULL;
+
+	/* Return the simple file system protocol for the partition */
+	return handler->protocol_interface;
+}
+
+static bool efi_fs_exists(struct cdev *cdev)
+{
+	struct driver *drv;
+
+	bus_for_each_driver(&fs_bus, drv) {
+		struct fs_driver *fdrv;
+		enum filetype filetype;
+
+		fdrv = drv_to_fs_driver(drv);
+
+		if (cdev_detect_type(cdev, &filetype) == 0 &&
+		    filetype == fdrv->type)
+			return true;
+	}
+
+	return false;
+}
+
+/**
+ * efi_disk_add_dev() - create a handle for a partition or disk
+ *
+ * @parent:		parent handle
+ * @dp_parent:		parent device path
+ * @cdev:		cdev of block device or partition
+ * @disk:		pointer to receive the created handle
+ * @removable:		whether part of a removable block device
+ * Return:		disk object
+ */
+static efi_status_t efi_disk_add_cdev(efi_handle_t parent,
+				struct efi_device_path *dp_parent,
+				struct cdev *cdev,
+				struct efi_disk_obj **disk,
+				bool removable)
+{
+	struct efi_disk_obj *diskobj;
+	struct efi_object *handle;
+	const efi_guid_t *esp_guid = NULL;
+	int score = 0;
+	efi_status_t ret;
+
+	diskobj = calloc(1, sizeof(*diskobj));
+	if (!diskobj)
+		return EFI_OUT_OF_RESOURCES;
+
+	/* Hook up to the device list */
+	efi_add_handle(&diskobj->header);
+
+	/* Fill in object data */
+	if (cdev->flags & DEVFS_PARTITION_FROM_TABLE) {
+		struct efi_device_path *node;
+		struct efi_handler *handler;
+		void *protocol_interface;
+
+		/* Parent must expose EFI_BLOCK_IO_PROTOCOL */
+		ret = efi_search_protocol(parent, &efi_block_io_protocol_guid, &handler);
+		if (ret != EFI_SUCCESS)
+			goto error;
+
+		/*
+		 * Link the partition (child controller) to the block device
+		 * (controller).
+		 */
+		ret = efi_protocol_open(handler, &protocol_interface, NULL,
+					&diskobj->header,
+					EFI_OPEN_PROTOCOL_BY_CHILD_CONTROLLER);
+		if (ret != EFI_SUCCESS)
+			goto error;
+
+		node = efi_dp_from_cdev(cdev, false);
+		diskobj->dp = efi_dp_append_node(dp_parent, node);
+		efi_free_pool(node);
+		if (cdev->flags & DEVFS_PARTITION_BOOTABLE_ESP) {
+			struct cdev *bootcdev;
+
+			esp_guid = &efi_system_partition_guid;
+
+			bootcdev = bootsource_of_cdev_find();
+
+			/* Prefer eMMC over SD if neither is the boot medium */
+			if (removable)
+				score += 1;
+			else
+				score += 2;
+
+			if (bootcdev && bootcdev == cdev)
+				score += 4;
+		}
+	} else {
+		diskobj->dp = efi_dp_from_cdev(cdev, true);
+	}
+
+	/*
+	 * Install the device path and the block IO protocol.
+	 *
+	 * InstallMultipleProtocolInterfaces() checks if the device path is
+	 * already installed on an other handle and returns EFI_ALREADY_STARTED
+	 * in this case.
+	 */
+	handle = &diskobj->header;
+	ret = efi_install_multiple_protocol_interfaces(&handle,
+			&efi_device_path_protocol_guid, diskobj->dp,
+			&efi_block_io_protocol_guid, &diskobj->ops,
+			esp_guid, NULL, NULL);
+	if (ret != EFI_SUCCESS)
+		return ret;
+
+	if ((cdev_is_partition(cdev)|| list_empty(&cdev->partitions)) && efi_fs_exists(cdev)) {
+		diskobj->volume = efi_simple_file_system(cdev, diskobj->dp);
+		ret = efi_add_protocol(&diskobj->header,
+				       &efi_simple_file_system_protocol_guid,
+				       diskobj->volume);
+		if (ret != EFI_SUCCESS)
+			return ret;
+	}
+
+	diskobj->media.removable_media = removable;
+	diskobj->media.media_present = true;
+	diskobj->media.read_only = cdev->flags & DEVFS_PARTITION_READONLY;
+	diskobj->media.block_size = 512;
+	diskobj->media.io_align = 512;
+	diskobj->media.last_block = cdev->size / diskobj->media.block_size - 1;
+
+	diskobj->ops = block_io_disk_template;
+	diskobj->ops.media = &diskobj->media;
+
+	diskobj->cdev = cdev;
+
+	if (disk)
+		*disk = diskobj;
+
+
+	if (score && score > max_esp_score) {
+		max_esp_score = score;
+		chosen_esp_cdev = cdev;
+	}
+
+	return EFI_SUCCESS;
+error:
+	efi_delete_handle(&diskobj->header);
+	return ret;
+}
+
+/**
+ * efi_disk_create_partitions() - create handles and protocols for partitions
+ *
+ * Create handles and protocols for the partitions of a block device.
+ *
+ * @parent:		handle of the parent disk
+ * @bdev:		block device
+ * Return:		number of partitions created
+ */
+static int efi_disk_create_partitions(efi_handle_t parent, struct block_device *bdev)
+{
+	struct cdev *partcdev;
+	int npartitions = 0;
+	struct efi_device_path *dp = NULL;
+	efi_status_t ret;
+	struct efi_handler *handler;
+
+	/* Get the device path of the parent */
+	ret = efi_search_protocol(parent, &efi_device_path_protocol_guid, &handler);
+	if (ret == EFI_SUCCESS)
+		dp = handler->protocol_interface;
+
+	/* Add devices for each partition */
+	for_each_cdev_partition(partcdev, &bdev->cdev) {
+		ret = efi_disk_add_cdev(parent, dp, partcdev, NULL, bdev->removable);
+		if (ret != EFI_SUCCESS) {
+			pr_err("Adding partition %s failed\n", partcdev->name);
+			continue;
+		}
+
+		npartitions++;
+	}
+
+	return npartitions;
+}
+
+static void symlink_esp(void)
+{
+	const char *mntpath;
+
+	if (!chosen_esp_cdev)
+		return;
+
+	mntpath = cdev_mount(chosen_esp_cdev);
+	if (IS_ERR(mntpath)) {
+		pr_warn("Failed to mount %s as /esp: %pe\n",
+			chosen_esp_cdev->name, mntpath);
+		return;
+	}
+
+	chosen_esp_dirfd = open(mntpath, O_PATH | O_DIRECTORY);
+	if (chosen_esp_dirfd >= 0)
+		symlink(mntpath, "/esp");
+
+	pr_info("%s symlinked as /esp\n", mntpath);
+}
+
+/**
+ * efi_disk_register() - register block devices
+ *
+ * This function is called in efi_init_obj_list().
+ *
+ * Return:	status code
+ */
+static efi_status_t efi_disk_register(void *data)
+{
+	struct block_device *bdev;
+	struct efi_disk_obj *disk;
+	unsigned ndisks = 0;
+	efi_status_t ret;
+
+	for_each_block_device(bdev) {
+		/* Add block device for the full device */
+		pr_debug("Scanning disk %s...\n", bdev->cdev.name);
+		ret = efi_disk_add_cdev(NULL, NULL, &bdev->cdev, &disk, bdev->removable);
+		if (ret) {
+			pr_err("failure to add disk device %s, r = %lu\n",
+				bdev->cdev.name, ret & ~EFI_ERROR_MASK);
+			return ret;
+		}
+
+		disk->blockbits = bdev->blockbits;
+		ndisks++;
+
+		/* Partitions show up as block devices in EFI */
+		ndisks += efi_disk_create_partitions(&disk->header, bdev);
+	}
+
+	pr_info("exporting %d disks\n", ndisks);
+
+	symlink_esp();
+
+	return EFI_SUCCESS;
+}
+
+static int efi_disk_init(void)
+{
+	efi_register_deferred_init(efi_disk_register, NULL);
+	return 0;
+}
+coredevice_initcall(efi_disk_init);
diff --git a/include/efi/loader.h b/include/efi/loader.h
index ef82a2f5214e..466541c1e2b5 100644
--- a/include/efi/loader.h
+++ b/include/efi/loader.h
@@ -74,4 +74,6 @@ extern struct device efidev;
 void efi_register_deferred_init(efi_status_t (*init)(void *), void *);
 void efi_add_root_node_protocol_deferred(const efi_guid_t *protocol, const void *interface);
 
+int efiloader_esp_mount_dir(void);
+
 #endif /* _EFI_LOADER_H */
-- 
2.47.3



