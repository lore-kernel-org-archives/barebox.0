Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVlXN-0000kv-GT
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 13:16:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 10/12] add ubi support from u-boot. Just enough to compile and
	scan
Date: Mon,  5 Jul 2010 15:16:33 +0200
Message-Id: <1278335795-16289-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
References: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1576775509=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
To: barebox@lists.infradead.org

--===============1576775509==
Content-Type: text/plain

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/Kconfig           |    1 +
 drivers/mtd/Makefile          |    1 +
 drivers/mtd/ubi/Kconfig       |    6 +
 drivers/mtd/ubi/Makefile      |    3 +
 drivers/mtd/ubi/build.c       | 1189 +++++++++++++++++++++++++++++
 drivers/mtd/ubi/crc32defs.h   |   32 +
 drivers/mtd/ubi/debug.c       |  192 +++++
 drivers/mtd/ubi/debug.h       |  152 ++++
 drivers/mtd/ubi/eba.c         | 1256 ++++++++++++++++++++++++++++++
 drivers/mtd/ubi/io.c          | 1274 +++++++++++++++++++++++++++++++
 drivers/mtd/ubi/kapi.c        |  638 ++++++++++++++++
 drivers/mtd/ubi/misc.c        |  106 +++
 drivers/mtd/ubi/scan.c        | 1362 +++++++++++++++++++++++++++++++++
 drivers/mtd/ubi/scan.h        |  165 ++++
 drivers/mtd/ubi/ubi-barebox.h |  191 +++++
 drivers/mtd/ubi/ubi-media.h   |  372 +++++++++
 drivers/mtd/ubi/ubi.h         |  641 ++++++++++++++++
 drivers/mtd/ubi/upd.c         |  441 +++++++++++
 drivers/mtd/ubi/vmt.c         |  866 +++++++++++++++++++++
 drivers/mtd/ubi/vtbl.c        |  837 ++++++++++++++++++++
 drivers/mtd/ubi/wl.c          | 1675 +++++++++++++++++++++++++++++++++++++++++
 include/linux/mtd/ubi.h       |  186 +++++
 include/mtd/ubi-user.h        |  268 +++++++
 23 files changed, 11854 insertions(+), 0 deletions(-)
 create mode 100644 drivers/mtd/ubi/Kconfig
 create mode 100644 drivers/mtd/ubi/Makefile
 create mode 100644 drivers/mtd/ubi/build.c
 create mode 100644 drivers/mtd/ubi/crc32defs.h
 create mode 100644 drivers/mtd/ubi/debug.c
 create mode 100644 drivers/mtd/ubi/debug.h
 create mode 100644 drivers/mtd/ubi/eba.c
 create mode 100644 drivers/mtd/ubi/io.c
 create mode 100644 drivers/mtd/ubi/kapi.c
 create mode 100644 drivers/mtd/ubi/misc.c
 create mode 100644 drivers/mtd/ubi/scan.c
 create mode 100644 drivers/mtd/ubi/scan.h
 create mode 100644 drivers/mtd/ubi/ubi-barebox.h
 create mode 100644 drivers/mtd/ubi/ubi-media.h
 create mode 100644 drivers/mtd/ubi/ubi.h
 create mode 100644 drivers/mtd/ubi/upd.c
 create mode 100644 drivers/mtd/ubi/vmt.c
 create mode 100644 drivers/mtd/ubi/vtbl.c
 create mode 100644 drivers/mtd/ubi/wl.c
 create mode 100644 include/linux/mtd/ubi.h
 create mode 100644 include/mtd/ubi-user.h

diff --git a/drivers/mtd/Kconfig b/drivers/mtd/Kconfig
index 53183fc..562f0cd 100644
--- a/drivers/mtd/Kconfig
+++ b/drivers/mtd/Kconfig
@@ -4,5 +4,6 @@ menuconfig MTD
 if MTD
 
 source "drivers/mtd/nand/Kconfig"
+source "drivers/mtd/ubi/Kconfig"
 
 endif
diff --git a/drivers/mtd/Makefile b/drivers/mtd/Makefile
index 299cca1..85bed11 100644
--- a/drivers/mtd/Makefile
+++ b/drivers/mtd/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_NAND)	+= nand/
+obj-$(CONFIG_UBI)	+= ubi/
 obj-$(CONFIG_PARTITION_NEED_MTD)	+= partition.o
diff --git a/drivers/mtd/ubi/Kconfig b/drivers/mtd/ubi/Kconfig
new file mode 100644
index 0000000..35d321b
--- /dev/null
+++ b/drivers/mtd/ubi/Kconfig
@@ -0,0 +1,6 @@
+config UBI
+	bool "UBI support               "
+	select PARTITION_NEED_MTD
+	help
+	  This enables support for UBI (unsorted block images)
+
diff --git a/drivers/mtd/ubi/Makefile b/drivers/mtd/ubi/Makefile
new file mode 100644
index 0000000..425c185
--- /dev/null
+++ b/drivers/mtd/ubi/Makefile
@@ -0,0 +1,3 @@
+obj-y += build.o vtbl.o vmt.o upd.o kapi.o eba.o io.o wl.o scan.o misc.o debug.o
+
+
diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
new file mode 100644
index 0000000..03ce392
--- /dev/null
+++ b/drivers/mtd/ubi/build.c
@@ -0,0 +1,1189 @@
+/*
+ * Copyright (c) International Business Machines Corp., 2006
+ * Copyright (c) Nokia Corporation, 2007
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ *
+ * Author: Artem Bityutskiy (���������������� ����������),
+ *         Frank Haverkamp
+ */
+
+/*
+ * This file includes UBI initialization and building of UBI devices.
+ *
+ * When UBI is initialized, it attaches all the MTD devices specified as the
+ * module load parameters or the kernel boot parameters. If MTD devices were
+ * specified, UBI does not attach any MTD device, but it is possible to do
+ * later using the "UBI control device".
+ *
+ * At the moment we only attach UBI devices by scanning, which will become a
+ * bottleneck when flashes reach certain large size. Then one may improve UBI
+ * and add other methods, although it does not seem to be easy to do.
+ */
+
+#ifdef UBI_LINUX
+#include <linux/err.h>
+#include <linux/module.h>
+#include <linux/moduleparam.h>
+#include <linux/stringify.h>
+#include <linux/stat.h>
+#include <linux/miscdevice.h>
+#include <linux/log2.h>
+#include <linux/kthread.h>
+#endif
+#include "ubi-barebox.h"
+#include "ubi.h"
+
+/* Maximum length of the 'mtd=' parameter */
+#define MTD_PARAM_LEN_MAX 64
+
+/**
+ * struct mtd_dev_param - MTD device parameter description data structure.
+ * @name: MTD device name or number string
+ * @vid_hdr_offs: VID header offset
+ */
+struct mtd_dev_param
+{
+	char name[MTD_PARAM_LEN_MAX];
+	int vid_hdr_offs;
+};
+
+/* Numbers of elements set in the @mtd_dev_param array */
+static int mtd_devs = 0;
+
+/* MTD devices specification parameters */
+static struct mtd_dev_param mtd_dev_param[UBI_MAX_DEVICES];
+
+/* Root UBI "class" object (corresponds to '/<sysfs>/class/ubi/') */
+struct class *ubi_class;
+
+#ifdef UBI_LINUX
+/* Slab cache for wear-leveling entries */
+struct kmem_cache *ubi_wl_entry_slab;
+
+/* UBI control character device */
+static struct miscdevice ubi_ctrl_cdev = {
+	.minor = MISC_DYNAMIC_MINOR,
+	.name = "ubi_ctrl",
+	.fops = &ubi_ctrl_cdev_operations,
+};
+#endif
+
+/* All UBI devices in system */
+struct ubi_device *ubi_devices[UBI_MAX_DEVICES];
+
+#ifdef UBI_LINUX
+/* Serializes UBI devices creations and removals */
+DEFINE_MUTEX(ubi_devices_mutex);
+
+/* Protects @ubi_devices and @ubi->ref_count */
+static DEFINE_SPINLOCK(ubi_devices_lock);
+
+/* "Show" method for files in '/<sysfs>/class/ubi/' */
+static ssize_t ubi_version_show(struct class *class, char *buf)
+{
+	return sprintf(buf, "%d\n", UBI_VERSION);
+}
+
+/* UBI version attribute ('/<sysfs>/class/ubi/version') */
+static struct class_attribute ubi_version =
+	__ATTR(version, S_IRUGO, ubi_version_show, NULL);
+
+static ssize_t dev_attribute_show(struct device *dev,
+				  struct device_attribute *attr, char *buf);
+
+/* UBI device attributes (correspond to files in '/<sysfs>/class/ubi/ubiX') */
+static struct device_attribute dev_eraseblock_size =
+	__ATTR(eraseblock_size, S_IRUGO, dev_attribute_show, NULL);
+static struct device_attribute dev_avail_eraseblocks =
+	__ATTR(avail_eraseblocks, S_IRUGO, dev_attribute_show, NULL);
+static struct device_attribute dev_total_eraseblocks =
+	__ATTR(total_eraseblocks, S_IRUGO, dev_attribute_show, NULL);
+static struct device_attribute dev_volumes_count =
+	__ATTR(volumes_count, S_IRUGO, dev_attribute_show, NULL);
+static struct device_attribute dev_max_ec =
+	__ATTR(max_ec, S_IRUGO, dev_attribute_show, NULL);
+static struct device_attribute dev_reserved_for_bad =
+	__ATTR(reserved_for_bad, S_IRUGO, dev_attribute_show, NULL);
+static struct device_attribute dev_bad_peb_count =
+	__ATTR(bad_peb_count, S_IRUGO, dev_attribute_show, NULL);
+static struct device_attribute dev_max_vol_count =
+	__ATTR(max_vol_count, S_IRUGO, dev_attribute_show, NULL);
+static struct device_attribute dev_min_io_size =
+	__ATTR(min_io_size, S_IRUGO, dev_attribute_show, NULL);
+static struct device_attribute dev_bgt_enabled =
+	__ATTR(bgt_enabled, S_IRUGO, dev_attribute_show, NULL);
+static struct device_attribute dev_mtd_num =
+	__ATTR(mtd_num, S_IRUGO, dev_attribute_show, NULL);
+#endif
+
+/**
+ * ubi_get_device - get UBI device.
+ * @ubi_num: UBI device number
+ *
+ * This function returns UBI device description object for UBI device number
+ * @ubi_num, or %NULL if the device does not exist. This function increases the
+ * device reference count to prevent removal of the device. In other words, the
+ * device cannot be removed if its reference count is not zero.
+ */
+struct ubi_device *ubi_get_device(int ubi_num)
+{
+	struct ubi_device *ubi;
+
+	spin_lock(&ubi_devices_lock);
+	ubi = ubi_devices[ubi_num];
+	if (ubi) {
+		ubi_assert(ubi->ref_count >= 0);
+		ubi->ref_count += 1;
+		get_device(&ubi->dev);
+	}
+	spin_unlock(&ubi_devices_lock);
+
+	return ubi;
+}
+
+/**
+ * ubi_put_device - drop an UBI device reference.
+ * @ubi: UBI device description object
+ */
+void ubi_put_device(struct ubi_device *ubi)
+{
+	spin_lock(&ubi_devices_lock);
+	ubi->ref_count -= 1;
+	put_device(&ubi->dev);
+	spin_unlock(&ubi_devices_lock);
+}
+
+/**
+ * ubi_get_by_major - get UBI device description object by character device
+ *                    major number.
+ * @major: major number
+ *
+ * This function is similar to 'ubi_get_device()', but it searches the device
+ * by its major number.
+ */
+struct ubi_device *ubi_get_by_major(int major)
+{
+	int i;
+	struct ubi_device *ubi;
+
+	spin_lock(&ubi_devices_lock);
+	for (i = 0; i < UBI_MAX_DEVICES; i++) {
+		ubi = ubi_devices[i];
+		if (ubi && MAJOR(ubi->cdev.dev) == major) {
+			ubi_assert(ubi->ref_count >= 0);
+			ubi->ref_count += 1;
+			get_device(&ubi->dev);
+			spin_unlock(&ubi_devices_lock);
+			return ubi;
+		}
+	}
+	spin_unlock(&ubi_devices_lock);
+
+	return NULL;
+}
+
+/**
+ * ubi_major2num - get UBI device number by character device major number.
+ * @major: major number
+ *
+ * This function searches UBI device number object by its major number. If UBI
+ * device was not found, this function returns -ENODEV, otherwise the UBI device
+ * number is returned.
+ */
+int ubi_major2num(int major)
+{
+	int i, ubi_num = -ENODEV;
+
+	spin_lock(&ubi_devices_lock);
+	for (i = 0; i < UBI_MAX_DEVICES; i++) {
+		struct ubi_device *ubi = ubi_devices[i];
+
+		if (ubi && MAJOR(ubi->cdev.dev) == major) {
+			ubi_num = ubi->ubi_num;
+			break;
+		}
+	}
+	spin_unlock(&ubi_devices_lock);
+
+	return ubi_num;
+}
+
+#ifdef UBI_LINUX
+/* "Show" method for files in '/<sysfs>/class/ubi/ubiX/' */
+static ssize_t dev_attribute_show(struct device *dev,
+				  struct device_attribute *attr, char *buf)
+{
+	ssize_t ret;
+	struct ubi_device *ubi;
+
+	/*
+	 * The below code looks weird, but it actually makes sense. We get the
+	 * UBI device reference from the contained 'struct ubi_device'. But it
+	 * is unclear if the device was removed or not yet. Indeed, if the
+	 * device was removed before we increased its reference count,
+	 * 'ubi_get_device()' will return -ENODEV and we fail.
+	 *
+	 * Remember, 'struct ubi_device' is freed in the release function, so
+	 * we still can use 'ubi->ubi_num'.
+	 */
+	ubi = container_of(dev, struct ubi_device, dev);
+	ubi = ubi_get_device(ubi->ubi_num);
+	if (!ubi)
+		return -ENODEV;
+
+	if (attr == &dev_eraseblock_size)
+		ret = sprintf(buf, "%d\n", ubi->leb_size);
+	else if (attr == &dev_avail_eraseblocks)
+		ret = sprintf(buf, "%d\n", ubi->avail_pebs);
+	else if (attr == &dev_total_eraseblocks)
+		ret = sprintf(buf, "%d\n", ubi->good_peb_count);
+	else if (attr == &dev_volumes_count)
+		ret = sprintf(buf, "%d\n", ubi->vol_count - UBI_INT_VOL_COUNT);
+	else if (attr == &dev_max_ec)
+		ret = sprintf(buf, "%d\n", ubi->max_ec);
+	else if (attr == &dev_reserved_for_bad)
+		ret = sprintf(buf, "%d\n", ubi->beb_rsvd_pebs);
+	else if (attr == &dev_bad_peb_count)
+		ret = sprintf(buf, "%d\n", ubi->bad_peb_count);
+	else if (attr == &dev_max_vol_count)
+		ret = sprintf(buf, "%d\n", ubi->vtbl_slots);
+	else if (attr == &dev_min_io_size)
+		ret = sprintf(buf, "%d\n", ubi->min_io_size);
+	else if (attr == &dev_bgt_enabled)
+		ret = sprintf(buf, "%d\n", ubi->thread_enabled);
+	else if (attr == &dev_mtd_num)
+		ret = sprintf(buf, "%d\n", ubi->mtd->index);
+	else
+		ret = -EINVAL;
+
+	ubi_put_device(ubi);
+	return ret;
+}
+
+/* Fake "release" method for UBI devices */
+static void dev_release(struct device *dev) { }
+
+/**
+ * ubi_sysfs_init - initialize sysfs for an UBI device.
+ * @ubi: UBI device description object
+ *
+ * This function returns zero in case of success and a negative error code in
+ * case of failure.
+ */
+static int ubi_sysfs_init(struct ubi_device *ubi)
+{
+	int err;
+
+	ubi->dev.release = dev_release;
+	ubi->dev.devt = ubi->cdev.dev;
+	ubi->dev.class = ubi_class;
+	sprintf(&ubi->dev.bus_id[0], UBI_NAME_STR"%d", ubi->ubi_num);
+	err = device_register(&ubi->dev);
+	if (err)
+		return err;
+
+	err = device_create_file(&ubi->dev, &dev_eraseblock_size);
+	if (err)
+		return err;
+	err = device_create_file(&ubi->dev, &dev_avail_eraseblocks);
+	if (err)
+		return err;
+	err = device_create_file(&ubi->dev, &dev_total_eraseblocks);
+	if (err)
+		return err;
+	err = device_create_file(&ubi->dev, &dev_volumes_count);
+	if (err)
+		return err;
+	err = device_create_file(&ubi->dev, &dev_max_ec);
+	if (err)
+		return err;
+	err = device_create_file(&ubi->dev, &dev_reserved_for_bad);
+	if (err)
+		return err;
+	err = device_create_file(&ubi->dev, &dev_bad_peb_count);
+	if (err)
+		return err;
+	err = device_create_file(&ubi->dev, &dev_max_vol_count);
+	if (err)
+		return err;
+	err = device_create_file(&ubi->dev, &dev_min_io_size);
+	if (err)
+		return err;
+	err = device_create_file(&ubi->dev, &dev_bgt_enabled);
+	if (err)
+		return err;
+	err = device_create_file(&ubi->dev, &dev_mtd_num);
+	return err;
+}
+
+/**
+ * ubi_sysfs_close - close sysfs for an UBI device.
+ * @ubi: UBI device description object
+ */
+static void ubi_sysfs_close(struct ubi_device *ubi)
+{
+	device_remove_file(&ubi->dev, &dev_mtd_num);
+	device_remove_file(&ubi->dev, &dev_bgt_enabled);
+	device_remove_file(&ubi->dev, &dev_min_io_size);
+	device_remove_file(&ubi->dev, &dev_max_vol_count);
+	device_remove_file(&ubi->dev, &dev_bad_peb_count);
+	device_remove_file(&ubi->dev, &dev_reserved_for_bad);
+	device_remove_file(&ubi->dev, &dev_max_ec);
+	device_remove_file(&ubi->dev, &dev_volumes_count);
+	device_remove_file(&ubi->dev, &dev_total_eraseblocks);
+	device_remove_file(&ubi->dev, &dev_avail_eraseblocks);
+	device_remove_file(&ubi->dev, &dev_eraseblock_size);
+	device_unregister(&ubi->dev);
+}
+#endif
+
+/**
+ * kill_volumes - destroy all volumes.
+ * @ubi: UBI device description object
+ */
+static void kill_volumes(struct ubi_device *ubi)
+{
+	int i;
+
+	for (i = 0; i < ubi->vtbl_slots; i++)
+		if (ubi->volumes[i])
+			ubi_free_volume(ubi, ubi->volumes[i]);
+}
+
+/**
+ * uif_init - initialize user interfaces for an UBI device.
+ * @ubi: UBI device description object
+ *
+ * This function returns zero in case of success and a negative error code in
+ * case of failure.
+ */
+static int uif_init(struct ubi_device *ubi)
+{
+	int i, err;
+#ifdef UBI_LINUX
+	dev_t dev;
+#endif
+
+	sprintf(ubi->ubi_name, UBI_NAME_STR "%d", ubi->ubi_num);
+
+	/*
+	 * Major numbers for the UBI character devices are allocated
+	 * dynamically. Major numbers of volume character devices are
+	 * equivalent to ones of the corresponding UBI character device. Minor
+	 * numbers of UBI character devices are 0, while minor numbers of
+	 * volume character devices start from 1. Thus, we allocate one major
+	 * number and ubi->vtbl_slots + 1 minor numbers.
+	 */
+	err = alloc_chrdev_region(&dev, 0, ubi->vtbl_slots + 1, ubi->ubi_name);
+	if (err) {
+		ubi_err("cannot register UBI character devices");
+		return err;
+	}
+
+	ubi_assert(MINOR(dev) == 0);
+	cdev_init(&ubi->cdev, &ubi_cdev_operations);
+	dbg_msg("%s major is %u", ubi->ubi_name, MAJOR(dev));
+#ifdef UBI_LINUX
+	ubi->cdev.owner = THIS_MODULE;
+#endif
+	err = cdev_add(&ubi->cdev, dev, 1);
+	if (err) {
+		ubi_err("cannot add character device");
+		goto out_unreg;
+	}
+
+	err = ubi_sysfs_init(ubi);
+	if (err)
+		goto out_sysfs;
+
+	for (i = 0; i < ubi->vtbl_slots; i++)
+		if (ubi->volumes[i]) {
+			err = ubi_add_volume(ubi, ubi->volumes[i]);
+			if (err) {
+				ubi_err("cannot add volume %d", i);
+				goto out_volumes;
+			}
+		}
+
+	return 0;
+
+out_volumes:
+	kill_volumes(ubi);
+out_sysfs:
+	ubi_sysfs_close(ubi);
+	cdev_del(&ubi->cdev);
+out_unreg:
+	unregister_chrdev_region(ubi->cdev.dev, ubi->vtbl_slots + 1);
+	ubi_err("cannot initialize UBI %s, error %d", ubi->ubi_name, err);
+	return err;
+}
+
+/**
+ * uif_close - close user interfaces for an UBI device.
+ * @ubi: UBI device description object
+ */
+static void uif_close(struct ubi_device *ubi)
+{
+	kill_volumes(ubi);
+	ubi_sysfs_close(ubi);
+	cdev_del(&ubi->cdev);
+	unregister_chrdev_region(ubi->cdev.dev, ubi->vtbl_slots + 1);
+}
+
+/**
+ * attach_by_scanning - attach an MTD device using scanning method.
+ * @ubi: UBI device descriptor
+ *
+ * This function returns zero in case of success and a negative error code in
+ * case of failure.
+ *
+ * Note, currently this is the only method to attach UBI devices. Hopefully in
+ * the future we'll have more scalable attaching methods and avoid full media
+ * scanning. But even in this case scanning will be needed as a fall-back
+ * attaching method if there are some on-flash table corruptions.
+ */
+static int attach_by_scanning(struct ubi_device *ubi)
+{
+	int err;
+	struct ubi_scan_info *si;
+
+	si = ubi_scan(ubi);
+	if (IS_ERR(si))
+		return PTR_ERR(si);
+
+	ubi->bad_peb_count = si->bad_peb_count;
+	ubi->good_peb_count = ubi->peb_count - ubi->bad_peb_count;
+	ubi->max_ec = si->max_ec;
+	ubi->mean_ec = si->mean_ec;
+
+	err = ubi_read_volume_table(ubi, si);
+	if (err)
+		goto out_si;
+
+	err = ubi_wl_init_scan(ubi, si);
+	if (err)
+		goto out_vtbl;
+
+	err = ubi_eba_init_scan(ubi, si);
+	if (err)
+		goto out_wl;
+
+	ubi_scan_destroy_si(si);
+	return 0;
+
+out_wl:
+	ubi_wl_close(ubi);
+out_vtbl:
+	vfree(ubi->vtbl);
+out_si:
+	ubi_scan_destroy_si(si);
+	return err;
+}
+
+/**
+ * io_init - initialize I/O unit for a given UBI device.
+ * @ubi: UBI device description object
+ *
+ * If @ubi->vid_hdr_offset or @ubi->leb_start is zero, default offsets are
+ * assumed:
+ *   o EC header is always at offset zero - this cannot be changed;
+ *   o VID header starts just after the EC header at the closest address
+ *     aligned to @io->hdrs_min_io_size;
+ *   o data starts just after the VID header at the closest address aligned to
+ *     @io->min_io_size
+ *
+ * This function returns zero in case of success and a negative error code in
+ * case of failure.
+ */
+static int io_init(struct ubi_device *ubi)
+{
+	if (ubi->mtd->numeraseregions != 0) {
+		/*
+		 * Some flashes have several erase regions. Different regions
+		 * may have different eraseblock size and other
+		 * characteristics. It looks like mostly multi-region flashes
+		 * have one "main" region and one or more small regions to
+		 * store boot loader code or boot parameters or whatever. I
+		 * guess we should just pick the largest region. But this is
+		 * not implemented.
+		 */
+		ubi_err("multiple regions, not implemented");
+		return -EINVAL;
+	}
+
+	if (ubi->vid_hdr_offset < 0)
+		return -EINVAL;
+
+	/*
+	 * Note, in this implementation we support MTD devices with 0x7FFFFFFF
+	 * physical eraseblocks maximum.
+	 */
+
+	ubi->peb_size   = ubi->mtd->erasesize;
+	ubi->peb_count  = mtd_div_by_eb(ubi->mtd->size, ubi->mtd);
+	ubi->flash_size = ubi->mtd->size;
+
+	if (ubi->mtd->block_isbad && ubi->mtd->block_markbad)
+		ubi->bad_allowed = 1;
+
+	ubi->min_io_size = ubi->mtd->writesize;
+	ubi->hdrs_min_io_size = ubi->mtd->writesize >> ubi->mtd->subpage_sft;
+
+	/*
+	 * Make sure minimal I/O unit is power of 2. Note, there is no
+	 * fundamental reason for this assumption. It is just an optimization
+	 * which allows us to avoid costly division operations.
+	 */
+	if (!is_power_of_2(ubi->min_io_size)) {
+		ubi_err("min. I/O unit (%d) is not power of 2",
+			ubi->min_io_size);
+		return -EINVAL;
+	}
+
+	ubi_assert(ubi->hdrs_min_io_size > 0);
+	ubi_assert(ubi->hdrs_min_io_size <= ubi->min_io_size);
+	ubi_assert(ubi->min_io_size % ubi->hdrs_min_io_size == 0);
+
+	/* Calculate default aligned sizes of EC and VID headers */
+	ubi->ec_hdr_alsize = ALIGN(UBI_EC_HDR_SIZE, ubi->hdrs_min_io_size);
+	ubi->vid_hdr_alsize = ALIGN(UBI_VID_HDR_SIZE, ubi->hdrs_min_io_size);
+
+	dbg_msg("min_io_size      %d", ubi->min_io_size);
+	dbg_msg("hdrs_min_io_size %d", ubi->hdrs_min_io_size);
+	dbg_msg("ec_hdr_alsize    %d", ubi->ec_hdr_alsize);
+	dbg_msg("vid_hdr_alsize   %d", ubi->vid_hdr_alsize);
+
+	if (ubi->vid_hdr_offset == 0)
+		/* Default offset */
+		ubi->vid_hdr_offset = ubi->vid_hdr_aloffset =
+				      ubi->ec_hdr_alsize;
+	else {
+		ubi->vid_hdr_aloffset = ubi->vid_hdr_offset &
+						~(ubi->hdrs_min_io_size - 1);
+		ubi->vid_hdr_shift = ubi->vid_hdr_offset -
+						ubi->vid_hdr_aloffset;
+	}
+
+	/* Similar for the data offset */
+	ubi->leb_start = ubi->vid_hdr_offset + UBI_EC_HDR_SIZE;
+	ubi->leb_start = ALIGN(ubi->leb_start, ubi->min_io_size);
+
+	dbg_msg("vid_hdr_offset   %d", ubi->vid_hdr_offset);
+	dbg_msg("vid_hdr_aloffset %d", ubi->vid_hdr_aloffset);
+	dbg_msg("vid_hdr_shift    %d", ubi->vid_hdr_shift);
+	dbg_msg("leb_start        %d", ubi->leb_start);
+
+	/* The shift must be aligned to 32-bit boundary */
+	if (ubi->vid_hdr_shift % 4) {
+		ubi_err("unaligned VID header shift %d",
+			ubi->vid_hdr_shift);
+		return -EINVAL;
+	}
+
+	/* Check sanity */
+	if (ubi->vid_hdr_offset < UBI_EC_HDR_SIZE ||
+	    ubi->leb_start < ubi->vid_hdr_offset + UBI_VID_HDR_SIZE ||
+	    ubi->leb_start > ubi->peb_size - UBI_VID_HDR_SIZE ||
+	    ubi->leb_start & (ubi->min_io_size - 1)) {
+		ubi_err("bad VID header (%d) or data offsets (%d)",
+			ubi->vid_hdr_offset, ubi->leb_start);
+		return -EINVAL;
+	}
+
+	/*
+	 * It may happen that EC and VID headers are situated in one minimal
+	 * I/O unit. In this case we can only accept this UBI image in
+	 * read-only mode.
+	 */
+	if (ubi->vid_hdr_offset + UBI_VID_HDR_SIZE <= ubi->hdrs_min_io_size) {
+		ubi_warn("EC and VID headers are in the same minimal I/O unit, "
+			 "switch to read-only mode");
+		ubi->ro_mode = 1;
+	}
+
+	ubi->leb_size = ubi->peb_size - ubi->leb_start;
+
+	if (!(ubi->mtd->flags & MTD_WRITEABLE)) {
+		ubi_msg("MTD device %d is write-protected, attach in "
+			"read-only mode", ubi->mtd->index);
+		ubi->ro_mode = 1;
+	}
+
+	ubi_msg("physical eraseblock size:   %d bytes (%d KiB)",
+		ubi->peb_size, ubi->peb_size >> 10);
+	ubi_msg("logical eraseblock size:    %d bytes", ubi->leb_size);
+	ubi_msg("smallest flash I/O unit:    %d", ubi->min_io_size);
+	if (ubi->hdrs_min_io_size != ubi->min_io_size)
+		ubi_msg("sub-page size:              %d",
+			ubi->hdrs_min_io_size);
+	ubi_msg("VID header offset:          %d (aligned %d)",
+		ubi->vid_hdr_offset, ubi->vid_hdr_aloffset);
+	ubi_msg("data offset:                %d", ubi->leb_start);
+
+	/*
+	 * Note, ideally, we have to initialize ubi->bad_peb_count here. But
+	 * unfortunately, MTD does not provide this information. We should loop
+	 * over all physical eraseblocks and invoke mtd->block_is_bad() for
+	 * each physical eraseblock. So, we skip ubi->bad_peb_count
+	 * uninitialized and initialize it after scanning.
+	 */
+
+	return 0;
+}
+
+/**
+ * autoresize - re-size the volume which has the "auto-resize" flag set.
+ * @ubi: UBI device description object
+ * @vol_id: ID of the volume to re-size
+ *
+ * This function re-sizes the volume marked by the @UBI_VTBL_AUTORESIZE_FLG in
+ * the volume table to the largest possible size. See comments in ubi-header.h
+ * for more description of the flag. Returns zero in case of success and a
+ * negative error code in case of failure.
+ */
+static int autoresize(struct ubi_device *ubi, int vol_id)
+{
+	struct ubi_volume_desc desc;
+	struct ubi_volume *vol = ubi->volumes[vol_id];
+	int err, old_reserved_pebs = vol->reserved_pebs;
+
+	/*
+	 * Clear the auto-resize flag in the volume in-memory copy of the
+	 * volume table, and 'ubi_resize_volume()' will propogate this change
+	 * to the flash.
+	 */
+	ubi->vtbl[vol_id].flags &= ~UBI_VTBL_AUTORESIZE_FLG;
+
+	if (ubi->avail_pebs == 0) {
+		struct ubi_vtbl_record vtbl_rec;
+
+		/*
+		 * No avalilable PEBs to re-size the volume, clear the flag on
+		 * flash and exit.
+		 */
+		memcpy(&vtbl_rec, &ubi->vtbl[vol_id],
+		       sizeof(struct ubi_vtbl_record));
+		err = ubi_change_vtbl_record(ubi, vol_id, &vtbl_rec);
+		if (err)
+			ubi_err("cannot clean auto-resize flag for volume %d",
+				vol_id);
+	} else {
+		desc.vol = vol;
+		err = ubi_resize_volume(&desc,
+					old_reserved_pebs + ubi->avail_pebs);
+		if (err)
+			ubi_err("cannot auto-resize volume %d", vol_id);
+	}
+
+	if (err)
+		return err;
+
+	ubi_msg("volume %d (\"%s\") re-sized from %d to %d LEBs", vol_id,
+		vol->name, old_reserved_pebs, vol->reserved_pebs);
+	return 0;
+}
+
+/**
+ * ubi_attach_mtd_dev - attach an MTD device.
+ * @mtd_dev: MTD device description object
+ * @ubi_num: number to assign to the new UBI device
+ * @vid_hdr_offset: VID header offset
+ *
+ * This function attaches MTD device @mtd_dev to UBI and assign @ubi_num number
+ * to the newly created UBI device, unless @ubi_num is %UBI_DEV_NUM_AUTO, in
+ * which case this function finds a vacant device nubert and assings it
+ * automatically. Returns the new UBI device number in case of success and a
+ * negative error code in case of failure.
+ *
+ * Note, the invocations of this function has to be serialized by the
+ * @ubi_devices_mutex.
+ */
+int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num, int vid_hdr_offset)
+{
+	struct ubi_device *ubi;
+	int i, err;
+
+	/*
+	 * Check if we already have the same MTD device attached.
+	 *
+	 * Note, this function assumes that UBI devices creations and deletions
+	 * are serialized, so it does not take the &ubi_devices_lock.
+	 */
+	for (i = 0; i < UBI_MAX_DEVICES; i++) {
+		ubi = ubi_devices[i];
+		if (ubi && mtd->index == ubi->mtd->index) {
+			dbg_err("mtd%d is already attached to ubi%d",
+				mtd->index, i);
+			return -EEXIST;
+		}
+	}
+
+	/*
+	 * Make sure this MTD device is not emulated on top of an UBI volume
+	 * already. Well, generally this recursion works fine, but there are
+	 * different problems like the UBI module takes a reference to itself
+	 * by attaching (and thus, opening) the emulated MTD device. This
+	 * results in inability to unload the module. And in general it makes
+	 * no sense to attach emulated MTD devices, so we prohibit this.
+	 */
+	if (mtd->type == MTD_UBIVOLUME) {
+		ubi_err("refuse attaching mtd%d - it is already emulated on "
+			"top of UBI", mtd->index);
+		return -EINVAL;
+	}
+
+	if (ubi_num == UBI_DEV_NUM_AUTO) {
+		/* Search for an empty slot in the @ubi_devices array */
+		for (ubi_num = 0; ubi_num < UBI_MAX_DEVICES; ubi_num++)
+			if (!ubi_devices[ubi_num])
+				break;
+		if (ubi_num == UBI_MAX_DEVICES) {
+			dbg_err("only %d UBI devices may be created", UBI_MAX_DEVICES);
+			return -ENFILE;
+		}
+	} else {
+		if (ubi_num >= UBI_MAX_DEVICES)
+			return -EINVAL;
+
+		/* Make sure ubi_num is not busy */
+		if (ubi_devices[ubi_num]) {
+			dbg_err("ubi%d already exists", ubi_num);
+			return -EEXIST;
+		}
+	}
+
+	ubi = kzalloc(sizeof(struct ubi_device), GFP_KERNEL);
+	if (!ubi)
+		return -ENOMEM;
+
+	ubi->mtd = mtd;
+	ubi->ubi_num = ubi_num;
+	ubi->vid_hdr_offset = vid_hdr_offset;
+	ubi->autoresize_vol_id = -1;
+
+	mutex_init(&ubi->buf_mutex);
+	mutex_init(&ubi->ckvol_mutex);
+	mutex_init(&ubi->volumes_mutex);
+	spin_lock_init(&ubi->volumes_lock);
+
+	ubi_msg("attaching mtd%d to ubi%d", mtd->index, ubi_num);
+
+	err = io_init(ubi);
+	if (err)
+		goto out_free;
+
+	err = -ENOMEM;
+	ubi->peb_buf1 = vmalloc(ubi->peb_size);
+	if (!ubi->peb_buf1)
+		goto out_free;
+
+	ubi->peb_buf2 = vmalloc(ubi->peb_size);
+	if (!ubi->peb_buf2)
+		goto out_free;
+
+#ifdef CONFIG_MTD_UBI_DEBUG
+	mutex_init(&ubi->dbg_buf_mutex);
+	ubi->dbg_peb_buf = vmalloc(ubi->peb_size);
+	if (!ubi->dbg_peb_buf)
+		goto out_free;
+#endif
+
+	err = attach_by_scanning(ubi);
+	if (err) {
+		dbg_err("failed to attach by scanning, error %d", err);
+		goto out_free;
+	}
+
+	if (ubi->autoresize_vol_id != -1) {
+		err = autoresize(ubi, ubi->autoresize_vol_id);
+		if (err)
+			goto out_detach;
+	}
+
+	err = uif_init(ubi);
+	if (err)
+		goto out_detach;
+
+	ubi->bgt_thread = kthread_create(ubi_thread, ubi, ubi->bgt_name);
+	if (IS_ERR(ubi->bgt_thread)) {
+		err = PTR_ERR(ubi->bgt_thread);
+		ubi_err("cannot spawn \"%s\", error %d", ubi->bgt_name,
+			err);
+		goto out_uif;
+	}
+
+	ubi_msg("attached mtd%d to ubi%d", mtd->index, ubi_num);
+	ubi_msg("MTD device name:            \"%s\"", mtd->name);
+	ubi_msg("MTD device size:            %llu MiB", ubi->flash_size >> 20);
+	ubi_msg("number of good PEBs:        %d", ubi->good_peb_count);
+	ubi_msg("number of bad PEBs:         %d", ubi->bad_peb_count);
+	ubi_msg("max. allowed volumes:       %d", ubi->vtbl_slots);
+	ubi_msg("wear-leveling threshold:    %d", CONFIG_MTD_UBI_WL_THRESHOLD);
+	ubi_msg("number of internal volumes: %d", UBI_INT_VOL_COUNT);
+	ubi_msg("number of user volumes:     %d",
+		ubi->vol_count - UBI_INT_VOL_COUNT);
+	ubi_msg("available PEBs:             %d", ubi->avail_pebs);
+	ubi_msg("total number of reserved PEBs: %d", ubi->rsvd_pebs);
+	ubi_msg("number of PEBs reserved for bad PEB handling: %d",
+		ubi->beb_rsvd_pebs);
+	ubi_msg("max/mean erase counter: %d/%d", ubi->max_ec, ubi->mean_ec);
+
+	/* Enable the background thread */
+	if (!DBG_DISABLE_BGT) {
+		ubi->thread_enabled = 1;
+		wake_up_process(ubi->bgt_thread);
+	}
+
+	ubi_devices[ubi_num] = ubi;
+	return ubi_num;
+
+out_uif:
+	uif_close(ubi);
+out_detach:
+	ubi_eba_close(ubi);
+	ubi_wl_close(ubi);
+	vfree(ubi->vtbl);
+out_free:
+	vfree(ubi->peb_buf1);
+	vfree(ubi->peb_buf2);
+#ifdef CONFIG_MTD_UBI_DEBUG
+	vfree(ubi->dbg_peb_buf);
+#endif
+	kfree(ubi);
+	return err;
+}
+
+/**
+ * ubi_detach_mtd_dev - detach an MTD device.
+ * @ubi_num: UBI device number to detach from
+ * @anyway: detach MTD even if device reference count is not zero
+ *
+ * This function destroys an UBI device number @ubi_num and detaches the
+ * underlying MTD device. Returns zero in case of success and %-EBUSY if the
+ * UBI device is busy and cannot be destroyed, and %-EINVAL if it does not
+ * exist.
+ *
+ * Note, the invocations of this function has to be serialized by the
+ * @ubi_devices_mutex.
+ */
+int ubi_detach_mtd_dev(int ubi_num, int anyway)
+{
+	struct ubi_device *ubi;
+
+	if (ubi_num < 0 || ubi_num >= UBI_MAX_DEVICES)
+		return -EINVAL;
+
+	spin_lock(&ubi_devices_lock);
+	ubi = ubi_devices[ubi_num];
+	if (!ubi) {
+		spin_unlock(&ubi_devices_lock);
+		return -EINVAL;
+	}
+
+	if (ubi->ref_count) {
+		if (!anyway) {
+			spin_unlock(&ubi_devices_lock);
+			return -EBUSY;
+		}
+		/* This may only happen if there is a bug */
+		ubi_err("%s reference count %d, destroy anyway",
+			ubi->ubi_name, ubi->ref_count);
+	}
+	ubi_devices[ubi_num] = NULL;
+	spin_unlock(&ubi_devices_lock);
+
+	ubi_assert(ubi_num == ubi->ubi_num);
+	dbg_msg("detaching mtd%d from ubi%d", ubi->mtd->index, ubi_num);
+
+	/*
+	 * Before freeing anything, we have to stop the background thread to
+	 * prevent it from doing anything on this device while we are freeing.
+	 */
+	if (ubi->bgt_thread)
+		kthread_stop(ubi->bgt_thread);
+
+	uif_close(ubi);
+	ubi_eba_close(ubi);
+	ubi_wl_close(ubi);
+	vfree(ubi->vtbl);
+	put_mtd_device(ubi->mtd);
+	vfree(ubi->peb_buf1);
+	vfree(ubi->peb_buf2);
+#ifdef CONFIG_MTD_UBI_DEBUG
+	vfree(ubi->dbg_peb_buf);
+#endif
+	ubi_msg("mtd%d is detached from ubi%d", ubi->mtd->index, ubi->ubi_num);
+	kfree(ubi);
+	return 0;
+}
+
+/**
+ * find_mtd_device - open an MTD device by its name or number.
+ * @mtd_dev: name or number of the device
+ *
+ * This function tries to open and MTD device described by @mtd_dev string,
+ * which is first treated as an ASCII number, and if it is not true, it is
+ * treated as MTD device name. Returns MTD device description object in case of
+ * success and a negative error code in case of failure.
+ */
+static struct mtd_info * __init open_mtd_device(const char *mtd_dev)
+{
+	struct mtd_info *mtd;
+	int mtd_num;
+	char *endp;
+
+	mtd_num = simple_strtoul(mtd_dev, &endp, 0);
+	if (*endp != '\0' || mtd_dev == endp) {
+		/*
+		 * This does not look like an ASCII integer, probably this is
+		 * MTD device name.
+		 */
+		mtd = get_mtd_device_nm(mtd_dev);
+	} else
+		mtd = get_mtd_device(NULL, mtd_num);
+
+	return mtd;
+}
+
+int __init ubi_init(void)
+{
+	int err, i, k;
+
+	/* Ensure that EC and VID headers have correct size */
+	BUILD_BUG_ON(sizeof(struct ubi_ec_hdr) != 64);
+	BUILD_BUG_ON(sizeof(struct ubi_vid_hdr) != 64);
+
+	if (mtd_devs > UBI_MAX_DEVICES) {
+		ubi_err("too many MTD devices, maximum is %d", UBI_MAX_DEVICES);
+		return -EINVAL;
+	}
+
+	/* Create base sysfs directory and sysfs files */
+	ubi_class = class_create(THIS_MODULE, UBI_NAME_STR);
+	if (IS_ERR(ubi_class)) {
+		err = PTR_ERR(ubi_class);
+		ubi_err("cannot create UBI class");
+		goto out;
+	}
+
+	err = class_create_file(ubi_class, &ubi_version);
+	if (err) {
+		ubi_err("cannot create sysfs file");
+		goto out_class;
+	}
+
+	err = misc_register(&ubi_ctrl_cdev);
+	if (err) {
+		ubi_err("cannot register device");
+		goto out_version;
+	}
+
+#ifdef UBI_LINUX
+	ubi_wl_entry_slab = kmem_cache_create("ubi_wl_entry_slab",
+					      sizeof(struct ubi_wl_entry),
+					      0, 0, NULL);
+	if (!ubi_wl_entry_slab)
+		goto out_dev_unreg;
+#endif
+
+	/* Attach MTD devices */
+	for (i = 0; i < mtd_devs; i++) {
+		struct mtd_dev_param *p = &mtd_dev_param[i];
+		struct mtd_info *mtd;
+
+		cond_resched();
+
+		mtd = open_mtd_device(p->name);
+		if (IS_ERR(mtd)) {
+			err = PTR_ERR(mtd);
+			goto out_detach;
+		}
+
+		mutex_lock(&ubi_devices_mutex);
+		err = ubi_attach_mtd_dev(mtd, UBI_DEV_NUM_AUTO,
+					 p->vid_hdr_offs);
+		mutex_unlock(&ubi_devices_mutex);
+		if (err < 0) {
+			put_mtd_device(mtd);
+			ubi_err("cannot attach mtd%d", mtd->index);
+			goto out_detach;
+		}
+	}
+
+	return 0;
+
+out_detach:
+	for (k = 0; k < i; k++)
+		if (ubi_devices[k]) {
+			mutex_lock(&ubi_devices_mutex);
+			ubi_detach_mtd_dev(ubi_devices[k]->ubi_num, 1);
+			mutex_unlock(&ubi_devices_mutex);
+		}
+#ifdef UBI_LINUX
+	kmem_cache_destroy(ubi_wl_entry_slab);
+out_dev_unreg:
+#endif
+	misc_deregister(&ubi_ctrl_cdev);
+out_version:
+	class_remove_file(ubi_class, &ubi_version);
+out_class:
+	class_destroy(ubi_class);
+out:
+	ubi_err("UBI error: cannot initialize UBI, error %d", err);
+	return err;
+}
+module_init(ubi_init);
+
+void __exit ubi_exit(void)
+{
+	int i;
+
+	for (i = 0; i < UBI_MAX_DEVICES; i++)
+		if (ubi_devices[i]) {
+			mutex_lock(&ubi_devices_mutex);
+			ubi_detach_mtd_dev(ubi_devices[i]->ubi_num, 1);
+			mutex_unlock(&ubi_devices_mutex);
+		}
+	kmem_cache_destroy(ubi_wl_entry_slab);
+	misc_deregister(&ubi_ctrl_cdev);
+	class_remove_file(ubi_class, &ubi_version);
+	class_destroy(ubi_class);
+	mtd_devs = 0;
+}
+module_exit(ubi_exit);
+
+/**
+ * bytes_str_to_int - convert a string representing number of bytes to an
+ * integer.
+ * @str: the string to convert
+ *
+ * This function returns positive resulting integer in case of success and a
+ * negative error code in case of failure.
+ */
+static int __init bytes_str_to_int(const char *str)
+{
+	char *endp;
+	unsigned long result;
+
+	result = simple_strtoul(str, &endp, 0);
+	if (str == endp || result < 0) {
+		printk(KERN_ERR "UBI error: incorrect bytes count: \"%s\"\n",
+		       str);
+		return -EINVAL;
+	}
+
+	switch (*endp) {
+	case 'G':
+		result *= 1024;
+	case 'M':
+		result *= 1024;
+	case 'K':
+		result *= 1024;
+		if (endp[1] == 'i' && endp[2] == 'B')
+			endp += 2;
+	case '\0':
+		break;
+	default:
+		printk(KERN_ERR "UBI error: incorrect bytes count: \"%s\"\n",
+		       str);
+		return -EINVAL;
+	}
+
+	return result;
+}
+
+/**
+ * ubi_mtd_param_parse - parse the 'mtd=' UBI parameter.
+ * @val: the parameter value to parse
+ * @kp: not used
+ *
+ * This function returns zero in case of success and a negative error code in
+ * case of error.
+ */
+int __init ubi_mtd_param_parse(const char *val, struct kernel_param *kp)
+{
+	int i, len;
+	struct mtd_dev_param *p;
+	char buf[MTD_PARAM_LEN_MAX];
+	char *pbuf = &buf[0];
+	char *tokens[2] = {NULL, NULL};
+
+	if (!val)
+		return -EINVAL;
+
+	if (mtd_devs == UBI_MAX_DEVICES) {
+		printk(KERN_ERR "UBI error: too many parameters, max. is %d\n",
+		       UBI_MAX_DEVICES);
+		return -EINVAL;
+	}
+
+	len = strnlen(val, MTD_PARAM_LEN_MAX);
+	if (len == MTD_PARAM_LEN_MAX) {
+		printk(KERN_ERR "UBI error: parameter \"%s\" is too long, "
+		       "max. is %d\n", val, MTD_PARAM_LEN_MAX);
+		return -EINVAL;
+	}
+
+	if (len == 0) {
+		printk(KERN_WARNING "UBI warning: empty 'mtd=' parameter - "
+		       "ignored\n");
+		return 0;
+	}
+
+	strcpy(buf, val);
+
+	/* Get rid of the final newline */
+	if (buf[len - 1] == '\n')
+		buf[len - 1] = '\0';
+
+	for (i = 0; i < 2; i++)
+		tokens[i] = strsep(&pbuf, ",");
+
+	if (pbuf) {
+		printk(KERN_ERR "UBI error: too many arguments at \"%s\"\n",
+		       val);
+		return -EINVAL;
+	}
+
+	p = &mtd_dev_param[mtd_devs];
+	strcpy(&p->name[0], tokens[0]);
+
+	if (tokens[1])
+		p->vid_hdr_offs = bytes_str_to_int(tokens[1]);
+
+	if (p->vid_hdr_offs < 0)
+		return p->vid_hdr_offs;
+
+	mtd_devs += 1;
+	return 0;
+}
+
+module_param_call(mtd, ubi_mtd_param_parse, NULL, NULL, 000);
+MODULE_PARM_DESC(mtd, "MTD devices to attach. Parameter format: "
+		      "mtd=<name|num>[,<vid_hdr_offs>].\n"
+		      "Multiple \"mtd\" parameters may be specified.\n"
+		      "MTD devices may be specified by their number or name.\n"
+		      "Optional \"vid_hdr_offs\" parameter specifies UBI VID "
+		      "header position and data starting position to be used "
+		      "by UBI.\n"
+		      "Example: mtd=content,1984 mtd=4 - attach MTD device"
+		      "with name \"content\" using VID header offset 1984, and "
+		      "MTD device number 4 with default VID header offset.");
+
+MODULE_VERSION(__stringify(UBI_VERSION));
+MODULE_DESCRIPTION("UBI - Unsorted Block Images");
+MODULE_AUTHOR("Artem Bityutskiy");
+MODULE_LICENSE("GPL");
diff --git a/drivers/mtd/ubi/crc32defs.h b/drivers/mtd/ubi/crc32defs.h
new file mode 100644
index 0000000..f5a5401
--- /dev/null
+++ b/drivers/mtd/ubi/crc32defs.h
@@ -0,0 +1,32 @@
+/*
+ * There are multiple 16-bit CRC polynomials in common use, but this is
+ * *the* standard CRC-32 polynomial, first popularized by Ethernet.
+ * x^32+x^26+x^23+x^22+x^16+x^12+x^11+x^10+x^8+x^7+x^5+x^4+x^2+x^1+x^0
+ */
+#define CRCPOLY_LE 0xedb88320
+#define CRCPOLY_BE 0x04c11db7
+
+/* How many bits at a time to use.  Requires a table of 4<<CRC_xx_BITS bytes. */
+/* For less performance-sensitive, use 4 */
+#ifndef CRC_LE_BITS
+# define CRC_LE_BITS 8
+#endif
+#ifndef CRC_BE_BITS
+# define CRC_BE_BITS 8
+#endif
+
+/*
+ * Little-endian CRC computation.  Used with serial bit streams sent
+ * lsbit-first.  Be sure to use cpu_to_le32() to append the computed CRC.
+ */
+#if CRC_LE_BITS > 8 || CRC_LE_BITS < 1 || CRC_LE_BITS & CRC_LE_BITS-1
+# error CRC_LE_BITS must be a power of 2 between 1 and 8
+#endif
+
+/*
+ * Big-endian CRC computation.  Used with serial bit streams sent
+ * msbit-first.  Be sure to use cpu_to_be32() to append the computed CRC.
+ */
+#if CRC_BE_BITS > 8 || CRC_BE_BITS < 1 || CRC_BE_BITS & CRC_BE_BITS-1
+# error CRC_BE_BITS must be a power of 2 between 1 and 8
+#endif
diff --git a/drivers/mtd/ubi/debug.c b/drivers/mtd/ubi/debug.c
new file mode 100644
index 0000000..6e4b0ff
--- /dev/null
+++ b/drivers/mtd/ubi/debug.c
@@ -0,0 +1,192 @@
+/*
+ * Copyright (c) International Business Machines Corp., 2006
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ *
+ * Author: Artem Bityutskiy (���������������� ����������)
+ */
+
+/*
+ * Here we keep all the UBI debugging stuff which should normally be disabled
+ * and compiled-out, but it is extremely helpful when hunting bugs or doing big
+ * changes.
+ */
+#include "ubi-barebox.h"
+
+#ifdef CONFIG_MTD_UBI_DEBUG_MSG
+
+#include "ubi.h"
+
+/**
+ * ubi_dbg_dump_ec_hdr - dump an erase counter header.
+ * @ec_hdr: the erase counter header to dump
+ */
+void ubi_dbg_dump_ec_hdr(const struct ubi_ec_hdr *ec_hdr)
+{
+	dbg_msg("erase counter header dump:");
+	dbg_msg("magic          %#08x", be32_to_cpu(ec_hdr->magic));
+	dbg_msg("version        %d",    (int)ec_hdr->version);
+	dbg_msg("ec             %llu",  (long long)be64_to_cpu(ec_hdr->ec));
+	dbg_msg("vid_hdr_offset %d",    be32_to_cpu(ec_hdr->vid_hdr_offset));
+	dbg_msg("data_offset    %d",    be32_to_cpu(ec_hdr->data_offset));
+	dbg_msg("hdr_crc        %#08x", be32_to_cpu(ec_hdr->hdr_crc));
+	dbg_msg("erase counter header hexdump:");
+	print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1,
+		       ec_hdr, UBI_EC_HDR_SIZE, 1);
+}
+
+/**
+ * ubi_dbg_dump_vid_hdr - dump a volume identifier header.
+ * @vid_hdr: the volume identifier header to dump
+ */
+void ubi_dbg_dump_vid_hdr(const struct ubi_vid_hdr *vid_hdr)
+{
+	dbg_msg("volume identifier header dump:");
+	dbg_msg("magic     %08x", be32_to_cpu(vid_hdr->magic));
+	dbg_msg("version   %d",   (int)vid_hdr->version);
+	dbg_msg("vol_type  %d",   (int)vid_hdr->vol_type);
+	dbg_msg("copy_flag %d",   (int)vid_hdr->copy_flag);
+	dbg_msg("compat    %d",   (int)vid_hdr->compat);
+	dbg_msg("vol_id    %d",   be32_to_cpu(vid_hdr->vol_id));
+	dbg_msg("lnum      %d",   be32_to_cpu(vid_hdr->lnum));
+	dbg_msg("leb_ver   %u",   be32_to_cpu(vid_hdr->leb_ver));
+	dbg_msg("data_size %d",   be32_to_cpu(vid_hdr->data_size));
+	dbg_msg("used_ebs  %d",   be32_to_cpu(vid_hdr->used_ebs));
+	dbg_msg("data_pad  %d",   be32_to_cpu(vid_hdr->data_pad));
+	dbg_msg("sqnum     %llu",
+		(unsigned long long)be64_to_cpu(vid_hdr->sqnum));
+	dbg_msg("hdr_crc   %08x", be32_to_cpu(vid_hdr->hdr_crc));
+	dbg_msg("volume identifier header hexdump:");
+}
+
+/**
+ * ubi_dbg_dump_vol_info- dump volume information.
+ * @vol: UBI volume description object
+ */
+void ubi_dbg_dump_vol_info(const struct ubi_volume *vol)
+{
+	dbg_msg("volume information dump:");
+	dbg_msg("vol_id          %d", vol->vol_id);
+	dbg_msg("reserved_pebs   %d", vol->reserved_pebs);
+	dbg_msg("alignment       %d", vol->alignment);
+	dbg_msg("data_pad        %d", vol->data_pad);
+	dbg_msg("vol_type        %d", vol->vol_type);
+	dbg_msg("name_len        %d", vol->name_len);
+	dbg_msg("usable_leb_size %d", vol->usable_leb_size);
+	dbg_msg("used_ebs        %d", vol->used_ebs);
+	dbg_msg("used_bytes      %lld", vol->used_bytes);
+	dbg_msg("last_eb_bytes   %d", vol->last_eb_bytes);
+	dbg_msg("corrupted       %d", vol->corrupted);
+	dbg_msg("upd_marker      %d", vol->upd_marker);
+
+	if (vol->name_len <= UBI_VOL_NAME_MAX &&
+	    strnlen(vol->name, vol->name_len + 1) == vol->name_len) {
+		dbg_msg("name            %s", vol->name);
+	} else {
+		dbg_msg("the 1st 5 characters of the name: %c%c%c%c%c",
+			vol->name[0], vol->name[1], vol->name[2],
+			vol->name[3], vol->name[4]);
+	}
+}
+
+/**
+ * ubi_dbg_dump_vtbl_record - dump a &struct ubi_vtbl_record object.
+ * @r: the object to dump
+ * @idx: volume table index
+ */
+void ubi_dbg_dump_vtbl_record(const struct ubi_vtbl_record *r, int idx)
+{
+	int name_len = be16_to_cpu(r->name_len);
+
+	dbg_msg("volume table record %d dump:", idx);
+	dbg_msg("reserved_pebs   %d", be32_to_cpu(r->reserved_pebs));
+	dbg_msg("alignment       %d", be32_to_cpu(r->alignment));
+	dbg_msg("data_pad        %d", be32_to_cpu(r->data_pad));
+	dbg_msg("vol_type        %d", (int)r->vol_type);
+	dbg_msg("upd_marker      %d", (int)r->upd_marker);
+	dbg_msg("name_len        %d", name_len);
+
+	if (r->name[0] == '\0') {
+		dbg_msg("name            NULL");
+		return;
+	}
+
+	if (name_len <= UBI_VOL_NAME_MAX &&
+	    strnlen(&r->name[0], name_len + 1) == name_len) {
+		dbg_msg("name            %s", &r->name[0]);
+	} else {
+		dbg_msg("1st 5 characters of the name: %c%c%c%c%c",
+			r->name[0], r->name[1], r->name[2], r->name[3],
+			r->name[4]);
+	}
+	dbg_msg("crc             %#08x", be32_to_cpu(r->crc));
+}
+
+/**
+ * ubi_dbg_dump_sv - dump a &struct ubi_scan_volume object.
+ * @sv: the object to dump
+ */
+void ubi_dbg_dump_sv(const struct ubi_scan_volume *sv)
+{
+	dbg_msg("volume scanning information dump:");
+	dbg_msg("vol_id         %d", sv->vol_id);
+	dbg_msg("highest_lnum   %d", sv->highest_lnum);
+	dbg_msg("leb_count      %d", sv->leb_count);
+	dbg_msg("compat         %d", sv->compat);
+	dbg_msg("vol_type       %d", sv->vol_type);
+	dbg_msg("used_ebs       %d", sv->used_ebs);
+	dbg_msg("last_data_size %d", sv->last_data_size);
+	dbg_msg("data_pad       %d", sv->data_pad);
+}
+
+/**
+ * ubi_dbg_dump_seb - dump a &struct ubi_scan_leb object.
+ * @seb: the object to dump
+ * @type: object type: 0 - not corrupted, 1 - corrupted
+ */
+void ubi_dbg_dump_seb(const struct ubi_scan_leb *seb, int type)
+{
+	dbg_msg("eraseblock scanning information dump:");
+	dbg_msg("ec       %d", seb->ec);
+	dbg_msg("pnum     %d", seb->pnum);
+	if (type == 0) {
+		dbg_msg("lnum     %d", seb->lnum);
+		dbg_msg("scrub    %d", seb->scrub);
+		dbg_msg("sqnum    %llu", seb->sqnum);
+		dbg_msg("leb_ver  %u", seb->leb_ver);
+	}
+}
+
+/**
+ * ubi_dbg_dump_mkvol_req - dump a &struct ubi_mkvol_req object.
+ * @req: the object to dump
+ */
+void ubi_dbg_dump_mkvol_req(const struct ubi_mkvol_req *req)
+{
+	char nm[17];
+
+	dbg_msg("volume creation request dump:");
+	dbg_msg("vol_id    %d",   req->vol_id);
+	dbg_msg("alignment %d",   req->alignment);
+	dbg_msg("bytes     %lld", (long long)req->bytes);
+	dbg_msg("vol_type  %d",   req->vol_type);
+	dbg_msg("name_len  %d",   req->name_len);
+
+	memcpy(nm, req->name, 16);
+	nm[16] = 0;
+	dbg_msg("the 1st 16 characters of the name: %s", nm);
+}
+
+#endif /* CONFIG_MTD_UBI_DEBUG_MSG */
diff --git a/drivers/mtd/ubi/debug.h b/drivers/mtd/ubi/debug.h
new file mode 100644
index 0000000..b44380b
--- /dev/null
+++ b/drivers/mtd/ubi/debug.h
@@ -0,0 +1,152 @@
+/*
+ * Copyright (c) International Business Machines Corp., 2006
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ *
+ * Author: Artem Bityutskiy (���������������� ����������)
+ */
+
+#ifndef __UBI_DEBUG_H__
+#define __UBI_DEBUG_H__
+
+#ifdef CONFIG_MTD_UBI_DEBUG
+#ifdef UBI_LINUX
+#include <linux/random.h>
+#endif
+
+#define ubi_assert(expr)  BUG_ON(!(expr))
+#define dbg_err(fmt, ...) ubi_err(fmt, ##__VA_ARGS__)
+#else
+#define ubi_assert(expr)  ({})
+#define dbg_err(fmt, ...) ({})
+#endif
+
+#ifdef CONFIG_MTD_UBI_DEBUG_DISABLE_BGT
+#define DBG_DISABLE_BGT 1
+#else
+#define DBG_DISABLE_BGT 0
+#endif
+
+#ifdef CONFIG_MTD_UBI_DEBUG_MSG
+/* Generic debugging message */
+#define dbg_msg(fmt, ...)                                    \
+	printk(KERN_DEBUG "UBI DBG: %s: " fmt "\n", \
+	       __FUNCTION__, ##__VA_ARGS__)
+
+#define ubi_dbg_dump_stack() dump_stack()
+
+struct ubi_ec_hdr;
+struct ubi_vid_hdr;
+struct ubi_volume;
+struct ubi_vtbl_record;
+struct ubi_scan_volume;
+struct ubi_scan_leb;
+struct ubi_mkvol_req;
+
+void ubi_dbg_dump_ec_hdr(const struct ubi_ec_hdr *ec_hdr);
+void ubi_dbg_dump_vid_hdr(const struct ubi_vid_hdr *vid_hdr);
+void ubi_dbg_dump_vol_info(const struct ubi_volume *vol);
+void ubi_dbg_dump_vtbl_record(const struct ubi_vtbl_record *r, int idx);
+void ubi_dbg_dump_sv(const struct ubi_scan_volume *sv);
+void ubi_dbg_dump_seb(const struct ubi_scan_leb *seb, int type);
+void ubi_dbg_dump_mkvol_req(const struct ubi_mkvol_req *req);
+
+#else
+
+#define dbg_msg(fmt, ...)    ({})
+#define ubi_dbg_dump_stack() ({})
+#define ubi_dbg_dump_ec_hdr(ec_hdr)      ({})
+#define ubi_dbg_dump_vid_hdr(vid_hdr)    ({})
+#define ubi_dbg_dump_vol_info(vol)       ({})
+#define ubi_dbg_dump_vtbl_record(r, idx) ({})
+#define ubi_dbg_dump_sv(sv)              ({})
+#define ubi_dbg_dump_seb(seb, type)      ({})
+#define ubi_dbg_dump_mkvol_req(req)      ({})
+
+#endif /* CONFIG_MTD_UBI_DEBUG_MSG */
+
+#ifdef CONFIG_MTD_UBI_DEBUG_MSG_EBA
+/* Messages from the eraseblock association unit */
+#define dbg_eba(fmt, ...) dbg_msg(fmt, ##__VA_ARGS__)
+#else
+#define dbg_eba(fmt, ...) ({})
+#endif
+
+#ifdef CONFIG_MTD_UBI_DEBUG_MSG_WL
+/* Messages from the wear-leveling unit */
+#define dbg_wl(fmt, ...) dbg_msg(fmt, ##__VA_ARGS__)
+#else
+#define dbg_wl(fmt, ...) ({})
+#endif
+
+#ifdef CONFIG_MTD_UBI_DEBUG_MSG_IO
+/* Messages from the input/output unit */
+#define dbg_io(fmt, ...) dbg_msg(fmt, ##__VA_ARGS__)
+#else
+#define dbg_io(fmt, ...) ({})
+#endif
+
+#ifdef CONFIG_MTD_UBI_DEBUG_MSG_BLD
+/* Initialization and build messages */
+#define dbg_bld(fmt, ...) dbg_msg(fmt, ##__VA_ARGS__)
+#else
+#define dbg_bld(fmt, ...) ({})
+#endif
+
+#ifdef CONFIG_MTD_UBI_DEBUG_EMULATE_BITFLIPS
+/**
+ * ubi_dbg_is_bitflip - if it is time to emulate a bit-flip.
+ *
+ * Returns non-zero if a bit-flip should be emulated, otherwise returns zero.
+ */
+static inline int ubi_dbg_is_bitflip(void)
+{
+	return !(random32() % 200);
+}
+#else
+#define ubi_dbg_is_bitflip() 0
+#endif
+
+#ifdef CONFIG_MTD_UBI_DEBUG_EMULATE_WRITE_FAILURES
+/**
+ * ubi_dbg_is_write_failure - if it is time to emulate a write failure.
+ *
+ * Returns non-zero if a write failure should be emulated, otherwise returns
+ * zero.
+ */
+static inline int ubi_dbg_is_write_failure(void)
+{
+	return !(random32() % 500);
+}
+#else
+#define ubi_dbg_is_write_failure() 0
+#endif
+
+#ifdef CONFIG_MTD_UBI_DEBUG_EMULATE_ERASE_FAILURES
+/**
+ * ubi_dbg_is_erase_failure - if its time to emulate an erase failure.
+ *
+ * Returns non-zero if an erase failure should be emulated, otherwise returns
+ * zero.
+ */
+static inline int ubi_dbg_is_erase_failure(void)
+{
+		return !(random32() % 400);
+}
+#else
+#define ubi_dbg_is_erase_failure() 0
+#endif
+
+#endif /* !__UBI_DEBUG_H__ */
diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
new file mode 100644
index 0000000..8f2b3b1
--- /dev/null
+++ b/drivers/mtd/ubi/eba.c
@@ -0,0 +1,1256 @@
+/*
+ * Copyright (c) International Business Machines Corp., 2006
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ *
+ * Author: Artem Bityutskiy (���������������� ����������)
+ */
+
+/*
+ * The UBI Eraseblock Association (EBA) unit.
+ *
+ * This unit is responsible for I/O to/from logical eraseblock.
+ *
+ * Although in this implementation the EBA table is fully kept and managed in
+ * RAM, which assumes poor scalability, it might be (partially) maintained on
+ * flash in future implementations.
+ *
+ * The EBA unit implements per-logical eraseblock locking. Before accessing a
+ * logical eraseblock it is locked for reading or writing. The per-logical
+ * eraseblock locking is implemented by means of the lock tree. The lock tree
+ * is an RB-tree which refers all the currently locked logical eraseblocks. The
+ * lock tree elements are &struct ubi_ltree_entry objects. They are indexed by
+ * (@vol_id, @lnum) pairs.
+ *
+ * EBA also maintains the global sequence counter which is incremented each
+ * time a logical eraseblock is mapped to a physical eraseblock and it is
+ * stored in the volume identifier header. This means that each VID header has
+ * a unique sequence number. The sequence number is only increased an we assume
+ * 64 bits is enough to never overflow.
+ */
+
+#ifdef UBI_LINUX
+#include <linux/slab.h>
+#include <linux/crc32.h>
+#include <linux/err.h>
+#endif
+
+#include "ubi-barebox.h"
+#include "ubi.h"
+
+/* Number of physical eraseblocks reserved for atomic LEB change operation */
+#define EBA_RESERVED_PEBS 1
+
+/**
+ * next_sqnum - get next sequence number.
+ * @ubi: UBI device description object
+ *
+ * This function returns next sequence number to use, which is just the current
+ * global sequence counter value. It also increases the global sequence
+ * counter.
+ */
+static unsigned long long next_sqnum(struct ubi_device *ubi)
+{
+	unsigned long long sqnum;
+
+	spin_lock(&ubi->ltree_lock);
+	sqnum = ubi->global_sqnum++;
+	spin_unlock(&ubi->ltree_lock);
+
+	return sqnum;
+}
+
+/**
+ * ubi_get_compat - get compatibility flags of a volume.
+ * @ubi: UBI device description object
+ * @vol_id: volume ID
+ *
+ * This function returns compatibility flags for an internal volume. User
+ * volumes have no compatibility flags, so %0 is returned.
+ */
+static int ubi_get_compat(const struct ubi_device *ubi, int vol_id)
+{
+	if (vol_id == UBI_LAYOUT_VOLUME_ID)
+		return UBI_LAYOUT_VOLUME_COMPAT;
+	return 0;
+}
+
+/**
+ * ltree_lookup - look up the lock tree.
+ * @ubi: UBI device description object
+ * @vol_id: volume ID
+ * @lnum: logical eraseblock number
+ *
+ * This function returns a pointer to the corresponding &struct ubi_ltree_entry
+ * object if the logical eraseblock is locked and %NULL if it is not.
+ * @ubi->ltree_lock has to be locked.
+ */
+static struct ubi_ltree_entry *ltree_lookup(struct ubi_device *ubi, int vol_id,
+					    int lnum)
+{
+	struct rb_node *p;
+
+	p = ubi->ltree.rb_node;
+	while (p) {
+		struct ubi_ltree_entry *le;
+
+		le = rb_entry(p, struct ubi_ltree_entry, rb);
+
+		if (vol_id < le->vol_id)
+			p = p->rb_left;
+		else if (vol_id > le->vol_id)
+			p = p->rb_right;
+		else {
+			if (lnum < le->lnum)
+				p = p->rb_left;
+			else if (lnum > le->lnum)
+				p = p->rb_right;
+			else
+				return le;
+		}
+	}
+
+	return NULL;
+}
+
+/**
+ * ltree_add_entry - add new entry to the lock tree.
+ * @ubi: UBI device description object
+ * @vol_id: volume ID
+ * @lnum: logical eraseblock number
+ *
+ * This function adds new entry for logical eraseblock (@vol_id, @lnum) to the
+ * lock tree. If such entry is already there, its usage counter is increased.
+ * Returns pointer to the lock tree entry or %-ENOMEM if memory allocation
+ * failed.
+ */
+static struct ubi_ltree_entry *ltree_add_entry(struct ubi_device *ubi,
+					       int vol_id, int lnum)
+{
+	struct ubi_ltree_entry *le, *le1, *le_free;
+
+	le = kmalloc(sizeof(struct ubi_ltree_entry), GFP_NOFS);
+	if (!le)
+		return ERR_PTR(-ENOMEM);
+
+	le->users = 0;
+	init_rwsem(&le->mutex);
+	le->vol_id = vol_id;
+	le->lnum = lnum;
+
+	spin_lock(&ubi->ltree_lock);
+	le1 = ltree_lookup(ubi, vol_id, lnum);
+
+	if (le1) {
+		/*
+		 * This logical eraseblock is already locked. The newly
+		 * allocated lock entry is not needed.
+		 */
+		le_free = le;
+		le = le1;
+	} else {
+		struct rb_node **p, *parent = NULL;
+
+		/*
+		 * No lock entry, add the newly allocated one to the
+		 * @ubi->ltree RB-tree.
+		 */
+		le_free = NULL;
+
+		p = &ubi->ltree.rb_node;
+		while (*p) {
+			parent = *p;
+			le1 = rb_entry(parent, struct ubi_ltree_entry, rb);
+
+			if (vol_id < le1->vol_id)
+				p = &(*p)->rb_left;
+			else if (vol_id > le1->vol_id)
+				p = &(*p)->rb_right;
+			else {
+				ubi_assert(lnum != le1->lnum);
+				if (lnum < le1->lnum)
+					p = &(*p)->rb_left;
+				else
+					p = &(*p)->rb_right;
+			}
+		}
+
+		rb_link_node(&le->rb, parent, p);
+		rb_insert_color(&le->rb, &ubi->ltree);
+	}
+	le->users += 1;
+	spin_unlock(&ubi->ltree_lock);
+
+	if (le_free)
+		kfree(le_free);
+
+	return le;
+}
+
+/**
+ * leb_read_lock - lock logical eraseblock for reading.
+ * @ubi: UBI device description object
+ * @vol_id: volume ID
+ * @lnum: logical eraseblock number
+ *
+ * This function locks a logical eraseblock for reading. Returns zero in case
+ * of success and a negative error code in case of failure.
+ */
+static int leb_read_lock(struct ubi_device *ubi, int vol_id, int lnum)
+{
+	struct ubi_ltree_entry *le;
+
+	le = ltree_add_entry(ubi, vol_id, lnum);
+	if (IS_ERR(le))
+		return PTR_ERR(le);
+	down_read(&le->mutex);
+	return 0;
+}
+
+/**
+ * leb_read_unlock - unlock logical eraseblock.
+ * @ubi: UBI device description object
+ * @vol_id: volume ID
+ * @lnum: logical eraseblock number
+ */
+static void leb_read_unlock(struct ubi_device *ubi, int vol_id, int lnum)
+{
+	int _free = 0;
+	struct ubi_ltree_entry *le;
+
+	spin_lock(&ubi->ltree_lock);
+	le = ltree_lookup(ubi, vol_id, lnum);
+	le->users -= 1;
+	ubi_assert(le->users >= 0);
+	if (le->users == 0) {
+		rb_erase(&le->rb, &ubi->ltree);
+		_free = 1;
+	}
+	spin_unlock(&ubi->ltree_lock);
+
+	up_read(&le->mutex);
+	if (_free)
+		kfree(le);
+}
+
+/**
+ * leb_write_lock - lock logical eraseblock for writing.
+ * @ubi: UBI device description object
+ * @vol_id: volume ID
+ * @lnum: logical eraseblock number
+ *
+ * This function locks a logical eraseblock for writing. Returns zero in case
+ * of success and a negative error code in case of failure.
+ */
+static int leb_write_lock(struct ubi_device *ubi, int vol_id, int lnum)
+{
+	struct ubi_ltree_entry *le;
+
+	le = ltree_add_entry(ubi, vol_id, lnum);
+	if (IS_ERR(le))
+		return PTR_ERR(le);
+	down_write(&le->mutex);
+	return 0;
+}
+
+/**
+ * leb_write_lock - lock logical eraseblock for writing.
+ * @ubi: UBI device description object
+ * @vol_id: volume ID
+ * @lnum: logical eraseblock number
+ *
+ * This function locks a logical eraseblock for writing if there is no
+ * contention and does nothing if there is contention. Returns %0 in case of
+ * success, %1 in case of contention, and and a negative error code in case of
+ * failure.
+ */
+static int leb_write_trylock(struct ubi_device *ubi, int vol_id, int lnum)
+{
+	int _free;
+	struct ubi_ltree_entry *le;
+
+	le = ltree_add_entry(ubi, vol_id, lnum);
+	if (IS_ERR(le))
+		return PTR_ERR(le);
+	if (down_write_trylock(&le->mutex))
+		return 0;
+
+	/* Contention, cancel */
+	spin_lock(&ubi->ltree_lock);
+	le->users -= 1;
+	ubi_assert(le->users >= 0);
+	if (le->users == 0) {
+		rb_erase(&le->rb, &ubi->ltree);
+		_free = 1;
+	} else
+		_free = 0;
+	spin_unlock(&ubi->ltree_lock);
+	if (_free)
+		kfree(le);
+
+	return 1;
+}
+
+/**
+ * leb_write_unlock - unlock logical eraseblock.
+ * @ubi: UBI device description object
+ * @vol_id: volume ID
+ * @lnum: logical eraseblock number
+ */
+static void leb_write_unlock(struct ubi_device *ubi, int vol_id, int lnum)
+{
+	int _free;
+	struct ubi_ltree_entry *le;
+
+	spin_lock(&ubi->ltree_lock);
+	le = ltree_lookup(ubi, vol_id, lnum);
+	le->users -= 1;
+	ubi_assert(le->users >= 0);
+	if (le->users == 0) {
+		rb_erase(&le->rb, &ubi->ltree);
+		_free = 1;
+	} else
+		_free = 0;
+	spin_unlock(&ubi->ltree_lock);
+
+	up_write(&le->mutex);
+	if (_free)
+		kfree(le);
+}
+
+/**
+ * ubi_eba_unmap_leb - un-map logical eraseblock.
+ * @ubi: UBI device description object
+ * @vol: volume description object
+ * @lnum: logical eraseblock number
+ *
+ * This function un-maps logical eraseblock @lnum and schedules corresponding
+ * physical eraseblock for erasure. Returns zero in case of success and a
+ * negative error code in case of failure.
+ */
+int ubi_eba_unmap_leb(struct ubi_device *ubi, struct ubi_volume *vol,
+		      int lnum)
+{
+	int err, pnum, vol_id = vol->vol_id;
+
+	if (ubi->ro_mode)
+		return -EROFS;
+
+	err = leb_write_lock(ubi, vol_id, lnum);
+	if (err)
+		return err;
+
+	pnum = vol->eba_tbl[lnum];
+	if (pnum < 0)
+		/* This logical eraseblock is already unmapped */
+		goto out_unlock;
+
+	dbg_eba("erase LEB %d:%d, PEB %d", vol_id, lnum, pnum);
+
+	vol->eba_tbl[lnum] = UBI_LEB_UNMAPPED;
+	err = ubi_wl_put_peb(ubi, pnum, 0);
+
+out_unlock:
+	leb_write_unlock(ubi, vol_id, lnum);
+	return err;
+}
+
+/**
+ * ubi_eba_read_leb - read data.
+ * @ubi: UBI device description object
+ * @vol: volume description object
+ * @lnum: logical eraseblock number
+ * @buf: buffer to store the read data
+ * @offset: offset from where to read
+ * @len: how many bytes to read
+ * @check: data CRC check flag
+ *
+ * If the logical eraseblock @lnum is unmapped, @buf is filled with 0xFF
+ * bytes. The @check flag only makes sense for static volumes and forces
+ * eraseblock data CRC checking.
+ *
+ * In case of success this function returns zero. In case of a static volume,
+ * if data CRC mismatches - %-EBADMSG is returned. %-EBADMSG may also be
+ * returned for any volume type if an ECC error was detected by the MTD device
+ * driver. Other negative error cored may be returned in case of other errors.
+ */
+int ubi_eba_read_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
+		     void *buf, int offset, int len, int check)
+{
+	int err, pnum, scrub = 0, vol_id = vol->vol_id;
+	struct ubi_vid_hdr *vid_hdr;
+	uint32_t uninitialized_var(crc);
+
+	err = leb_read_lock(ubi, vol_id, lnum);
+	if (err)
+		return err;
+
+	pnum = vol->eba_tbl[lnum];
+	if (pnum < 0) {
+		/*
+		 * The logical eraseblock is not mapped, fill the whole buffer
+		 * with 0xFF bytes. The exception is static volumes for which
+		 * it is an error to read unmapped logical eraseblocks.
+		 */
+		dbg_eba("read %d bytes from offset %d of LEB %d:%d (unmapped)",
+			len, offset, vol_id, lnum);
+		leb_read_unlock(ubi, vol_id, lnum);
+		ubi_assert(vol->vol_type != UBI_STATIC_VOLUME);
+		memset(buf, 0xFF, len);
+		return 0;
+	}
+
+	dbg_eba("read %d bytes from offset %d of LEB %d:%d, PEB %d",
+		len, offset, vol_id, lnum, pnum);
+
+	if (vol->vol_type == UBI_DYNAMIC_VOLUME)
+		check = 0;
+
+retry:
+	if (check) {
+		vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_NOFS);
+		if (!vid_hdr) {
+			err = -ENOMEM;
+			goto out_unlock;
+		}
+
+		err = ubi_io_read_vid_hdr(ubi, pnum, vid_hdr, 1);
+		if (err && err != UBI_IO_BITFLIPS) {
+			if (err > 0) {
+				/*
+				 * The header is either absent or corrupted.
+				 * The former case means there is a bug -
+				 * switch to read-only mode just in case.
+				 * The latter case means a real corruption - we
+				 * may try to recover data. FIXME: but this is
+				 * not implemented.
+				 */
+				if (err == UBI_IO_BAD_VID_HDR) {
+					ubi_warn("bad VID header at PEB %d, LEB"
+						 "%d:%d", pnum, vol_id, lnum);
+					err = -EBADMSG;
+				} else
+					ubi_ro_mode(ubi);
+			}
+			goto out_free;
+		} else if (err == UBI_IO_BITFLIPS)
+			scrub = 1;
+
+		ubi_assert(lnum < be32_to_cpu(vid_hdr->used_ebs));
+		ubi_assert(len == be32_to_cpu(vid_hdr->data_size));
+
+		crc = be32_to_cpu(vid_hdr->data_crc);
+		ubi_free_vid_hdr(ubi, vid_hdr);
+	}
+
+	err = ubi_io_read_data(ubi, buf, pnum, offset, len);
+	if (err) {
+		if (err == UBI_IO_BITFLIPS) {
+			scrub = 1;
+			err = 0;
+		} else if (err == -EBADMSG) {
+			if (vol->vol_type == UBI_DYNAMIC_VOLUME)
+				goto out_unlock;
+			scrub = 1;
+			if (!check) {
+				ubi_msg("force data checking");
+				check = 1;
+				goto retry;
+			}
+		} else
+			goto out_unlock;
+	}
+
+	if (check) {
+		uint32_t crc1 = crc32(UBI_CRC32_INIT, buf, len);
+		if (crc1 != crc) {
+			ubi_warn("CRC error: calculated %#08x, must be %#08x",
+				 crc1, crc);
+			err = -EBADMSG;
+			goto out_unlock;
+		}
+	}
+
+	if (scrub)
+		err = ubi_wl_scrub_peb(ubi, pnum);
+
+	leb_read_unlock(ubi, vol_id, lnum);
+	return err;
+
+out_free:
+	ubi_free_vid_hdr(ubi, vid_hdr);
+out_unlock:
+	leb_read_unlock(ubi, vol_id, lnum);
+	return err;
+}
+
+/**
+ * recover_peb - recover from write failure.
+ * @ubi: UBI device description object
+ * @pnum: the physical eraseblock to recover
+ * @vol_id: volume ID
+ * @lnum: logical eraseblock number
+ * @buf: data which was not written because of the write failure
+ * @offset: offset of the failed write
+ * @len: how many bytes should have been written
+ *
+ * This function is called in case of a write failure and moves all good data
+ * from the potentially bad physical eraseblock to a good physical eraseblock.
+ * This function also writes the data which was not written due to the failure.
+ * Returns new physical eraseblock number in case of success, and a negative
+ * error code in case of failure.
+ */
+static int recover_peb(struct ubi_device *ubi, int pnum, int vol_id, int lnum,
+		       const void *buf, int offset, int len)
+{
+	int err, idx = vol_id2idx(ubi, vol_id), new_pnum, data_size, tries = 0;
+	struct ubi_volume *vol = ubi->volumes[idx];
+	struct ubi_vid_hdr *vid_hdr;
+
+	vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_NOFS);
+	if (!vid_hdr) {
+		return -ENOMEM;
+	}
+
+	mutex_lock(&ubi->buf_mutex);
+
+retry:
+	new_pnum = ubi_wl_get_peb(ubi, UBI_UNKNOWN);
+	if (new_pnum < 0) {
+		mutex_unlock(&ubi->buf_mutex);
+		ubi_free_vid_hdr(ubi, vid_hdr);
+		return new_pnum;
+	}
+
+	ubi_msg("recover PEB %d, move data to PEB %d", pnum, new_pnum);
+
+	err = ubi_io_read_vid_hdr(ubi, pnum, vid_hdr, 1);
+	if (err && err != UBI_IO_BITFLIPS) {
+		if (err > 0)
+			err = -EIO;
+		goto out_put;
+	}
+
+	vid_hdr->sqnum = cpu_to_be64(next_sqnum(ubi));
+	err = ubi_io_write_vid_hdr(ubi, new_pnum, vid_hdr);
+	if (err)
+		goto write_error;
+
+	data_size = offset + len;
+	memset(ubi->peb_buf1 + offset, 0xFF, len);
+
+	/* Read everything before the area where the write failure happened */
+	if (offset > 0) {
+		err = ubi_io_read_data(ubi, ubi->peb_buf1, pnum, 0, offset);
+		if (err && err != UBI_IO_BITFLIPS)
+			goto out_put;
+	}
+
+	memcpy(ubi->peb_buf1 + offset, buf, len);
+
+	err = ubi_io_write_data(ubi, ubi->peb_buf1, new_pnum, 0, data_size);
+	if (err)
+		goto write_error;
+
+	mutex_unlock(&ubi->buf_mutex);
+	ubi_free_vid_hdr(ubi, vid_hdr);
+
+	vol->eba_tbl[lnum] = new_pnum;
+	ubi_wl_put_peb(ubi, pnum, 1);
+
+	ubi_msg("data was successfully recovered");
+	return 0;
+
+out_put:
+	mutex_unlock(&ubi->buf_mutex);
+	ubi_wl_put_peb(ubi, new_pnum, 1);
+	ubi_free_vid_hdr(ubi, vid_hdr);
+	return err;
+
+write_error:
+	/*
+	 * Bad luck? This physical eraseblock is bad too? Crud. Let's try to
+	 * get another one.
+	 */
+	ubi_warn("failed to write to PEB %d", new_pnum);
+	ubi_wl_put_peb(ubi, new_pnum, 1);
+	if (++tries > UBI_IO_RETRIES) {
+		mutex_unlock(&ubi->buf_mutex);
+		ubi_free_vid_hdr(ubi, vid_hdr);
+		return err;
+	}
+	ubi_msg("try again");
+	goto retry;
+}
+
+/**
+ * ubi_eba_write_leb - write data to dynamic volume.
+ * @ubi: UBI device description object
+ * @vol: volume description object
+ * @lnum: logical eraseblock number
+ * @buf: the data to write
+ * @offset: offset within the logical eraseblock where to write
+ * @len: how many bytes to write
+ * @dtype: data type
+ *
+ * This function writes data to logical eraseblock @lnum of a dynamic volume
+ * @vol. Returns zero in case of success and a negative error code in case
+ * of failure. In case of error, it is possible that something was still
+ * written to the flash media, but may be some garbage.
+ */
+int ubi_eba_write_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
+		      const void *buf, int offset, int len, int dtype)
+{
+	int err, pnum, tries = 0, vol_id = vol->vol_id;
+	struct ubi_vid_hdr *vid_hdr;
+
+	if (ubi->ro_mode)
+		return -EROFS;
+
+	err = leb_write_lock(ubi, vol_id, lnum);
+	if (err)
+		return err;
+
+	pnum = vol->eba_tbl[lnum];
+	if (pnum >= 0) {
+		dbg_eba("write %d bytes at offset %d of LEB %d:%d, PEB %d",
+			len, offset, vol_id, lnum, pnum);
+
+		err = ubi_io_write_data(ubi, buf, pnum, offset, len);
+		if (err) {
+			ubi_warn("failed to write data to PEB %d", pnum);
+			if (err == -EIO && ubi->bad_allowed)
+				err = recover_peb(ubi, pnum, vol_id, lnum, buf,
+						  offset, len);
+			if (err)
+				ubi_ro_mode(ubi);
+		}
+		leb_write_unlock(ubi, vol_id, lnum);
+		return err;
+	}
+
+	/*
+	 * The logical eraseblock is not mapped. We have to get a free physical
+	 * eraseblock and write the volume identifier header there first.
+	 */
+	vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_NOFS);
+	if (!vid_hdr) {
+		leb_write_unlock(ubi, vol_id, lnum);
+		return -ENOMEM;
+	}
+
+	vid_hdr->vol_type = UBI_VID_DYNAMIC;
+	vid_hdr->sqnum = cpu_to_be64(next_sqnum(ubi));
+	vid_hdr->vol_id = cpu_to_be32(vol_id);
+	vid_hdr->lnum = cpu_to_be32(lnum);
+	vid_hdr->compat = ubi_get_compat(ubi, vol_id);
+	vid_hdr->data_pad = cpu_to_be32(vol->data_pad);
+
+retry:
+	pnum = ubi_wl_get_peb(ubi, dtype);
+	if (pnum < 0) {
+		ubi_free_vid_hdr(ubi, vid_hdr);
+		leb_write_unlock(ubi, vol_id, lnum);
+		return pnum;
+	}
+
+	dbg_eba("write VID hdr and %d bytes at offset %d of LEB %d:%d, PEB %d",
+		len, offset, vol_id, lnum, pnum);
+
+	err = ubi_io_write_vid_hdr(ubi, pnum, vid_hdr);
+	if (err) {
+		ubi_warn("failed to write VID header to LEB %d:%d, PEB %d",
+			 vol_id, lnum, pnum);
+		goto write_error;
+	}
+
+	if (len) {
+		err = ubi_io_write_data(ubi, buf, pnum, offset, len);
+		if (err) {
+			ubi_warn("failed to write %d bytes at offset %d of "
+				 "LEB %d:%d, PEB %d", len, offset, vol_id,
+				 lnum, pnum);
+			goto write_error;
+		}
+	}
+
+	vol->eba_tbl[lnum] = pnum;
+
+	leb_write_unlock(ubi, vol_id, lnum);
+	ubi_free_vid_hdr(ubi, vid_hdr);
+	return 0;
+
+write_error:
+	if (err != -EIO || !ubi->bad_allowed) {
+		ubi_ro_mode(ubi);
+		leb_write_unlock(ubi, vol_id, lnum);
+		ubi_free_vid_hdr(ubi, vid_hdr);
+		return err;
+	}
+
+	/*
+	 * Fortunately, this is the first write operation to this physical
+	 * eraseblock, so just put it and request a new one. We assume that if
+	 * this physical eraseblock went bad, the erase code will handle that.
+	 */
+	err = ubi_wl_put_peb(ubi, pnum, 1);
+	if (err || ++tries > UBI_IO_RETRIES) {
+		ubi_ro_mode(ubi);
+		leb_write_unlock(ubi, vol_id, lnum);
+		ubi_free_vid_hdr(ubi, vid_hdr);
+		return err;
+	}
+
+	vid_hdr->sqnum = cpu_to_be64(next_sqnum(ubi));
+	ubi_msg("try another PEB");
+	goto retry;
+}
+
+/**
+ * ubi_eba_write_leb_st - write data to static volume.
+ * @ubi: UBI device description object
+ * @vol: volume description object
+ * @lnum: logical eraseblock number
+ * @buf: data to write
+ * @len: how many bytes to write
+ * @dtype: data type
+ * @used_ebs: how many logical eraseblocks will this volume contain
+ *
+ * This function writes data to logical eraseblock @lnum of static volume
+ * @vol. The @used_ebs argument should contain total number of logical
+ * eraseblock in this static volume.
+ *
+ * When writing to the last logical eraseblock, the @len argument doesn't have
+ * to be aligned to the minimal I/O unit size. Instead, it has to be equivalent
+ * to the real data size, although the @buf buffer has to contain the
+ * alignment. In all other cases, @len has to be aligned.
+ *
+ * It is prohibited to write more then once to logical eraseblocks of static
+ * volumes. This function returns zero in case of success and a negative error
+ * code in case of failure.
+ */
+int ubi_eba_write_leb_st(struct ubi_device *ubi, struct ubi_volume *vol,
+			 int lnum, const void *buf, int len, int dtype,
+			 int used_ebs)
+{
+	int err, pnum, tries = 0, data_size = len, vol_id = vol->vol_id;
+	struct ubi_vid_hdr *vid_hdr;
+	uint32_t crc;
+
+	if (ubi->ro_mode)
+		return -EROFS;
+
+	if (lnum == used_ebs - 1)
+		/* If this is the last LEB @len may be unaligned */
+		len = ALIGN(data_size, ubi->min_io_size);
+	else
+		ubi_assert(!(len & (ubi->min_io_size - 1)));
+
+	vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_NOFS);
+	if (!vid_hdr)
+		return -ENOMEM;
+
+	err = leb_write_lock(ubi, vol_id, lnum);
+	if (err) {
+		ubi_free_vid_hdr(ubi, vid_hdr);
+		return err;
+	}
+
+	vid_hdr->sqnum = cpu_to_be64(next_sqnum(ubi));
+	vid_hdr->vol_id = cpu_to_be32(vol_id);
+	vid_hdr->lnum = cpu_to_be32(lnum);
+	vid_hdr->compat = ubi_get_compat(ubi, vol_id);
+	vid_hdr->data_pad = cpu_to_be32(vol->data_pad);
+
+	crc = crc32(UBI_CRC32_INIT, buf, data_size);
+	vid_hdr->vol_type = UBI_VID_STATIC;
+	vid_hdr->data_size = cpu_to_be32(data_size);
+	vid_hdr->used_ebs = cpu_to_be32(used_ebs);
+	vid_hdr->data_crc = cpu_to_be32(crc);
+
+retry:
+	pnum = ubi_wl_get_peb(ubi, dtype);
+	if (pnum < 0) {
+		ubi_free_vid_hdr(ubi, vid_hdr);
+		leb_write_unlock(ubi, vol_id, lnum);
+		return pnum;
+	}
+
+	dbg_eba("write VID hdr and %d bytes at LEB %d:%d, PEB %d, used_ebs %d",
+		len, vol_id, lnum, pnum, used_ebs);
+
+	err = ubi_io_write_vid_hdr(ubi, pnum, vid_hdr);
+	if (err) {
+		ubi_warn("failed to write VID header to LEB %d:%d, PEB %d",
+			 vol_id, lnum, pnum);
+		goto write_error;
+	}
+
+	err = ubi_io_write_data(ubi, buf, pnum, 0, len);
+	if (err) {
+		ubi_warn("failed to write %d bytes of data to PEB %d",
+			 len, pnum);
+		goto write_error;
+	}
+
+	ubi_assert(vol->eba_tbl[lnum] < 0);
+	vol->eba_tbl[lnum] = pnum;
+
+	leb_write_unlock(ubi, vol_id, lnum);
+	ubi_free_vid_hdr(ubi, vid_hdr);
+	return 0;
+
+write_error:
+	if (err != -EIO || !ubi->bad_allowed) {
+		/*
+		 * This flash device does not admit of bad eraseblocks or
+		 * something nasty and unexpected happened. Switch to read-only
+		 * mode just in case.
+		 */
+		ubi_ro_mode(ubi);
+		leb_write_unlock(ubi, vol_id, lnum);
+		ubi_free_vid_hdr(ubi, vid_hdr);
+		return err;
+	}
+
+	err = ubi_wl_put_peb(ubi, pnum, 1);
+	if (err || ++tries > UBI_IO_RETRIES) {
+		ubi_ro_mode(ubi);
+		leb_write_unlock(ubi, vol_id, lnum);
+		ubi_free_vid_hdr(ubi, vid_hdr);
+		return err;
+	}
+
+	vid_hdr->sqnum = cpu_to_be64(next_sqnum(ubi));
+	ubi_msg("try another PEB");
+	goto retry;
+}
+
+/*
+ * ubi_eba_atomic_leb_change - change logical eraseblock atomically.
+ * @ubi: UBI device description object
+ * @vol: volume description object
+ * @lnum: logical eraseblock number
+ * @buf: data to write
+ * @len: how many bytes to write
+ * @dtype: data type
+ *
+ * This function changes the contents of a logical eraseblock atomically. @buf
+ * has to contain new logical eraseblock data, and @len - the length of the
+ * data, which has to be aligned. This function guarantees that in case of an
+ * unclean reboot the old contents is preserved. Returns zero in case of
+ * success and a negative error code in case of failure.
+ *
+ * UBI reserves one LEB for the "atomic LEB change" operation, so only one
+ * LEB change may be done at a time. This is ensured by @ubi->alc_mutex.
+ */
+int ubi_eba_atomic_leb_change(struct ubi_device *ubi, struct ubi_volume *vol,
+			      int lnum, const void *buf, int len, int dtype)
+{
+	int err, pnum, tries = 0, vol_id = vol->vol_id;
+	struct ubi_vid_hdr *vid_hdr;
+	uint32_t crc;
+
+	if (ubi->ro_mode)
+		return -EROFS;
+
+	if (len == 0) {
+		/*
+		 * Special case when data length is zero. In this case the LEB
+		 * has to be unmapped and mapped somewhere else.
+		 */
+		err = ubi_eba_unmap_leb(ubi, vol, lnum);
+		if (err)
+			return err;
+		return ubi_eba_write_leb(ubi, vol, lnum, NULL, 0, 0, dtype);
+	}
+
+	vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_NOFS);
+	if (!vid_hdr)
+		return -ENOMEM;
+
+	mutex_lock(&ubi->alc_mutex);
+	err = leb_write_lock(ubi, vol_id, lnum);
+	if (err)
+		goto out_mutex;
+
+	vid_hdr->sqnum = cpu_to_be64(next_sqnum(ubi));
+	vid_hdr->vol_id = cpu_to_be32(vol_id);
+	vid_hdr->lnum = cpu_to_be32(lnum);
+	vid_hdr->compat = ubi_get_compat(ubi, vol_id);
+	vid_hdr->data_pad = cpu_to_be32(vol->data_pad);
+
+	crc = crc32(UBI_CRC32_INIT, buf, len);
+	vid_hdr->vol_type = UBI_VID_DYNAMIC;
+	vid_hdr->data_size = cpu_to_be32(len);
+	vid_hdr->copy_flag = 1;
+	vid_hdr->data_crc = cpu_to_be32(crc);
+
+retry:
+	pnum = ubi_wl_get_peb(ubi, dtype);
+	if (pnum < 0) {
+		err = pnum;
+		goto out_leb_unlock;
+	}
+
+	dbg_eba("change LEB %d:%d, PEB %d, write VID hdr to PEB %d",
+		vol_id, lnum, vol->eba_tbl[lnum], pnum);
+
+	err = ubi_io_write_vid_hdr(ubi, pnum, vid_hdr);
+	if (err) {
+		ubi_warn("failed to write VID header to LEB %d:%d, PEB %d",
+			 vol_id, lnum, pnum);
+		goto write_error;
+	}
+
+	err = ubi_io_write_data(ubi, buf, pnum, 0, len);
+	if (err) {
+		ubi_warn("failed to write %d bytes of data to PEB %d",
+			 len, pnum);
+		goto write_error;
+	}
+
+	if (vol->eba_tbl[lnum] >= 0) {
+		err = ubi_wl_put_peb(ubi, vol->eba_tbl[lnum], 1);
+		if (err)
+			goto out_leb_unlock;
+	}
+
+	vol->eba_tbl[lnum] = pnum;
+
+out_leb_unlock:
+	leb_write_unlock(ubi, vol_id, lnum);
+out_mutex:
+	mutex_unlock(&ubi->alc_mutex);
+	ubi_free_vid_hdr(ubi, vid_hdr);
+	return err;
+
+write_error:
+	if (err != -EIO || !ubi->bad_allowed) {
+		/*
+		 * This flash device does not admit of bad eraseblocks or
+		 * something nasty and unexpected happened. Switch to read-only
+		 * mode just in case.
+		 */
+		ubi_ro_mode(ubi);
+		goto out_leb_unlock;
+	}
+
+	err = ubi_wl_put_peb(ubi, pnum, 1);
+	if (err || ++tries > UBI_IO_RETRIES) {
+		ubi_ro_mode(ubi);
+		goto out_leb_unlock;
+	}
+
+	vid_hdr->sqnum = cpu_to_be64(next_sqnum(ubi));
+	ubi_msg("try another PEB");
+	goto retry;
+}
+
+/**
+ * ubi_eba_copy_leb - copy logical eraseblock.
+ * @ubi: UBI device description object
+ * @from: physical eraseblock number from where to copy
+ * @to: physical eraseblock number where to copy
+ * @vid_hdr: VID header of the @from physical eraseblock
+ *
+ * This function copies logical eraseblock from physical eraseblock @from to
+ * physical eraseblock @to. The @vid_hdr buffer may be changed by this
+ * function. Returns:
+ *   o %0  in case of success;
+ *   o %1 if the operation was canceled and should be tried later (e.g.,
+ *     because a bit-flip was detected at the target PEB);
+ *   o %2 if the volume is being deleted and this LEB should not be moved.
+ */
+int ubi_eba_copy_leb(struct ubi_device *ubi, int from, int to,
+		     struct ubi_vid_hdr *vid_hdr)
+{
+	int err, vol_id, lnum, data_size, aldata_size, idx;
+	struct ubi_volume *vol;
+	uint32_t crc;
+
+	vol_id = be32_to_cpu(vid_hdr->vol_id);
+	lnum = be32_to_cpu(vid_hdr->lnum);
+
+	dbg_eba("copy LEB %d:%d, PEB %d to PEB %d", vol_id, lnum, from, to);
+
+	if (vid_hdr->vol_type == UBI_VID_STATIC) {
+		data_size = be32_to_cpu(vid_hdr->data_size);
+		aldata_size = ALIGN(data_size, ubi->min_io_size);
+	} else
+		data_size = aldata_size =
+			    ubi->leb_size - be32_to_cpu(vid_hdr->data_pad);
+
+	idx = vol_id2idx(ubi, vol_id);
+	spin_lock(&ubi->volumes_lock);
+	/*
+	 * Note, we may race with volume deletion, which means that the volume
+	 * this logical eraseblock belongs to might be being deleted. Since the
+	 * volume deletion unmaps all the volume's logical eraseblocks, it will
+	 * be locked in 'ubi_wl_put_peb()' and wait for the WL worker to finish.
+	 */
+	vol = ubi->volumes[idx];
+	if (!vol) {
+		/* No need to do further work, cancel */
+		dbg_eba("volume %d is being removed, cancel", vol_id);
+		spin_unlock(&ubi->volumes_lock);
+		return 2;
+	}
+	spin_unlock(&ubi->volumes_lock);
+
+	/*
+	 * We do not want anybody to write to this logical eraseblock while we
+	 * are moving it, so lock it.
+	 *
+	 * Note, we are using non-waiting locking here, because we cannot sleep
+	 * on the LEB, since it may cause deadlocks. Indeed, imagine a task is
+	 * unmapping the LEB which is mapped to the PEB we are going to move
+	 * (@from). This task locks the LEB and goes sleep in the
+	 * 'ubi_wl_put_peb()' function on the @ubi->move_mutex. In turn, we are
+	 * holding @ubi->move_mutex and go sleep on the LEB lock. So, if the
+	 * LEB is already locked, we just do not move it and return %1.
+	 */
+	err = leb_write_trylock(ubi, vol_id, lnum);
+	if (err) {
+		dbg_eba("contention on LEB %d:%d, cancel", vol_id, lnum);
+		return err;
+	}
+
+	/*
+	 * The LEB might have been put meanwhile, and the task which put it is
+	 * probably waiting on @ubi->move_mutex. No need to continue the work,
+	 * cancel it.
+	 */
+	if (vol->eba_tbl[lnum] != from) {
+		dbg_eba("LEB %d:%d is no longer mapped to PEB %d, mapped to "
+			"PEB %d, cancel", vol_id, lnum, from,
+			vol->eba_tbl[lnum]);
+		err = 1;
+		goto out_unlock_leb;
+	}
+
+	/*
+	 * OK, now the LEB is locked and we can safely start moving iy. Since
+	 * this function utilizes thie @ubi->peb1_buf buffer which is shared
+	 * with some other functions, so lock the buffer by taking the
+	 * @ubi->buf_mutex.
+	 */
+	mutex_lock(&ubi->buf_mutex);
+	dbg_eba("read %d bytes of data", aldata_size);
+	err = ubi_io_read_data(ubi, ubi->peb_buf1, from, 0, aldata_size);
+	if (err && err != UBI_IO_BITFLIPS) {
+		ubi_warn("error %d while reading data from PEB %d",
+			 err, from);
+		goto out_unlock_buf;
+	}
+
+	/*
+	 * Now we have got to calculate how much data we have to to copy. In
+	 * case of a static volume it is fairly easy - the VID header contains
+	 * the data size. In case of a dynamic volume it is more difficult - we
+	 * have to read the contents, cut 0xFF bytes from the end and copy only
+	 * the first part. We must do this to avoid writing 0xFF bytes as it
+	 * may have some side-effects. And not only this. It is important not
+	 * to include those 0xFFs to CRC because later the they may be filled
+	 * by data.
+	 */
+	if (vid_hdr->vol_type == UBI_VID_DYNAMIC)
+		aldata_size = data_size =
+			ubi_calc_data_len(ubi, ubi->peb_buf1, data_size);
+
+	cond_resched();
+	crc = crc32(UBI_CRC32_INIT, ubi->peb_buf1, data_size);
+	cond_resched();
+
+	/*
+	 * It may turn out to me that the whole @from physical eraseblock
+	 * contains only 0xFF bytes. Then we have to only write the VID header
+	 * and do not write any data. This also means we should not set
+	 * @vid_hdr->copy_flag, @vid_hdr->data_size, and @vid_hdr->data_crc.
+	 */
+	if (data_size > 0) {
+		vid_hdr->copy_flag = 1;
+		vid_hdr->data_size = cpu_to_be32(data_size);
+		vid_hdr->data_crc = cpu_to_be32(crc);
+	}
+	vid_hdr->sqnum = cpu_to_be64(next_sqnum(ubi));
+
+	err = ubi_io_write_vid_hdr(ubi, to, vid_hdr);
+	if (err)
+		goto out_unlock_buf;
+
+	cond_resched();
+
+	/* Read the VID header back and check if it was written correctly */
+	err = ubi_io_read_vid_hdr(ubi, to, vid_hdr, 1);
+	if (err) {
+		if (err != UBI_IO_BITFLIPS)
+			ubi_warn("cannot read VID header back from PEB %d", to);
+		else
+			err = 1;
+		goto out_unlock_buf;
+	}
+
+	if (data_size > 0) {
+		err = ubi_io_write_data(ubi, ubi->peb_buf1, to, 0, aldata_size);
+		if (err)
+			goto out_unlock_buf;
+
+		cond_resched();
+
+		/*
+		 * We've written the data and are going to read it back to make
+		 * sure it was written correctly.
+		 */
+
+		err = ubi_io_read_data(ubi, ubi->peb_buf2, to, 0, aldata_size);
+		if (err) {
+			if (err != UBI_IO_BITFLIPS)
+				ubi_warn("cannot read data back from PEB %d",
+					 to);
+			else
+				err = 1;
+			goto out_unlock_buf;
+		}
+
+		cond_resched();
+
+		if (memcmp(ubi->peb_buf1, ubi->peb_buf2, aldata_size)) {
+			ubi_warn("read data back from PEB %d - it is different",
+				 to);
+			goto out_unlock_buf;
+		}
+	}
+
+	ubi_assert(vol->eba_tbl[lnum] == from);
+	vol->eba_tbl[lnum] = to;
+
+out_unlock_buf:
+	mutex_unlock(&ubi->buf_mutex);
+out_unlock_leb:
+	leb_write_unlock(ubi, vol_id, lnum);
+	return err;
+}
+
+/**
+ * ubi_eba_init_scan - initialize the EBA unit using scanning information.
+ * @ubi: UBI device description object
+ * @si: scanning information
+ *
+ * This function returns zero in case of success and a negative error code in
+ * case of failure.
+ */
+int ubi_eba_init_scan(struct ubi_device *ubi, struct ubi_scan_info *si)
+{
+	int i, j, err, num_volumes;
+	struct ubi_scan_volume *sv;
+	struct ubi_volume *vol;
+	struct ubi_scan_leb *seb;
+	struct rb_node *rb;
+
+	dbg_eba("initialize EBA unit");
+
+	spin_lock_init(&ubi->ltree_lock);
+	mutex_init(&ubi->alc_mutex);
+	ubi->ltree = RB_ROOT;
+
+	ubi->global_sqnum = si->max_sqnum + 1;
+	num_volumes = ubi->vtbl_slots + UBI_INT_VOL_COUNT;
+
+	for (i = 0; i < num_volumes; i++) {
+		vol = ubi->volumes[i];
+		if (!vol)
+			continue;
+
+		cond_resched();
+
+		vol->eba_tbl = kmalloc(vol->reserved_pebs * sizeof(int),
+				       GFP_KERNEL);
+		if (!vol->eba_tbl) {
+			err = -ENOMEM;
+			goto out_free;
+		}
+
+		for (j = 0; j < vol->reserved_pebs; j++)
+			vol->eba_tbl[j] = UBI_LEB_UNMAPPED;
+
+		sv = ubi_scan_find_sv(si, idx2vol_id(ubi, i));
+		if (!sv)
+			continue;
+
+		ubi_rb_for_each_entry(rb, seb, &sv->root, u.rb) {
+			if (seb->lnum >= vol->reserved_pebs)
+				/*
+				 * This may happen in case of an unclean reboot
+				 * during re-size.
+				 */
+				ubi_scan_move_to_list(sv, seb, &si->erase);
+			vol->eba_tbl[seb->lnum] = seb->pnum;
+		}
+	}
+
+	if (ubi->avail_pebs < EBA_RESERVED_PEBS) {
+		ubi_err("no enough physical eraseblocks (%d, need %d)",
+			ubi->avail_pebs, EBA_RESERVED_PEBS);
+		err = -ENOSPC;
+		goto out_free;
+	}
+	ubi->avail_pebs -= EBA_RESERVED_PEBS;
+	ubi->rsvd_pebs += EBA_RESERVED_PEBS;
+
+	if (ubi->bad_allowed) {
+		ubi_calculate_reserved(ubi);
+
+		if (ubi->avail_pebs < ubi->beb_rsvd_level) {
+			/* No enough free physical eraseblocks */
+			ubi->beb_rsvd_pebs = ubi->avail_pebs;
+			ubi_warn("cannot reserve enough PEBs for bad PEB "
+				 "handling, reserved %d, need %d",
+				 ubi->beb_rsvd_pebs, ubi->beb_rsvd_level);
+		} else
+			ubi->beb_rsvd_pebs = ubi->beb_rsvd_level;
+
+		ubi->avail_pebs -= ubi->beb_rsvd_pebs;
+		ubi->rsvd_pebs  += ubi->beb_rsvd_pebs;
+	}
+
+	dbg_eba("EBA unit is initialized");
+	return 0;
+
+out_free:
+	for (i = 0; i < num_volumes; i++) {
+		if (!ubi->volumes[i])
+			continue;
+		kfree(ubi->volumes[i]->eba_tbl);
+	}
+	return err;
+}
+
+/**
+ * ubi_eba_close - close EBA unit.
+ * @ubi: UBI device description object
+ */
+void ubi_eba_close(const struct ubi_device *ubi)
+{
+	int i, num_volumes = ubi->vtbl_slots + UBI_INT_VOL_COUNT;
+
+	dbg_eba("close EBA unit");
+
+	for (i = 0; i < num_volumes; i++) {
+		if (!ubi->volumes[i])
+			continue;
+		kfree(ubi->volumes[i]->eba_tbl);
+	}
+}
diff --git a/drivers/mtd/ubi/io.c b/drivers/mtd/ubi/io.c
new file mode 100644
index 0000000..96d2772
--- /dev/null
+++ b/drivers/mtd/ubi/io.c
@@ -0,0 +1,1274 @@
+/*
+ * Copyright (c) International Business Machines Corp., 2006
+ * Copyright (c) Nokia Corporation, 2006, 2007
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ *
+ * Author: Artem Bityutskiy (���������������� ����������)
+ */
+
+/*
+ * UBI input/output unit.
+ *
+ * This unit provides a uniform way to work with all kinds of the underlying
+ * MTD devices. It also implements handy functions for reading and writing UBI
+ * headers.
+ *
+ * We are trying to have a paranoid mindset and not to trust to what we read
+ * from the flash media in order to be more secure and robust. So this unit
+ * validates every single header it reads from the flash media.
+ *
+ * Some words about how the eraseblock headers are stored.
+ *
+ * The erase counter header is always stored at offset zero. By default, the
+ * VID header is stored after the EC header at the closest aligned offset
+ * (i.e. aligned to the minimum I/O unit size). Data starts next to the VID
+ * header at the closest aligned offset. But this default layout may be
+ * changed. For example, for different reasons (e.g., optimization) UBI may be
+ * asked to put the VID header at further offset, and even at an unaligned
+ * offset. Of course, if the offset of the VID header is unaligned, UBI adds
+ * proper padding in front of it. Data offset may also be changed but it has to
+ * be aligned.
+ *
+ * About minimal I/O units. In general, UBI assumes flash device model where
+ * there is only one minimal I/O unit size. E.g., in case of NOR flash it is 1,
+ * in case of NAND flash it is a NAND page, etc. This is reported by MTD in the
+ * @ubi->mtd->writesize field. But as an exception, UBI admits of using another
+ * (smaller) minimal I/O unit size for EC and VID headers to make it possible
+ * to do different optimizations.
+ *
+ * This is extremely useful in case of NAND flashes which admit of several
+ * write operations to one NAND page. In this case UBI can fit EC and VID
+ * headers at one NAND page. Thus, UBI may use "sub-page" size as the minimal
+ * I/O unit for the headers (the @ubi->hdrs_min_io_size field). But it still
+ * reports NAND page size (@ubi->min_io_size) as a minimal I/O unit for the UBI
+ * users.
+ *
+ * Example: some Samsung NANDs with 2KiB pages allow 4x 512-byte writes, so
+ * although the minimal I/O unit is 2K, UBI uses 512 bytes for EC and VID
+ * headers.
+ *
+ * Q: why not just to treat sub-page as a minimal I/O unit of this flash
+ * device, e.g., make @ubi->min_io_size = 512 in the example above?
+ *
+ * A: because when writing a sub-page, MTD still writes a full 2K page but the
+ * bytes which are no relevant to the sub-page are 0xFF. So, basically, writing
+ * 4x512 sub-pages is 4 times slower then writing one 2KiB NAND page. Thus, we
+ * prefer to use sub-pages only for EV and VID headers.
+ *
+ * As it was noted above, the VID header may start at a non-aligned offset.
+ * For example, in case of a 2KiB page NAND flash with a 512 bytes sub-page,
+ * the VID header may reside at offset 1984 which is the last 64 bytes of the
+ * last sub-page (EC header is always at offset zero). This causes some
+ * difficulties when reading and writing VID headers.
+ *
+ * Suppose we have a 64-byte buffer and we read a VID header at it. We change
+ * the data and want to write this VID header out. As we can only write in
+ * 512-byte chunks, we have to allocate one more buffer and copy our VID header
+ * to offset 448 of this buffer.
+ *
+ * The I/O unit does the following trick in order to avoid this extra copy.
+ * It always allocates a @ubi->vid_hdr_alsize bytes buffer for the VID header
+ * and returns a pointer to offset @ubi->vid_hdr_shift of this buffer. When the
+ * VID header is being written out, it shifts the VID header pointer back and
+ * writes the whole sub-page.
+ */
+
+#ifdef UBI_LINUX
+#include <linux/crc32.h>
+#include <linux/err.h>
+#endif
+
+#include "ubi-barebox.h"
+#include "ubi.h"
+
+#ifdef CONFIG_MTD_UBI_DEBUG_PARANOID
+static int paranoid_check_not_bad(const struct ubi_device *ubi, int pnum);
+static int paranoid_check_peb_ec_hdr(const struct ubi_device *ubi, int pnum);
+static int paranoid_check_ec_hdr(const struct ubi_device *ubi, int pnum,
+				 const struct ubi_ec_hdr *ec_hdr);
+static int paranoid_check_peb_vid_hdr(const struct ubi_device *ubi, int pnum);
+static int paranoid_check_vid_hdr(const struct ubi_device *ubi, int pnum,
+				  const struct ubi_vid_hdr *vid_hdr);
+static int paranoid_check_all_ff(struct ubi_device *ubi, int pnum, int offset,
+				 int len);
+#else
+#define paranoid_check_not_bad(ubi, pnum) 0
+#define paranoid_check_peb_ec_hdr(ubi, pnum)  0
+#define paranoid_check_ec_hdr(ubi, pnum, ec_hdr)  0
+#define paranoid_check_peb_vid_hdr(ubi, pnum) 0
+#define paranoid_check_vid_hdr(ubi, pnum, vid_hdr) 0
+#define paranoid_check_all_ff(ubi, pnum, offset, len) 0
+#endif
+
+/**
+ * ubi_io_read - read data from a physical eraseblock.
+ * @ubi: UBI device description object
+ * @buf: buffer where to store the read data
+ * @pnum: physical eraseblock number to read from
+ * @offset: offset within the physical eraseblock from where to read
+ * @len: how many bytes to read
+ *
+ * This function reads data from offset @offset of physical eraseblock @pnum
+ * and stores the read data in the @buf buffer. The following return codes are
+ * possible:
+ *
+ * o %0 if all the requested data were successfully read;
+ * o %UBI_IO_BITFLIPS if all the requested data were successfully read, but
+ *   correctable bit-flips were detected; this is harmless but may indicate
+ *   that this eraseblock may become bad soon (but do not have to);
+ * o %-EBADMSG if the MTD subsystem reported about data integrity problems, for
+ *   example it can be an ECC error in case of NAND; this most probably means
+ *   that the data is corrupted;
+ * o %-EIO if some I/O error occurred;
+ * o other negative error codes in case of other errors.
+ */
+int ubi_io_read(const struct ubi_device *ubi, void *buf, int pnum, int offset,
+		int len)
+{
+	int err, retries = 0;
+	size_t read;
+	loff_t addr;
+
+	dbg_io("read %d bytes from PEB %d:%d", len, pnum, offset);
+
+	ubi_assert(pnum >= 0 && pnum < ubi->peb_count);
+	ubi_assert(offset >= 0 && offset + len <= ubi->peb_size);
+	ubi_assert(len > 0);
+
+	err = paranoid_check_not_bad(ubi, pnum);
+	if (err)
+		return err > 0 ? -EINVAL : err;
+
+	addr = (loff_t)pnum * ubi->peb_size + offset;
+retry:
+	err = ubi->mtd->read(ubi->mtd, addr, len, &read, buf);
+	if (err) {
+		if (err == -EUCLEAN) {
+			/*
+			 * -EUCLEAN is reported if there was a bit-flip which
+			 * was corrected, so this is harmless.
+			 */
+			ubi_msg("fixable bit-flip detected at PEB %d", pnum);
+			ubi_assert(len == read);
+			return UBI_IO_BITFLIPS;
+		}
+
+		if (read != len && retries++ < UBI_IO_RETRIES) {
+			dbg_io("error %d while reading %d bytes from PEB %d:%d, "
+			       "read only %zd bytes, retry",
+			       err, len, pnum, offset, read);
+			yield();
+			goto retry;
+		}
+
+		ubi_err("error %d while reading %d bytes from PEB %d:%d, "
+			"read %zd bytes", err, len, pnum, offset, read);
+		ubi_dbg_dump_stack();
+
+		/*
+		 * The driver should never return -EBADMSG if it failed to read
+		 * all the requested data. But some buggy drivers might do
+		 * this, so we change it to -EIO.
+		 */
+		if (read != len && err == -EBADMSG) {
+			ubi_assert(0);
+			printk("%s[%d] not here\n", __func__, __LINE__);
+/*			err = -EIO; */
+		}
+	} else {
+		ubi_assert(len == read);
+
+		if (ubi_dbg_is_bitflip()) {
+			dbg_msg("bit-flip (emulated)");
+			err = UBI_IO_BITFLIPS;
+		}
+	}
+
+	return err;
+}
+
+/**
+ * ubi_io_write - write data to a physical eraseblock.
+ * @ubi: UBI device description object
+ * @buf: buffer with the data to write
+ * @pnum: physical eraseblock number to write to
+ * @offset: offset within the physical eraseblock where to write
+ * @len: how many bytes to write
+ *
+ * This function writes @len bytes of data from buffer @buf to offset @offset
+ * of physical eraseblock @pnum. If all the data were successfully written,
+ * zero is returned. If an error occurred, this function returns a negative
+ * error code. If %-EIO is returned, the physical eraseblock most probably went
+ * bad.
+ *
+ * Note, in case of an error, it is possible that something was still written
+ * to the flash media, but may be some garbage.
+ */
+int ubi_io_write(struct ubi_device *ubi, const void *buf, int pnum, int offset,
+		 int len)
+{
+	int err;
+	size_t written;
+	loff_t addr;
+
+	dbg_io("write %d bytes to PEB %d:%d", len, pnum, offset);
+
+	ubi_assert(pnum >= 0 && pnum < ubi->peb_count);
+	ubi_assert(offset >= 0 && offset + len <= ubi->peb_size);
+	ubi_assert(offset % ubi->hdrs_min_io_size == 0);
+	ubi_assert(len > 0 && len % ubi->hdrs_min_io_size == 0);
+
+	if (ubi->ro_mode) {
+		ubi_err("read-only mode");
+		return -EROFS;
+	}
+
+	/* The below has to be compiled out if paranoid checks are disabled */
+
+	err = paranoid_check_not_bad(ubi, pnum);
+	if (err)
+		return err > 0 ? -EINVAL : err;
+
+	/* The area we are writing to has to contain all 0xFF bytes */
+	err = paranoid_check_all_ff(ubi, pnum, offset, len);
+	if (err)
+		return err > 0 ? -EINVAL : err;
+
+	if (offset >= ubi->leb_start) {
+		/*
+		 * We write to the data area of the physical eraseblock. Make
+		 * sure it has valid EC and VID headers.
+		 */
+		err = paranoid_check_peb_ec_hdr(ubi, pnum);
+		if (err)
+			return err > 0 ? -EINVAL : err;
+		err = paranoid_check_peb_vid_hdr(ubi, pnum);
+		if (err)
+			return err > 0 ? -EINVAL : err;
+	}
+
+	if (ubi_dbg_is_write_failure()) {
+		dbg_err("cannot write %d bytes to PEB %d:%d "
+			"(emulated)", len, pnum, offset);
+		ubi_dbg_dump_stack();
+		return -EIO;
+	}
+
+	addr = (loff_t)pnum * ubi->peb_size + offset;
+	err = ubi->mtd->write(ubi->mtd, addr, len, &written, buf);
+	if (err) {
+		ubi_err("error %d while writing %d bytes to PEB %d:%d, written"
+			" %zd bytes", err, len, pnum, offset, written);
+		ubi_dbg_dump_stack();
+	} else
+		ubi_assert(written == len);
+
+	return err;
+}
+
+/**
+ * erase_callback - MTD erasure call-back.
+ * @ei: MTD erase information object.
+ *
+ * Note, even though MTD erase interface is asynchronous, all the current
+ * implementations are synchronous anyway.
+ */
+static void erase_callback(struct erase_info *ei)
+{
+	wake_up_interruptible((wait_queue_head_t *)ei->priv);
+}
+
+/**
+ * do_sync_erase - synchronously erase a physical eraseblock.
+ * @ubi: UBI device description object
+ * @pnum: the physical eraseblock number to erase
+ *
+ * This function synchronously erases physical eraseblock @pnum and returns
+ * zero in case of success and a negative error code in case of failure. If
+ * %-EIO is returned, the physical eraseblock most probably went bad.
+ */
+static int do_sync_erase(struct ubi_device *ubi, int pnum)
+{
+	int err, retries = 0;
+	struct erase_info ei;
+	wait_queue_head_t wq;
+
+	dbg_io("erase PEB %d", pnum);
+
+retry:
+	init_waitqueue_head(&wq);
+	memset(&ei, 0, sizeof(struct erase_info));
+
+	ei.mtd      = ubi->mtd;
+	ei.addr     = (loff_t)pnum * ubi->peb_size;
+	ei.len      = ubi->peb_size;
+	ei.callback = erase_callback;
+	ei.priv     = (unsigned long)&wq;
+
+	err = ubi->mtd->erase(ubi->mtd, &ei);
+	if (err) {
+		if (retries++ < UBI_IO_RETRIES) {
+			dbg_io("error %d while erasing PEB %d, retry",
+			       err, pnum);
+			yield();
+			goto retry;
+		}
+		ubi_err("cannot erase PEB %d, error %d", pnum, err);
+		ubi_dbg_dump_stack();
+		return err;
+	}
+
+	err = wait_event_interruptible(wq, ei.state == MTD_ERASE_DONE ||
+					   ei.state == MTD_ERASE_FAILED);
+	if (err) {
+		ubi_err("interrupted PEB %d erasure", pnum);
+		return -EINTR;
+	}
+
+	if (ei.state == MTD_ERASE_FAILED) {
+		if (retries++ < UBI_IO_RETRIES) {
+			dbg_io("error while erasing PEB %d, retry", pnum);
+			yield();
+			goto retry;
+		}
+		ubi_err("cannot erase PEB %d", pnum);
+		ubi_dbg_dump_stack();
+		return -EIO;
+	}
+
+	err = paranoid_check_all_ff(ubi, pnum, 0, ubi->peb_size);
+	if (err)
+		return err > 0 ? -EINVAL : err;
+
+	if (ubi_dbg_is_erase_failure() && !err) {
+		dbg_err("cannot erase PEB %d (emulated)", pnum);
+		return -EIO;
+	}
+
+	return 0;
+}
+
+/**
+ * check_pattern - check if buffer contains only a certain byte pattern.
+ * @buf: buffer to check
+ * @patt: the pattern to check
+ * @size: buffer size in bytes
+ *
+ * This function returns %1 in there are only @patt bytes in @buf, and %0 if
+ * something else was also found.
+ */
+static int check_pattern(const void *buf, uint8_t patt, int size)
+{
+	int i;
+
+	for (i = 0; i < size; i++)
+		if (((const uint8_t *)buf)[i] != patt)
+			return 0;
+	return 1;
+}
+
+/* Patterns to write to a physical eraseblock when torturing it */
+static uint8_t patterns[] = {0xa5, 0x5a, 0x0};
+
+/**
+ * torture_peb - test a supposedly bad physical eraseblock.
+ * @ubi: UBI device description object
+ * @pnum: the physical eraseblock number to test
+ *
+ * This function returns %-EIO if the physical eraseblock did not pass the
+ * test, a positive number of erase operations done if the test was
+ * successfully passed, and other negative error codes in case of other errors.
+ */
+static int torture_peb(struct ubi_device *ubi, int pnum)
+{
+	int err, i, patt_count;
+
+	patt_count = ARRAY_SIZE(patterns);
+	ubi_assert(patt_count > 0);
+
+	mutex_lock(&ubi->buf_mutex);
+	for (i = 0; i < patt_count; i++) {
+		err = do_sync_erase(ubi, pnum);
+		if (err)
+			goto out;
+
+		/* Make sure the PEB contains only 0xFF bytes */
+		err = ubi_io_read(ubi, ubi->peb_buf1, pnum, 0, ubi->peb_size);
+		if (err)
+			goto out;
+
+		err = check_pattern(ubi->peb_buf1, 0xFF, ubi->peb_size);
+		if (err == 0) {
+			ubi_err("erased PEB %d, but a non-0xFF byte found",
+				pnum);
+			err = -EIO;
+			goto out;
+		}
+
+		/* Write a pattern and check it */
+		memset(ubi->peb_buf1, patterns[i], ubi->peb_size);
+		err = ubi_io_write(ubi, ubi->peb_buf1, pnum, 0, ubi->peb_size);
+		if (err)
+			goto out;
+
+		memset(ubi->peb_buf1, ~patterns[i], ubi->peb_size);
+		err = ubi_io_read(ubi, ubi->peb_buf1, pnum, 0, ubi->peb_size);
+		if (err)
+			goto out;
+
+		err = check_pattern(ubi->peb_buf1, patterns[i], ubi->peb_size);
+		if (err == 0) {
+			ubi_err("pattern %x checking failed for PEB %d",
+				patterns[i], pnum);
+			err = -EIO;
+			goto out;
+		}
+	}
+
+	err = patt_count;
+
+out:
+	mutex_unlock(&ubi->buf_mutex);
+	if (err == UBI_IO_BITFLIPS || err == -EBADMSG) {
+		/*
+		 * If a bit-flip or data integrity error was detected, the test
+		 * has not passed because it happened on a freshly erased
+		 * physical eraseblock which means something is wrong with it.
+		 */
+		ubi_err("read problems on freshly erased PEB %d, must be bad",
+			pnum);
+		err = -EIO;
+	}
+	return err;
+}
+
+/**
+ * ubi_io_sync_erase - synchronously erase a physical eraseblock.
+ * @ubi: UBI device description object
+ * @pnum: physical eraseblock number to erase
+ * @torture: if this physical eraseblock has to be tortured
+ *
+ * This function synchronously erases physical eraseblock @pnum. If @torture
+ * flag is not zero, the physical eraseblock is checked by means of writing
+ * different patterns to it and reading them back. If the torturing is enabled,
+ * the physical eraseblock is erased more then once.
+ *
+ * This function returns the number of erasures made in case of success, %-EIO
+ * if the erasure failed or the torturing test failed, and other negative error
+ * codes in case of other errors. Note, %-EIO means that the physical
+ * eraseblock is bad.
+ */
+int ubi_io_sync_erase(struct ubi_device *ubi, int pnum, int torture)
+{
+	int err, ret = 0;
+
+	ubi_assert(pnum >= 0 && pnum < ubi->peb_count);
+
+	err = paranoid_check_not_bad(ubi, pnum);
+	if (err != 0)
+		return err > 0 ? -EINVAL : err;
+
+	if (ubi->ro_mode) {
+		ubi_err("read-only mode");
+		return -EROFS;
+	}
+
+	if (torture) {
+		ret = torture_peb(ubi, pnum);
+		if (ret < 0)
+			return ret;
+	}
+
+	err = do_sync_erase(ubi, pnum);
+	if (err)
+		return err;
+
+	return ret + 1;
+}
+
+/**
+ * ubi_io_is_bad - check if a physical eraseblock is bad.
+ * @ubi: UBI device description object
+ * @pnum: the physical eraseblock number to check
+ *
+ * This function returns a positive number if the physical eraseblock is bad,
+ * zero if not, and a negative error code if an error occurred.
+ */
+int ubi_io_is_bad(const struct ubi_device *ubi, int pnum)
+{
+	struct mtd_info *mtd = ubi->mtd;
+
+	ubi_assert(pnum >= 0 && pnum < ubi->peb_count);
+
+	if (ubi->bad_allowed) {
+		int ret;
+
+		ret = mtd->block_isbad(mtd, (loff_t)pnum * ubi->peb_size);
+		if (ret < 0)
+			ubi_err("error %d while checking if PEB %d is bad",
+				ret, pnum);
+		else if (ret)
+			dbg_io("PEB %d is bad", pnum);
+		return ret;
+	}
+
+	return 0;
+}
+
+/**
+ * ubi_io_mark_bad - mark a physical eraseblock as bad.
+ * @ubi: UBI device description object
+ * @pnum: the physical eraseblock number to mark
+ *
+ * This function returns zero in case of success and a negative error code in
+ * case of failure.
+ */
+int ubi_io_mark_bad(const struct ubi_device *ubi, int pnum)
+{
+	int err;
+	struct mtd_info *mtd = ubi->mtd;
+
+	ubi_assert(pnum >= 0 && pnum < ubi->peb_count);
+
+	if (ubi->ro_mode) {
+		ubi_err("read-only mode");
+		return -EROFS;
+	}
+
+	if (!ubi->bad_allowed)
+		return 0;
+
+	err = mtd->block_markbad(mtd, (loff_t)pnum * ubi->peb_size);
+	if (err)
+		ubi_err("cannot mark PEB %d bad, error %d", pnum, err);
+	return err;
+}
+
+/**
+ * validate_ec_hdr - validate an erase counter header.
+ * @ubi: UBI device description object
+ * @ec_hdr: the erase counter header to check
+ *
+ * This function returns zero if the erase counter header is OK, and %1 if
+ * not.
+ */
+static int validate_ec_hdr(const struct ubi_device *ubi,
+			   const struct ubi_ec_hdr *ec_hdr)
+{
+	long long ec;
+	int vid_hdr_offset, leb_start;
+
+	ec = be64_to_cpu(ec_hdr->ec);
+	vid_hdr_offset = be32_to_cpu(ec_hdr->vid_hdr_offset);
+	leb_start = be32_to_cpu(ec_hdr->data_offset);
+
+	if (ec_hdr->version != UBI_VERSION) {
+		ubi_err("node with incompatible UBI version found: "
+			"this UBI version is %d, image version is %d",
+			UBI_VERSION, (int)ec_hdr->version);
+		goto bad;
+	}
+
+	if (vid_hdr_offset != ubi->vid_hdr_offset) {
+		ubi_err("bad VID header offset %d, expected %d",
+			vid_hdr_offset, ubi->vid_hdr_offset);
+		goto bad;
+	}
+
+	if (leb_start != ubi->leb_start) {
+		ubi_err("bad data offset %d, expected %d",
+			leb_start, ubi->leb_start);
+		goto bad;
+	}
+
+	if (ec < 0 || ec > UBI_MAX_ERASECOUNTER) {
+		ubi_err("bad erase counter %lld", ec);
+		goto bad;
+	}
+
+	return 0;
+
+bad:
+	ubi_err("bad EC header");
+	ubi_dbg_dump_ec_hdr(ec_hdr);
+	ubi_dbg_dump_stack();
+	return 1;
+}
+
+/**
+ * ubi_io_read_ec_hdr - read and check an erase counter header.
+ * @ubi: UBI device description object
+ * @pnum: physical eraseblock to read from
+ * @ec_hdr: a &struct ubi_ec_hdr object where to store the read erase counter
+ * header
+ * @verbose: be verbose if the header is corrupted or was not found
+ *
+ * This function reads erase counter header from physical eraseblock @pnum and
+ * stores it in @ec_hdr. This function also checks CRC checksum of the read
+ * erase counter header. The following codes may be returned:
+ *
+ * o %0 if the CRC checksum is correct and the header was successfully read;
+ * o %UBI_IO_BITFLIPS if the CRC is correct, but bit-flips were detected
+ *   and corrected by the flash driver; this is harmless but may indicate that
+ *   this eraseblock may become bad soon (but may be not);
+ * o %UBI_IO_BAD_EC_HDR if the erase counter header is corrupted (a CRC error);
+ * o %UBI_IO_PEB_EMPTY if the physical eraseblock is empty;
+ * o a negative error code in case of failure.
+ */
+int ubi_io_read_ec_hdr(struct ubi_device *ubi, int pnum,
+		       struct ubi_ec_hdr *ec_hdr, int verbose)
+{
+	int err, read_err = 0;
+	uint32_t crc, magic, hdr_crc;
+
+	dbg_io("read EC header from PEB %d", pnum);
+	ubi_assert(pnum >= 0 && pnum < ubi->peb_count);
+	if (UBI_IO_DEBUG)
+		verbose = 1;
+
+	err = ubi_io_read(ubi, ec_hdr, pnum, 0, UBI_EC_HDR_SIZE);
+	if (err) {
+		if (err != UBI_IO_BITFLIPS && err != -EBADMSG)
+			return err;
+
+		/*
+		 * We read all the data, but either a correctable bit-flip
+		 * occurred, or MTD reported about some data integrity error,
+		 * like an ECC error in case of NAND. The former is harmless,
+		 * the later may mean that the read data is corrupted. But we
+		 * have a CRC check-sum and we will detect this. If the EC
+		 * header is still OK, we just report this as there was a
+		 * bit-flip.
+		 */
+		read_err = err;
+	}
+
+	magic = be32_to_cpu(ec_hdr->magic);
+	if (magic != UBI_EC_HDR_MAGIC) {
+		/*
+		 * The magic field is wrong. Let's check if we have read all
+		 * 0xFF. If yes, this physical eraseblock is assumed to be
+		 * empty.
+		 *
+		 * But if there was a read error, we do not test it for all
+		 * 0xFFs. Even if it does contain all 0xFFs, this error
+		 * indicates that something is still wrong with this physical
+		 * eraseblock and we anyway cannot treat it as empty.
+		 */
+		if (read_err != -EBADMSG &&
+		    check_pattern(ec_hdr, 0xFF, UBI_EC_HDR_SIZE)) {
+			/* The physical eraseblock is supposedly empty */
+
+			/*
+			 * The below is just a paranoid check, it has to be
+			 * compiled out if paranoid checks are disabled.
+			 */
+			err = paranoid_check_all_ff(ubi, pnum, 0,
+						    ubi->peb_size);
+			if (err)
+				return err > 0 ? UBI_IO_BAD_EC_HDR : err;
+
+			if (verbose)
+				ubi_warn("no EC header found at PEB %d, "
+					 "only 0xFF bytes", pnum);
+			return UBI_IO_PEB_EMPTY;
+		}
+
+		/*
+		 * This is not a valid erase counter header, and these are not
+		 * 0xFF bytes. Report that the header is corrupted.
+		 */
+		if (verbose) {
+			ubi_warn("bad magic number at PEB %d: %08x instead of "
+				 "%08x", pnum, magic, UBI_EC_HDR_MAGIC);
+			ubi_dbg_dump_ec_hdr(ec_hdr);
+		}
+		return UBI_IO_BAD_EC_HDR;
+	}
+
+	crc = crc32(UBI_CRC32_INIT, ec_hdr, UBI_EC_HDR_SIZE_CRC);
+	hdr_crc = be32_to_cpu(ec_hdr->hdr_crc);
+
+	if (hdr_crc != crc) {
+		if (verbose) {
+			ubi_warn("bad EC header CRC at PEB %d, calculated %#08x,"
+				 " read %#08x", pnum, crc, hdr_crc);
+			ubi_dbg_dump_ec_hdr(ec_hdr);
+		}
+		return UBI_IO_BAD_EC_HDR;
+	}
+
+	/* And of course validate what has just been read from the media */
+	err = validate_ec_hdr(ubi, ec_hdr);
+	if (err) {
+		ubi_err("validation failed for PEB %d", pnum);
+		return -EINVAL;
+	}
+
+	return read_err ? UBI_IO_BITFLIPS : 0;
+}
+
+/**
+ * ubi_io_write_ec_hdr - write an erase counter header.
+ * @ubi: UBI device description object
+ * @pnum: physical eraseblock to write to
+ * @ec_hdr: the erase counter header to write
+ *
+ * This function writes erase counter header described by @ec_hdr to physical
+ * eraseblock @pnum. It also fills most fields of @ec_hdr before writing, so
+ * the caller do not have to fill them. Callers must only fill the @ec_hdr->ec
+ * field.
+ *
+ * This function returns zero in case of success and a negative error code in
+ * case of failure. If %-EIO is returned, the physical eraseblock most probably
+ * went bad.
+ */
+int ubi_io_write_ec_hdr(struct ubi_device *ubi, int pnum,
+			struct ubi_ec_hdr *ec_hdr)
+{
+	int err;
+	uint32_t crc;
+
+	dbg_io("write EC header to PEB %d", pnum);
+	ubi_assert(pnum >= 0 &&  pnum < ubi->peb_count);
+
+	ec_hdr->magic = cpu_to_be32(UBI_EC_HDR_MAGIC);
+	ec_hdr->version = UBI_VERSION;
+	ec_hdr->vid_hdr_offset = cpu_to_be32(ubi->vid_hdr_offset);
+	ec_hdr->data_offset = cpu_to_be32(ubi->leb_start);
+	crc = crc32(UBI_CRC32_INIT, ec_hdr, UBI_EC_HDR_SIZE_CRC);
+	ec_hdr->hdr_crc = cpu_to_be32(crc);
+
+	err = paranoid_check_ec_hdr(ubi, pnum, ec_hdr);
+	if (err)
+		return -EINVAL;
+
+	err = ubi_io_write(ubi, ec_hdr, pnum, 0, ubi->ec_hdr_alsize);
+	return err;
+}
+
+/**
+ * validate_vid_hdr - validate a volume identifier header.
+ * @ubi: UBI device description object
+ * @vid_hdr: the volume identifier header to check
+ *
+ * This function checks that data stored in the volume identifier header
+ * @vid_hdr. Returns zero if the VID header is OK and %1 if not.
+ */
+static int validate_vid_hdr(const struct ubi_device *ubi,
+			    const struct ubi_vid_hdr *vid_hdr)
+{
+	int vol_type = vid_hdr->vol_type;
+	int copy_flag = vid_hdr->copy_flag;
+	int vol_id = be32_to_cpu(vid_hdr->vol_id);
+	int lnum = be32_to_cpu(vid_hdr->lnum);
+	int compat = vid_hdr->compat;
+	int data_size = be32_to_cpu(vid_hdr->data_size);
+	int used_ebs = be32_to_cpu(vid_hdr->used_ebs);
+	int data_pad = be32_to_cpu(vid_hdr->data_pad);
+	int data_crc = be32_to_cpu(vid_hdr->data_crc);
+	int usable_leb_size = ubi->leb_size - data_pad;
+
+	if (copy_flag != 0 && copy_flag != 1) {
+		dbg_err("bad copy_flag");
+		goto bad;
+	}
+
+	if (vol_id < 0 || lnum < 0 || data_size < 0 || used_ebs < 0 ||
+	    data_pad < 0) {
+		dbg_err("negative values");
+		goto bad;
+	}
+
+	if (vol_id >= UBI_MAX_VOLUMES && vol_id < UBI_INTERNAL_VOL_START) {
+		dbg_err("bad vol_id");
+		goto bad;
+	}
+
+	if (vol_id < UBI_INTERNAL_VOL_START && compat != 0) {
+		dbg_err("bad compat");
+		goto bad;
+	}
+
+	if (vol_id >= UBI_INTERNAL_VOL_START && compat != UBI_COMPAT_DELETE &&
+	    compat != UBI_COMPAT_RO && compat != UBI_COMPAT_PRESERVE &&
+	    compat != UBI_COMPAT_REJECT) {
+		dbg_err("bad compat");
+		goto bad;
+	}
+
+	if (vol_type != UBI_VID_DYNAMIC && vol_type != UBI_VID_STATIC) {
+		dbg_err("bad vol_type");
+		goto bad;
+	}
+
+	if (data_pad >= ubi->leb_size / 2) {
+		dbg_err("bad data_pad");
+		goto bad;
+	}
+
+	if (vol_type == UBI_VID_STATIC) {
+		/*
+		 * Although from high-level point of view static volumes may
+		 * contain zero bytes of data, but no VID headers can contain
+		 * zero at these fields, because they empty volumes do not have
+		 * mapped logical eraseblocks.
+		 */
+		if (used_ebs == 0) {
+			dbg_err("zero used_ebs");
+			goto bad;
+		}
+		if (data_size == 0) {
+			dbg_err("zero data_size");
+			goto bad;
+		}
+		if (lnum < used_ebs - 1) {
+			if (data_size != usable_leb_size) {
+				dbg_err("bad data_size");
+				goto bad;
+			}
+		} else if (lnum == used_ebs - 1) {
+			if (data_size == 0) {
+				dbg_err("bad data_size at last LEB");
+				goto bad;
+			}
+		} else {
+			dbg_err("too high lnum");
+			goto bad;
+		}
+	} else {
+		if (copy_flag == 0) {
+			if (data_crc != 0) {
+				dbg_err("non-zero data CRC");
+				goto bad;
+			}
+			if (data_size != 0) {
+				dbg_err("non-zero data_size");
+				goto bad;
+			}
+		} else {
+			if (data_size == 0) {
+				dbg_err("zero data_size of copy");
+				goto bad;
+			}
+		}
+		if (used_ebs != 0) {
+			dbg_err("bad used_ebs");
+			goto bad;
+		}
+	}
+
+	return 0;
+
+bad:
+	ubi_err("bad VID header");
+	ubi_dbg_dump_vid_hdr(vid_hdr);
+	ubi_dbg_dump_stack();
+	return 1;
+}
+
+/**
+ * ubi_io_read_vid_hdr - read and check a volume identifier header.
+ * @ubi: UBI device description object
+ * @pnum: physical eraseblock number to read from
+ * @vid_hdr: &struct ubi_vid_hdr object where to store the read volume
+ * identifier header
+ * @verbose: be verbose if the header is corrupted or wasn't found
+ *
+ * This function reads the volume identifier header from physical eraseblock
+ * @pnum and stores it in @vid_hdr. It also checks CRC checksum of the read
+ * volume identifier header. The following codes may be returned:
+ *
+ * o %0 if the CRC checksum is correct and the header was successfully read;
+ * o %UBI_IO_BITFLIPS if the CRC is correct, but bit-flips were detected
+ *   and corrected by the flash driver; this is harmless but may indicate that
+ *   this eraseblock may become bad soon;
+ * o %UBI_IO_BAD_VID_HRD if the volume identifier header is corrupted (a CRC
+ *   error detected);
+ * o %UBI_IO_PEB_FREE if the physical eraseblock is free (i.e., there is no VID
+ *   header there);
+ * o a negative error code in case of failure.
+ */
+int ubi_io_read_vid_hdr(struct ubi_device *ubi, int pnum,
+			struct ubi_vid_hdr *vid_hdr, int verbose)
+{
+	int err, read_err = 0;
+	uint32_t crc, magic, hdr_crc;
+	void *p;
+
+	dbg_io("read VID header from PEB %d", pnum);
+	ubi_assert(pnum >= 0 &&  pnum < ubi->peb_count);
+	if (UBI_IO_DEBUG)
+		verbose = 1;
+
+	p = (char *)vid_hdr - ubi->vid_hdr_shift;
+	err = ubi_io_read(ubi, p, pnum, ubi->vid_hdr_aloffset,
+			  ubi->vid_hdr_alsize);
+	if (err) {
+		if (err != UBI_IO_BITFLIPS && err != -EBADMSG)
+			return err;
+
+		/*
+		 * We read all the data, but either a correctable bit-flip
+		 * occurred, or MTD reported about some data integrity error,
+		 * like an ECC error in case of NAND. The former is harmless,
+		 * the later may mean the read data is corrupted. But we have a
+		 * CRC check-sum and we will identify this. If the VID header is
+		 * still OK, we just report this as there was a bit-flip.
+		 */
+		read_err = err;
+	}
+
+	magic = be32_to_cpu(vid_hdr->magic);
+	if (magic != UBI_VID_HDR_MAGIC) {
+		/*
+		 * If we have read all 0xFF bytes, the VID header probably does
+		 * not exist and the physical eraseblock is assumed to be free.
+		 *
+		 * But if there was a read error, we do not test the data for
+		 * 0xFFs. Even if it does contain all 0xFFs, this error
+		 * indicates that something is still wrong with this physical
+		 * eraseblock and it cannot be regarded as free.
+		 */
+		if (read_err != -EBADMSG &&
+		    check_pattern(vid_hdr, 0xFF, UBI_VID_HDR_SIZE)) {
+			/* The physical eraseblock is supposedly free */
+
+			/*
+			 * The below is just a paranoid check, it has to be
+			 * compiled out if paranoid checks are disabled.
+			 */
+			err = paranoid_check_all_ff(ubi, pnum, ubi->leb_start,
+						    ubi->leb_size);
+			if (err)
+				return err > 0 ? UBI_IO_BAD_VID_HDR : err;
+
+			if (verbose)
+				ubi_warn("no VID header found at PEB %d, "
+					 "only 0xFF bytes", pnum);
+			return UBI_IO_PEB_FREE;
+		}
+
+		/*
+		 * This is not a valid VID header, and these are not 0xFF
+		 * bytes. Report that the header is corrupted.
+		 */
+		if (verbose) {
+			ubi_warn("bad magic number at PEB %d: %08x instead of "
+				 "%08x", pnum, magic, UBI_VID_HDR_MAGIC);
+			ubi_dbg_dump_vid_hdr(vid_hdr);
+		}
+		return UBI_IO_BAD_VID_HDR;
+	}
+
+	crc = crc32(UBI_CRC32_INIT, vid_hdr, UBI_VID_HDR_SIZE_CRC);
+	hdr_crc = be32_to_cpu(vid_hdr->hdr_crc);
+
+	if (hdr_crc != crc) {
+		if (verbose) {
+			ubi_warn("bad CRC at PEB %d, calculated %#08x, "
+				 "read %#08x", pnum, crc, hdr_crc);
+			ubi_dbg_dump_vid_hdr(vid_hdr);
+		}
+		return UBI_IO_BAD_VID_HDR;
+	}
+
+	/* Validate the VID header that we have just read */
+	err = validate_vid_hdr(ubi, vid_hdr);
+	if (err) {
+		ubi_err("validation failed for PEB %d", pnum);
+		return -EINVAL;
+	}
+
+	return read_err ? UBI_IO_BITFLIPS : 0;
+}
+
+/**
+ * ubi_io_write_vid_hdr - write a volume identifier header.
+ * @ubi: UBI device description object
+ * @pnum: the physical eraseblock number to write to
+ * @vid_hdr: the volume identifier header to write
+ *
+ * This function writes the volume identifier header described by @vid_hdr to
+ * physical eraseblock @pnum. This function automatically fills the
+ * @vid_hdr->magic and the @vid_hdr->version fields, as well as calculates
+ * header CRC checksum and stores it at vid_hdr->hdr_crc.
+ *
+ * This function returns zero in case of success and a negative error code in
+ * case of failure. If %-EIO is returned, the physical eraseblock probably went
+ * bad.
+ */
+int ubi_io_write_vid_hdr(struct ubi_device *ubi, int pnum,
+			 struct ubi_vid_hdr *vid_hdr)
+{
+	int err;
+	uint32_t crc;
+	void *p;
+
+	dbg_io("write VID header to PEB %d", pnum);
+	ubi_assert(pnum >= 0 &&  pnum < ubi->peb_count);
+
+	err = paranoid_check_peb_ec_hdr(ubi, pnum);
+	if (err)
+		return err > 0 ? -EINVAL: err;
+
+	vid_hdr->magic = cpu_to_be32(UBI_VID_HDR_MAGIC);
+	vid_hdr->version = UBI_VERSION;
+	crc = crc32(UBI_CRC32_INIT, vid_hdr, UBI_VID_HDR_SIZE_CRC);
+	vid_hdr->hdr_crc = cpu_to_be32(crc);
+
+	err = paranoid_check_vid_hdr(ubi, pnum, vid_hdr);
+	if (err)
+		return -EINVAL;
+
+	p = (char *)vid_hdr - ubi->vid_hdr_shift;
+	err = ubi_io_write(ubi, p, pnum, ubi->vid_hdr_aloffset,
+			   ubi->vid_hdr_alsize);
+	return err;
+}
+
+#ifdef CONFIG_MTD_UBI_DEBUG_PARANOID
+
+/**
+ * paranoid_check_not_bad - ensure that a physical eraseblock is not bad.
+ * @ubi: UBI device description object
+ * @pnum: physical eraseblock number to check
+ *
+ * This function returns zero if the physical eraseblock is good, a positive
+ * number if it is bad and a negative error code if an error occurred.
+ */
+static int paranoid_check_not_bad(const struct ubi_device *ubi, int pnum)
+{
+	int err;
+
+	err = ubi_io_is_bad(ubi, pnum);
+	if (!err)
+		return err;
+
+	ubi_err("paranoid check failed for PEB %d", pnum);
+	ubi_dbg_dump_stack();
+	return err;
+}
+
+/**
+ * paranoid_check_ec_hdr - check if an erase counter header is all right.
+ * @ubi: UBI device description object
+ * @pnum: physical eraseblock number the erase counter header belongs to
+ * @ec_hdr: the erase counter header to check
+ *
+ * This function returns zero if the erase counter header contains valid
+ * values, and %1 if not.
+ */
+static int paranoid_check_ec_hdr(const struct ubi_device *ubi, int pnum,
+				 const struct ubi_ec_hdr *ec_hdr)
+{
+	int err;
+	uint32_t magic;
+
+	magic = be32_to_cpu(ec_hdr->magic);
+	if (magic != UBI_EC_HDR_MAGIC) {
+		ubi_err("bad magic %#08x, must be %#08x",
+			magic, UBI_EC_HDR_MAGIC);
+		goto fail;
+	}
+
+	err = validate_ec_hdr(ubi, ec_hdr);
+	if (err) {
+		ubi_err("paranoid check failed for PEB %d", pnum);
+		goto fail;
+	}
+
+	return 0;
+
+fail:
+	ubi_dbg_dump_ec_hdr(ec_hdr);
+	ubi_dbg_dump_stack();
+	return 1;
+}
+
+/**
+ * paranoid_check_peb_ec_hdr - check that the erase counter header of a
+ * physical eraseblock is in-place and is all right.
+ * @ubi: UBI device description object
+ * @pnum: the physical eraseblock number to check
+ *
+ * This function returns zero if the erase counter header is all right, %1 if
+ * not, and a negative error code if an error occurred.
+ */
+static int paranoid_check_peb_ec_hdr(const struct ubi_device *ubi, int pnum)
+{
+	int err;
+	uint32_t crc, hdr_crc;
+	struct ubi_ec_hdr *ec_hdr;
+
+	ec_hdr = kzalloc(ubi->ec_hdr_alsize, GFP_NOFS);
+	if (!ec_hdr)
+		return -ENOMEM;
+
+	err = ubi_io_read(ubi, ec_hdr, pnum, 0, UBI_EC_HDR_SIZE);
+	if (err && err != UBI_IO_BITFLIPS && err != -EBADMSG)
+		goto exit;
+
+	crc = crc32(UBI_CRC32_INIT, ec_hdr, UBI_EC_HDR_SIZE_CRC);
+	hdr_crc = be32_to_cpu(ec_hdr->hdr_crc);
+	if (hdr_crc != crc) {
+		ubi_err("bad CRC, calculated %#08x, read %#08x", crc, hdr_crc);
+		ubi_err("paranoid check failed for PEB %d", pnum);
+		ubi_dbg_dump_ec_hdr(ec_hdr);
+		ubi_dbg_dump_stack();
+		err = 1;
+		goto exit;
+	}
+
+	err = paranoid_check_ec_hdr(ubi, pnum, ec_hdr);
+
+exit:
+	kfree(ec_hdr);
+	return err;
+}
+
+/**
+ * paranoid_check_vid_hdr - check that a volume identifier header is all right.
+ * @ubi: UBI device description object
+ * @pnum: physical eraseblock number the volume identifier header belongs to
+ * @vid_hdr: the volume identifier header to check
+ *
+ * This function returns zero if the volume identifier header is all right, and
+ * %1 if not.
+ */
+static int paranoid_check_vid_hdr(const struct ubi_device *ubi, int pnum,
+				  const struct ubi_vid_hdr *vid_hdr)
+{
+	int err;
+	uint32_t magic;
+
+	magic = be32_to_cpu(vid_hdr->magic);
+	if (magic != UBI_VID_HDR_MAGIC) {
+		ubi_err("bad VID header magic %#08x at PEB %d, must be %#08x",
+			magic, pnum, UBI_VID_HDR_MAGIC);
+		goto fail;
+	}
+
+	err = validate_vid_hdr(ubi, vid_hdr);
+	if (err) {
+		ubi_err("paranoid check failed for PEB %d", pnum);
+		goto fail;
+	}
+
+	return err;
+
+fail:
+	ubi_err("paranoid check failed for PEB %d", pnum);
+	ubi_dbg_dump_vid_hdr(vid_hdr);
+	ubi_dbg_dump_stack();
+	return 1;
+
+}
+
+/**
+ * paranoid_check_peb_vid_hdr - check that the volume identifier header of a
+ * physical eraseblock is in-place and is all right.
+ * @ubi: UBI device description object
+ * @pnum: the physical eraseblock number to check
+ *
+ * This function returns zero if the volume identifier header is all right,
+ * %1 if not, and a negative error code if an error occurred.
+ */
+static int paranoid_check_peb_vid_hdr(const struct ubi_device *ubi, int pnum)
+{
+	int err;
+	uint32_t crc, hdr_crc;
+	struct ubi_vid_hdr *vid_hdr;
+	void *p;
+
+	vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_NOFS);
+	if (!vid_hdr)
+		return -ENOMEM;
+
+	p = (char *)vid_hdr - ubi->vid_hdr_shift;
+	err = ubi_io_read(ubi, p, pnum, ubi->vid_hdr_aloffset,
+			  ubi->vid_hdr_alsize);
+	if (err && err != UBI_IO_BITFLIPS && err != -EBADMSG)
+		goto exit;
+
+	crc = crc32(UBI_CRC32_INIT, vid_hdr, UBI_EC_HDR_SIZE_CRC);
+	hdr_crc = be32_to_cpu(vid_hdr->hdr_crc);
+	if (hdr_crc != crc) {
+		ubi_err("bad VID header CRC at PEB %d, calculated %#08x, "
+			"read %#08x", pnum, crc, hdr_crc);
+		ubi_err("paranoid check failed for PEB %d", pnum);
+		ubi_dbg_dump_vid_hdr(vid_hdr);
+		ubi_dbg_dump_stack();
+		err = 1;
+		goto exit;
+	}
+
+	err = paranoid_check_vid_hdr(ubi, pnum, vid_hdr);
+
+exit:
+	ubi_free_vid_hdr(ubi, vid_hdr);
+	return err;
+}
+
+/**
+ * paranoid_check_all_ff - check that a region of flash is empty.
+ * @ubi: UBI device description object
+ * @pnum: the physical eraseblock number to check
+ * @offset: the starting offset within the physical eraseblock to check
+ * @len: the length of the region to check
+ *
+ * This function returns zero if only 0xFF bytes are present at offset
+ * @offset of the physical eraseblock @pnum, %1 if not, and a negative error
+ * code if an error occurred.
+ */
+static int paranoid_check_all_ff(struct ubi_device *ubi, int pnum, int offset,
+				 int len)
+{
+	size_t read;
+	int err;
+	loff_t addr = (loff_t)pnum * ubi->peb_size + offset;
+
+	mutex_lock(&ubi->dbg_buf_mutex);
+	err = ubi->mtd->read(ubi->mtd, addr, len, &read, ubi->dbg_peb_buf);
+	if (err && err != -EUCLEAN) {
+		ubi_err("error %d while reading %d bytes from PEB %d:%d, "
+			"read %zd bytes", err, len, pnum, offset, read);
+		goto error;
+	}
+
+	err = check_pattern(ubi->dbg_peb_buf, 0xFF, len);
+	if (err == 0) {
+		ubi_err("flash region at PEB %d:%d, length %d does not "
+			"contain all 0xFF bytes", pnum, offset, len);
+		goto fail;
+	}
+	mutex_unlock(&ubi->dbg_buf_mutex);
+
+	return 0;
+
+fail:
+	ubi_err("paranoid check failed for PEB %d", pnum);
+	dbg_msg("hex dump of the %d-%d region", offset, offset + len);
+	print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1,
+		       ubi->dbg_peb_buf, len, 1);
+	err = 1;
+error:
+	ubi_dbg_dump_stack();
+	mutex_unlock(&ubi->dbg_buf_mutex);
+	return err;
+}
+
+#endif /* CONFIG_MTD_UBI_DEBUG_PARANOID */
diff --git a/drivers/mtd/ubi/kapi.c b/drivers/mtd/ubi/kapi.c
new file mode 100644
index 0000000..fac76f2
--- /dev/null
+++ b/drivers/mtd/ubi/kapi.c
@@ -0,0 +1,638 @@
+/*
+ * Copyright (c) International Business Machines Corp., 2006
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ *
+ * Author: Artem Bityutskiy (���������������� ����������)
+ */
+
+/* This file mostly implements UBI kernel API functions */
+
+#ifdef UBI_LINUX
+#include <linux/module.h>
+#include <linux/err.h>
+#include <asm/div64.h>
+#endif
+
+#include "ubi-barebox.h"
+#include "ubi.h"
+
+/**
+ * ubi_get_device_info - get information about UBI device.
+ * @ubi_num: UBI device number
+ * @di: the information is stored here
+ *
+ * This function returns %0 in case of success, %-EINVAL if the UBI device
+ * number is invalid, and %-ENODEV if there is no such UBI device.
+ */
+int ubi_get_device_info(int ubi_num, struct ubi_device_info *di)
+{
+	struct ubi_device *ubi;
+
+	if (ubi_num < 0 || ubi_num >= UBI_MAX_DEVICES)
+		return -EINVAL;
+
+	ubi = ubi_get_device(ubi_num);
+	if (!ubi)
+		return -ENODEV;
+
+	di->ubi_num = ubi->ubi_num;
+	di->leb_size = ubi->leb_size;
+	di->min_io_size = ubi->min_io_size;
+	di->ro_mode = ubi->ro_mode;
+	di->cdev = ubi->cdev.dev;
+
+	ubi_put_device(ubi);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(ubi_get_device_info);
+
+/**
+ * ubi_get_volume_info - get information about UBI volume.
+ * @desc: volume descriptor
+ * @vi: the information is stored here
+ */
+void ubi_get_volume_info(struct ubi_volume_desc *desc,
+			 struct ubi_volume_info *vi)
+{
+	struct ubi_volume *vol = desc->vol;
+	struct ubi_device *ubi = vol->ubi;
+
+	vi->vol_id = vol->vol_id;
+	vi->ubi_num = ubi->ubi_num;
+	vi->size = vol->reserved_pebs;
+	vi->used_bytes = vol->used_bytes;
+	vi->vol_type = vol->vol_type;
+	vi->corrupted = vol->corrupted;
+	vi->upd_marker = vol->upd_marker;
+	vi->alignment = vol->alignment;
+	vi->usable_leb_size = vol->usable_leb_size;
+	vi->name_len = vol->name_len;
+	vi->name = vol->name;
+	vi->cdev = vol->cdev.dev;
+}
+EXPORT_SYMBOL_GPL(ubi_get_volume_info);
+
+/**
+ * ubi_open_volume - open UBI volume.
+ * @ubi_num: UBI device number
+ * @vol_id: volume ID
+ * @mode: open mode
+ *
+ * The @mode parameter specifies if the volume should be opened in read-only
+ * mode, read-write mode, or exclusive mode. The exclusive mode guarantees that
+ * nobody else will be able to open this volume. UBI allows to have many volume
+ * readers and one writer at a time.
+ *
+ * If a static volume is being opened for the first time since boot, it will be
+ * checked by this function, which means it will be fully read and the CRC
+ * checksum of each logical eraseblock will be checked.
+ *
+ * This function returns volume descriptor in case of success and a negative
+ * error code in case of failure.
+ */
+struct ubi_volume_desc *ubi_open_volume(int ubi_num, int vol_id, int mode)
+{
+	int err;
+	struct ubi_volume_desc *desc;
+	struct ubi_device *ubi;
+	struct ubi_volume *vol;
+
+	dbg_msg("open device %d volume %d, mode %d", ubi_num, vol_id, mode);
+
+	if (ubi_num < 0 || ubi_num >= UBI_MAX_DEVICES)
+		return ERR_PTR(-EINVAL);
+
+	if (mode != UBI_READONLY && mode != UBI_READWRITE &&
+	    mode != UBI_EXCLUSIVE)
+		return ERR_PTR(-EINVAL);
+
+	/*
+	 * First of all, we have to get the UBI device to prevent its removal.
+	 */
+	ubi = ubi_get_device(ubi_num);
+	if (!ubi)
+		return ERR_PTR(-ENODEV);
+
+	if (vol_id < 0 || vol_id >= ubi->vtbl_slots) {
+		err = -EINVAL;
+		goto out_put_ubi;
+	}
+
+	desc = kmalloc(sizeof(struct ubi_volume_desc), GFP_KERNEL);
+	if (!desc) {
+		err = -ENOMEM;
+		goto out_put_ubi;
+	}
+
+	err = -ENODEV;
+	if (!try_module_get(THIS_MODULE))
+		goto out_free;
+
+	spin_lock(&ubi->volumes_lock);
+	vol = ubi->volumes[vol_id];
+	if (!vol)
+		goto out_unlock;
+
+	err = -EBUSY;
+	switch (mode) {
+	case UBI_READONLY:
+		if (vol->exclusive)
+			goto out_unlock;
+		vol->readers += 1;
+		break;
+
+	case UBI_READWRITE:
+		if (vol->exclusive || vol->writers > 0)
+			goto out_unlock;
+		vol->writers += 1;
+		break;
+
+	case UBI_EXCLUSIVE:
+		if (vol->exclusive || vol->writers || vol->readers)
+			goto out_unlock;
+		vol->exclusive = 1;
+		break;
+	}
+	get_device(&vol->dev);
+	vol->ref_count += 1;
+	spin_unlock(&ubi->volumes_lock);
+
+	desc->vol = vol;
+	desc->mode = mode;
+
+	mutex_lock(&ubi->ckvol_mutex);
+	if (!vol->checked) {
+		/* This is the first open - check the volume */
+		err = ubi_check_volume(ubi, vol_id);
+		if (err < 0) {
+			mutex_unlock(&ubi->ckvol_mutex);
+			ubi_close_volume(desc);
+			return ERR_PTR(err);
+		}
+		if (err == 1) {
+			ubi_warn("volume %d on UBI device %d is corrupted",
+				 vol_id, ubi->ubi_num);
+			vol->corrupted = 1;
+		}
+		vol->checked = 1;
+	}
+	mutex_unlock(&ubi->ckvol_mutex);
+
+	return desc;
+
+out_unlock:
+	spin_unlock(&ubi->volumes_lock);
+	module_put(THIS_MODULE);
+out_free:
+	kfree(desc);
+out_put_ubi:
+	ubi_put_device(ubi);
+	return ERR_PTR(err);
+}
+EXPORT_SYMBOL_GPL(ubi_open_volume);
+
+/**
+ * ubi_open_volume_nm - open UBI volume by name.
+ * @ubi_num: UBI device number
+ * @name: volume name
+ * @mode: open mode
+ *
+ * This function is similar to 'ubi_open_volume()', but opens a volume by name.
+ */
+struct ubi_volume_desc *ubi_open_volume_nm(int ubi_num, const char *name,
+					   int mode)
+{
+	int i, vol_id = -1, len;
+	struct ubi_device *ubi;
+	struct ubi_volume_desc *ret;
+
+	dbg_msg("open volume %s, mode %d", name, mode);
+
+	if (!name)
+		return ERR_PTR(-EINVAL);
+
+	len = strnlen(name, UBI_VOL_NAME_MAX + 1);
+	if (len > UBI_VOL_NAME_MAX)
+		return ERR_PTR(-EINVAL);
+
+	if (ubi_num < 0 || ubi_num >= UBI_MAX_DEVICES)
+		return ERR_PTR(-EINVAL);
+
+	ubi = ubi_get_device(ubi_num);
+	if (!ubi)
+		return ERR_PTR(-ENODEV);
+
+	spin_lock(&ubi->volumes_lock);
+	/* Walk all volumes of this UBI device */
+	for (i = 0; i < ubi->vtbl_slots; i++) {
+		struct ubi_volume *vol = ubi->volumes[i];
+
+		if (vol && len == vol->name_len && !strcmp(name, vol->name)) {
+			vol_id = i;
+			break;
+		}
+	}
+	spin_unlock(&ubi->volumes_lock);
+
+	if (vol_id >= 0)
+		ret = ubi_open_volume(ubi_num, vol_id, mode);
+	else
+		ret = ERR_PTR(-ENODEV);
+
+	/*
+	 * We should put the UBI device even in case of success, because
+	 * 'ubi_open_volume()' took a reference as well.
+	 */
+	ubi_put_device(ubi);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(ubi_open_volume_nm);
+
+/**
+ * ubi_close_volume - close UBI volume.
+ * @desc: volume descriptor
+ */
+void ubi_close_volume(struct ubi_volume_desc *desc)
+{
+	struct ubi_volume *vol = desc->vol;
+	struct ubi_device *ubi = vol->ubi;
+
+	dbg_msg("close volume %d, mode %d", vol->vol_id, desc->mode);
+
+	spin_lock(&ubi->volumes_lock);
+	switch (desc->mode) {
+	case UBI_READONLY:
+		vol->readers -= 1;
+		break;
+	case UBI_READWRITE:
+		vol->writers -= 1;
+		break;
+	case UBI_EXCLUSIVE:
+		vol->exclusive = 0;
+	}
+	vol->ref_count -= 1;
+	spin_unlock(&ubi->volumes_lock);
+
+	kfree(desc);
+	put_device(&vol->dev);
+	ubi_put_device(ubi);
+	module_put(THIS_MODULE);
+}
+EXPORT_SYMBOL_GPL(ubi_close_volume);
+
+/**
+ * ubi_leb_read - read data.
+ * @desc: volume descriptor
+ * @lnum: logical eraseblock number to read from
+ * @buf: buffer where to store the read data
+ * @offset: offset within the logical eraseblock to read from
+ * @len: how many bytes to read
+ * @check: whether UBI has to check the read data's CRC or not.
+ *
+ * This function reads data from offset @offset of logical eraseblock @lnum and
+ * stores the data at @buf. When reading from static volumes, @check specifies
+ * whether the data has to be checked or not. If yes, the whole logical
+ * eraseblock will be read and its CRC checksum will be checked (i.e., the CRC
+ * checksum is per-eraseblock). So checking may substantially slow down the
+ * read speed. The @check argument is ignored for dynamic volumes.
+ *
+ * In case of success, this function returns zero. In case of failure, this
+ * function returns a negative error code.
+ *
+ * %-EBADMSG error code is returned:
+ * o for both static and dynamic volumes if MTD driver has detected a data
+ *   integrity problem (unrecoverable ECC checksum mismatch in case of NAND);
+ * o for static volumes in case of data CRC mismatch.
+ *
+ * If the volume is damaged because of an interrupted update this function just
+ * returns immediately with %-EBADF error code.
+ */
+int ubi_leb_read(struct ubi_volume_desc *desc, int lnum, char *buf, int offset,
+		 int len, int check)
+{
+	struct ubi_volume *vol = desc->vol;
+	struct ubi_device *ubi = vol->ubi;
+	int err, vol_id = vol->vol_id;
+
+	dbg_msg("read %d bytes from LEB %d:%d:%d", len, vol_id, lnum, offset);
+
+	if (vol_id < 0 || vol_id >= ubi->vtbl_slots || lnum < 0 ||
+	    lnum >= vol->used_ebs || offset < 0 || len < 0 ||
+	    offset + len > vol->usable_leb_size)
+		return -EINVAL;
+
+	if (vol->vol_type == UBI_STATIC_VOLUME) {
+		if (vol->used_ebs == 0)
+			/* Empty static UBI volume */
+			return 0;
+		if (lnum == vol->used_ebs - 1 &&
+		    offset + len > vol->last_eb_bytes)
+			return -EINVAL;
+	}
+
+	if (vol->upd_marker)
+		return -EBADF;
+	if (len == 0)
+		return 0;
+
+	err = ubi_eba_read_leb(ubi, vol, lnum, buf, offset, len, check);
+	if (err && err == -EBADMSG && vol->vol_type == UBI_STATIC_VOLUME) {
+		ubi_warn("mark volume %d as corrupted", vol_id);
+		vol->corrupted = 1;
+	}
+
+	return err;
+}
+EXPORT_SYMBOL_GPL(ubi_leb_read);
+
+/**
+ * ubi_leb_write - write data.
+ * @desc: volume descriptor
+ * @lnum: logical eraseblock number to write to
+ * @buf: data to write
+ * @offset: offset within the logical eraseblock where to write
+ * @len: how many bytes to write
+ * @dtype: expected data type
+ *
+ * This function writes @len bytes of data from @buf to offset @offset of
+ * logical eraseblock @lnum. The @dtype argument describes expected lifetime of
+ * the data.
+ *
+ * This function takes care of physical eraseblock write failures. If write to
+ * the physical eraseblock write operation fails, the logical eraseblock is
+ * re-mapped to another physical eraseblock, the data is recovered, and the
+ * write finishes. UBI has a pool of reserved physical eraseblocks for this.
+ *
+ * If all the data were successfully written, zero is returned. If an error
+ * occurred and UBI has not been able to recover from it, this function returns
+ * a negative error code. Note, in case of an error, it is possible that
+ * something was still written to the flash media, but that may be some
+ * garbage.
+ *
+ * If the volume is damaged because of an interrupted update this function just
+ * returns immediately with %-EBADF code.
+ */
+int ubi_leb_write(struct ubi_volume_desc *desc, int lnum, const void *buf,
+		  int offset, int len, int dtype)
+{
+	struct ubi_volume *vol = desc->vol;
+	struct ubi_device *ubi = vol->ubi;
+	int vol_id = vol->vol_id;
+
+	dbg_msg("write %d bytes to LEB %d:%d:%d", len, vol_id, lnum, offset);
+
+	if (vol_id < 0 || vol_id >= ubi->vtbl_slots)
+		return -EINVAL;
+
+	if (desc->mode == UBI_READONLY || vol->vol_type == UBI_STATIC_VOLUME)
+		return -EROFS;
+
+	if (lnum < 0 || lnum >= vol->reserved_pebs || offset < 0 || len < 0 ||
+	    offset + len > vol->usable_leb_size ||
+	    offset & (ubi->min_io_size - 1) || len & (ubi->min_io_size - 1))
+		return -EINVAL;
+
+	if (dtype != UBI_LONGTERM && dtype != UBI_SHORTTERM &&
+	    dtype != UBI_UNKNOWN)
+		return -EINVAL;
+
+	if (vol->upd_marker)
+		return -EBADF;
+
+	if (len == 0)
+		return 0;
+
+	return ubi_eba_write_leb(ubi, vol, lnum, buf, offset, len, dtype);
+}
+EXPORT_SYMBOL_GPL(ubi_leb_write);
+
+/*
+ * ubi_leb_change - change logical eraseblock atomically.
+ * @desc: volume descriptor
+ * @lnum: logical eraseblock number to change
+ * @buf: data to write
+ * @len: how many bytes to write
+ * @dtype: expected data type
+ *
+ * This function changes the contents of a logical eraseblock atomically. @buf
+ * has to contain new logical eraseblock data, and @len - the length of the
+ * data, which has to be aligned. The length may be shorter then the logical
+ * eraseblock size, ant the logical eraseblock may be appended to more times
+ * later on. This function guarantees that in case of an unclean reboot the old
+ * contents is preserved. Returns zero in case of success and a negative error
+ * code in case of failure.
+ */
+int ubi_leb_change(struct ubi_volume_desc *desc, int lnum, const void *buf,
+		   int len, int dtype)
+{
+	struct ubi_volume *vol = desc->vol;
+	struct ubi_device *ubi = vol->ubi;
+	int vol_id = vol->vol_id;
+
+	dbg_msg("atomically write %d bytes to LEB %d:%d", len, vol_id, lnum);
+
+	if (vol_id < 0 || vol_id >= ubi->vtbl_slots)
+		return -EINVAL;
+
+	if (desc->mode == UBI_READONLY || vol->vol_type == UBI_STATIC_VOLUME)
+		return -EROFS;
+
+	if (lnum < 0 || lnum >= vol->reserved_pebs || len < 0 ||
+	    len > vol->usable_leb_size || len & (ubi->min_io_size - 1))
+		return -EINVAL;
+
+	if (dtype != UBI_LONGTERM && dtype != UBI_SHORTTERM &&
+	    dtype != UBI_UNKNOWN)
+		return -EINVAL;
+
+	if (vol->upd_marker)
+		return -EBADF;
+
+	if (len == 0)
+		return 0;
+
+	return ubi_eba_atomic_leb_change(ubi, vol, lnum, buf, len, dtype);
+}
+EXPORT_SYMBOL_GPL(ubi_leb_change);
+
+/**
+ * ubi_leb_erase - erase logical eraseblock.
+ * @desc: volume descriptor
+ * @lnum: logical eraseblock number
+ *
+ * This function un-maps logical eraseblock @lnum and synchronously erases the
+ * correspondent physical eraseblock. Returns zero in case of success and a
+ * negative error code in case of failure.
+ *
+ * If the volume is damaged because of an interrupted update this function just
+ * returns immediately with %-EBADF code.
+ */
+int ubi_leb_erase(struct ubi_volume_desc *desc, int lnum)
+{
+	struct ubi_volume *vol = desc->vol;
+	struct ubi_device *ubi = vol->ubi;
+	int err;
+
+	dbg_msg("erase LEB %d:%d", vol->vol_id, lnum);
+
+	if (desc->mode == UBI_READONLY || vol->vol_type == UBI_STATIC_VOLUME)
+		return -EROFS;
+
+	if (lnum < 0 || lnum >= vol->reserved_pebs)
+		return -EINVAL;
+
+	if (vol->upd_marker)
+		return -EBADF;
+
+	err = ubi_eba_unmap_leb(ubi, vol, lnum);
+	if (err)
+		return err;
+
+	return ubi_wl_flush(ubi);
+}
+EXPORT_SYMBOL_GPL(ubi_leb_erase);
+
+/**
+ * ubi_leb_unmap - un-map logical eraseblock.
+ * @desc: volume descriptor
+ * @lnum: logical eraseblock number
+ *
+ * This function un-maps logical eraseblock @lnum and schedules the
+ * corresponding physical eraseblock for erasure, so that it will eventually be
+ * physically erased in background. This operation is much faster then the
+ * erase operation.
+ *
+ * Unlike erase, the un-map operation does not guarantee that the logical
+ * eraseblock will contain all 0xFF bytes when UBI is initialized again. For
+ * example, if several logical eraseblocks are un-mapped, and an unclean reboot
+ * happens after this, the logical eraseblocks will not necessarily be
+ * un-mapped again when this MTD device is attached. They may actually be
+ * mapped to the same physical eraseblocks again. So, this function has to be
+ * used with care.
+ *
+ * In other words, when un-mapping a logical eraseblock, UBI does not store
+ * any information about this on the flash media, it just marks the logical
+ * eraseblock as "un-mapped" in RAM. If UBI is detached before the physical
+ * eraseblock is physically erased, it will be mapped again to the same logical
+ * eraseblock when the MTD device is attached again.
+ *
+ * The main and obvious use-case of this function is when the contents of a
+ * logical eraseblock has to be re-written. Then it is much more efficient to
+ * first un-map it, then write new data, rather then first erase it, then write
+ * new data. Note, once new data has been written to the logical eraseblock,
+ * UBI guarantees that the old contents has gone forever. In other words, if an
+ * unclean reboot happens after the logical eraseblock has been un-mapped and
+ * then written to, it will contain the last written data.
+ *
+ * This function returns zero in case of success and a negative error code in
+ * case of failure. If the volume is damaged because of an interrupted update
+ * this function just returns immediately with %-EBADF code.
+ */
+int ubi_leb_unmap(struct ubi_volume_desc *desc, int lnum)
+{
+	struct ubi_volume *vol = desc->vol;
+	struct ubi_device *ubi = vol->ubi;
+
+	dbg_msg("unmap LEB %d:%d", vol->vol_id, lnum);
+
+	if (desc->mode == UBI_READONLY || vol->vol_type == UBI_STATIC_VOLUME)
+		return -EROFS;
+
+	if (lnum < 0 || lnum >= vol->reserved_pebs)
+		return -EINVAL;
+
+	if (vol->upd_marker)
+		return -EBADF;
+
+	return ubi_eba_unmap_leb(ubi, vol, lnum);
+}
+EXPORT_SYMBOL_GPL(ubi_leb_unmap);
+
+/**
+ * ubi_leb_map - map logical erasblock to a physical eraseblock.
+ * @desc: volume descriptor
+ * @lnum: logical eraseblock number
+ * @dtype: expected data type
+ *
+ * This function maps an un-mapped logical eraseblock @lnum to a physical
+ * eraseblock. This means, that after a successfull invocation of this
+ * function the logical eraseblock @lnum will be empty (contain only %0xFF
+ * bytes) and be mapped to a physical eraseblock, even if an unclean reboot
+ * happens.
+ *
+ * This function returns zero in case of success, %-EBADF if the volume is
+ * damaged because of an interrupted update, %-EBADMSG if the logical
+ * eraseblock is already mapped, and other negative error codes in case of
+ * other failures.
+ */
+int ubi_leb_map(struct ubi_volume_desc *desc, int lnum, int dtype)
+{
+	struct ubi_volume *vol = desc->vol;
+	struct ubi_device *ubi = vol->ubi;
+
+	dbg_msg("unmap LEB %d:%d", vol->vol_id, lnum);
+
+	if (desc->mode == UBI_READONLY || vol->vol_type == UBI_STATIC_VOLUME)
+		return -EROFS;
+
+	if (lnum < 0 || lnum >= vol->reserved_pebs)
+		return -EINVAL;
+
+	if (dtype != UBI_LONGTERM && dtype != UBI_SHORTTERM &&
+	    dtype != UBI_UNKNOWN)
+		return -EINVAL;
+
+	if (vol->upd_marker)
+		return -EBADF;
+
+	if (vol->eba_tbl[lnum] >= 0)
+		return -EBADMSG;
+
+	return ubi_eba_write_leb(ubi, vol, lnum, NULL, 0, 0, dtype);
+}
+EXPORT_SYMBOL_GPL(ubi_leb_map);
+
+/**
+ * ubi_is_mapped - check if logical eraseblock is mapped.
+ * @desc: volume descriptor
+ * @lnum: logical eraseblock number
+ *
+ * This function checks if logical eraseblock @lnum is mapped to a physical
+ * eraseblock. If a logical eraseblock is un-mapped, this does not necessarily
+ * mean it will still be un-mapped after the UBI device is re-attached. The
+ * logical eraseblock may become mapped to the physical eraseblock it was last
+ * mapped to.
+ *
+ * This function returns %1 if the LEB is mapped, %0 if not, and a negative
+ * error code in case of failure. If the volume is damaged because of an
+ * interrupted update this function just returns immediately with %-EBADF error
+ * code.
+ */
+int ubi_is_mapped(struct ubi_volume_desc *desc, int lnum)
+{
+	struct ubi_volume *vol = desc->vol;
+
+	dbg_msg("test LEB %d:%d", vol->vol_id, lnum);
+
+	if (lnum < 0 || lnum >= vol->reserved_pebs)
+		return -EINVAL;
+
+	if (vol->upd_marker)
+		return -EBADF;
+
+	return vol->eba_tbl[lnum] >= 0;
+}
+EXPORT_SYMBOL_GPL(ubi_is_mapped);
diff --git a/drivers/mtd/ubi/misc.c b/drivers/mtd/ubi/misc.c
new file mode 100644
index 0000000..298925d
--- /dev/null
+++ b/drivers/mtd/ubi/misc.c
@@ -0,0 +1,106 @@
+/*
+ * Copyright (c) International Business Machines Corp., 2006
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ *
+ * Author: Artem Bityutskiy (���������������� ����������)
+ */
+
+/* Here we keep miscellaneous functions which are used all over the UBI code */
+
+#include "ubi-barebox.h"
+#include "ubi.h"
+
+/**
+ * calc_data_len - calculate how much real data is stored in a buffer.
+ * @ubi: UBI device description object
+ * @buf: a buffer with the contents of the physical eraseblock
+ * @length: the buffer length
+ *
+ * This function calculates how much "real data" is stored in @buf and returnes
+ * the length. Continuous 0xFF bytes at the end of the buffer are not
+ * considered as "real data".
+ */
+int ubi_calc_data_len(const struct ubi_device *ubi, const void *buf,
+		      int length)
+{
+	int i;
+
+	ubi_assert(!(length & (ubi->min_io_size - 1)));
+
+	for (i = length - 1; i >= 0; i--)
+		if (((const uint8_t *)buf)[i] != 0xFF)
+			break;
+
+	/* The resulting length must be aligned to the minimum flash I/O size */
+	length = ALIGN(i + 1, ubi->min_io_size);
+	return length;
+}
+
+/**
+ * ubi_check_volume - check the contents of a static volume.
+ * @ubi: UBI device description object
+ * @vol_id: ID of the volume to check
+ *
+ * This function checks if static volume @vol_id is corrupted by fully reading
+ * it and checking data CRC. This function returns %0 if the volume is not
+ * corrupted, %1 if it is corrupted and a negative error code in case of
+ * failure. Dynamic volumes are not checked and zero is returned immediately.
+ */
+int ubi_check_volume(struct ubi_device *ubi, int vol_id)
+{
+	void *buf;
+	int err = 0, i;
+	struct ubi_volume *vol = ubi->volumes[vol_id];
+
+	if (vol->vol_type != UBI_STATIC_VOLUME)
+		return 0;
+
+	buf = vmalloc(vol->usable_leb_size);
+	if (!buf)
+		return -ENOMEM;
+
+	for (i = 0; i < vol->used_ebs; i++) {
+		int size;
+
+		if (i == vol->used_ebs - 1)
+			size = vol->last_eb_bytes;
+		else
+			size = vol->usable_leb_size;
+
+		err = ubi_eba_read_leb(ubi, vol, i, buf, 0, size, 1);
+		if (err) {
+			if (err == -EBADMSG)
+				err = 1;
+			break;
+		}
+	}
+
+	vfree(buf);
+	return err;
+}
+
+/**
+ * ubi_calculate_rsvd_pool - calculate how many PEBs must be reserved for bad
+ * eraseblock handling.
+ * @ubi: UBI device description object
+ */
+void ubi_calculate_reserved(struct ubi_device *ubi)
+{
+	ubi->beb_rsvd_level = ubi->good_peb_count/100;
+	ubi->beb_rsvd_level *= CONFIG_MTD_UBI_BEB_RESERVE;
+	if (ubi->beb_rsvd_level < MIN_RESEVED_PEBS)
+		ubi->beb_rsvd_level = MIN_RESEVED_PEBS;
+}
diff --git a/drivers/mtd/ubi/scan.c b/drivers/mtd/ubi/scan.c
new file mode 100644
index 0000000..3e7fc35
--- /dev/null
+++ b/drivers/mtd/ubi/scan.c
@@ -0,0 +1,1362 @@
+/*
+ * Copyright (c) International Business Machines Corp., 2006
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ *
+ * Author: Artem Bityutskiy (���������������� ����������)
+ */
+
+/*
+ * UBI scanning unit.
+ *
+ * This unit is responsible for scanning the flash media, checking UBI
+ * headers and providing complete information about the UBI flash image.
+ *
+ * The scanning information is represented by a &struct ubi_scan_info' object.
+ * Information about found volumes is represented by &struct ubi_scan_volume
+ * objects which are kept in volume RB-tree with root at the @volumes field.
+ * The RB-tree is indexed by the volume ID.
+ *
+ * Found logical eraseblocks are represented by &struct ubi_scan_leb objects.
+ * These objects are kept in per-volume RB-trees with the root at the
+ * corresponding &struct ubi_scan_volume object. To put it differently, we keep
+ * an RB-tree of per-volume objects and each of these objects is the root of
+ * RB-tree of per-eraseblock objects.
+ *
+ * Corrupted physical eraseblocks are put to the @corr list, free physical
+ * eraseblocks are put to the @free list and the physical eraseblock to be
+ * erased are put to the @erase list.
+ */
+
+#ifdef UBI_LINUX
+#include <linux/err.h>
+#include <linux/crc32.h>
+#include <asm/div64.h>
+#endif
+
+#include "ubi-barebox.h"
+#include "ubi.h"
+
+#ifdef CONFIG_MTD_UBI_DEBUG_PARANOID
+static int paranoid_check_si(struct ubi_device *ubi, struct ubi_scan_info *si);
+#else
+#define paranoid_check_si(ubi, si) 0
+#endif
+
+/* Temporary variables used during scanning */
+static struct ubi_ec_hdr *ech;
+static struct ubi_vid_hdr *vidh;
+
+/**
+ * add_to_list - add physical eraseblock to a list.
+ * @si: scanning information
+ * @pnum: physical eraseblock number to add
+ * @ec: erase counter of the physical eraseblock
+ * @list: the list to add to
+ *
+ * This function adds physical eraseblock @pnum to free, erase, corrupted or
+ * alien lists. Returns zero in case of success and a negative error code in
+ * case of failure.
+ */
+static int add_to_list(struct ubi_scan_info *si, int pnum, int ec,
+		       struct list_head *list)
+{
+	struct ubi_scan_leb *seb;
+
+	if (list == &si->free)
+		dbg_bld("add to free: PEB %d, EC %d", pnum, ec);
+	else if (list == &si->erase)
+		dbg_bld("add to erase: PEB %d, EC %d", pnum, ec);
+	else if (list == &si->corr)
+		dbg_bld("add to corrupted: PEB %d, EC %d", pnum, ec);
+	else if (list == &si->alien)
+		dbg_bld("add to alien: PEB %d, EC %d", pnum, ec);
+	else
+		BUG();
+
+	seb = kmalloc(sizeof(struct ubi_scan_leb), GFP_KERNEL);
+	if (!seb)
+		return -ENOMEM;
+
+	seb->pnum = pnum;
+	seb->ec = ec;
+	list_add_tail(&seb->u.list, list);
+	return 0;
+}
+
+/**
+ * validate_vid_hdr - check that volume identifier header is correct and
+ * consistent.
+ * @vid_hdr: the volume identifier header to check
+ * @sv: information about the volume this logical eraseblock belongs to
+ * @pnum: physical eraseblock number the VID header came from
+ *
+ * This function checks that data stored in @vid_hdr is consistent. Returns
+ * non-zero if an inconsistency was found and zero if not.
+ *
+ * Note, UBI does sanity check of everything it reads from the flash media.
+ * Most of the checks are done in the I/O unit. Here we check that the
+ * information in the VID header is consistent to the information in other VID
+ * headers of the same volume.
+ */
+static int validate_vid_hdr(const struct ubi_vid_hdr *vid_hdr,
+			    const struct ubi_scan_volume *sv, int pnum)
+{
+	int vol_type = vid_hdr->vol_type;
+	int vol_id = be32_to_cpu(vid_hdr->vol_id);
+	int used_ebs = be32_to_cpu(vid_hdr->used_ebs);
+	int data_pad = be32_to_cpu(vid_hdr->data_pad);
+
+	if (sv->leb_count != 0) {
+		int sv_vol_type;
+
+		/*
+		 * This is not the first logical eraseblock belonging to this
+		 * volume. Ensure that the data in its VID header is consistent
+		 * to the data in previous logical eraseblock headers.
+		 */
+
+		if (vol_id != sv->vol_id) {
+			dbg_err("inconsistent vol_id");
+			goto bad;
+		}
+
+		if (sv->vol_type == UBI_STATIC_VOLUME)
+			sv_vol_type = UBI_VID_STATIC;
+		else
+			sv_vol_type = UBI_VID_DYNAMIC;
+
+		if (vol_type != sv_vol_type) {
+			dbg_err("inconsistent vol_type");
+			goto bad;
+		}
+
+		if (used_ebs != sv->used_ebs) {
+			dbg_err("inconsistent used_ebs");
+			goto bad;
+		}
+
+		if (data_pad != sv->data_pad) {
+			dbg_err("inconsistent data_pad");
+			goto bad;
+		}
+	}
+
+	return 0;
+
+bad:
+	ubi_err("inconsistent VID header at PEB %d", pnum);
+	ubi_dbg_dump_vid_hdr(vid_hdr);
+	ubi_dbg_dump_sv(sv);
+	return -EINVAL;
+}
+
+/**
+ * add_volume - add volume to the scanning information.
+ * @si: scanning information
+ * @vol_id: ID of the volume to add
+ * @pnum: physical eraseblock number
+ * @vid_hdr: volume identifier header
+ *
+ * If the volume corresponding to the @vid_hdr logical eraseblock is already
+ * present in the scanning information, this function does nothing. Otherwise
+ * it adds corresponding volume to the scanning information. Returns a pointer
+ * to the scanning volume object in case of success and a negative error code
+ * in case of failure.
+ */
+static struct ubi_scan_volume *add_volume(struct ubi_scan_info *si, int vol_id,
+					  int pnum,
+					  const struct ubi_vid_hdr *vid_hdr)
+{
+	struct ubi_scan_volume *sv;
+	struct rb_node **p = &si->volumes.rb_node, *parent = NULL;
+
+	ubi_assert(vol_id == be32_to_cpu(vid_hdr->vol_id));
+
+	/* Walk the volume RB-tree to look if this volume is already present */
+	while (*p) {
+		parent = *p;
+		sv = rb_entry(parent, struct ubi_scan_volume, rb);
+
+		if (vol_id == sv->vol_id)
+			return sv;
+
+		if (vol_id > sv->vol_id)
+			p = &(*p)->rb_left;
+		else
+			p = &(*p)->rb_right;
+	}
+
+	/* The volume is absent - add it */
+	sv = kmalloc(sizeof(struct ubi_scan_volume), GFP_KERNEL);
+	if (!sv)
+		return ERR_PTR(-ENOMEM);
+
+	sv->highest_lnum = sv->leb_count = 0;
+	sv->vol_id = vol_id;
+	sv->root = RB_ROOT;
+	sv->used_ebs = be32_to_cpu(vid_hdr->used_ebs);
+	sv->data_pad = be32_to_cpu(vid_hdr->data_pad);
+	sv->compat = vid_hdr->compat;
+	sv->vol_type = vid_hdr->vol_type == UBI_VID_DYNAMIC ? UBI_DYNAMIC_VOLUME
+							    : UBI_STATIC_VOLUME;
+	if (vol_id > si->highest_vol_id)
+		si->highest_vol_id = vol_id;
+
+	rb_link_node(&sv->rb, parent, p);
+	rb_insert_color(&sv->rb, &si->volumes);
+	si->vols_found += 1;
+	dbg_bld("added volume %d", vol_id);
+	return sv;
+}
+
+/**
+ * compare_lebs - find out which logical eraseblock is newer.
+ * @ubi: UBI device description object
+ * @seb: first logical eraseblock to compare
+ * @pnum: physical eraseblock number of the second logical eraseblock to
+ * compare
+ * @vid_hdr: volume identifier header of the second logical eraseblock
+ *
+ * This function compares 2 copies of a LEB and informs which one is newer. In
+ * case of success this function returns a positive value, in case of failure, a
+ * negative error code is returned. The success return codes use the following
+ * bits:
+ *     o bit 0 is cleared: the first PEB (described by @seb) is newer then the
+ *       second PEB (described by @pnum and @vid_hdr);
+ *     o bit 0 is set: the second PEB is newer;
+ *     o bit 1 is cleared: no bit-flips were detected in the newer LEB;
+ *     o bit 1 is set: bit-flips were detected in the newer LEB;
+ *     o bit 2 is cleared: the older LEB is not corrupted;
+ *     o bit 2 is set: the older LEB is corrupted.
+ */
+static int compare_lebs(struct ubi_device *ubi, const struct ubi_scan_leb *seb,
+			int pnum, const struct ubi_vid_hdr *vid_hdr)
+{
+	void *buf;
+	int len, err, second_is_newer, bitflips = 0, corrupted = 0;
+	uint32_t data_crc, crc;
+	struct ubi_vid_hdr *vh = NULL;
+	unsigned long long sqnum2 = be64_to_cpu(vid_hdr->sqnum);
+
+	if (seb->sqnum == 0 && sqnum2 == 0) {
+		long long abs, v1 = seb->leb_ver, v2 = be32_to_cpu(vid_hdr->leb_ver);
+
+		/*
+		 * UBI constantly increases the logical eraseblock version
+		 * number and it can overflow. Thus, we have to bear in mind
+		 * that versions that are close to %0xFFFFFFFF are less then
+		 * versions that are close to %0.
+		 *
+		 * The UBI WL unit guarantees that the number of pending tasks
+		 * is not greater then %0x7FFFFFFF. So, if the difference
+		 * between any two versions is greater or equivalent to
+		 * %0x7FFFFFFF, there was an overflow and the logical
+		 * eraseblock with lower version is actually newer then the one
+		 * with higher version.
+		 *
+		 * FIXME: but this is anyway obsolete and will be removed at
+		 * some point.
+		 */
+		dbg_bld("using old crappy leb_ver stuff");
+
+		if (v1 == v2) {
+			ubi_err("PEB %d and PEB %d have the same version %lld",
+				seb->pnum, pnum, v1);
+			return -EINVAL;
+		}
+
+		abs = v1 - v2;
+		if (abs < 0)
+			abs = -abs;
+
+		if (abs < 0x7FFFFFFF)
+			/* Non-overflow situation */
+			second_is_newer = (v2 > v1);
+		else
+			second_is_newer = (v2 < v1);
+	} else
+		/* Obviously the LEB with lower sequence counter is older */
+		second_is_newer = sqnum2 > seb->sqnum;
+
+	/*
+	 * Now we know which copy is newer. If the copy flag of the PEB with
+	 * newer version is not set, then we just return, otherwise we have to
+	 * check data CRC. For the second PEB we already have the VID header,
+	 * for the first one - we'll need to re-read it from flash.
+	 *
+	 * FIXME: this may be optimized so that we wouldn't read twice.
+	 */
+
+	if (second_is_newer) {
+		if (!vid_hdr->copy_flag) {
+			/* It is not a copy, so it is newer */
+			dbg_bld("second PEB %d is newer, copy_flag is unset",
+				pnum);
+			return 1;
+		}
+	} else {
+		pnum = seb->pnum;
+
+		vh = ubi_zalloc_vid_hdr(ubi, GFP_KERNEL);
+		if (!vh)
+			return -ENOMEM;
+
+		err = ubi_io_read_vid_hdr(ubi, pnum, vh, 0);
+		if (err) {
+			if (err == UBI_IO_BITFLIPS)
+				bitflips = 1;
+			else {
+				dbg_err("VID of PEB %d header is bad, but it "
+					"was OK earlier", pnum);
+				if (err > 0)
+					err = -EIO;
+
+				goto out_free_vidh;
+			}
+		}
+
+		if (!vh->copy_flag) {
+			/* It is not a copy, so it is newer */
+			dbg_bld("first PEB %d is newer, copy_flag is unset",
+				pnum);
+			err = bitflips << 1;
+			goto out_free_vidh;
+		}
+
+		vid_hdr = vh;
+	}
+
+	/* Read the data of the copy and check the CRC */
+
+	len = be32_to_cpu(vid_hdr->data_size);
+	buf = vmalloc(len);
+	if (!buf) {
+		err = -ENOMEM;
+		goto out_free_vidh;
+	}
+
+	err = ubi_io_read_data(ubi, buf, pnum, 0, len);
+	if (err && err != UBI_IO_BITFLIPS)
+		goto out_free_buf;
+
+	data_crc = be32_to_cpu(vid_hdr->data_crc);
+	crc = crc32(UBI_CRC32_INIT, buf, len);
+	if (crc != data_crc) {
+		dbg_bld("PEB %d CRC error: calculated %#08x, must be %#08x",
+			pnum, crc, data_crc);
+		corrupted = 1;
+		bitflips = 0;
+		second_is_newer = !second_is_newer;
+	} else {
+		dbg_bld("PEB %d CRC is OK", pnum);
+		bitflips = !!err;
+	}
+
+	vfree(buf);
+	ubi_free_vid_hdr(ubi, vh);
+
+	if (second_is_newer)
+		dbg_bld("second PEB %d is newer, copy_flag is set", pnum);
+	else
+		dbg_bld("first PEB %d is newer, copy_flag is set", pnum);
+
+	return second_is_newer | (bitflips << 1) | (corrupted << 2);
+
+out_free_buf:
+	vfree(buf);
+out_free_vidh:
+	ubi_free_vid_hdr(ubi, vh);
+	return err;
+}
+
+/**
+ * ubi_scan_add_used - add information about a physical eraseblock to the
+ * scanning information.
+ * @ubi: UBI device description object
+ * @si: scanning information
+ * @pnum: the physical eraseblock number
+ * @ec: erase counter
+ * @vid_hdr: the volume identifier header
+ * @bitflips: if bit-flips were detected when this physical eraseblock was read
+ *
+ * This function adds information about a used physical eraseblock to the
+ * 'used' tree of the corresponding volume. The function is rather complex
+ * because it has to handle cases when this is not the first physical
+ * eraseblock belonging to the same logical eraseblock, and the newer one has
+ * to be picked, while the older one has to be dropped. This function returns
+ * zero in case of success and a negative error code in case of failure.
+ */
+int ubi_scan_add_used(struct ubi_device *ubi, struct ubi_scan_info *si,
+		      int pnum, int ec, const struct ubi_vid_hdr *vid_hdr,
+		      int bitflips)
+{
+	int err, vol_id, lnum;
+	uint32_t leb_ver;
+	unsigned long long sqnum;
+	struct ubi_scan_volume *sv;
+	struct ubi_scan_leb *seb;
+	struct rb_node **p, *parent = NULL;
+
+	vol_id = be32_to_cpu(vid_hdr->vol_id);
+	lnum = be32_to_cpu(vid_hdr->lnum);
+	sqnum = be64_to_cpu(vid_hdr->sqnum);
+	leb_ver = be32_to_cpu(vid_hdr->leb_ver);
+
+	dbg_bld("PEB %d, LEB %d:%d, EC %d, sqnum %llu, ver %u, bitflips %d",
+		pnum, vol_id, lnum, ec, sqnum, leb_ver, bitflips);
+
+	sv = add_volume(si, vol_id, pnum, vid_hdr);
+	if (IS_ERR(sv) < 0)
+		return PTR_ERR(sv);
+
+	if (si->max_sqnum < sqnum)
+		si->max_sqnum = sqnum;
+
+	/*
+	 * Walk the RB-tree of logical eraseblocks of volume @vol_id to look
+	 * if this is the first instance of this logical eraseblock or not.
+	 */
+	p = &sv->root.rb_node;
+	while (*p) {
+		int cmp_res;
+
+		parent = *p;
+		seb = rb_entry(parent, struct ubi_scan_leb, u.rb);
+		if (lnum != seb->lnum) {
+			if (lnum < seb->lnum)
+				p = &(*p)->rb_left;
+			else
+				p = &(*p)->rb_right;
+			continue;
+		}
+
+		/*
+		 * There is already a physical eraseblock describing the same
+		 * logical eraseblock present.
+		 */
+
+		dbg_bld("this LEB already exists: PEB %d, sqnum %llu, "
+			"LEB ver %u, EC %d", seb->pnum, seb->sqnum,
+			seb->leb_ver, seb->ec);
+
+		/*
+		 * Make sure that the logical eraseblocks have different
+		 * versions. Otherwise the image is bad.
+		 */
+		if (seb->leb_ver == leb_ver && leb_ver != 0) {
+			ubi_err("two LEBs with same version %u", leb_ver);
+			ubi_dbg_dump_seb(seb, 0);
+			ubi_dbg_dump_vid_hdr(vid_hdr);
+			return -EINVAL;
+		}
+
+		/*
+		 * Make sure that the logical eraseblocks have different
+		 * sequence numbers. Otherwise the image is bad.
+		 *
+		 * FIXME: remove 'sqnum != 0' check when leb_ver is removed.
+		 */
+		if (seb->sqnum == sqnum && sqnum != 0) {
+			ubi_err("two LEBs with same sequence number %llu",
+				sqnum);
+			ubi_dbg_dump_seb(seb, 0);
+			ubi_dbg_dump_vid_hdr(vid_hdr);
+			return -EINVAL;
+		}
+
+		/*
+		 * Now we have to drop the older one and preserve the newer
+		 * one.
+		 */
+		cmp_res = compare_lebs(ubi, seb, pnum, vid_hdr);
+		if (cmp_res < 0)
+			return cmp_res;
+
+		if (cmp_res & 1) {
+			/*
+			 * This logical eraseblock is newer then the one
+			 * found earlier.
+			 */
+			err = validate_vid_hdr(vid_hdr, sv, pnum);
+			if (err)
+				return err;
+
+			if (cmp_res & 4)
+				err = add_to_list(si, seb->pnum, seb->ec,
+						  &si->corr);
+			else
+				err = add_to_list(si, seb->pnum, seb->ec,
+						  &si->erase);
+			if (err)
+				return err;
+
+			seb->ec = ec;
+			seb->pnum = pnum;
+			seb->scrub = ((cmp_res & 2) || bitflips);
+			seb->sqnum = sqnum;
+			seb->leb_ver = leb_ver;
+
+			if (sv->highest_lnum == lnum)
+				sv->last_data_size =
+					be32_to_cpu(vid_hdr->data_size);
+
+			return 0;
+		} else {
+			/*
+			 * This logical eraseblock is older then the one found
+			 * previously.
+			 */
+			if (cmp_res & 4)
+				return add_to_list(si, pnum, ec, &si->corr);
+			else
+				return add_to_list(si, pnum, ec, &si->erase);
+		}
+	}
+
+	/*
+	 * We've met this logical eraseblock for the first time, add it to the
+	 * scanning information.
+	 */
+
+	err = validate_vid_hdr(vid_hdr, sv, pnum);
+	if (err)
+		return err;
+
+	seb = kmalloc(sizeof(struct ubi_scan_leb), GFP_KERNEL);
+	if (!seb)
+		return -ENOMEM;
+
+	seb->ec = ec;
+	seb->pnum = pnum;
+	seb->lnum = lnum;
+	seb->sqnum = sqnum;
+	seb->scrub = bitflips;
+	seb->leb_ver = leb_ver;
+
+	if (sv->highest_lnum <= lnum) {
+		sv->highest_lnum = lnum;
+		sv->last_data_size = be32_to_cpu(vid_hdr->data_size);
+	}
+
+	sv->leb_count += 1;
+	rb_link_node(&seb->u.rb, parent, p);
+	rb_insert_color(&seb->u.rb, &sv->root);
+	return 0;
+}
+
+/**
+ * ubi_scan_find_sv - find information about a particular volume in the
+ * scanning information.
+ * @si: scanning information
+ * @vol_id: the requested volume ID
+ *
+ * This function returns a pointer to the volume description or %NULL if there
+ * are no data about this volume in the scanning information.
+ */
+struct ubi_scan_volume *ubi_scan_find_sv(const struct ubi_scan_info *si,
+					 int vol_id)
+{
+	struct ubi_scan_volume *sv;
+	struct rb_node *p = si->volumes.rb_node;
+
+	while (p) {
+		sv = rb_entry(p, struct ubi_scan_volume, rb);
+
+		if (vol_id == sv->vol_id)
+			return sv;
+
+		if (vol_id > sv->vol_id)
+			p = p->rb_left;
+		else
+			p = p->rb_right;
+	}
+
+	return NULL;
+}
+
+/**
+ * ubi_scan_find_seb - find information about a particular logical
+ * eraseblock in the volume scanning information.
+ * @sv: a pointer to the volume scanning information
+ * @lnum: the requested logical eraseblock
+ *
+ * This function returns a pointer to the scanning logical eraseblock or %NULL
+ * if there are no data about it in the scanning volume information.
+ */
+struct ubi_scan_leb *ubi_scan_find_seb(const struct ubi_scan_volume *sv,
+				       int lnum)
+{
+	struct ubi_scan_leb *seb;
+	struct rb_node *p = sv->root.rb_node;
+
+	while (p) {
+		seb = rb_entry(p, struct ubi_scan_leb, u.rb);
+
+		if (lnum == seb->lnum)
+			return seb;
+
+		if (lnum > seb->lnum)
+			p = p->rb_left;
+		else
+			p = p->rb_right;
+	}
+
+	return NULL;
+}
+
+/**
+ * ubi_scan_rm_volume - delete scanning information about a volume.
+ * @si: scanning information
+ * @sv: the volume scanning information to delete
+ */
+void ubi_scan_rm_volume(struct ubi_scan_info *si, struct ubi_scan_volume *sv)
+{
+	struct rb_node *rb;
+	struct ubi_scan_leb *seb;
+
+	dbg_bld("remove scanning information about volume %d", sv->vol_id);
+
+	while ((rb = rb_first(&sv->root))) {
+		seb = rb_entry(rb, struct ubi_scan_leb, u.rb);
+		rb_erase(&seb->u.rb, &sv->root);
+		list_add_tail(&seb->u.list, &si->erase);
+	}
+
+	rb_erase(&sv->rb, &si->volumes);
+	kfree(sv);
+	si->vols_found -= 1;
+}
+
+/**
+ * ubi_scan_erase_peb - erase a physical eraseblock.
+ * @ubi: UBI device description object
+ * @si: scanning information
+ * @pnum: physical eraseblock number to erase;
+ * @ec: erase counter value to write (%UBI_SCAN_UNKNOWN_EC if it is unknown)
+ *
+ * This function erases physical eraseblock 'pnum', and writes the erase
+ * counter header to it. This function should only be used on UBI device
+ * initialization stages, when the EBA unit had not been yet initialized. This
+ * function returns zero in case of success and a negative error code in case
+ * of failure.
+ */
+int ubi_scan_erase_peb(struct ubi_device *ubi, const struct ubi_scan_info *si,
+		       int pnum, int ec)
+{
+	int err;
+	struct ubi_ec_hdr *ec_hdr;
+
+	if ((long long)ec >= UBI_MAX_ERASECOUNTER) {
+		/*
+		 * Erase counter overflow. Upgrade UBI and use 64-bit
+		 * erase counters internally.
+		 */
+		ubi_err("erase counter overflow at PEB %d, EC %d", pnum, ec);
+		return -EINVAL;
+	}
+
+	ec_hdr = kzalloc(ubi->ec_hdr_alsize, GFP_KERNEL);
+	if (!ec_hdr)
+		return -ENOMEM;
+
+	ec_hdr->ec = cpu_to_be64(ec);
+
+	err = ubi_io_sync_erase(ubi, pnum, 0);
+	if (err < 0)
+		goto out_free;
+
+	err = ubi_io_write_ec_hdr(ubi, pnum, ec_hdr);
+
+out_free:
+	kfree(ec_hdr);
+	return err;
+}
+
+/**
+ * ubi_scan_get_free_peb - get a free physical eraseblock.
+ * @ubi: UBI device description object
+ * @si: scanning information
+ *
+ * This function returns a free physical eraseblock. It is supposed to be
+ * called on the UBI initialization stages when the wear-leveling unit is not
+ * initialized yet. This function picks a physical eraseblocks from one of the
+ * lists, writes the EC header if it is needed, and removes it from the list.
+ *
+ * This function returns scanning physical eraseblock information in case of
+ * success and an error code in case of failure.
+ */
+struct ubi_scan_leb *ubi_scan_get_free_peb(struct ubi_device *ubi,
+					   struct ubi_scan_info *si)
+{
+	int err = 0, i;
+	struct ubi_scan_leb *seb;
+
+	if (!list_empty(&si->free)) {
+		seb = list_entry(si->free.next, struct ubi_scan_leb, u.list);
+		list_del(&seb->u.list);
+		dbg_bld("return free PEB %d, EC %d", seb->pnum, seb->ec);
+		return seb;
+	}
+
+	for (i = 0; i < 2; i++) {
+		struct list_head *head;
+		struct ubi_scan_leb *tmp_seb;
+
+		if (i == 0)
+			head = &si->erase;
+		else
+			head = &si->corr;
+
+		/*
+		 * We try to erase the first physical eraseblock from the @head
+		 * list and pick it if we succeed, or try to erase the
+		 * next one if not. And so forth. We don't want to take care
+		 * about bad eraseblocks here - they'll be handled later.
+		 */
+		list_for_each_entry_safe(seb, tmp_seb, head, u.list) {
+			if (seb->ec == UBI_SCAN_UNKNOWN_EC)
+				seb->ec = si->mean_ec;
+
+			err = ubi_scan_erase_peb(ubi, si, seb->pnum, seb->ec+1);
+			if (err)
+				continue;
+
+			seb->ec += 1;
+			list_del(&seb->u.list);
+			dbg_bld("return PEB %d, EC %d", seb->pnum, seb->ec);
+			return seb;
+		}
+	}
+
+	ubi_err("no eraseblocks found");
+	return ERR_PTR(-ENOSPC);
+}
+
+/**
+ * process_eb - read UBI headers, check them and add corresponding data
+ * to the scanning information.
+ * @ubi: UBI device description object
+ * @si: scanning information
+ * @pnum: the physical eraseblock number
+ *
+ * This function returns a zero if the physical eraseblock was successfully
+ * handled and a negative error code in case of failure.
+ */
+static int process_eb(struct ubi_device *ubi, struct ubi_scan_info *si, int pnum)
+{
+	long long uninitialized_var(ec);
+	int err, bitflips = 0, vol_id, ec_corr = 0;
+
+	dbg_bld("scan PEB %d", pnum);
+
+	/* Skip bad physical eraseblocks */
+	err = ubi_io_is_bad(ubi, pnum);
+	if (err < 0)
+		return err;
+	else if (err) {
+		/*
+		 * FIXME: this is actually duty of the I/O unit to initialize
+		 * this, but MTD does not provide enough information.
+		 */
+		si->bad_peb_count += 1;
+		return 0;
+	}
+
+	err = ubi_io_read_ec_hdr(ubi, pnum, ech, 0);
+	if (err < 0)
+		return err;
+	else if (err == UBI_IO_BITFLIPS)
+		bitflips = 1;
+	else if (err == UBI_IO_PEB_EMPTY)
+		return add_to_list(si, pnum, UBI_SCAN_UNKNOWN_EC, &si->erase);
+	else if (err == UBI_IO_BAD_EC_HDR) {
+		/*
+		 * We have to also look at the VID header, possibly it is not
+		 * corrupted. Set %bitflips flag in order to make this PEB be
+		 * moved and EC be re-created.
+		 */
+		ec_corr = 1;
+		ec = UBI_SCAN_UNKNOWN_EC;
+		bitflips = 1;
+	}
+
+	si->is_empty = 0;
+
+	if (!ec_corr) {
+		/* Make sure UBI version is OK */
+		if (ech->version != UBI_VERSION) {
+			ubi_err("this UBI version is %d, image version is %d",
+				UBI_VERSION, (int)ech->version);
+			return -EINVAL;
+		}
+
+		ec = be64_to_cpu(ech->ec);
+		if (ec > UBI_MAX_ERASECOUNTER) {
+			/*
+			 * Erase counter overflow. The EC headers have 64 bits
+			 * reserved, but we anyway make use of only 31 bit
+			 * values, as this seems to be enough for any existing
+			 * flash. Upgrade UBI and use 64-bit erase counters
+			 * internally.
+			 */
+			ubi_err("erase counter overflow, max is %d",
+				UBI_MAX_ERASECOUNTER);
+			ubi_dbg_dump_ec_hdr(ech);
+			return -EINVAL;
+		}
+	}
+
+	/* OK, we've done with the EC header, let's look at the VID header */
+
+	err = ubi_io_read_vid_hdr(ubi, pnum, vidh, 0);
+	if (err < 0)
+		return err;
+	else if (err == UBI_IO_BITFLIPS)
+		bitflips = 1;
+	else if (err == UBI_IO_BAD_VID_HDR ||
+		 (err == UBI_IO_PEB_FREE && ec_corr)) {
+		/* VID header is corrupted */
+		err = add_to_list(si, pnum, ec, &si->corr);
+		if (err)
+			return err;
+		goto adjust_mean_ec;
+	} else if (err == UBI_IO_PEB_FREE) {
+		/* No VID header - the physical eraseblock is free */
+		err = add_to_list(si, pnum, ec, &si->free);
+		if (err)
+			return err;
+		goto adjust_mean_ec;
+	}
+
+	vol_id = be32_to_cpu(vidh->vol_id);
+	if (vol_id > UBI_MAX_VOLUMES && vol_id != UBI_LAYOUT_VOLUME_ID) {
+		int lnum = be32_to_cpu(vidh->lnum);
+
+		/* Unsupported internal volume */
+		switch (vidh->compat) {
+		case UBI_COMPAT_DELETE:
+			ubi_msg("\"delete\" compatible internal volume %d:%d"
+				" found, remove it", vol_id, lnum);
+			err = add_to_list(si, pnum, ec, &si->corr);
+			if (err)
+				return err;
+			break;
+
+		case UBI_COMPAT_RO:
+			ubi_msg("read-only compatible internal volume %d:%d"
+				" found, switch to read-only mode",
+				vol_id, lnum);
+			ubi->ro_mode = 1;
+			break;
+
+		case UBI_COMPAT_PRESERVE:
+			ubi_msg("\"preserve\" compatible internal volume %d:%d"
+				" found", vol_id, lnum);
+			err = add_to_list(si, pnum, ec, &si->alien);
+			if (err)
+				return err;
+			si->alien_peb_count += 1;
+			return 0;
+
+		case UBI_COMPAT_REJECT:
+			ubi_err("incompatible internal volume %d:%d found",
+				vol_id, lnum);
+			return -EINVAL;
+		}
+	}
+
+	/* Both UBI headers seem to be fine */
+	err = ubi_scan_add_used(ubi, si, pnum, ec, vidh, bitflips);
+	if (err)
+		return err;
+
+adjust_mean_ec:
+	if (!ec_corr) {
+		si->ec_sum += ec;
+		si->ec_count += 1;
+		if (ec > si->max_ec)
+			si->max_ec = ec;
+		if (ec < si->min_ec)
+			si->min_ec = ec;
+	}
+
+	return 0;
+}
+
+/**
+ * ubi_scan - scan an MTD device.
+ * @ubi: UBI device description object
+ *
+ * This function does full scanning of an MTD device and returns complete
+ * information about it. In case of failure, an error code is returned.
+ */
+struct ubi_scan_info *ubi_scan(struct ubi_device *ubi)
+{
+	int err, pnum;
+	struct rb_node *rb1, *rb2;
+	struct ubi_scan_volume *sv;
+	struct ubi_scan_leb *seb;
+	struct ubi_scan_info *si;
+
+	si = kzalloc(sizeof(struct ubi_scan_info), GFP_KERNEL);
+	if (!si)
+		return ERR_PTR(-ENOMEM);
+
+	INIT_LIST_HEAD(&si->corr);
+	INIT_LIST_HEAD(&si->free);
+	INIT_LIST_HEAD(&si->erase);
+	INIT_LIST_HEAD(&si->alien);
+	si->volumes = RB_ROOT;
+	si->is_empty = 1;
+
+	err = -ENOMEM;
+	ech = kzalloc(ubi->ec_hdr_alsize, GFP_KERNEL);
+	if (!ech)
+		goto out_si;
+
+	vidh = ubi_zalloc_vid_hdr(ubi, GFP_KERNEL);
+	if (!vidh)
+		goto out_ech;
+
+	for (pnum = 0; pnum < ubi->peb_count; pnum++) {
+		cond_resched();
+
+//		dbg_msg("process PEB %d", pnum);
+		err = process_eb(ubi, si, pnum);
+		if(err < 0)
+			printf("err: %d\n", err);
+		if (err < 0)
+			goto out_vidh;
+	}
+
+	dbg_msg("scanning is finished");
+
+	/* Calculate mean erase counter */
+	if (si->ec_count) {
+		do_div(si->ec_sum, si->ec_count);
+		si->mean_ec = si->ec_sum;
+	}
+
+	if (si->is_empty)
+		ubi_msg("empty MTD device detected");
+
+	/*
+	 * In case of unknown erase counter we use the mean erase counter
+	 * value.
+	 */
+	ubi_rb_for_each_entry(rb1, sv, &si->volumes, rb) {
+		ubi_rb_for_each_entry(rb2, seb, &sv->root, u.rb)
+			if (seb->ec == UBI_SCAN_UNKNOWN_EC)
+				seb->ec = si->mean_ec;
+	}
+
+	list_for_each_entry(seb, &si->free, u.list) {
+		if (seb->ec == UBI_SCAN_UNKNOWN_EC)
+			seb->ec = si->mean_ec;
+	}
+
+	list_for_each_entry(seb, &si->corr, u.list)
+		if (seb->ec == UBI_SCAN_UNKNOWN_EC)
+			seb->ec = si->mean_ec;
+
+	list_for_each_entry(seb, &si->erase, u.list)
+		if (seb->ec == UBI_SCAN_UNKNOWN_EC)
+			seb->ec = si->mean_ec;
+
+	err = paranoid_check_si(ubi, si);
+	if (err) {
+		if (err > 0)
+			err = -EINVAL;
+		goto out_vidh;
+	}
+
+	ubi_free_vid_hdr(ubi, vidh);
+	kfree(ech);
+
+	return si;
+
+out_vidh:
+	ubi_free_vid_hdr(ubi, vidh);
+out_ech:
+	kfree(ech);
+out_si:
+	ubi_scan_destroy_si(si);
+	return ERR_PTR(err);
+}
+
+/**
+ * destroy_sv - free the scanning volume information
+ * @sv: scanning volume information
+ *
+ * This function destroys the volume RB-tree (@sv->root) and the scanning
+ * volume information.
+ */
+static void destroy_sv(struct ubi_scan_volume *sv)
+{
+	struct ubi_scan_leb *seb;
+	struct rb_node *this = sv->root.rb_node;
+
+	while (this) {
+		if (this->rb_left)
+			this = this->rb_left;
+		else if (this->rb_right)
+			this = this->rb_right;
+		else {
+			seb = rb_entry(this, struct ubi_scan_leb, u.rb);
+			this = rb_parent(this);
+			if (this) {
+				if (this->rb_left == &seb->u.rb)
+					this->rb_left = NULL;
+				else
+					this->rb_right = NULL;
+			}
+
+			kfree(seb);
+		}
+	}
+	kfree(sv);
+}
+
+/**
+ * ubi_scan_destroy_si - destroy scanning information.
+ * @si: scanning information
+ */
+void ubi_scan_destroy_si(struct ubi_scan_info *si)
+{
+	struct ubi_scan_leb *seb, *seb_tmp;
+	struct ubi_scan_volume *sv;
+	struct rb_node *rb;
+
+	list_for_each_entry_safe(seb, seb_tmp, &si->alien, u.list) {
+		list_del(&seb->u.list);
+		kfree(seb);
+	}
+	list_for_each_entry_safe(seb, seb_tmp, &si->erase, u.list) {
+		list_del(&seb->u.list);
+		kfree(seb);
+	}
+	list_for_each_entry_safe(seb, seb_tmp, &si->corr, u.list) {
+		list_del(&seb->u.list);
+		kfree(seb);
+	}
+	list_for_each_entry_safe(seb, seb_tmp, &si->free, u.list) {
+		list_del(&seb->u.list);
+		kfree(seb);
+	}
+
+	/* Destroy the volume RB-tree */
+	rb = si->volumes.rb_node;
+	while (rb) {
+		if (rb->rb_left)
+			rb = rb->rb_left;
+		else if (rb->rb_right)
+			rb = rb->rb_right;
+		else {
+			sv = rb_entry(rb, struct ubi_scan_volume, rb);
+
+			rb = rb_parent(rb);
+			if (rb) {
+				if (rb->rb_left == &sv->rb)
+					rb->rb_left = NULL;
+				else
+					rb->rb_right = NULL;
+			}
+
+			destroy_sv(sv);
+		}
+	}
+
+	kfree(si);
+}
+
+#ifdef CONFIG_MTD_UBI_DEBUG_PARANOID
+
+/**
+ * paranoid_check_si - check if the scanning information is correct and
+ * consistent.
+ * @ubi: UBI device description object
+ * @si: scanning information
+ *
+ * This function returns zero if the scanning information is all right, %1 if
+ * not and a negative error code if an error occurred.
+ */
+static int paranoid_check_si(struct ubi_device *ubi, struct ubi_scan_info *si)
+{
+	int pnum, err, vols_found = 0;
+	struct rb_node *rb1, *rb2;
+	struct ubi_scan_volume *sv;
+	struct ubi_scan_leb *seb, *last_seb;
+	uint8_t *buf;
+
+	/*
+	 * At first, check that scanning information is OK.
+	 */
+	ubi_rb_for_each_entry(rb1, sv, &si->volumes, rb) {
+		int leb_count = 0;
+
+		cond_resched();
+
+		vols_found += 1;
+
+		if (si->is_empty) {
+			ubi_err("bad is_empty flag");
+			goto bad_sv;
+		}
+
+		if (sv->vol_id < 0 || sv->highest_lnum < 0 ||
+		    sv->leb_count < 0 || sv->vol_type < 0 || sv->used_ebs < 0 ||
+		    sv->data_pad < 0 || sv->last_data_size < 0) {
+			ubi_err("negative values");
+			goto bad_sv;
+		}
+
+		if (sv->vol_id >= UBI_MAX_VOLUMES &&
+		    sv->vol_id < UBI_INTERNAL_VOL_START) {
+			ubi_err("bad vol_id");
+			goto bad_sv;
+		}
+
+		if (sv->vol_id > si->highest_vol_id) {
+			ubi_err("highest_vol_id is %d, but vol_id %d is there",
+				si->highest_vol_id, sv->vol_id);
+			goto out;
+		}
+
+		if (sv->vol_type != UBI_DYNAMIC_VOLUME &&
+		    sv->vol_type != UBI_STATIC_VOLUME) {
+			ubi_err("bad vol_type");
+			goto bad_sv;
+		}
+
+		if (sv->data_pad > ubi->leb_size / 2) {
+			ubi_err("bad data_pad");
+			goto bad_sv;
+		}
+
+		last_seb = NULL;
+		ubi_rb_for_each_entry(rb2, seb, &sv->root, u.rb) {
+			cond_resched();
+
+			last_seb = seb;
+			leb_count += 1;
+
+			if (seb->pnum < 0 || seb->ec < 0) {
+				ubi_err("negative values");
+				goto bad_seb;
+			}
+
+			if (seb->ec < si->min_ec) {
+				ubi_err("bad si->min_ec (%d), %d found",
+					si->min_ec, seb->ec);
+				goto bad_seb;
+			}
+
+			if (seb->ec > si->max_ec) {
+				ubi_err("bad si->max_ec (%d), %d found",
+					si->max_ec, seb->ec);
+				goto bad_seb;
+			}
+
+			if (seb->pnum >= ubi->peb_count) {
+				ubi_err("too high PEB number %d, total PEBs %d",
+					seb->pnum, ubi->peb_count);
+				goto bad_seb;
+			}
+
+			if (sv->vol_type == UBI_STATIC_VOLUME) {
+				if (seb->lnum >= sv->used_ebs) {
+					ubi_err("bad lnum or used_ebs");
+					goto bad_seb;
+				}
+			} else {
+				if (sv->used_ebs != 0) {
+					ubi_err("non-zero used_ebs");
+					goto bad_seb;
+				}
+			}
+
+			if (seb->lnum > sv->highest_lnum) {
+				ubi_err("incorrect highest_lnum or lnum");
+				goto bad_seb;
+			}
+		}
+
+		if (sv->leb_count != leb_count) {
+			ubi_err("bad leb_count, %d objects in the tree",
+				leb_count);
+			goto bad_sv;
+		}
+
+		if (!last_seb)
+			continue;
+
+		seb = last_seb;
+
+		if (seb->lnum != sv->highest_lnum) {
+			ubi_err("bad highest_lnum");
+			goto bad_seb;
+		}
+	}
+
+	if (vols_found != si->vols_found) {
+		ubi_err("bad si->vols_found %d, should be %d",
+			si->vols_found, vols_found);
+		goto out;
+	}
+
+	/* Check that scanning information is correct */
+	ubi_rb_for_each_entry(rb1, sv, &si->volumes, rb) {
+		last_seb = NULL;
+		ubi_rb_for_each_entry(rb2, seb, &sv->root, u.rb) {
+			int vol_type;
+
+			cond_resched();
+
+			last_seb = seb;
+
+			err = ubi_io_read_vid_hdr(ubi, seb->pnum, vidh, 1);
+			if (err && err != UBI_IO_BITFLIPS) {
+				ubi_err("VID header is not OK (%d)", err);
+				if (err > 0)
+					err = -EIO;
+				return err;
+			}
+
+			vol_type = vidh->vol_type == UBI_VID_DYNAMIC ?
+				   UBI_DYNAMIC_VOLUME : UBI_STATIC_VOLUME;
+			if (sv->vol_type != vol_type) {
+				ubi_err("bad vol_type");
+				goto bad_vid_hdr;
+			}
+
+			if (seb->sqnum != be64_to_cpu(vidh->sqnum)) {
+				ubi_err("bad sqnum %llu", seb->sqnum);
+				goto bad_vid_hdr;
+			}
+
+			if (sv->vol_id != be32_to_cpu(vidh->vol_id)) {
+				ubi_err("bad vol_id %d", sv->vol_id);
+				goto bad_vid_hdr;
+			}
+
+			if (sv->compat != vidh->compat) {
+				ubi_err("bad compat %d", vidh->compat);
+				goto bad_vid_hdr;
+			}
+
+			if (seb->lnum != be32_to_cpu(vidh->lnum)) {
+				ubi_err("bad lnum %d", seb->lnum);
+				goto bad_vid_hdr;
+			}
+
+			if (sv->used_ebs != be32_to_cpu(vidh->used_ebs)) {
+				ubi_err("bad used_ebs %d", sv->used_ebs);
+				goto bad_vid_hdr;
+			}
+
+			if (sv->data_pad != be32_to_cpu(vidh->data_pad)) {
+				ubi_err("bad data_pad %d", sv->data_pad);
+				goto bad_vid_hdr;
+			}
+
+			if (seb->leb_ver != be32_to_cpu(vidh->leb_ver)) {
+				ubi_err("bad leb_ver %u", seb->leb_ver);
+				goto bad_vid_hdr;
+			}
+		}
+
+		if (!last_seb)
+			continue;
+
+		if (sv->highest_lnum != be32_to_cpu(vidh->lnum)) {
+			ubi_err("bad highest_lnum %d", sv->highest_lnum);
+			goto bad_vid_hdr;
+		}
+
+		if (sv->last_data_size != be32_to_cpu(vidh->data_size)) {
+			ubi_err("bad last_data_size %d", sv->last_data_size);
+			goto bad_vid_hdr;
+		}
+	}
+
+	/*
+	 * Make sure that all the physical eraseblocks are in one of the lists
+	 * or trees.
+	 */
+	buf = kzalloc(ubi->peb_count, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	for (pnum = 0; pnum < ubi->peb_count; pnum++) {
+		err = ubi_io_is_bad(ubi, pnum);
+		if (err < 0) {
+			kfree(buf);
+			return err;
+		}
+		else if (err)
+			buf[pnum] = 1;
+	}
+
+	ubi_rb_for_each_entry(rb1, sv, &si->volumes, rb)
+		ubi_rb_for_each_entry(rb2, seb, &sv->root, u.rb)
+			buf[seb->pnum] = 1;
+
+	list_for_each_entry(seb, &si->free, u.list)
+		buf[seb->pnum] = 1;
+
+	list_for_each_entry(seb, &si->corr, u.list)
+		buf[seb->pnum] = 1;
+
+	list_for_each_entry(seb, &si->erase, u.list)
+		buf[seb->pnum] = 1;
+
+	list_for_each_entry(seb, &si->alien, u.list)
+		buf[seb->pnum] = 1;
+
+	err = 0;
+	for (pnum = 0; pnum < ubi->peb_count; pnum++)
+		if (!buf[pnum]) {
+			ubi_err("PEB %d is not referred", pnum);
+			err = 1;
+		}
+
+	kfree(buf);
+	if (err)
+		goto out;
+	return 0;
+
+bad_seb:
+	ubi_err("bad scanning information about LEB %d", seb->lnum);
+	ubi_dbg_dump_seb(seb, 0);
+	ubi_dbg_dump_sv(sv);
+	goto out;
+
+bad_sv:
+	ubi_err("bad scanning information about volume %d", sv->vol_id);
+	ubi_dbg_dump_sv(sv);
+	goto out;
+
+bad_vid_hdr:
+	ubi_err("bad scanning information about volume %d", sv->vol_id);
+	ubi_dbg_dump_sv(sv);
+	ubi_dbg_dump_vid_hdr(vidh);
+
+out:
+	ubi_dbg_dump_stack();
+	return 1;
+}
+
+#endif /* CONFIG_MTD_UBI_DEBUG_PARANOID */
diff --git a/drivers/mtd/ubi/scan.h b/drivers/mtd/ubi/scan.h
new file mode 100644
index 0000000..966b9b6
--- /dev/null
+++ b/drivers/mtd/ubi/scan.h
@@ -0,0 +1,165 @@
+/*
+ * Copyright (c) International Business Machines Corp., 2006
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ *
+ * Author: Artem Bityutskiy (���������������� ����������)
+ */
+
+#ifndef __UBI_SCAN_H__
+#define __UBI_SCAN_H__
+
+/* The erase counter value for this physical eraseblock is unknown */
+#define UBI_SCAN_UNKNOWN_EC (-1)
+
+/**
+ * struct ubi_scan_leb - scanning information about a physical eraseblock.
+ * @ec: erase counter (%UBI_SCAN_UNKNOWN_EC if it is unknown)
+ * @pnum: physical eraseblock number
+ * @lnum: logical eraseblock number
+ * @scrub: if this physical eraseblock needs scrubbing
+ * @sqnum: sequence number
+ * @u: unions RB-tree or @list links
+ * @u.rb: link in the per-volume RB-tree of &struct ubi_scan_leb objects
+ * @u.list: link in one of the eraseblock lists
+ * @leb_ver: logical eraseblock version (obsolete)
+ *
+ * One object of this type is allocated for each physical eraseblock during
+ * scanning.
+ */
+struct ubi_scan_leb {
+	int ec;
+	int pnum;
+	int lnum;
+	int scrub;
+	unsigned long long sqnum;
+	union {
+		struct rb_node rb;
+		struct list_head list;
+	} u;
+	uint32_t leb_ver;
+};
+
+/**
+ * struct ubi_scan_volume - scanning information about a volume.
+ * @vol_id: volume ID
+ * @highest_lnum: highest logical eraseblock number in this volume
+ * @leb_count: number of logical eraseblocks in this volume
+ * @vol_type: volume type
+ * @used_ebs: number of used logical eraseblocks in this volume (only for
+ * static volumes)
+ * @last_data_size: amount of data in the last logical eraseblock of this
+ * volume (always equivalent to the usable logical eraseblock size in case of
+ * dynamic volumes)
+ * @data_pad: how many bytes at the end of logical eraseblocks of this volume
+ * are not used (due to volume alignment)
+ * @compat: compatibility flags of this volume
+ * @rb: link in the volume RB-tree
+ * @root: root of the RB-tree containing all the eraseblock belonging to this
+ * volume (&struct ubi_scan_leb objects)
+ *
+ * One object of this type is allocated for each volume during scanning.
+ */
+struct ubi_scan_volume {
+	int vol_id;
+	int highest_lnum;
+	int leb_count;
+	int vol_type;
+	int used_ebs;
+	int last_data_size;
+	int data_pad;
+	int compat;
+	struct rb_node rb;
+	struct rb_root root;
+};
+
+/**
+ * struct ubi_scan_info - UBI scanning information.
+ * @volumes: root of the volume RB-tree
+ * @corr: list of corrupted physical eraseblocks
+ * @free: list of free physical eraseblocks
+ * @erase: list of physical eraseblocks which have to be erased
+ * @alien: list of physical eraseblocks which should not be used by UBI (e.g.,
+ * @bad_peb_count: count of bad physical eraseblocks
+ * those belonging to "preserve"-compatible internal volumes)
+ * @vols_found: number of volumes found during scanning
+ * @highest_vol_id: highest volume ID
+ * @alien_peb_count: count of physical eraseblocks in the @alien list
+ * @is_empty: flag indicating whether the MTD device is empty or not
+ * @min_ec: lowest erase counter value
+ * @max_ec: highest erase counter value
+ * @max_sqnum: highest sequence number value
+ * @mean_ec: mean erase counter value
+ * @ec_sum: a temporary variable used when calculating @mean_ec
+ * @ec_count: a temporary variable used when calculating @mean_ec
+ *
+ * This data structure contains the result of scanning and may be used by other
+ * UBI units to build final UBI data structures, further error-recovery and so
+ * on.
+ */
+struct ubi_scan_info {
+	struct rb_root volumes;
+	struct list_head corr;
+	struct list_head free;
+	struct list_head erase;
+	struct list_head alien;
+	int bad_peb_count;
+	int vols_found;
+	int highest_vol_id;
+	int alien_peb_count;
+	int is_empty;
+	int min_ec;
+	int max_ec;
+	unsigned long long max_sqnum;
+	int mean_ec;
+	uint64_t ec_sum;
+	int ec_count;
+};
+
+struct ubi_device;
+struct ubi_vid_hdr;
+
+/*
+ * ubi_scan_move_to_list - move a physical eraseblock from the volume tree to a
+ * list.
+ *
+ * @sv: volume scanning information
+ * @seb: scanning eraseblock infprmation
+ * @list: the list to move to
+ */
+static inline void ubi_scan_move_to_list(struct ubi_scan_volume *sv,
+					 struct ubi_scan_leb *seb,
+					 struct list_head *list)
+{
+		rb_erase(&seb->u.rb, &sv->root);
+		list_add_tail(&seb->u.list, list);
+}
+
+int ubi_scan_add_used(struct ubi_device *ubi, struct ubi_scan_info *si,
+		      int pnum, int ec, const struct ubi_vid_hdr *vid_hdr,
+		      int bitflips);
+struct ubi_scan_volume *ubi_scan_find_sv(const struct ubi_scan_info *si,
+					 int vol_id);
+struct ubi_scan_leb *ubi_scan_find_seb(const struct ubi_scan_volume *sv,
+				       int lnum);
+void ubi_scan_rm_volume(struct ubi_scan_info *si, struct ubi_scan_volume *sv);
+struct ubi_scan_leb *ubi_scan_get_free_peb(struct ubi_device *ubi,
+					   struct ubi_scan_info *si);
+int ubi_scan_erase_peb(struct ubi_device *ubi, const struct ubi_scan_info *si,
+		       int pnum, int ec);
+struct ubi_scan_info *ubi_scan(struct ubi_device *ubi);
+void ubi_scan_destroy_si(struct ubi_scan_info *si);
+
+#endif /* !__UBI_SCAN_H__ */
diff --git a/drivers/mtd/ubi/ubi-barebox.h b/drivers/mtd/ubi/ubi-barebox.h
new file mode 100644
index 0000000..84c589f
--- /dev/null
+++ b/drivers/mtd/ubi/ubi-barebox.h
@@ -0,0 +1,191 @@
+/*
+ * Header file for UBI support for U-Boot
+ *
+ * Adaptation from kernel to U-Boot
+ *
+ *  Copyright (C) 2005-2007 Samsung Electronics
+ *  Kyungmin Park <kyungmin.park@samsung.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#ifndef __UBOOT_UBI_H
+#define __UBOOT_UBI_H
+
+#include <common.h>
+#include <malloc.h>
+#include <asm-generic/div64.h>
+#include <errno.h>
+#include <linux/err.h>
+#include <linux/types.h>
+#include <linux/list.h>
+#include <linux/rbtree.h>
+#include <linux/string.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/ubi.h>
+
+#define crc32(seed, data, length)  crc32_no_comp(seed, (unsigned char const *)data, length)
+
+#define DPRINTK(format, args...)					\
+do {									\
+	printf("%s[%d]: " format "\n", __func__, __LINE__, ##args);	\
+} while (0)
+
+/* configurable */
+#define CONFIG_MTD_UBI_WL_THRESHOLD	4096
+#define CONFIG_MTD_UBI_BEB_RESERVE	1
+#define UBI_IO_DEBUG			0
+
+/* debug options (Linux: drivers/mtd/ubi/Kconfig.debug) */
+#undef CONFIG_MTD_UBI_DEBUG
+#undef CONFIG_MTD_UBI_DEBUG_PARANOID
+#undef CONFIG_MTD_UBI_DEBUG_MSG
+#undef CONFIG_MTD_UBI_DEBUG_MSG_EBA
+#undef CONFIG_MTD_UBI_DEBUG_MSG_WL
+#undef CONFIG_MTD_UBI_DEBUG_MSG_IO
+#undef CONFIG_MTD_UBI_DEBUG_MSG_BLD
+#define CONFIG_MTD_UBI_DEBUG_DISABLE_BGT
+
+/* build.c */
+#define get_device(...)
+#define put_device(...)
+#define ubi_sysfs_init(...)		0
+#define ubi_sysfs_close(...)		do { } while (0)
+static inline int is_power_of_2(unsigned long n)
+{
+	return (n != 0 && ((n & (n - 1)) == 0));
+}
+
+/* FIXME */
+#define MKDEV(...)			0
+#define MAJOR(dev)			0
+#define MINOR(dev)			0
+
+#define alloc_chrdev_region(...)	0
+#define unregister_chrdev_region(...)
+
+#define class_create(...)		__builtin_return_address(0)
+#define class_create_file(...)		0
+#define class_remove_file(...)
+#define class_destroy(...)
+#define misc_register(...)		0
+#define misc_deregister(...)
+
+/* vmt.c */
+#define device_register(...)		0
+#define volume_sysfs_init(...)		0
+#define volume_sysfs_close(...)		do { } while (0)
+
+/* kapi.c */
+
+/* eba.c */
+
+/* io.c */
+#define init_waitqueue_head(...)	do { } while (0)
+#define wait_event_interruptible(...)	0
+#define wake_up_interruptible(...)	do { } while (0)
+#define print_hex_dump(...)		do { } while (0)
+#define dump_stack(...)			do { } while (0)
+
+/* wl.c */
+#define task_pid_nr(x)			0
+#define set_freezable(...)		do { } while (0)
+#define try_to_freeze(...)		0
+#define set_current_state(...)		do { } while (0)
+#define kthread_should_stop(...)	0
+#define schedule()			do { } while (0)
+
+/* upd.c */
+static inline unsigned long copy_from_user(void *dest, const void *src,
+					   unsigned long count)
+{
+	memcpy((void *)dest, (void *)src, count);
+	return 0;
+}
+
+/* common */
+typedef int	spinlock_t;
+typedef int	wait_queue_head_t;
+#define spin_lock_init(...)
+#define spin_lock(...)
+#define spin_unlock(...)
+
+#define mutex_init(...)
+#define mutex_lock(...)
+#define mutex_unlock(...)
+
+#define init_rwsem(...)			do { } while (0)
+#define down_read(...)			do { } while (0)
+#define down_write(...)			do { } while (0)
+#define down_write_trylock(...)		1
+#define up_read(...)			do { } while (0)
+#define up_write(...)			do { } while (0)
+
+struct kmem_cache { int i; };
+#define kmem_cache_create(...)		1
+#define kmem_cache_alloc(obj, gfp)	malloc(sizeof(struct ubi_wl_entry))
+#define kmem_cache_free(obj, size)	free(size)
+#define kmem_cache_destroy(...)
+
+#define cond_resched()			do { } while (0)
+#define yield()				do { } while (0)
+
+#define GFP_KERNEL			0
+#define GFP_NOFS			1
+
+#define __user
+#define __init
+#define __exit
+
+#define kthread_create(...)	__builtin_return_address(0)
+#define kthread_stop(...)	do { } while (0)
+#define wake_up_process(...)	do { } while (0)
+
+#define BUS_ID_SIZE		20
+
+struct rw_semaphore { int i; };
+struct device {
+	struct device		*parent;
+	struct class		*class;
+	char	bus_id[BUS_ID_SIZE];	/* position on parent bus */
+	dev_t			devt;	/* dev_t, creates the sysfs "dev" */
+	void	(*release)(struct device *dev);
+};
+struct mutex { int i; };
+struct kernel_param { int i; };
+
+struct cdev_ {
+	int owner;
+	dev_t dev;
+};
+#define cdev_init(...)		do { } while (0)
+#define cdev_add(...)		0
+#define cdev_del(...)		do { } while (0)
+
+#define MAX_ERRNO		4095
+
+/* module */
+#define THIS_MODULE		0
+#define try_module_get(...)	1
+#define module_put(...)		do { } while (0)
+#define module_init(...)
+#define module_exit(...)
+#define EXPORT_SYMBOL_GPL(...)
+#define module_param_call(...)
+#define MODULE_PARM_DESC(...)
+#define MODULE_VERSION(...)
+
+#ifndef __UBIFS_H__
+#include "ubi.h"
+#endif
+
+/* functions */
+extern int ubi_mtd_param_parse(const char *val, struct kernel_param *kp);
+extern int ubi_init(void);
+extern void ubi_exit(void);
+
+extern struct ubi_device *ubi_devices[];
+
+#endif
diff --git a/drivers/mtd/ubi/ubi-media.h b/drivers/mtd/ubi/ubi-media.h
new file mode 100644
index 0000000..c3185d9
--- /dev/null
+++ b/drivers/mtd/ubi/ubi-media.h
@@ -0,0 +1,372 @@
+/*
+ * Copyright (c) International Business Machines Corp., 2006
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ *
+ * Authors: Artem Bityutskiy (���������������� ����������)
+ *          Thomas Gleixner
+ *          Frank Haverkamp
+ *          Oliver Lohmann
+ *          Andreas Arnez
+ */
+
+/*
+ * This file defines the layout of UBI headers and all the other UBI on-flash
+ * data structures.
+ */
+
+#ifndef __UBI_MEDIA_H__
+#define __UBI_MEDIA_H__
+
+#include <asm/byteorder.h>
+
+/* The version of UBI images supported by this implementation */
+#define UBI_VERSION 1
+
+/* The highest erase counter value supported by this implementation */
+#define UBI_MAX_ERASECOUNTER 0x7FFFFFFF
+
+/* The initial CRC32 value used when calculating CRC checksums */
+#define UBI_CRC32_INIT 0xFFFFFFFFU
+
+/* Erase counter header magic number (ASCII "UBI#") */
+#define UBI_EC_HDR_MAGIC  0x55424923
+/* Volume identifier header magic number (ASCII "UBI!") */
+#define UBI_VID_HDR_MAGIC 0x55424921
+
+/*
+ * Volume type constants used in the volume identifier header.
+ *
+ * @UBI_VID_DYNAMIC: dynamic volume
+ * @UBI_VID_STATIC: static volume
+ */
+enum {
+	UBI_VID_DYNAMIC = 1,
+	UBI_VID_STATIC  = 2
+};
+
+/*
+ * Volume flags used in the volume table record.
+ *
+ * @UBI_VTBL_AUTORESIZE_FLG: auto-resize this volume
+ *
+ * %UBI_VTBL_AUTORESIZE_FLG flag can be set only for one volume in the volume
+ * table. UBI automatically re-sizes the volume which has this flag and makes
+ * the volume to be of largest possible size. This means that if after the
+ * initialization UBI finds out that there are available physical eraseblocks
+ * present on the device, it automatically appends all of them to the volume
+ * (the physical eraseblocks reserved for bad eraseblocks handling and other
+ * reserved physical eraseblocks are not taken). So, if there is a volume with
+ * the %UBI_VTBL_AUTORESIZE_FLG flag set, the amount of available logical
+ * eraseblocks will be zero after UBI is loaded, because all of them will be
+ * reserved for this volume. Note, the %UBI_VTBL_AUTORESIZE_FLG bit is cleared
+ * after the volume had been initialized.
+ *
+ * The auto-resize feature is useful for device production purposes. For
+ * example, different NAND flash chips may have different amount of initial bad
+ * eraseblocks, depending of particular chip instance. Manufacturers of NAND
+ * chips usually guarantee that the amount of initial bad eraseblocks does not
+ * exceed certain percent, e.g. 2%. When one creates an UBI image which will be
+ * flashed to the end devices in production, he does not know the exact amount
+ * of good physical eraseblocks the NAND chip on the device will have, but this
+ * number is required to calculate the volume sized and put them to the volume
+ * table of the UBI image. In this case, one of the volumes (e.g., the one
+ * which will store the root file system) is marked as "auto-resizable", and
+ * UBI will adjust its size on the first boot if needed.
+ *
+ * Note, first UBI reserves some amount of physical eraseblocks for bad
+ * eraseblock handling, and then re-sizes the volume, not vice-versa. This
+ * means that the pool of reserved physical eraseblocks will always be present.
+ */
+enum {
+	UBI_VTBL_AUTORESIZE_FLG = 0x01,
+};
+
+/*
+ * Compatibility constants used by internal volumes.
+ *
+ * @UBI_COMPAT_DELETE: delete this internal volume before anything is written
+ * to the flash
+ * @UBI_COMPAT_RO: attach this device in read-only mode
+ * @UBI_COMPAT_PRESERVE: preserve this internal volume - do not touch its
+ * physical eraseblocks, don't allow the wear-leveling unit to move them
+ * @UBI_COMPAT_REJECT: reject this UBI image
+ */
+enum {
+	UBI_COMPAT_DELETE   = 1,
+	UBI_COMPAT_RO       = 2,
+	UBI_COMPAT_PRESERVE = 4,
+	UBI_COMPAT_REJECT   = 5
+};
+
+/* Sizes of UBI headers */
+#define UBI_EC_HDR_SIZE  sizeof(struct ubi_ec_hdr)
+#define UBI_VID_HDR_SIZE sizeof(struct ubi_vid_hdr)
+
+/* Sizes of UBI headers without the ending CRC */
+#define UBI_EC_HDR_SIZE_CRC  (UBI_EC_HDR_SIZE  - sizeof(__be32))
+#define UBI_VID_HDR_SIZE_CRC (UBI_VID_HDR_SIZE - sizeof(__be32))
+
+/**
+ * struct ubi_ec_hdr - UBI erase counter header.
+ * @magic: erase counter header magic number (%UBI_EC_HDR_MAGIC)
+ * @version: version of UBI implementation which is supposed to accept this
+ * UBI image
+ * @padding1: reserved for future, zeroes
+ * @ec: the erase counter
+ * @vid_hdr_offset: where the VID header starts
+ * @data_offset: where the user data start
+ * @padding2: reserved for future, zeroes
+ * @hdr_crc: erase counter header CRC checksum
+ *
+ * The erase counter header takes 64 bytes and has a plenty of unused space for
+ * future usage. The unused fields are zeroed. The @version field is used to
+ * indicate the version of UBI implementation which is supposed to be able to
+ * work with this UBI image. If @version is greater then the current UBI
+ * version, the image is rejected. This may be useful in future if something
+ * is changed radically. This field is duplicated in the volume identifier
+ * header.
+ *
+ * The @vid_hdr_offset and @data_offset fields contain the offset of the the
+ * volume identifier header and user data, relative to the beginning of the
+ * physical eraseblock. These values have to be the same for all physical
+ * eraseblocks.
+ */
+struct ubi_ec_hdr {
+	__be32  magic;
+	__u8    version;
+	__u8    padding1[3];
+	__be64  ec; /* Warning: the current limit is 31-bit anyway! */
+	__be32  vid_hdr_offset;
+	__be32  data_offset;
+	__u8    padding2[36];
+	__be32  hdr_crc;
+} __attribute__ ((packed));
+
+/**
+ * struct ubi_vid_hdr - on-flash UBI volume identifier header.
+ * @magic: volume identifier header magic number (%UBI_VID_HDR_MAGIC)
+ * @version: UBI implementation version which is supposed to accept this UBI
+ * image (%UBI_VERSION)
+ * @vol_type: volume type (%UBI_VID_DYNAMIC or %UBI_VID_STATIC)
+ * @copy_flag: if this logical eraseblock was copied from another physical
+ * eraseblock (for wear-leveling reasons)
+ * @compat: compatibility of this volume (%0, %UBI_COMPAT_DELETE,
+ * %UBI_COMPAT_IGNORE, %UBI_COMPAT_PRESERVE, or %UBI_COMPAT_REJECT)
+ * @vol_id: ID of this volume
+ * @lnum: logical eraseblock number
+ * @leb_ver: version of this logical eraseblock (IMPORTANT: obsolete, to be
+ * removed, kept only for not breaking older UBI users)
+ * @data_size: how many bytes of data this logical eraseblock contains
+ * @used_ebs: total number of used logical eraseblocks in this volume
+ * @data_pad: how many bytes at the end of this physical eraseblock are not
+ * used
+ * @data_crc: CRC checksum of the data stored in this logical eraseblock
+ * @padding1: reserved for future, zeroes
+ * @sqnum: sequence number
+ * @padding2: reserved for future, zeroes
+ * @hdr_crc: volume identifier header CRC checksum
+ *
+ * The @sqnum is the value of the global sequence counter at the time when this
+ * VID header was created. The global sequence counter is incremented each time
+ * UBI writes a new VID header to the flash, i.e. when it maps a logical
+ * eraseblock to a new physical eraseblock. The global sequence counter is an
+ * unsigned 64-bit integer and we assume it never overflows. The @sqnum
+ * (sequence number) is used to distinguish between older and newer versions of
+ * logical eraseblocks.
+ *
+ * There are 2 situations when there may be more then one physical eraseblock
+ * corresponding to the same logical eraseblock, i.e., having the same @vol_id
+ * and @lnum values in the volume identifier header. Suppose we have a logical
+ * eraseblock L and it is mapped to the physical eraseblock P.
+ *
+ * 1. Because UBI may erase physical eraseblocks asynchronously, the following
+ * situation is possible: L is asynchronously erased, so P is scheduled for
+ * erasure, then L is written to,i.e. mapped to another physical eraseblock P1,
+ * so P1 is written to, then an unclean reboot happens. Result - there are 2
+ * physical eraseblocks P and P1 corresponding to the same logical eraseblock
+ * L. But P1 has greater sequence number, so UBI picks P1 when it attaches the
+ * flash.
+ *
+ * 2. From time to time UBI moves logical eraseblocks to other physical
+ * eraseblocks for wear-leveling reasons. If, for example, UBI moves L from P
+ * to P1, and an unclean reboot happens before P is physically erased, there
+ * are two physical eraseblocks P and P1 corresponding to L and UBI has to
+ * select one of them when the flash is attached. The @sqnum field says which
+ * PEB is the original (obviously P will have lower @sqnum) and the copy. But
+ * it is not enough to select the physical eraseblock with the higher sequence
+ * number, because the unclean reboot could have happen in the middle of the
+ * copying process, so the data in P is corrupted. It is also not enough to
+ * just select the physical eraseblock with lower sequence number, because the
+ * data there may be old (consider a case if more data was added to P1 after
+ * the copying). Moreover, the unclean reboot may happen when the erasure of P
+ * was just started, so it result in unstable P, which is "mostly" OK, but
+ * still has unstable bits.
+ *
+ * UBI uses the @copy_flag field to indicate that this logical eraseblock is a
+ * copy. UBI also calculates data CRC when the data is moved and stores it at
+ * the @data_crc field of the copy (P1). So when UBI needs to pick one physical
+ * eraseblock of two (P or P1), the @copy_flag of the newer one (P1) is
+ * examined. If it is cleared, the situation* is simple and the newer one is
+ * picked. If it is set, the data CRC of the copy (P1) is examined. If the CRC
+ * checksum is correct, this physical eraseblock is selected (P1). Otherwise
+ * the older one (P) is selected.
+ *
+ * Note, there is an obsolete @leb_ver field which was used instead of @sqnum
+ * in the past. But it is not used anymore and we keep it in order to be able
+ * to deal with old UBI images. It will be removed at some point.
+ *
+ * There are 2 sorts of volumes in UBI: user volumes and internal volumes.
+ * Internal volumes are not seen from outside and are used for various internal
+ * UBI purposes. In this implementation there is only one internal volume - the
+ * layout volume. Internal volumes are the main mechanism of UBI extensions.
+ * For example, in future one may introduce a journal internal volume. Internal
+ * volumes have their own reserved range of IDs.
+ *
+ * The @compat field is only used for internal volumes and contains the "degree
+ * of their compatibility". It is always zero for user volumes. This field
+ * provides a mechanism to introduce UBI extensions and to be still compatible
+ * with older UBI binaries. For example, if someone introduced a journal in
+ * future, he would probably use %UBI_COMPAT_DELETE compatibility for the
+ * journal volume.  And in this case, older UBI binaries, which know nothing
+ * about the journal volume, would just delete this volume and work perfectly
+ * fine. This is similar to what Ext2fs does when it is fed by an Ext3fs image
+ * - it just ignores the Ext3fs journal.
+ *
+ * The @data_crc field contains the CRC checksum of the contents of the logical
+ * eraseblock if this is a static volume. In case of dynamic volumes, it does
+ * not contain the CRC checksum as a rule. The only exception is when the
+ * data of the physical eraseblock was moved by the wear-leveling unit, then
+ * the wear-leveling unit calculates the data CRC and stores it in the
+ * @data_crc field. And of course, the @copy_flag is %in this case.
+ *
+ * The @data_size field is used only for static volumes because UBI has to know
+ * how many bytes of data are stored in this eraseblock. For dynamic volumes,
+ * this field usually contains zero. The only exception is when the data of the
+ * physical eraseblock was moved to another physical eraseblock for
+ * wear-leveling reasons. In this case, UBI calculates CRC checksum of the
+ * contents and uses both @data_crc and @data_size fields. In this case, the
+ * @data_size field contains data size.
+ *
+ * The @used_ebs field is used only for static volumes and indicates how many
+ * eraseblocks the data of the volume takes. For dynamic volumes this field is
+ * not used and always contains zero.
+ *
+ * The @data_pad is calculated when volumes are created using the alignment
+ * parameter. So, effectively, the @data_pad field reduces the size of logical
+ * eraseblocks of this volume. This is very handy when one uses block-oriented
+ * software (say, cramfs) on top of the UBI volume.
+ */
+struct ubi_vid_hdr {
+	__be32  magic;
+	__u8    version;
+	__u8    vol_type;
+	__u8    copy_flag;
+	__u8    compat;
+	__be32  vol_id;
+	__be32  lnum;
+	__be32  leb_ver; /* obsolete, to be removed, don't use */
+	__be32  data_size;
+	__be32  used_ebs;
+	__be32  data_pad;
+	__be32  data_crc;
+	__u8    padding1[4];
+	__be64  sqnum;
+	__u8    padding2[12];
+	__be32  hdr_crc;
+} __attribute__ ((packed));
+
+/* Internal UBI volumes count */
+#define UBI_INT_VOL_COUNT 1
+
+/*
+ * Starting ID of internal volumes. There is reserved room for 4096 internal
+ * volumes.
+ */
+#define UBI_INTERNAL_VOL_START (0x7FFFFFFF - 4096)
+
+/* The layout volume contains the volume table */
+
+#define UBI_LAYOUT_VOLUME_ID     UBI_INTERNAL_VOL_START
+#define UBI_LAYOUT_VOLUME_TYPE   UBI_VID_DYNAMIC
+#define UBI_LAYOUT_VOLUME_ALIGN  1
+#define UBI_LAYOUT_VOLUME_EBS    2
+#define UBI_LAYOUT_VOLUME_NAME   "layout volume"
+#define UBI_LAYOUT_VOLUME_COMPAT UBI_COMPAT_REJECT
+
+/* The maximum number of volumes per one UBI device */
+#define UBI_MAX_VOLUMES 128
+
+/* The maximum volume name length */
+#define UBI_VOL_NAME_MAX 127
+
+/* Size of the volume table record */
+#define UBI_VTBL_RECORD_SIZE sizeof(struct ubi_vtbl_record)
+
+/* Size of the volume table record without the ending CRC */
+#define UBI_VTBL_RECORD_SIZE_CRC (UBI_VTBL_RECORD_SIZE - sizeof(__be32))
+
+/**
+ * struct ubi_vtbl_record - a record in the volume table.
+ * @reserved_pebs: how many physical eraseblocks are reserved for this volume
+ * @alignment: volume alignment
+ * @data_pad: how many bytes are unused at the end of the each physical
+ * eraseblock to satisfy the requested alignment
+ * @vol_type: volume type (%UBI_DYNAMIC_VOLUME or %UBI_STATIC_VOLUME)
+ * @upd_marker: if volume update was started but not finished
+ * @name_len: volume name length
+ * @name: the volume name
+ * @flags: volume flags (%UBI_VTBL_AUTORESIZE_FLG)
+ * @padding: reserved, zeroes
+ * @crc: a CRC32 checksum of the record
+ *
+ * The volume table records are stored in the volume table, which is stored in
+ * the layout volume. The layout volume consists of 2 logical eraseblock, each
+ * of which contains a copy of the volume table (i.e., the volume table is
+ * duplicated). The volume table is an array of &struct ubi_vtbl_record
+ * objects indexed by the volume ID.
+ *
+ * If the size of the logical eraseblock is large enough to fit
+ * %UBI_MAX_VOLUMES records, the volume table contains %UBI_MAX_VOLUMES
+ * records. Otherwise, it contains as many records as it can fit (i.e., size of
+ * logical eraseblock divided by sizeof(struct ubi_vtbl_record)).
+ *
+ * The @upd_marker flag is used to implement volume update. It is set to %1
+ * before update and set to %0 after the update. So if the update operation was
+ * interrupted, UBI knows that the volume is corrupted.
+ *
+ * The @alignment field is specified when the volume is created and cannot be
+ * later changed. It may be useful, for example, when a block-oriented file
+ * system works on top of UBI. The @data_pad field is calculated using the
+ * logical eraseblock size and @alignment. The alignment must be multiple to the
+ * minimal flash I/O unit. If @alignment is 1, all the available space of
+ * the physical eraseblocks is used.
+ *
+ * Empty records contain all zeroes and the CRC checksum of those zeroes.
+ */
+struct ubi_vtbl_record {
+	__be32  reserved_pebs;
+	__be32  alignment;
+	__be32  data_pad;
+	__u8    vol_type;
+	__u8    upd_marker;
+	__be16  name_len;
+	__u8    name[UBI_VOL_NAME_MAX+1];
+	__u8    flags;
+	__u8    padding[23];
+	__be32  crc;
+} __attribute__ ((packed));
+
+#endif /* !__UBI_MEDIA_H__ */
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
new file mode 100644
index 0000000..358c8dc
--- /dev/null
+++ b/drivers/mtd/ubi/ubi.h
@@ -0,0 +1,641 @@
+/*
+ * Copyright (c) International Business Machines Corp., 2006
+ * Copyright (c) Nokia Corporation, 2006, 2007
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ *
+ * Author: Artem Bityutskiy (���������������� ����������)
+ */
+
+#ifndef __UBI_UBI_H__
+#define __UBI_UBI_H__
+
+#ifdef UBI_LINUX
+#include <linux/init.h>
+#include <linux/types.h>
+#include <linux/list.h>
+#include <linux/rbtree.h>
+#include <linux/sched.h>
+#include <linux/wait.h>
+#include <linux/mutex.h>
+#include <linux/rwsem.h>
+#include <linux/spinlock.h>
+#include <linux/fs.h>
+#include <linux/cdev.h>
+#include <linux/device.h>
+#include <linux/string.h>
+#include <linux/vmalloc.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/ubi.h>
+#endif
+
+#include <linux/types.h>
+#include <linux/list.h>
+#include <linux/rbtree.h>
+#include <linux/string.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/ubi.h>
+
+#include "ubi-media.h"
+#include "scan.h"
+#include "debug.h"
+
+/* Maximum number of supported UBI devices */
+#define UBI_MAX_DEVICES 32
+
+/* UBI name used for character devices, sysfs, etc */
+#define UBI_NAME_STR "ubi"
+
+/* Normal UBI messages */
+#define ubi_msg(fmt, ...) printk(KERN_NOTICE "UBI: " fmt "\n", ##__VA_ARGS__)
+/* UBI warning messages */
+#define ubi_warn(fmt, ...) printk(KERN_WARNING "UBI warning: %s: " fmt "\n", \
+				  __func__, ##__VA_ARGS__)
+/* UBI error messages */
+#define ubi_err(fmt, ...) printk(KERN_ERR "UBI error: %s: " fmt "\n", \
+				 __func__, ##__VA_ARGS__)
+
+/* Lowest number PEBs reserved for bad PEB handling */
+#define MIN_RESEVED_PEBS 2
+
+/* Background thread name pattern */
+#define UBI_BGT_NAME_PATTERN "ubi_bgt%dd"
+
+/* This marker in the EBA table means that the LEB is um-mapped */
+#define UBI_LEB_UNMAPPED -1
+
+/*
+ * In case of errors, UBI tries to repeat the operation several times before
+ * returning error. The below constant defines how many times UBI re-tries.
+ */
+#define UBI_IO_RETRIES 3
+
+/*
+ * Error codes returned by the I/O unit.
+ *
+ * UBI_IO_PEB_EMPTY: the physical eraseblock is empty, i.e. it contains only
+ * 0xFF bytes
+ * UBI_IO_PEB_FREE: the physical eraseblock is free, i.e. it contains only a
+ * valid erase counter header, and the rest are %0xFF bytes
+ * UBI_IO_BAD_EC_HDR: the erase counter header is corrupted (bad magic or CRC)
+ * UBI_IO_BAD_VID_HDR: the volume identifier header is corrupted (bad magic or
+ * CRC)
+ * UBI_IO_BITFLIPS: bit-flips were detected and corrected
+ */
+enum {
+	UBI_IO_PEB_EMPTY = 1,
+	UBI_IO_PEB_FREE,
+	UBI_IO_BAD_EC_HDR,
+	UBI_IO_BAD_VID_HDR,
+	UBI_IO_BITFLIPS
+};
+
+/**
+ * struct ubi_wl_entry - wear-leveling entry.
+ * @rb: link in the corresponding RB-tree
+ * @ec: erase counter
+ * @pnum: physical eraseblock number
+ *
+ * This data structure is used in the WL unit. Each physical eraseblock has a
+ * corresponding &struct wl_entry object which may be kept in different
+ * RB-trees. See WL unit for details.
+ */
+struct ubi_wl_entry {
+	struct rb_node rb;
+	int ec;
+	int pnum;
+};
+
+/**
+ * struct ubi_ltree_entry - an entry in the lock tree.
+ * @rb: links RB-tree nodes
+ * @vol_id: volume ID of the locked logical eraseblock
+ * @lnum: locked logical eraseblock number
+ * @users: how many tasks are using this logical eraseblock or wait for it
+ * @mutex: read/write mutex to implement read/write access serialization to
+ *         the (@vol_id, @lnum) logical eraseblock
+ *
+ * This data structure is used in the EBA unit to implement per-LEB locking.
+ * When a logical eraseblock is being locked - corresponding
+ * &struct ubi_ltree_entry object is inserted to the lock tree (@ubi->ltree).
+ * See EBA unit for details.
+ */
+struct ubi_ltree_entry {
+	struct rb_node rb;
+	int vol_id;
+	int lnum;
+	int users;
+	struct rw_semaphore mutex;
+};
+
+struct ubi_volume_desc;
+
+/**
+ * struct ubi_volume - UBI volume description data structure.
+ * @dev: device object to make use of the the Linux device model
+ * @cdev: character device object to create character device
+ * @ubi: reference to the UBI device description object
+ * @vol_id: volume ID
+ * @ref_count: volume reference count
+ * @readers: number of users holding this volume in read-only mode
+ * @writers: number of users holding this volume in read-write mode
+ * @exclusive: whether somebody holds this volume in exclusive mode
+ *
+ * @reserved_pebs: how many physical eraseblocks are reserved for this volume
+ * @vol_type: volume type (%UBI_DYNAMIC_VOLUME or %UBI_STATIC_VOLUME)
+ * @usable_leb_size: logical eraseblock size without padding
+ * @used_ebs: how many logical eraseblocks in this volume contain data
+ * @last_eb_bytes: how many bytes are stored in the last logical eraseblock
+ * @used_bytes: how many bytes of data this volume contains
+ * @alignment: volume alignment
+ * @data_pad: how many bytes are not used at the end of physical eraseblocks to
+ *            satisfy the requested alignment
+ * @name_len: volume name length
+ * @name: volume name
+ *
+ * @upd_ebs: how many eraseblocks are expected to be updated
+ * @ch_lnum: LEB number which is being changing by the atomic LEB change
+ *           operation
+ * @ch_dtype: data persistency type which is being changing by the atomic LEB
+ *            change operation
+ * @upd_bytes: how many bytes are expected to be received for volume update or
+ *             atomic LEB change
+ * @upd_received: how many bytes were already received for volume update or
+ *                atomic LEB change
+ * @upd_buf: update buffer which is used to collect update data or data for
+ *           atomic LEB change
+ *
+ * @eba_tbl: EBA table of this volume (LEB->PEB mapping)
+ * @checked: %1 if this static volume was checked
+ * @corrupted: %1 if the volume is corrupted (static volumes only)
+ * @upd_marker: %1 if the update marker is set for this volume
+ * @updating: %1 if the volume is being updated
+ * @changing_leb: %1 if the atomic LEB change ioctl command is in progress
+ *
+ * @gluebi_desc: gluebi UBI volume descriptor
+ * @gluebi_refcount: reference count of the gluebi MTD device
+ * @gluebi_mtd: MTD device description object of the gluebi MTD device
+ *
+ * The @corrupted field indicates that the volume's contents is corrupted.
+ * Since UBI protects only static volumes, this field is not relevant to
+ * dynamic volumes - it is user's responsibility to assure their data
+ * integrity.
+ *
+ * The @upd_marker flag indicates that this volume is either being updated at
+ * the moment or is damaged because of an unclean reboot.
+ */
+struct ubi_volume {
+	struct device dev;
+	struct cdev cdev;
+	struct ubi_device *ubi;
+	int vol_id;
+	int ref_count;
+	int readers;
+	int writers;
+	int exclusive;
+
+	int reserved_pebs;
+	int vol_type;
+	int usable_leb_size;
+	int used_ebs;
+	int last_eb_bytes;
+	long long used_bytes;
+	int alignment;
+	int data_pad;
+	int name_len;
+	char name[UBI_VOL_NAME_MAX+1];
+
+	int upd_ebs;
+	int ch_lnum;
+	int ch_dtype;
+	long long upd_bytes;
+	long long upd_received;
+	void *upd_buf;
+
+	int *eba_tbl;
+	unsigned int checked:1;
+	unsigned int corrupted:1;
+	unsigned int upd_marker:1;
+	unsigned int updating:1;
+	unsigned int changing_leb:1;
+
+#ifdef CONFIG_MTD_UBI_GLUEBI
+	/*
+	 * Gluebi-related stuff may be compiled out.
+	 * TODO: this should not be built into UBI but should be a separate
+	 * ubimtd driver which works on top of UBI and emulates MTD devices.
+	 */
+	struct ubi_volume_desc *gluebi_desc;
+	int gluebi_refcount;
+	struct mtd_info gluebi_mtd;
+#endif
+};
+
+/**
+ * struct ubi_volume_desc - descriptor of the UBI volume returned when it is
+ * opened.
+ * @vol: reference to the corresponding volume description object
+ * @mode: open mode (%UBI_READONLY, %UBI_READWRITE, or %UBI_EXCLUSIVE)
+ */
+struct ubi_volume_desc {
+	struct ubi_volume *vol;
+	int mode;
+};
+
+struct ubi_wl_entry;
+
+/**
+ * struct ubi_device - UBI device description structure
+ * @dev: UBI device object to use the the Linux device model
+ * @cdev: character device object to create character device
+ * @ubi_num: UBI device number
+ * @ubi_name: UBI device name
+ * @vol_count: number of volumes in this UBI device
+ * @volumes: volumes of this UBI device
+ * @volumes_lock: protects @volumes, @rsvd_pebs, @avail_pebs, beb_rsvd_pebs,
+ *                @beb_rsvd_level, @bad_peb_count, @good_peb_count, @vol_count,
+ *                @vol->readers, @vol->writers, @vol->exclusive,
+ *                @vol->ref_count, @vol->mapping and @vol->eba_tbl.
+ * @ref_count: count of references on the UBI device
+ *
+ * @rsvd_pebs: count of reserved physical eraseblocks
+ * @avail_pebs: count of available physical eraseblocks
+ * @beb_rsvd_pebs: how many physical eraseblocks are reserved for bad PEB
+ *                 handling
+ * @beb_rsvd_level: normal level of PEBs reserved for bad PEB handling
+ *
+ * @autoresize_vol_id: ID of the volume which has to be auto-resized at the end
+ *                     of UBI ititializetion
+ * @vtbl_slots: how many slots are available in the volume table
+ * @vtbl_size: size of the volume table in bytes
+ * @vtbl: in-RAM volume table copy
+ * @volumes_mutex: protects on-flash volume table and serializes volume
+ *                 changes, like creation, deletion, update, resize
+ *
+ * @max_ec: current highest erase counter value
+ * @mean_ec: current mean erase counter value
+ *
+ * @global_sqnum: global sequence number
+ * @ltree_lock: protects the lock tree and @global_sqnum
+ * @ltree: the lock tree
+ * @alc_mutex: serializes "atomic LEB change" operations
+ *
+ * @used: RB-tree of used physical eraseblocks
+ * @free: RB-tree of free physical eraseblocks
+ * @scrub: RB-tree of physical eraseblocks which need scrubbing
+ * @prot: protection trees
+ * @prot.pnum: protection tree indexed by physical eraseblock numbers
+ * @prot.aec: protection tree indexed by absolute erase counter value
+ * @wl_lock: protects the @used, @free, @prot, @lookuptbl, @abs_ec, @move_from,
+ *           @move_to, @move_to_put @erase_pending, @wl_scheduled, and @works
+ *           fields
+ * @move_mutex: serializes eraseblock moves
+ * @wl_scheduled: non-zero if the wear-leveling was scheduled
+ * @lookuptbl: a table to quickly find a &struct ubi_wl_entry object for any
+ *             physical eraseblock
+ * @abs_ec: absolute erase counter
+ * @move_from: physical eraseblock from where the data is being moved
+ * @move_to: physical eraseblock where the data is being moved to
+ * @move_to_put: if the "to" PEB was put
+ * @works: list of pending works
+ * @works_count: count of pending works
+ * @bgt_thread: background thread description object
+ * @thread_enabled: if the background thread is enabled
+ * @bgt_name: background thread name
+ *
+ * @flash_size: underlying MTD device size (in bytes)
+ * @peb_count: count of physical eraseblocks on the MTD device
+ * @peb_size: physical eraseblock size
+ * @bad_peb_count: count of bad physical eraseblocks
+ * @good_peb_count: count of good physical eraseblocks
+ * @min_io_size: minimal input/output unit size of the underlying MTD device
+ * @hdrs_min_io_size: minimal I/O unit size used for VID and EC headers
+ * @ro_mode: if the UBI device is in read-only mode
+ * @leb_size: logical eraseblock size
+ * @leb_start: starting offset of logical eraseblocks within physical
+ * eraseblocks
+ * @ec_hdr_alsize: size of the EC header aligned to @hdrs_min_io_size
+ * @vid_hdr_alsize: size of the VID header aligned to @hdrs_min_io_size
+ * @vid_hdr_offset: starting offset of the volume identifier header (might be
+ * unaligned)
+ * @vid_hdr_aloffset: starting offset of the VID header aligned to
+ * @hdrs_min_io_size
+ * @vid_hdr_shift: contains @vid_hdr_offset - @vid_hdr_aloffset
+ * @bad_allowed: whether the MTD device admits of bad physical eraseblocks or
+ *               not
+ * @mtd: MTD device descriptor
+ *
+ * @peb_buf1: a buffer of PEB size used for different purposes
+ * @peb_buf2: another buffer of PEB size used for different purposes
+ * @buf_mutex: proptects @peb_buf1 and @peb_buf2
+ * @dbg_peb_buf: buffer of PEB size used for debugging
+ * @dbg_buf_mutex: proptects @dbg_peb_buf
+ */
+struct ubi_device {
+	struct cdev cdev;
+	struct device dev;
+	int ubi_num;
+	char ubi_name[sizeof(UBI_NAME_STR)+5];
+	int vol_count;
+	struct ubi_volume *volumes[UBI_MAX_VOLUMES+UBI_INT_VOL_COUNT];
+	spinlock_t volumes_lock;
+	int ref_count;
+
+	int rsvd_pebs;
+	int avail_pebs;
+	int beb_rsvd_pebs;
+	int beb_rsvd_level;
+
+	int autoresize_vol_id;
+	int vtbl_slots;
+	int vtbl_size;
+	struct ubi_vtbl_record *vtbl;
+	struct mutex volumes_mutex;
+
+	int max_ec;
+	/* TODO: mean_ec is not updated run-time, fix */
+	int mean_ec;
+
+	/* EBA unit's stuff */
+	unsigned long long global_sqnum;
+	spinlock_t ltree_lock;
+	struct rb_root ltree;
+	struct mutex alc_mutex;
+
+	/* Wear-leveling unit's stuff */
+	struct rb_root used;
+	struct rb_root free;
+	struct rb_root scrub;
+	struct {
+		struct rb_root pnum;
+		struct rb_root aec;
+	} prot;
+	spinlock_t wl_lock;
+	struct mutex move_mutex;
+	struct rw_semaphore work_sem;
+	int wl_scheduled;
+	struct ubi_wl_entry **lookuptbl;
+	unsigned long long abs_ec;
+	struct ubi_wl_entry *move_from;
+	struct ubi_wl_entry *move_to;
+	int move_to_put;
+	struct list_head works;
+	int works_count;
+	struct task_struct *bgt_thread;
+	int thread_enabled;
+	char bgt_name[sizeof(UBI_BGT_NAME_PATTERN)+2];
+
+	/* I/O unit's stuff */
+	long long flash_size;
+	int peb_count;
+	int peb_size;
+	int bad_peb_count;
+	int good_peb_count;
+	int min_io_size;
+	int hdrs_min_io_size;
+	int ro_mode;
+	int leb_size;
+	int leb_start;
+	int ec_hdr_alsize;
+	int vid_hdr_alsize;
+	int vid_hdr_offset;
+	int vid_hdr_aloffset;
+	int vid_hdr_shift;
+	int bad_allowed;
+	struct mtd_info *mtd;
+
+	void *peb_buf1;
+	void *peb_buf2;
+	struct mutex buf_mutex;
+	struct mutex ckvol_mutex;
+#ifdef CONFIG_MTD_UBI_DEBUG
+	void *dbg_peb_buf;
+	struct mutex dbg_buf_mutex;
+#endif
+};
+
+extern struct kmem_cache *ubi_wl_entry_slab;
+extern struct file_operations ubi_ctrl_cdev_operations;
+extern struct file_operations ubi_cdev_operations;
+extern struct file_operations ubi_vol_cdev_operations;
+extern struct class *ubi_class;
+extern struct mutex ubi_devices_mutex;
+
+/* vtbl.c */
+int ubi_change_vtbl_record(struct ubi_device *ubi, int idx,
+			   struct ubi_vtbl_record *vtbl_rec);
+int ubi_read_volume_table(struct ubi_device *ubi, struct ubi_scan_info *si);
+
+/* vmt.c */
+int ubi_create_volume(struct ubi_device *ubi, struct ubi_mkvol_req *req);
+int ubi_remove_volume(struct ubi_volume_desc *desc);
+int ubi_resize_volume(struct ubi_volume_desc *desc, int reserved_pebs);
+int ubi_add_volume(struct ubi_device *ubi, struct ubi_volume *vol);
+void ubi_free_volume(struct ubi_device *ubi, struct ubi_volume *vol);
+
+/* upd.c */
+int ubi_start_update(struct ubi_device *ubi, struct ubi_volume *vol,
+		     long long bytes);
+int ubi_more_update_data(struct ubi_device *ubi, struct ubi_volume *vol,
+			 const void __user *buf, int count);
+int ubi_start_leb_change(struct ubi_device *ubi, struct ubi_volume *vol,
+			 const struct ubi_leb_change_req *req);
+int ubi_more_leb_change_data(struct ubi_device *ubi, struct ubi_volume *vol,
+			     const void __user *buf, int count);
+
+/* misc.c */
+int ubi_calc_data_len(const struct ubi_device *ubi, const void *buf, int length);
+int ubi_check_volume(struct ubi_device *ubi, int vol_id);
+void ubi_calculate_reserved(struct ubi_device *ubi);
+
+/* gluebi.c */
+#ifdef CONFIG_MTD_UBI_GLUEBI
+int ubi_create_gluebi(struct ubi_device *ubi, struct ubi_volume *vol);
+int ubi_destroy_gluebi(struct ubi_volume *vol);
+void ubi_gluebi_updated(struct ubi_volume *vol);
+#else
+#define ubi_create_gluebi(ubi, vol) 0
+#define ubi_destroy_gluebi(vol) 0
+#define ubi_gluebi_updated(vol)
+#endif
+
+/* eba.c */
+int ubi_eba_unmap_leb(struct ubi_device *ubi, struct ubi_volume *vol,
+		      int lnum);
+int ubi_eba_read_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
+		     void *buf, int offset, int len, int check);
+int ubi_eba_write_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
+		      const void *buf, int offset, int len, int dtype);
+int ubi_eba_write_leb_st(struct ubi_device *ubi, struct ubi_volume *vol,
+			 int lnum, const void *buf, int len, int dtype,
+			 int used_ebs);
+int ubi_eba_atomic_leb_change(struct ubi_device *ubi, struct ubi_volume *vol,
+			      int lnum, const void *buf, int len, int dtype);
+int ubi_eba_copy_leb(struct ubi_device *ubi, int from, int to,
+		     struct ubi_vid_hdr *vid_hdr);
+int ubi_eba_init_scan(struct ubi_device *ubi, struct ubi_scan_info *si);
+void ubi_eba_close(const struct ubi_device *ubi);
+
+/* wl.c */
+int ubi_wl_get_peb(struct ubi_device *ubi, int dtype);
+int ubi_wl_put_peb(struct ubi_device *ubi, int pnum, int torture);
+int ubi_wl_flush(struct ubi_device *ubi);
+int ubi_wl_scrub_peb(struct ubi_device *ubi, int pnum);
+int ubi_wl_init_scan(struct ubi_device *ubi, struct ubi_scan_info *si);
+void ubi_wl_close(struct ubi_device *ubi);
+int ubi_thread(void *u);
+
+/* io.c */
+int ubi_io_read(const struct ubi_device *ubi, void *buf, int pnum, int offset,
+		int len);
+int ubi_io_write(struct ubi_device *ubi, const void *buf, int pnum, int offset,
+		 int len);
+int ubi_io_sync_erase(struct ubi_device *ubi, int pnum, int torture);
+int ubi_io_is_bad(const struct ubi_device *ubi, int pnum);
+int ubi_io_mark_bad(const struct ubi_device *ubi, int pnum);
+int ubi_io_read_ec_hdr(struct ubi_device *ubi, int pnum,
+		       struct ubi_ec_hdr *ec_hdr, int verbose);
+int ubi_io_write_ec_hdr(struct ubi_device *ubi, int pnum,
+			struct ubi_ec_hdr *ec_hdr);
+int ubi_io_read_vid_hdr(struct ubi_device *ubi, int pnum,
+			struct ubi_vid_hdr *vid_hdr, int verbose);
+int ubi_io_write_vid_hdr(struct ubi_device *ubi, int pnum,
+			 struct ubi_vid_hdr *vid_hdr);
+
+/* build.c */
+int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num, int vid_hdr_offset);
+int ubi_detach_mtd_dev(int ubi_num, int anyway);
+struct ubi_device *ubi_get_device(int ubi_num);
+void ubi_put_device(struct ubi_device *ubi);
+struct ubi_device *ubi_get_by_major(int major);
+int ubi_major2num(int major);
+
+/*
+ * ubi_rb_for_each_entry - walk an RB-tree.
+ * @rb: a pointer to type 'struct rb_node' to to use as a loop counter
+ * @pos: a pointer to RB-tree entry type to use as a loop counter
+ * @root: RB-tree's root
+ * @member: the name of the 'struct rb_node' within the RB-tree entry
+ */
+#define ubi_rb_for_each_entry(rb, pos, root, member)                         \
+	for (rb = rb_first(root),                                            \
+	     pos = (rb ? container_of(rb, typeof(*pos), member) : NULL);     \
+	     rb;                                                             \
+	     rb = rb_next(rb), pos = container_of(rb, typeof(*pos), member))
+
+/**
+ * ubi_zalloc_vid_hdr - allocate a volume identifier header object.
+ * @ubi: UBI device description object
+ * @gfp_flags: GFP flags to allocate with
+ *
+ * This function returns a pointer to the newly allocated and zero-filled
+ * volume identifier header object in case of success and %NULL in case of
+ * failure.
+ */
+static inline struct ubi_vid_hdr *
+ubi_zalloc_vid_hdr(const struct ubi_device *ubi, unsigned int gfp_flags)
+{
+	void *vid_hdr;
+
+	vid_hdr = kzalloc(ubi->vid_hdr_alsize, gfp_flags);
+	if (!vid_hdr)
+		return NULL;
+
+	/*
+	 * VID headers may be stored at un-aligned flash offsets, so we shift
+	 * the pointer.
+	 */
+	return vid_hdr + ubi->vid_hdr_shift;
+}
+
+/**
+ * ubi_free_vid_hdr - free a volume identifier header object.
+ * @ubi: UBI device description object
+ * @vid_hdr: the object to free
+ */
+static inline void ubi_free_vid_hdr(const struct ubi_device *ubi,
+				    struct ubi_vid_hdr *vid_hdr)
+{
+	void *p = vid_hdr;
+
+	if (!p)
+		return;
+
+	kfree(p - ubi->vid_hdr_shift);
+}
+
+/*
+ * This function is equivalent to 'ubi_io_read()', but @offset is relative to
+ * the beginning of the logical eraseblock, not to the beginning of the
+ * physical eraseblock.
+ */
+static inline int ubi_io_read_data(const struct ubi_device *ubi, void *buf,
+				   int pnum, int offset, int len)
+{
+	ubi_assert(offset >= 0);
+	return ubi_io_read(ubi, buf, pnum, offset + ubi->leb_start, len);
+}
+
+/*
+ * This function is equivalent to 'ubi_io_write()', but @offset is relative to
+ * the beginning of the logical eraseblock, not to the beginning of the
+ * physical eraseblock.
+ */
+static inline int ubi_io_write_data(struct ubi_device *ubi, const void *buf,
+				    int pnum, int offset, int len)
+{
+	ubi_assert(offset >= 0);
+	return ubi_io_write(ubi, buf, pnum, offset + ubi->leb_start, len);
+}
+
+/**
+ * ubi_ro_mode - switch to read-only mode.
+ * @ubi: UBI device description object
+ */
+static inline void ubi_ro_mode(struct ubi_device *ubi)
+{
+	if (!ubi->ro_mode) {
+		ubi->ro_mode = 1;
+		ubi_warn("switch to read-only mode");
+	}
+}
+
+/**
+ * vol_id2idx - get table index by volume ID.
+ * @ubi: UBI device description object
+ * @vol_id: volume ID
+ */
+static inline int vol_id2idx(const struct ubi_device *ubi, int vol_id)
+{
+	if (vol_id >= UBI_INTERNAL_VOL_START)
+		return vol_id - UBI_INTERNAL_VOL_START + ubi->vtbl_slots;
+	else
+		return vol_id;
+}
+
+/**
+ * idx2vol_id - get volume ID by table index.
+ * @ubi: UBI device description object
+ * @idx: table index
+ */
+static inline int idx2vol_id(const struct ubi_device *ubi, int idx)
+{
+	if (idx >= ubi->vtbl_slots)
+		return idx - ubi->vtbl_slots + UBI_INTERNAL_VOL_START;
+	else
+		return idx;
+}
+
+#endif /* !__UBI_UBI_H__ */
diff --git a/drivers/mtd/ubi/upd.c b/drivers/mtd/ubi/upd.c
new file mode 100644
index 0000000..8267b1a
--- /dev/null
+++ b/drivers/mtd/ubi/upd.c
@@ -0,0 +1,441 @@
+/*
+ * Copyright (c) International Business Machines Corp., 2006
+ * Copyright (c) Nokia Corporation, 2006
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ *
+ * Author: Artem Bityutskiy (���������������� ����������)
+ *
+ * Jan 2007: Alexander Schmidt, hacked per-volume update.
+ */
+
+/*
+ * This file contains implementation of the volume update and atomic LEB change
+ * functionality.
+ *
+ * The update operation is based on the per-volume update marker which is
+ * stored in the volume table. The update marker is set before the update
+ * starts, and removed after the update has been finished. So if the update was
+ * interrupted by an unclean re-boot or due to some other reasons, the update
+ * marker stays on the flash media and UBI finds it when it attaches the MTD
+ * device next time. If the update marker is set for a volume, the volume is
+ * treated as damaged and most I/O operations are prohibited. Only a new update
+ * operation is allowed.
+ *
+ * Note, in general it is possible to implement the update operation as a
+ * transaction with a roll-back capability.
+ */
+
+#ifdef UBI_LINUX
+#include <linux/err.h>
+#include <asm/uaccess.h>
+#include <asm/div64.h>
+#endif
+
+#include "ubi-barebox.h"
+#include "ubi.h"
+
+/**
+ * set_update_marker - set update marker.
+ * @ubi: UBI device description object
+ * @vol: volume description object
+ *
+ * This function sets the update marker flag for volume @vol. Returns zero
+ * in case of success and a negative error code in case of failure.
+ */
+static int set_update_marker(struct ubi_device *ubi, struct ubi_volume *vol)
+{
+	int err;
+	struct ubi_vtbl_record vtbl_rec;
+
+	dbg_msg("set update marker for volume %d", vol->vol_id);
+
+	if (vol->upd_marker) {
+		ubi_assert(ubi->vtbl[vol->vol_id].upd_marker);
+		dbg_msg("already set");
+		return 0;
+	}
+
+	memcpy(&vtbl_rec, &ubi->vtbl[vol->vol_id],
+	       sizeof(struct ubi_vtbl_record));
+	vtbl_rec.upd_marker = 1;
+
+	mutex_lock(&ubi->volumes_mutex);
+	err = ubi_change_vtbl_record(ubi, vol->vol_id, &vtbl_rec);
+	mutex_unlock(&ubi->volumes_mutex);
+	vol->upd_marker = 1;
+	return err;
+}
+
+/**
+ * clear_update_marker - clear update marker.
+ * @ubi: UBI device description object
+ * @vol: volume description object
+ * @bytes: new data size in bytes
+ *
+ * This function clears the update marker for volume @vol, sets new volume
+ * data size and clears the "corrupted" flag (static volumes only). Returns
+ * zero in case of success and a negative error code in case of failure.
+ */
+static int clear_update_marker(struct ubi_device *ubi, struct ubi_volume *vol,
+			       long long bytes)
+{
+	int err;
+	uint64_t tmp;
+	struct ubi_vtbl_record vtbl_rec;
+
+	dbg_msg("clear update marker for volume %d", vol->vol_id);
+
+	memcpy(&vtbl_rec, &ubi->vtbl[vol->vol_id],
+	       sizeof(struct ubi_vtbl_record));
+	ubi_assert(vol->upd_marker && vtbl_rec.upd_marker);
+	vtbl_rec.upd_marker = 0;
+
+	if (vol->vol_type == UBI_STATIC_VOLUME) {
+		vol->corrupted = 0;
+		vol->used_bytes = tmp = bytes;
+		vol->last_eb_bytes = do_div(tmp, vol->usable_leb_size);
+		vol->used_ebs = tmp;
+		if (vol->last_eb_bytes)
+			vol->used_ebs += 1;
+		else
+			vol->last_eb_bytes = vol->usable_leb_size;
+	}
+
+	mutex_lock(&ubi->volumes_mutex);
+	err = ubi_change_vtbl_record(ubi, vol->vol_id, &vtbl_rec);
+	mutex_unlock(&ubi->volumes_mutex);
+	vol->upd_marker = 0;
+	return err;
+}
+
+/**
+ * ubi_start_update - start volume update.
+ * @ubi: UBI device description object
+ * @vol: volume description object
+ * @bytes: update bytes
+ *
+ * This function starts volume update operation. If @bytes is zero, the volume
+ * is just wiped out. Returns zero in case of success and a negative error code
+ * in case of failure.
+ */
+int ubi_start_update(struct ubi_device *ubi, struct ubi_volume *vol,
+		     long long bytes)
+{
+	int i, err;
+	uint64_t tmp;
+
+	dbg_msg("start update of volume %d, %llu bytes", vol->vol_id, bytes);
+	ubi_assert(!vol->updating && !vol->changing_leb);
+	vol->updating = 1;
+
+	err = set_update_marker(ubi, vol);
+	if (err)
+		return err;
+
+	/* Before updating - wipe out the volume */
+	for (i = 0; i < vol->reserved_pebs; i++) {
+		err = ubi_eba_unmap_leb(ubi, vol, i);
+		if (err)
+			return err;
+	}
+
+	if (bytes == 0) {
+		err = clear_update_marker(ubi, vol, 0);
+		if (err)
+			return err;
+		err = ubi_wl_flush(ubi);
+		if (!err)
+			vol->updating = 0;
+	}
+
+	vol->upd_buf = vmalloc(ubi->leb_size);
+	if (!vol->upd_buf)
+		return -ENOMEM;
+
+	tmp = bytes;
+	vol->upd_ebs = !!do_div(tmp, vol->usable_leb_size);
+	vol->upd_ebs += tmp;
+	vol->upd_bytes = bytes;
+	vol->upd_received = 0;
+	return 0;
+}
+
+/**
+ * ubi_start_leb_change - start atomic LEB change.
+ * @ubi: UBI device description object
+ * @vol: volume description object
+ * @req: operation request
+ *
+ * This function starts atomic LEB change operation. Returns zero in case of
+ * success and a negative error code in case of failure.
+ */
+int ubi_start_leb_change(struct ubi_device *ubi, struct ubi_volume *vol,
+			 const struct ubi_leb_change_req *req)
+{
+	ubi_assert(!vol->updating && !vol->changing_leb);
+
+	dbg_msg("start changing LEB %d:%d, %u bytes",
+		vol->vol_id, req->lnum, req->bytes);
+	if (req->bytes == 0)
+		return ubi_eba_atomic_leb_change(ubi, vol, req->lnum, NULL, 0,
+						 req->dtype);
+
+	vol->upd_bytes = req->bytes;
+	vol->upd_received = 0;
+	vol->changing_leb = 1;
+	vol->ch_lnum = req->lnum;
+	vol->ch_dtype = req->dtype;
+
+	vol->upd_buf = vmalloc(req->bytes);
+	if (!vol->upd_buf)
+		return -ENOMEM;
+
+	return 0;
+}
+
+/**
+ * write_leb - write update data.
+ * @ubi: UBI device description object
+ * @vol: volume description object
+ * @lnum: logical eraseblock number
+ * @buf: data to write
+ * @len: data size
+ * @used_ebs: how many logical eraseblocks will this volume contain (static
+ * volumes only)
+ *
+ * This function writes update data to corresponding logical eraseblock. In
+ * case of dynamic volume, this function checks if the data contains 0xFF bytes
+ * at the end. If yes, the 0xFF bytes are cut and not written. So if the whole
+ * buffer contains only 0xFF bytes, the LEB is left unmapped.
+ *
+ * The reason why we skip the trailing 0xFF bytes in case of dynamic volume is
+ * that we want to make sure that more data may be appended to the logical
+ * eraseblock in future. Indeed, writing 0xFF bytes may have side effects and
+ * this PEB won't be writable anymore. So if one writes the file-system image
+ * to the UBI volume where 0xFFs mean free space - UBI makes sure this free
+ * space is writable after the update.
+ *
+ * We do not do this for static volumes because they are read-only. But this
+ * also cannot be done because we have to store per-LEB CRC and the correct
+ * data length.
+ *
+ * This function returns zero in case of success and a negative error code in
+ * case of failure.
+ */
+static int write_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
+		     void *buf, int len, int used_ebs)
+{
+	int err;
+
+	if (vol->vol_type == UBI_DYNAMIC_VOLUME) {
+		int l = ALIGN(len, ubi->min_io_size);
+
+		memset(buf + len, 0xFF, l - len);
+		len = ubi_calc_data_len(ubi, buf, l);
+		if (len == 0) {
+			dbg_msg("all %d bytes contain 0xFF - skip", len);
+			return 0;
+		}
+
+		err = ubi_eba_write_leb(ubi, vol, lnum, buf, 0, len, UBI_UNKNOWN);
+	} else {
+		/*
+		 * When writing static volume, and this is the last logical
+		 * eraseblock, the length (@len) does not have to be aligned to
+		 * the minimal flash I/O unit. The 'ubi_eba_write_leb_st()'
+		 * function accepts exact (unaligned) length and stores it in
+		 * the VID header. And it takes care of proper alignment by
+		 * padding the buffer. Here we just make sure the padding will
+		 * contain zeros, not random trash.
+		 */
+		memset(buf + len, 0, vol->usable_leb_size - len);
+		err = ubi_eba_write_leb_st(ubi, vol, lnum, buf, len,
+					   UBI_UNKNOWN, used_ebs);
+	}
+
+	return err;
+}
+
+/**
+ * ubi_more_update_data - write more update data.
+ * @vol: volume description object
+ * @buf: write data (user-space memory buffer)
+ * @count: how much bytes to write
+ *
+ * This function writes more data to the volume which is being updated. It may
+ * be called arbitrary number of times until all the update data arriveis. This
+ * function returns %0 in case of success, number of bytes written during the
+ * last call if the whole volume update has been successfully finished, and a
+ * negative error code in case of failure.
+ */
+int ubi_more_update_data(struct ubi_device *ubi, struct ubi_volume *vol,
+			 const void __user *buf, int count)
+{
+	uint64_t tmp;
+	int lnum, offs, err = 0, len, to_write = count;
+
+	dbg_msg("write %d of %lld bytes, %lld already passed",
+		count, vol->upd_bytes, vol->upd_received);
+
+	if (ubi->ro_mode)
+		return -EROFS;
+
+	tmp = vol->upd_received;
+	offs = do_div(tmp, vol->usable_leb_size);
+	lnum = tmp;
+
+	if (vol->upd_received + count > vol->upd_bytes)
+		to_write = count = vol->upd_bytes - vol->upd_received;
+
+	/*
+	 * When updating volumes, we accumulate whole logical eraseblock of
+	 * data and write it at once.
+	 */
+	if (offs != 0) {
+		/*
+		 * This is a write to the middle of the logical eraseblock. We
+		 * copy the data to our update buffer and wait for more data or
+		 * flush it if the whole eraseblock is written or the update
+		 * is finished.
+		 */
+
+		len = vol->usable_leb_size - offs;
+		if (len > count)
+			len = count;
+
+		err = copy_from_user(vol->upd_buf + offs, buf, len);
+		if (err)
+			return -EFAULT;
+
+		if (offs + len == vol->usable_leb_size ||
+		    vol->upd_received + len == vol->upd_bytes) {
+			int flush_len = offs + len;
+
+			/*
+			 * OK, we gathered either the whole eraseblock or this
+			 * is the last chunk, it's time to flush the buffer.
+			 */
+			ubi_assert(flush_len <= vol->usable_leb_size);
+			err = write_leb(ubi, vol, lnum, vol->upd_buf, flush_len,
+					vol->upd_ebs);
+			if (err)
+				return err;
+		}
+
+		vol->upd_received += len;
+		count -= len;
+		buf += len;
+		lnum += 1;
+	}
+
+	/*
+	 * If we've got more to write, let's continue. At this point we know we
+	 * are starting from the beginning of an eraseblock.
+	 */
+	while (count) {
+		if (count > vol->usable_leb_size)
+			len = vol->usable_leb_size;
+		else
+			len = count;
+
+		err = copy_from_user(vol->upd_buf, buf, len);
+		if (err)
+			return -EFAULT;
+
+		if (len == vol->usable_leb_size ||
+		    vol->upd_received + len == vol->upd_bytes) {
+			err = write_leb(ubi, vol, lnum, vol->upd_buf,
+					len, vol->upd_ebs);
+			if (err)
+				break;
+		}
+
+		vol->upd_received += len;
+		count -= len;
+		lnum += 1;
+		buf += len;
+	}
+
+	ubi_assert(vol->upd_received <= vol->upd_bytes);
+	if (vol->upd_received == vol->upd_bytes) {
+		/* The update is finished, clear the update marker */
+		err = clear_update_marker(ubi, vol, vol->upd_bytes);
+		if (err)
+			return err;
+		err = ubi_wl_flush(ubi);
+		if (err == 0) {
+			vol->updating = 0;
+			err = to_write;
+			vfree(vol->upd_buf);
+		}
+	}
+
+	return err;
+}
+
+/**
+ * ubi_more_leb_change_data - accept more data for atomic LEB change.
+ * @vol: volume description object
+ * @buf: write data (user-space memory buffer)
+ * @count: how much bytes to write
+ *
+ * This function accepts more data to the volume which is being under the
+ * "atomic LEB change" operation. It may be called arbitrary number of times
+ * until all data arrives. This function returns %0 in case of success, number
+ * of bytes written during the last call if the whole "atomic LEB change"
+ * operation has been successfully finished, and a negative error code in case
+ * of failure.
+ */
+int ubi_more_leb_change_data(struct ubi_device *ubi, struct ubi_volume *vol,
+			     const void __user *buf, int count)
+{
+	int err;
+
+	dbg_msg("write %d of %lld bytes, %lld already passed",
+		count, vol->upd_bytes, vol->upd_received);
+
+	if (ubi->ro_mode)
+		return -EROFS;
+
+	if (vol->upd_received + count > vol->upd_bytes)
+		count = vol->upd_bytes - vol->upd_received;
+
+	err = copy_from_user(vol->upd_buf + vol->upd_received, buf, count);
+	if (err)
+		return -EFAULT;
+
+	vol->upd_received += count;
+
+	if (vol->upd_received == vol->upd_bytes) {
+		int len = ALIGN((int)vol->upd_bytes, ubi->min_io_size);
+
+		memset(vol->upd_buf + vol->upd_bytes, 0xFF, len - vol->upd_bytes);
+		len = ubi_calc_data_len(ubi, vol->upd_buf, len);
+		err = ubi_eba_atomic_leb_change(ubi, vol, vol->ch_lnum,
+						vol->upd_buf, len, UBI_UNKNOWN);
+		if (err)
+			return err;
+	}
+
+	ubi_assert(vol->upd_received <= vol->upd_bytes);
+	if (vol->upd_received == vol->upd_bytes) {
+		vol->changing_leb = 0;
+		err = count;
+		vfree(vol->upd_buf);
+	}
+
+	return err;
+}
diff --git a/drivers/mtd/ubi/vmt.c b/drivers/mtd/ubi/vmt.c
new file mode 100644
index 0000000..935dcdc
--- /dev/null
+++ b/drivers/mtd/ubi/vmt.c
@@ -0,0 +1,866 @@
+/*
+ * Copyright (c) International Business Machines Corp., 2006
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation;  either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ *
+ * Author: Artem Bityutskiy (���������������� ����������)
+ */
+
+/*
+ * This file contains implementation of volume creation, deletion, updating and
+ * resizing.
+ */
+
+#ifdef UBI_LINUX
+#include <linux/err.h>
+#include <asm/div64.h>
+#endif
+
+#include "ubi-barebox.h"
+#include "ubi.h"
+
+#ifdef CONFIG_MTD_UBI_DEBUG_PARANOID
+static void paranoid_check_volumes(struct ubi_device *ubi);
+#else
+#define paranoid_check_volumes(ubi)
+#endif
+
+#ifdef UBI_LINUX
+static ssize_t vol_attribute_show(struct device *dev,
+				  struct device_attribute *attr, char *buf);
+
+/* Device attributes corresponding to files in '/<sysfs>/class/ubi/ubiX_Y' */
+static struct device_attribute attr_vol_reserved_ebs =
+	__ATTR(reserved_ebs, S_IRUGO, vol_attribute_show, NULL);
+static struct device_attribute attr_vol_type =
+	__ATTR(type, S_IRUGO, vol_attribute_show, NULL);
+static struct device_attribute attr_vol_name =
+	__ATTR(name, S_IRUGO, vol_attribute_show, NULL);
+static struct device_attribute attr_vol_corrupted =
+	__ATTR(corrupted, S_IRUGO, vol_attribute_show, NULL);
+static struct device_attribute attr_vol_alignment =
+	__ATTR(alignment, S_IRUGO, vol_attribute_show, NULL);
+static struct device_attribute attr_vol_usable_eb_size =
+	__ATTR(usable_eb_size, S_IRUGO, vol_attribute_show, NULL);
+static struct device_attribute attr_vol_data_bytes =
+	__ATTR(data_bytes, S_IRUGO, vol_attribute_show, NULL);
+static struct device_attribute attr_vol_upd_marker =
+	__ATTR(upd_marker, S_IRUGO, vol_attribute_show, NULL);
+
+/*
+ * "Show" method for files in '/<sysfs>/class/ubi/ubiX_Y/'.
+ *
+ * Consider a situation:
+ * A. process 1 opens a sysfs file related to volume Y, say
+ *    /<sysfs>/class/ubi/ubiX_Y/reserved_ebs;
+ * B. process 2 removes volume Y;
+ * C. process 1 starts reading the /<sysfs>/class/ubi/ubiX_Y/reserved_ebs file;
+ *
+ * In this situation, this function will return %-ENODEV because it will find
+ * out that the volume was removed from the @ubi->volumes array.
+ */
+static ssize_t vol_attribute_show(struct device *dev,
+				  struct device_attribute *attr, char *buf)
+{
+	int ret;
+	struct ubi_volume *vol = container_of(dev, struct ubi_volume, dev);
+	struct ubi_device *ubi;
+
+	ubi = ubi_get_device(vol->ubi->ubi_num);
+	if (!ubi)
+		return -ENODEV;
+
+	spin_lock(&ubi->volumes_lock);
+	if (!ubi->volumes[vol->vol_id]) {
+		spin_unlock(&ubi->volumes_lock);
+		ubi_put_device(ubi);
+		return -ENODEV;
+	}
+	/* Take a reference to prevent volume removal */
+	vol->ref_count += 1;
+	spin_unlock(&ubi->volumes_lock);
+
+	if (attr == &attr_vol_reserved_ebs)
+		ret = sprintf(buf, "%d\n", vol->reserved_pebs);
+	else if (attr == &attr_vol_type) {
+		const char *tp;
+
+		if (vol->vol_type == UBI_DYNAMIC_VOLUME)
+			tp = "dynamic";
+		else
+			tp = "static";
+		ret = sprintf(buf, "%s\n", tp);
+	} else if (attr == &attr_vol_name)
+		ret = sprintf(buf, "%s\n", vol->name);
+	else if (attr == &attr_vol_corrupted)
+		ret = sprintf(buf, "%d\n", vol->corrupted);
+	else if (attr == &attr_vol_alignment)
+		ret = sprintf(buf, "%d\n", vol->alignment);
+	else if (attr == &attr_vol_usable_eb_size)
+		ret = sprintf(buf, "%d\n", vol->usable_leb_size);
+	else if (attr == &attr_vol_data_bytes)
+		ret = sprintf(buf, "%lld\n", vol->used_bytes);
+	else if (attr == &attr_vol_upd_marker)
+		ret = sprintf(buf, "%d\n", vol->upd_marker);
+	else
+		/* This must be a bug */
+		ret = -EINVAL;
+
+	/* We've done the operation, drop volume and UBI device references */
+	spin_lock(&ubi->volumes_lock);
+	vol->ref_count -= 1;
+	ubi_assert(vol->ref_count >= 0);
+	spin_unlock(&ubi->volumes_lock);
+	ubi_put_device(ubi);
+	return ret;
+}
+#endif
+
+/* Release method for volume devices */
+static void vol_release(struct device *dev)
+{
+	struct ubi_volume *vol = container_of(dev, struct ubi_volume, dev);
+
+	kfree(vol);
+}
+
+#ifdef UBI_LINUX
+/**
+ * volume_sysfs_init - initialize sysfs for new volume.
+ * @ubi: UBI device description object
+ * @vol: volume description object
+ *
+ * This function returns zero in case of success and a negative error code in
+ * case of failure.
+ *
+ * Note, this function does not free allocated resources in case of failure -
+ * the caller does it. This is because this would cause release() here and the
+ * caller would oops.
+ */
+static int volume_sysfs_init(struct ubi_device *ubi, struct ubi_volume *vol)
+{
+	int err;
+
+	err = device_create_file(&vol->dev, &attr_vol_reserved_ebs);
+	if (err)
+		return err;
+	err = device_create_file(&vol->dev, &attr_vol_type);
+	if (err)
+		return err;
+	err = device_create_file(&vol->dev, &attr_vol_name);
+	if (err)
+		return err;
+	err = device_create_file(&vol->dev, &attr_vol_corrupted);
+	if (err)
+		return err;
+	err = device_create_file(&vol->dev, &attr_vol_alignment);
+	if (err)
+		return err;
+	err = device_create_file(&vol->dev, &attr_vol_usable_eb_size);
+	if (err)
+		return err;
+	err = device_create_file(&vol->dev, &attr_vol_data_bytes);
+	if (err)
+		return err;
+	err = device_create_file(&vol->dev, &attr_vol_upd_marker);
+	return err;
+}
+
+/**
+ * volume_sysfs_close - close sysfs for a volume.
+ * @vol: volume description object
+ */
+static void volume_sysfs_close(struct ubi_volume *vol)
+{
+	device_remove_file(&vol->dev, &attr_vol_upd_marker);
+	device_remove_file(&vol->dev, &attr_vol_data_bytes);
+	device_remove_file(&vol->dev, &attr_vol_usable_eb_size);
+	device_remove_file(&vol->dev, &attr_vol_alignment);
+	device_remove_file(&vol->dev, &attr_vol_corrupted);
+	device_remove_file(&vol->dev, &attr_vol_name);
+	device_remove_file(&vol->dev, &attr_vol_type);
+	device_remove_file(&vol->dev, &attr_vol_reserved_ebs);
+	device_unregister(&vol->dev);
+}
+#endif
+
+/**
+ * ubi_create_volume - create volume.
+ * @ubi: UBI device description object
+ * @req: volume creation request
+ *
+ * This function creates volume described by @req. If @req->vol_id id
+ * %UBI_VOL_NUM_AUTO, this function automatically assign ID to the new volume
+ * and saves it in @req->vol_id. Returns zero in case of success and a negative
+ * error code in case of failure. Note, the caller has to have the
+ * @ubi->volumes_mutex locked.
+ */
+int ubi_create_volume(struct ubi_device *ubi, struct ubi_mkvol_req *req)
+{
+	int i, err, vol_id = req->vol_id, dont_free = 0;
+	struct ubi_volume *vol;
+	struct ubi_vtbl_record vtbl_rec;
+	uint64_t bytes;
+	dev_t dev;
+
+	if (ubi->ro_mode)
+		return -EROFS;
+
+	vol = kzalloc(sizeof(struct ubi_volume), GFP_KERNEL);
+	if (!vol)
+		return -ENOMEM;
+
+	spin_lock(&ubi->volumes_lock);
+	if (vol_id == UBI_VOL_NUM_AUTO) {
+		/* Find unused volume ID */
+		dbg_msg("search for vacant volume ID");
+		for (i = 0; i < ubi->vtbl_slots; i++)
+			if (!ubi->volumes[i]) {
+				vol_id = i;
+				break;
+			}
+
+		if (vol_id == UBI_VOL_NUM_AUTO) {
+			dbg_err("out of volume IDs");
+			err = -ENFILE;
+			goto out_unlock;
+		}
+		req->vol_id = vol_id;
+	}
+
+	dbg_msg("volume ID %d, %llu bytes, type %d, name %s",
+		vol_id, (unsigned long long)req->bytes,
+		(int)req->vol_type, req->name);
+
+	/* Ensure that this volume does not exist */
+	err = -EEXIST;
+	if (ubi->volumes[vol_id]) {
+		dbg_err("volume %d already exists", vol_id);
+		goto out_unlock;
+	}
+
+	/* Ensure that the name is unique */
+	for (i = 0; i < ubi->vtbl_slots; i++)
+		if (ubi->volumes[i] &&
+		    ubi->volumes[i]->name_len == req->name_len &&
+		    !strcmp(ubi->volumes[i]->name, req->name)) {
+			dbg_err("volume \"%s\" exists (ID %d)", req->name, i);
+			goto out_unlock;
+		}
+
+	/* Calculate how many eraseblocks are requested */
+	vol->usable_leb_size = ubi->leb_size - ubi->leb_size % req->alignment;
+	bytes = req->bytes;
+	if (do_div(bytes, vol->usable_leb_size))
+		vol->reserved_pebs = 1;
+	vol->reserved_pebs += bytes;
+
+	/* Reserve physical eraseblocks */
+	if (vol->reserved_pebs > ubi->avail_pebs) {
+		dbg_err("not enough PEBs, only %d available", ubi->avail_pebs);
+		err = -ENOSPC;
+		goto out_unlock;
+	}
+	ubi->avail_pebs -= vol->reserved_pebs;
+	ubi->rsvd_pebs += vol->reserved_pebs;
+	spin_unlock(&ubi->volumes_lock);
+
+	vol->vol_id    = vol_id;
+	vol->alignment = req->alignment;
+	vol->data_pad  = ubi->leb_size % vol->alignment;
+	vol->vol_type  = req->vol_type;
+	vol->name_len  = req->name_len;
+	memcpy(vol->name, req->name, vol->name_len + 1);
+	vol->ubi = ubi;
+
+	/*
+	 * Finish all pending erases because there may be some LEBs belonging
+	 * to the same volume ID.
+	 */
+	err = ubi_wl_flush(ubi);
+	if (err)
+		goto out_acc;
+
+	vol->eba_tbl = kmalloc(vol->reserved_pebs * sizeof(int), GFP_KERNEL);
+	if (!vol->eba_tbl) {
+		err = -ENOMEM;
+		goto out_acc;
+	}
+
+	for (i = 0; i < vol->reserved_pebs; i++)
+		vol->eba_tbl[i] = UBI_LEB_UNMAPPED;
+
+	if (vol->vol_type == UBI_DYNAMIC_VOLUME) {
+		vol->used_ebs = vol->reserved_pebs;
+		vol->last_eb_bytes = vol->usable_leb_size;
+		vol->used_bytes =
+			(long long)vol->used_ebs * vol->usable_leb_size;
+	} else {
+		bytes = vol->used_bytes;
+		vol->last_eb_bytes = do_div(bytes, vol->usable_leb_size);
+		vol->used_ebs = bytes;
+		if (vol->last_eb_bytes)
+			vol->used_ebs += 1;
+		else
+			vol->last_eb_bytes = vol->usable_leb_size;
+	}
+
+	/* Register character device for the volume */
+	cdev_init(&vol->cdev, &ubi_vol_cdev_operations);
+#ifdef UBI_LINUX
+	vol->cdev.owner = THIS_MODULE;
+#endif
+	dev = MKDEV(MAJOR(ubi->cdev.dev), vol_id + 1);
+	err = cdev_add(&vol->cdev, dev, 1);
+	if (err) {
+		ubi_err("cannot add character device");
+		goto out_mapping;
+	}
+
+	err = ubi_create_gluebi(ubi, vol);
+	if (err)
+		goto out_cdev;
+
+	vol->dev.release = vol_release;
+	vol->dev.parent = &ubi->dev;
+	vol->dev.devt = dev;
+	vol->dev.class = ubi_class;
+
+	sprintf(&vol->dev.bus_id[0], "%s_%d", ubi->ubi_name, vol->vol_id);
+	err = device_register(&vol->dev);
+	if (err) {
+		ubi_err("cannot register device");
+		goto out_gluebi;
+	}
+
+	err = volume_sysfs_init(ubi, vol);
+	if (err)
+		goto out_sysfs;
+
+	/* Fill volume table record */
+	memset(&vtbl_rec, 0, sizeof(struct ubi_vtbl_record));
+	vtbl_rec.reserved_pebs = cpu_to_be32(vol->reserved_pebs);
+	vtbl_rec.alignment     = cpu_to_be32(vol->alignment);
+	vtbl_rec.data_pad      = cpu_to_be32(vol->data_pad);
+	vtbl_rec.name_len      = cpu_to_be16(vol->name_len);
+	if (vol->vol_type == UBI_DYNAMIC_VOLUME)
+		vtbl_rec.vol_type = UBI_VID_DYNAMIC;
+	else
+		vtbl_rec.vol_type = UBI_VID_STATIC;
+	memcpy(vtbl_rec.name, vol->name, vol->name_len + 1);
+
+	err = ubi_change_vtbl_record(ubi, vol_id, &vtbl_rec);
+	if (err)
+		goto out_sysfs;
+
+	spin_lock(&ubi->volumes_lock);
+	ubi->volumes[vol_id] = vol;
+	ubi->vol_count += 1;
+	spin_unlock(&ubi->volumes_lock);
+
+	paranoid_check_volumes(ubi);
+	return 0;
+
+out_sysfs:
+	/*
+	 * We have registered our device, we should not free the volume*
+	 * description object in this function in case of an error - it is
+	 * freed by the release function.
+	 *
+	 * Get device reference to prevent the release function from being
+	 * called just after sysfs has been closed.
+	 */
+	dont_free = 1;
+	get_device(&vol->dev);
+	volume_sysfs_close(vol);
+out_gluebi:
+	if (ubi_destroy_gluebi(vol))
+		dbg_err("cannot destroy gluebi for volume %d:%d",
+			ubi->ubi_num, vol_id);
+out_cdev:
+	cdev_del(&vol->cdev);
+out_mapping:
+	kfree(vol->eba_tbl);
+out_acc:
+	spin_lock(&ubi->volumes_lock);
+	ubi->rsvd_pebs -= vol->reserved_pebs;
+	ubi->avail_pebs += vol->reserved_pebs;
+out_unlock:
+	spin_unlock(&ubi->volumes_lock);
+	if (dont_free)
+		put_device(&vol->dev);
+	else
+		kfree(vol);
+	ubi_err("cannot create volume %d, error %d", vol_id, err);
+	return err;
+}
+
+/**
+ * ubi_remove_volume - remove volume.
+ * @desc: volume descriptor
+ *
+ * This function removes volume described by @desc. The volume has to be opened
+ * in "exclusive" mode. Returns zero in case of success and a negative error
+ * code in case of failure. The caller has to have the @ubi->volumes_mutex
+ * locked.
+ */
+int ubi_remove_volume(struct ubi_volume_desc *desc)
+{
+	struct ubi_volume *vol = desc->vol;
+	struct ubi_device *ubi = vol->ubi;
+	int i, err, vol_id = vol->vol_id, reserved_pebs = vol->reserved_pebs;
+
+	dbg_msg("remove UBI volume %d", vol_id);
+	ubi_assert(desc->mode == UBI_EXCLUSIVE);
+	ubi_assert(vol == ubi->volumes[vol_id]);
+
+	if (ubi->ro_mode)
+		return -EROFS;
+
+	spin_lock(&ubi->volumes_lock);
+	if (vol->ref_count > 1) {
+		/*
+		 * The volume is busy, probably someone is reading one of its
+		 * sysfs files.
+		 */
+		err = -EBUSY;
+		goto out_unlock;
+	}
+	ubi->volumes[vol_id] = NULL;
+	spin_unlock(&ubi->volumes_lock);
+
+	err = ubi_destroy_gluebi(vol);
+	if (err)
+		goto out_err;
+
+	err = ubi_change_vtbl_record(ubi, vol_id, NULL);
+	if (err)
+		goto out_err;
+
+	for (i = 0; i < vol->reserved_pebs; i++) {
+		err = ubi_eba_unmap_leb(ubi, vol, i);
+		if (err)
+			goto out_err;
+	}
+
+	kfree(vol->eba_tbl);
+	vol->eba_tbl = NULL;
+	cdev_del(&vol->cdev);
+	volume_sysfs_close(vol);
+
+	spin_lock(&ubi->volumes_lock);
+	ubi->rsvd_pebs -= reserved_pebs;
+	ubi->avail_pebs += reserved_pebs;
+	i = ubi->beb_rsvd_level - ubi->beb_rsvd_pebs;
+	if (i > 0) {
+		i = ubi->avail_pebs >= i ? i : ubi->avail_pebs;
+		ubi->avail_pebs -= i;
+		ubi->rsvd_pebs += i;
+		ubi->beb_rsvd_pebs += i;
+		if (i > 0)
+			ubi_msg("reserve more %d PEBs", i);
+	}
+	ubi->vol_count -= 1;
+	spin_unlock(&ubi->volumes_lock);
+
+	paranoid_check_volumes(ubi);
+	return 0;
+
+out_err:
+	ubi_err("cannot remove volume %d, error %d", vol_id, err);
+	spin_lock(&ubi->volumes_lock);
+	ubi->volumes[vol_id] = vol;
+out_unlock:
+	spin_unlock(&ubi->volumes_lock);
+	return err;
+}
+
+/**
+ * ubi_resize_volume - re-size volume.
+ * @desc: volume descriptor
+ * @reserved_pebs: new size in physical eraseblocks
+ *
+ * This function re-sizes the volume and returns zero in case of success, and a
+ * negative error code in case of failure. The caller has to have the
+ * @ubi->volumes_mutex locked.
+ */
+int ubi_resize_volume(struct ubi_volume_desc *desc, int reserved_pebs)
+{
+	int i, err, pebs, *new_mapping;
+	struct ubi_volume *vol = desc->vol;
+	struct ubi_device *ubi = vol->ubi;
+	struct ubi_vtbl_record vtbl_rec;
+	int vol_id = vol->vol_id;
+
+	if (ubi->ro_mode)
+		return -EROFS;
+
+	dbg_msg("re-size volume %d to from %d to %d PEBs",
+		vol_id, vol->reserved_pebs, reserved_pebs);
+
+	if (vol->vol_type == UBI_STATIC_VOLUME &&
+	    reserved_pebs < vol->used_ebs) {
+		dbg_err("too small size %d, %d LEBs contain data",
+			reserved_pebs, vol->used_ebs);
+		return -EINVAL;
+	}
+
+	/* If the size is the same, we have nothing to do */
+	if (reserved_pebs == vol->reserved_pebs)
+		return 0;
+
+	new_mapping = kmalloc(reserved_pebs * sizeof(int), GFP_KERNEL);
+	if (!new_mapping)
+		return -ENOMEM;
+
+	for (i = 0; i < reserved_pebs; i++)
+		new_mapping[i] = UBI_LEB_UNMAPPED;
+
+	spin_lock(&ubi->volumes_lock);
+	if (vol->ref_count > 1) {
+		spin_unlock(&ubi->volumes_lock);
+		err = -EBUSY;
+		goto out_free;
+	}
+	spin_unlock(&ubi->volumes_lock);
+
+	/* Reserve physical eraseblocks */
+	pebs = reserved_pebs - vol->reserved_pebs;
+	if (pebs > 0) {
+		spin_lock(&ubi->volumes_lock);
+		if (pebs > ubi->avail_pebs) {
+			dbg_err("not enough PEBs: requested %d, available %d",
+				pebs, ubi->avail_pebs);
+			spin_unlock(&ubi->volumes_lock);
+			err = -ENOSPC;
+			goto out_free;
+		}
+		ubi->avail_pebs -= pebs;
+		ubi->rsvd_pebs += pebs;
+		for (i = 0; i < vol->reserved_pebs; i++)
+			new_mapping[i] = vol->eba_tbl[i];
+		kfree(vol->eba_tbl);
+		vol->eba_tbl = new_mapping;
+		spin_unlock(&ubi->volumes_lock);
+	}
+
+	/* Change volume table record */
+	memcpy(&vtbl_rec, &ubi->vtbl[vol_id], sizeof(struct ubi_vtbl_record));
+	vtbl_rec.reserved_pebs = cpu_to_be32(reserved_pebs);
+	err = ubi_change_vtbl_record(ubi, vol_id, &vtbl_rec);
+	if (err)
+		goto out_acc;
+
+	if (pebs < 0) {
+		for (i = 0; i < -pebs; i++) {
+			err = ubi_eba_unmap_leb(ubi, vol, reserved_pebs + i);
+			if (err)
+				goto out_acc;
+		}
+		spin_lock(&ubi->volumes_lock);
+		ubi->rsvd_pebs += pebs;
+		ubi->avail_pebs -= pebs;
+		pebs = ubi->beb_rsvd_level - ubi->beb_rsvd_pebs;
+		if (pebs > 0) {
+			pebs = ubi->avail_pebs >= pebs ? pebs : ubi->avail_pebs;
+			ubi->avail_pebs -= pebs;
+			ubi->rsvd_pebs += pebs;
+			ubi->beb_rsvd_pebs += pebs;
+			if (pebs > 0)
+				ubi_msg("reserve more %d PEBs", pebs);
+		}
+		for (i = 0; i < reserved_pebs; i++)
+			new_mapping[i] = vol->eba_tbl[i];
+		kfree(vol->eba_tbl);
+		vol->eba_tbl = new_mapping;
+		spin_unlock(&ubi->volumes_lock);
+	}
+
+	vol->reserved_pebs = reserved_pebs;
+	if (vol->vol_type == UBI_DYNAMIC_VOLUME) {
+		vol->used_ebs = reserved_pebs;
+		vol->last_eb_bytes = vol->usable_leb_size;
+		vol->used_bytes =
+			(long long)vol->used_ebs * vol->usable_leb_size;
+	}
+
+	paranoid_check_volumes(ubi);
+	return 0;
+
+out_acc:
+	if (pebs > 0) {
+		spin_lock(&ubi->volumes_lock);
+		ubi->rsvd_pebs -= pebs;
+		ubi->avail_pebs += pebs;
+		spin_unlock(&ubi->volumes_lock);
+	}
+out_free:
+	kfree(new_mapping);
+	return err;
+}
+
+/**
+ * ubi_add_volume - add volume.
+ * @ubi: UBI device description object
+ * @vol: volume description object
+ *
+ * This function adds an existing volume and initializes all its data
+ * structures. Returns zero in case of success and a negative error code in
+ * case of failure.
+ */
+int ubi_add_volume(struct ubi_device *ubi, struct ubi_volume *vol)
+{
+	int err, vol_id = vol->vol_id;
+	dev_t dev;
+
+	dbg_msg("add volume %d", vol_id);
+	ubi_dbg_dump_vol_info(vol);
+
+	/* Register character device for the volume */
+	cdev_init(&vol->cdev, &ubi_vol_cdev_operations);
+#ifdef UBI_LINUX
+	vol->cdev.owner = THIS_MODULE;
+#endif
+	dev = MKDEV(MAJOR(ubi->cdev.dev), vol->vol_id + 1);
+	err = cdev_add(&vol->cdev, dev, 1);
+	if (err) {
+		ubi_err("cannot add character device for volume %d, error %d",
+			vol_id, err);
+		return err;
+	}
+
+	err = ubi_create_gluebi(ubi, vol);
+	if (err)
+		goto out_cdev;
+
+	vol->dev.release = vol_release;
+	vol->dev.parent = &ubi->dev;
+	vol->dev.devt = dev;
+	vol->dev.class = ubi_class;
+	sprintf(&vol->dev.bus_id[0], "%s_%d", ubi->ubi_name, vol->vol_id);
+	err = device_register(&vol->dev);
+	if (err)
+		goto out_gluebi;
+
+	err = volume_sysfs_init(ubi, vol);
+	if (err) {
+		cdev_del(&vol->cdev);
+		err = ubi_destroy_gluebi(vol);
+		volume_sysfs_close(vol);
+		return err;
+	}
+
+	paranoid_check_volumes(ubi);
+	return 0;
+
+out_gluebi:
+	err = ubi_destroy_gluebi(vol);
+out_cdev:
+	cdev_del(&vol->cdev);
+	return err;
+}
+
+/**
+ * ubi_free_volume - free volume.
+ * @ubi: UBI device description object
+ * @vol: volume description object
+ *
+ * This function frees all resources for volume @vol but does not remove it.
+ * Used only when the UBI device is detached.
+ */
+void ubi_free_volume(struct ubi_device *ubi, struct ubi_volume *vol)
+{
+	int err;
+
+	dbg_msg("free volume %d", vol->vol_id);
+
+	ubi->volumes[vol->vol_id] = NULL;
+	err = ubi_destroy_gluebi(vol);
+	cdev_del(&vol->cdev);
+	volume_sysfs_close(vol);
+}
+
+#ifdef CONFIG_MTD_UBI_DEBUG_PARANOID
+
+/**
+ * paranoid_check_volume - check volume information.
+ * @ubi: UBI device description object
+ * @vol_id: volume ID
+ */
+static void paranoid_check_volume(struct ubi_device *ubi, int vol_id)
+{
+	int idx = vol_id2idx(ubi, vol_id);
+	int reserved_pebs, alignment, data_pad, vol_type, name_len, upd_marker;
+	const struct ubi_volume *vol;
+	long long n;
+	const char *name;
+
+	spin_lock(&ubi->volumes_lock);
+	reserved_pebs = be32_to_cpu(ubi->vtbl[vol_id].reserved_pebs);
+	vol = ubi->volumes[idx];
+
+	if (!vol) {
+		if (reserved_pebs) {
+			ubi_err("no volume info, but volume exists");
+			goto fail;
+		}
+		spin_unlock(&ubi->volumes_lock);
+		return;
+	}
+
+	if (vol->exclusive) {
+		/*
+		 * The volume may be being created at the moment, do not check
+		 * it (e.g., it may be in the middle of ubi_create_volume().
+		 */
+		spin_unlock(&ubi->volumes_lock);
+		return;
+	}
+
+	if (vol->reserved_pebs < 0 || vol->alignment < 0 || vol->data_pad < 0 ||
+	    vol->name_len < 0) {
+		ubi_err("negative values");
+		goto fail;
+	}
+	if (vol->alignment > ubi->leb_size || vol->alignment == 0) {
+		ubi_err("bad alignment");
+		goto fail;
+	}
+
+	n = vol->alignment & (ubi->min_io_size - 1);
+	if (vol->alignment != 1 && n) {
+		ubi_err("alignment is not multiple of min I/O unit");
+		goto fail;
+	}
+
+	n = ubi->leb_size % vol->alignment;
+	if (vol->data_pad != n) {
+		ubi_err("bad data_pad, has to be %lld", n);
+		goto fail;
+	}
+
+	if (vol->vol_type != UBI_DYNAMIC_VOLUME &&
+	    vol->vol_type != UBI_STATIC_VOLUME) {
+		ubi_err("bad vol_type");
+		goto fail;
+	}
+
+	if (vol->upd_marker && vol->corrupted) {
+		dbg_err("update marker and corrupted simultaneously");
+		goto fail;
+	}
+
+	if (vol->reserved_pebs > ubi->good_peb_count) {
+		ubi_err("too large reserved_pebs");
+		goto fail;
+	}
+
+	n = ubi->leb_size - vol->data_pad;
+	if (vol->usable_leb_size != ubi->leb_size - vol->data_pad) {
+		ubi_err("bad usable_leb_size, has to be %lld", n);
+		goto fail;
+	}
+
+	if (vol->name_len > UBI_VOL_NAME_MAX) {
+		ubi_err("too long volume name, max is %d", UBI_VOL_NAME_MAX);
+		goto fail;
+	}
+
+	if (!vol->name) {
+		ubi_err("NULL volume name");
+		goto fail;
+	}
+
+	n = strnlen(vol->name, vol->name_len + 1);
+	if (n != vol->name_len) {
+		ubi_err("bad name_len %lld", n);
+		goto fail;
+	}
+
+	n = (long long)vol->used_ebs * vol->usable_leb_size;
+	if (vol->vol_type == UBI_DYNAMIC_VOLUME) {
+		if (vol->corrupted) {
+			ubi_err("corrupted dynamic volume");
+			goto fail;
+		}
+		if (vol->used_ebs != vol->reserved_pebs) {
+			ubi_err("bad used_ebs");
+			goto fail;
+		}
+		if (vol->last_eb_bytes != vol->usable_leb_size) {
+			ubi_err("bad last_eb_bytes");
+			goto fail;
+		}
+		if (vol->used_bytes != n) {
+			ubi_err("bad used_bytes");
+			goto fail;
+		}
+	} else {
+		if (vol->used_ebs < 0 || vol->used_ebs > vol->reserved_pebs) {
+			ubi_err("bad used_ebs");
+			goto fail;
+		}
+		if (vol->last_eb_bytes < 0 ||
+		    vol->last_eb_bytes > vol->usable_leb_size) {
+			ubi_err("bad last_eb_bytes");
+			goto fail;
+		}
+		if (vol->used_bytes < 0 || vol->used_bytes > n ||
+		    vol->used_bytes < n - vol->usable_leb_size) {
+			ubi_err("bad used_bytes");
+			goto fail;
+		}
+	}
+
+	alignment  = be32_to_cpu(ubi->vtbl[vol_id].alignment);
+	data_pad   = be32_to_cpu(ubi->vtbl[vol_id].data_pad);
+	name_len   = be16_to_cpu(ubi->vtbl[vol_id].name_len);
+	upd_marker = ubi->vtbl[vol_id].upd_marker;
+	name       = &ubi->vtbl[vol_id].name[0];
+	if (ubi->vtbl[vol_id].vol_type == UBI_VID_DYNAMIC)
+		vol_type = UBI_DYNAMIC_VOLUME;
+	else
+		vol_type = UBI_STATIC_VOLUME;
+
+	if (alignment != vol->alignment || data_pad != vol->data_pad ||
+	    upd_marker != vol->upd_marker || vol_type != vol->vol_type ||
+	    name_len!= vol->name_len || strncmp(name, vol->name, name_len)) {
+		ubi_err("volume info is different");
+		goto fail;
+	}
+
+	spin_unlock(&ubi->volumes_lock);
+	return;
+
+fail:
+	ubi_err("paranoid check failed for volume %d", vol_id);
+	ubi_dbg_dump_vol_info(vol);
+	ubi_dbg_dump_vtbl_record(&ubi->vtbl[vol_id], vol_id);
+	spin_unlock(&ubi->volumes_lock);
+	BUG();
+}
+
+/**
+ * paranoid_check_volumes - check information about all volumes.
+ * @ubi: UBI device description object
+ */
+static void paranoid_check_volumes(struct ubi_device *ubi)
+{
+	int i;
+
+	for (i = 0; i < ubi->vtbl_slots; i++)
+		paranoid_check_volume(ubi, i);
+}
+#endif
diff --git a/drivers/mtd/ubi/vtbl.c b/drivers/mtd/ubi/vtbl.c
new file mode 100644
index 0000000..765c811
--- /dev/null
+++ b/drivers/mtd/ubi/vtbl.c
@@ -0,0 +1,837 @@
+/*
+ * Copyright (c) International Business Machines Corp., 2006
+ * Copyright (c) Nokia Corporation, 2006, 2007
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ *
+ * Author: Artem Bityutskiy (���������������� ����������)
+ */
+
+/*
+ * This file includes volume table manipulation code. The volume table is an
+ * on-flash table containing volume meta-data like name, number of reserved
+ * physical eraseblocks, type, etc. The volume table is stored in the so-called
+ * "layout volume".
+ *
+ * The layout volume is an internal volume which is organized as follows. It
+ * consists of two logical eraseblocks - LEB 0 and LEB 1. Each logical
+ * eraseblock stores one volume table copy, i.e. LEB 0 and LEB 1 duplicate each
+ * other. This redundancy guarantees robustness to unclean reboots. The volume
+ * table is basically an array of volume table records. Each record contains
+ * full information about the volume and protected by a CRC checksum.
+ *
+ * The volume table is changed, it is first changed in RAM. Then LEB 0 is
+ * erased, and the updated volume table is written back to LEB 0. Then same for
+ * LEB 1. This scheme guarantees recoverability from unclean reboots.
+ *
+ * In this UBI implementation the on-flash volume table does not contain any
+ * information about how many data static volumes contain. This information may
+ * be found from the scanning data.
+ *
+ * But it would still be beneficial to store this information in the volume
+ * table. For example, suppose we have a static volume X, and all its physical
+ * eraseblocks became bad for some reasons. Suppose we are attaching the
+ * corresponding MTD device, the scanning has found no logical eraseblocks
+ * corresponding to the volume X. According to the volume table volume X does
+ * exist. So we don't know whether it is just empty or all its physical
+ * eraseblocks went bad. So we cannot alarm the user about this corruption.
+ *
+ * The volume table also stores so-called "update marker", which is used for
+ * volume updates. Before updating the volume, the update marker is set, and
+ * after the update operation is finished, the update marker is cleared. So if
+ * the update operation was interrupted (e.g. by an unclean reboot) - the
+ * update marker is still there and we know that the volume's contents is
+ * damaged.
+ */
+
+#ifdef UBI_LINUX
+#include <linux/crc32.h>
+#include <linux/err.h>
+#include <asm/div64.h>
+#endif
+
+#include "ubi-barebox.h"
+#include "ubi.h"
+
+#ifdef CONFIG_MTD_UBI_DEBUG_PARANOID
+static void paranoid_vtbl_check(const struct ubi_device *ubi);
+#else
+#define paranoid_vtbl_check(ubi)
+#endif
+
+/* Empty volume table record */
+static struct ubi_vtbl_record empty_vtbl_record;
+
+/**
+ * ubi_change_vtbl_record - change volume table record.
+ * @ubi: UBI device description object
+ * @idx: table index to change
+ * @vtbl_rec: new volume table record
+ *
+ * This function changes volume table record @idx. If @vtbl_rec is %NULL, empty
+ * volume table record is written. The caller does not have to calculate CRC of
+ * the record as it is done by this function. Returns zero in case of success
+ * and a negative error code in case of failure.
+ */
+int ubi_change_vtbl_record(struct ubi_device *ubi, int idx,
+			   struct ubi_vtbl_record *vtbl_rec)
+{
+	int i, err;
+	uint32_t crc;
+	struct ubi_volume *layout_vol;
+
+	ubi_assert(idx >= 0 && idx < ubi->vtbl_slots);
+	layout_vol = ubi->volumes[vol_id2idx(ubi, UBI_LAYOUT_VOLUME_ID)];
+
+	if (!vtbl_rec)
+		vtbl_rec = &empty_vtbl_record;
+	else {
+		crc = crc32(UBI_CRC32_INIT, vtbl_rec, UBI_VTBL_RECORD_SIZE_CRC);
+		vtbl_rec->crc = cpu_to_be32(crc);
+	}
+
+	memcpy(&ubi->vtbl[idx], vtbl_rec, sizeof(struct ubi_vtbl_record));
+	for (i = 0; i < UBI_LAYOUT_VOLUME_EBS; i++) {
+		err = ubi_eba_unmap_leb(ubi, layout_vol, i);
+		if (err)
+			return err;
+
+		err = ubi_eba_write_leb(ubi, layout_vol, i, ubi->vtbl, 0,
+					ubi->vtbl_size, UBI_LONGTERM);
+		if (err)
+			return err;
+	}
+
+	paranoid_vtbl_check(ubi);
+	return 0;
+}
+
+/**
+ * vtbl_check - check if volume table is not corrupted and contains sensible
+ *              data.
+ * @ubi: UBI device description object
+ * @vtbl: volume table
+ *
+ * This function returns zero if @vtbl is all right, %1 if CRC is incorrect,
+ * and %-EINVAL if it contains inconsistent data.
+ */
+static int vtbl_check(const struct ubi_device *ubi,
+		      const struct ubi_vtbl_record *vtbl)
+{
+	int i, n, reserved_pebs, alignment, data_pad, vol_type, name_len;
+	int upd_marker, err;
+	uint32_t crc;
+	const char *name;
+
+	for (i = 0; i < ubi->vtbl_slots; i++) {
+		cond_resched();
+
+		reserved_pebs = be32_to_cpu(vtbl[i].reserved_pebs);
+		alignment = be32_to_cpu(vtbl[i].alignment);
+		data_pad = be32_to_cpu(vtbl[i].data_pad);
+		upd_marker = vtbl[i].upd_marker;
+		vol_type = vtbl[i].vol_type;
+		name_len = be16_to_cpu(vtbl[i].name_len);
+		name = (const char *) &vtbl[i].name[0];
+
+		crc = crc32(UBI_CRC32_INIT, &vtbl[i], UBI_VTBL_RECORD_SIZE_CRC);
+		if (be32_to_cpu(vtbl[i].crc) != crc) {
+			ubi_err("bad CRC at record %u: %#08x, not %#08x",
+				 i, crc, be32_to_cpu(vtbl[i].crc));
+			ubi_dbg_dump_vtbl_record(&vtbl[i], i);
+			return 1;
+		}
+
+		if (reserved_pebs == 0) {
+			if (memcmp(&vtbl[i], &empty_vtbl_record,
+						UBI_VTBL_RECORD_SIZE)) {
+				err = 2;
+				goto bad;
+			}
+			continue;
+		}
+
+		if (reserved_pebs < 0 || alignment < 0 || data_pad < 0 ||
+		    name_len < 0) {
+			err = 3;
+			goto bad;
+		}
+
+		if (alignment > ubi->leb_size || alignment == 0) {
+			err = 4;
+			goto bad;
+		}
+
+		n = alignment & (ubi->min_io_size - 1);
+		if (alignment != 1 && n) {
+			err = 5;
+			goto bad;
+		}
+
+		n = ubi->leb_size % alignment;
+		if (data_pad != n) {
+			dbg_err("bad data_pad, has to be %d", n);
+			err = 6;
+			goto bad;
+		}
+
+		if (vol_type != UBI_VID_DYNAMIC && vol_type != UBI_VID_STATIC) {
+			err = 7;
+			goto bad;
+		}
+
+		if (upd_marker != 0 && upd_marker != 1) {
+			err = 8;
+			goto bad;
+		}
+
+		if (reserved_pebs > ubi->good_peb_count) {
+			dbg_err("too large reserved_pebs, good PEBs %d",
+				ubi->good_peb_count);
+			err = 9;
+			goto bad;
+		}
+
+		if (name_len > UBI_VOL_NAME_MAX) {
+			err = 10;
+			goto bad;
+		}
+
+		if (name[0] == '\0') {
+			err = 11;
+			goto bad;
+		}
+
+		if (name_len != strnlen(name, name_len + 1)) {
+			err = 12;
+			goto bad;
+		}
+	}
+
+	/* Checks that all names are unique */
+	for (i = 0; i < ubi->vtbl_slots - 1; i++) {
+		for (n = i + 1; n < ubi->vtbl_slots; n++) {
+			int len1 = be16_to_cpu(vtbl[i].name_len);
+			int len2 = be16_to_cpu(vtbl[n].name_len);
+
+			if (len1 > 0 && len1 == len2 &&
+			    !strncmp((char *)vtbl[i].name, (char *)vtbl[n].name, len1)) {
+				ubi_err("volumes %d and %d have the same name"
+					" \"%s\"", i, n, vtbl[i].name);
+				ubi_dbg_dump_vtbl_record(&vtbl[i], i);
+				ubi_dbg_dump_vtbl_record(&vtbl[n], n);
+				return -EINVAL;
+			}
+		}
+	}
+
+	return 0;
+
+bad:
+	ubi_err("volume table check failed: record %d, error %d", i, err);
+	ubi_dbg_dump_vtbl_record(&vtbl[i], i);
+	return -EINVAL;
+}
+
+/**
+ * create_vtbl - create a copy of volume table.
+ * @ubi: UBI device description object
+ * @si: scanning information
+ * @copy: number of the volume table copy
+ * @vtbl: contents of the volume table
+ *
+ * This function returns zero in case of success and a negative error code in
+ * case of failure.
+ */
+static int create_vtbl(struct ubi_device *ubi, struct ubi_scan_info *si,
+		       int copy, void *vtbl)
+{
+	int err, tries = 0;
+	static struct ubi_vid_hdr *vid_hdr;
+	struct ubi_scan_volume *sv;
+	struct ubi_scan_leb *new_seb, *old_seb = NULL;
+
+	ubi_msg("create volume table (copy #%d)", copy + 1);
+
+	vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_KERNEL);
+	if (!vid_hdr)
+		return -ENOMEM;
+
+	/*
+	 * Check if there is a logical eraseblock which would have to contain
+	 * this volume table copy was found during scanning. It has to be wiped
+	 * out.
+	 */
+	sv = ubi_scan_find_sv(si, UBI_LAYOUT_VOLUME_ID);
+	if (sv)
+		old_seb = ubi_scan_find_seb(sv, copy);
+
+retry:
+	new_seb = ubi_scan_get_free_peb(ubi, si);
+	if (IS_ERR(new_seb)) {
+		err = PTR_ERR(new_seb);
+		goto out_free;
+	}
+
+	vid_hdr->vol_type = UBI_VID_DYNAMIC;
+	vid_hdr->vol_id = cpu_to_be32(UBI_LAYOUT_VOLUME_ID);
+	vid_hdr->compat = UBI_LAYOUT_VOLUME_COMPAT;
+	vid_hdr->data_size = vid_hdr->used_ebs =
+			     vid_hdr->data_pad = cpu_to_be32(0);
+	vid_hdr->lnum = cpu_to_be32(copy);
+	vid_hdr->sqnum = cpu_to_be64(++si->max_sqnum);
+	vid_hdr->leb_ver = cpu_to_be32(old_seb ? old_seb->leb_ver + 1: 0);
+
+	/* The EC header is already there, write the VID header */
+	err = ubi_io_write_vid_hdr(ubi, new_seb->pnum, vid_hdr);
+	if (err)
+		goto write_error;
+
+	/* Write the layout volume contents */
+	err = ubi_io_write_data(ubi, vtbl, new_seb->pnum, 0, ubi->vtbl_size);
+	if (err)
+		goto write_error;
+
+	/*
+	 * And add it to the scanning information. Don't delete the old
+	 * @old_seb as it will be deleted and freed in 'ubi_scan_add_used()'.
+	 */
+	err = ubi_scan_add_used(ubi, si, new_seb->pnum, new_seb->ec,
+				vid_hdr, 0);
+	kfree(new_seb);
+	ubi_free_vid_hdr(ubi, vid_hdr);
+	return err;
+
+write_error:
+	if (err == -EIO && ++tries <= 5) {
+		/*
+		 * Probably this physical eraseblock went bad, try to pick
+		 * another one.
+		 */
+		list_add_tail(&new_seb->u.list, &si->corr);
+		goto retry;
+	}
+	kfree(new_seb);
+out_free:
+	ubi_free_vid_hdr(ubi, vid_hdr);
+	return err;
+
+}
+
+/**
+ * process_lvol - process the layout volume.
+ * @ubi: UBI device description object
+ * @si: scanning information
+ * @sv: layout volume scanning information
+ *
+ * This function is responsible for reading the layout volume, ensuring it is
+ * not corrupted, and recovering from corruptions if needed. Returns volume
+ * table in case of success and a negative error code in case of failure.
+ */
+static struct ubi_vtbl_record *process_lvol(struct ubi_device *ubi,
+					    struct ubi_scan_info *si,
+					    struct ubi_scan_volume *sv)
+{
+	int err;
+	struct rb_node *rb;
+	struct ubi_scan_leb *seb;
+	struct ubi_vtbl_record *leb[UBI_LAYOUT_VOLUME_EBS] = { NULL, NULL };
+	int leb_corrupted[UBI_LAYOUT_VOLUME_EBS] = {1, 1};
+
+	/*
+	 * UBI goes through the following steps when it changes the layout
+	 * volume:
+	 * a. erase LEB 0;
+	 * b. write new data to LEB 0;
+	 * c. erase LEB 1;
+	 * d. write new data to LEB 1.
+	 *
+	 * Before the change, both LEBs contain the same data.
+	 *
+	 * Due to unclean reboots, the contents of LEB 0 may be lost, but there
+	 * should LEB 1. So it is OK if LEB 0 is corrupted while LEB 1 is not.
+	 * Similarly, LEB 1 may be lost, but there should be LEB 0. And
+	 * finally, unclean reboots may result in a situation when neither LEB
+	 * 0 nor LEB 1 are corrupted, but they are different. In this case, LEB
+	 * 0 contains more recent information.
+	 *
+	 * So the plan is to first check LEB 0. Then
+	 * a. if LEB 0 is OK, it must be containing the most resent data; then
+	 *    we compare it with LEB 1, and if they are different, we copy LEB
+	 *    0 to LEB 1;
+	 * b. if LEB 0 is corrupted, but LEB 1 has to be OK, and we copy LEB 1
+	 *    to LEB 0.
+	 */
+
+	dbg_msg("check layout volume");
+
+	/* Read both LEB 0 and LEB 1 into memory */
+	ubi_rb_for_each_entry(rb, seb, &sv->root, u.rb) {
+		leb[seb->lnum] = vmalloc(ubi->vtbl_size);
+		if (!leb[seb->lnum]) {
+			err = -ENOMEM;
+			goto out_free;
+		}
+		memset(leb[seb->lnum], 0, ubi->vtbl_size);
+
+		err = ubi_io_read_data(ubi, leb[seb->lnum], seb->pnum, 0,
+				       ubi->vtbl_size);
+		if (err == UBI_IO_BITFLIPS || err == -EBADMSG)
+			/*
+			 * Scrub the PEB later. Note, -EBADMSG indicates an
+			 * uncorrectable ECC error, but we have our own CRC and
+			 * the data will be checked later. If the data is OK,
+			 * the PEB will be scrubbed (because we set
+			 * seb->scrub). If the data is not OK, the contents of
+			 * the PEB will be recovered from the second copy, and
+			 * seb->scrub will be cleared in
+			 * 'ubi_scan_add_used()'.
+			 */
+			seb->scrub = 1;
+		else if (err)
+			goto out_free;
+	}
+
+	err = -EINVAL;
+	if (leb[0]) {
+		leb_corrupted[0] = vtbl_check(ubi, leb[0]);
+		if (leb_corrupted[0] < 0)
+			goto out_free;
+	}
+
+	if (!leb_corrupted[0]) {
+		/* LEB 0 is OK */
+		if (leb[1])
+			leb_corrupted[1] = memcmp(leb[0], leb[1], ubi->vtbl_size);
+		if (leb_corrupted[1]) {
+			ubi_warn("volume table copy #2 is corrupted");
+			err = create_vtbl(ubi, si, 1, leb[0]);
+			if (err)
+				goto out_free;
+			ubi_msg("volume table was restored");
+		}
+
+		/* Both LEB 1 and LEB 2 are OK and consistent */
+		vfree(leb[1]);
+		return leb[0];
+	} else {
+		/* LEB 0 is corrupted or does not exist */
+		if (leb[1]) {
+			leb_corrupted[1] = vtbl_check(ubi, leb[1]);
+			if (leb_corrupted[1] < 0)
+				goto out_free;
+		}
+		if (leb_corrupted[1]) {
+			/* Both LEB 0 and LEB 1 are corrupted */
+			ubi_err("both volume tables are corrupted");
+			goto out_free;
+		}
+
+		ubi_warn("volume table copy #1 is corrupted");
+		err = create_vtbl(ubi, si, 0, leb[1]);
+		if (err)
+			goto out_free;
+		ubi_msg("volume table was restored");
+
+		vfree(leb[0]);
+		return leb[1];
+	}
+
+out_free:
+	vfree(leb[0]);
+	vfree(leb[1]);
+	return ERR_PTR(err);
+}
+
+/**
+ * create_empty_lvol - create empty layout volume.
+ * @ubi: UBI device description object
+ * @si: scanning information
+ *
+ * This function returns volume table contents in case of success and a
+ * negative error code in case of failure.
+ */
+static struct ubi_vtbl_record *create_empty_lvol(struct ubi_device *ubi,
+						 struct ubi_scan_info *si)
+{
+	int i;
+	struct ubi_vtbl_record *vtbl;
+
+	vtbl = vmalloc(ubi->vtbl_size);
+	if (!vtbl)
+		return ERR_PTR(-ENOMEM);
+	memset(vtbl, 0, ubi->vtbl_size);
+
+	for (i = 0; i < ubi->vtbl_slots; i++)
+		memcpy(&vtbl[i], &empty_vtbl_record, UBI_VTBL_RECORD_SIZE);
+
+	for (i = 0; i < UBI_LAYOUT_VOLUME_EBS; i++) {
+		int err;
+
+		err = create_vtbl(ubi, si, i, vtbl);
+		if (err) {
+			vfree(vtbl);
+			return ERR_PTR(err);
+		}
+	}
+
+	return vtbl;
+}
+
+/**
+ * init_volumes - initialize volume information for existing volumes.
+ * @ubi: UBI device description object
+ * @si: scanning information
+ * @vtbl: volume table
+ *
+ * This function allocates volume description objects for existing volumes.
+ * Returns zero in case of success and a negative error code in case of
+ * failure.
+ */
+static int init_volumes(struct ubi_device *ubi, const struct ubi_scan_info *si,
+			const struct ubi_vtbl_record *vtbl)
+{
+	int i, reserved_pebs = 0;
+	struct ubi_scan_volume *sv;
+	struct ubi_volume *vol;
+
+	for (i = 0; i < ubi->vtbl_slots; i++) {
+		cond_resched();
+
+		if (be32_to_cpu(vtbl[i].reserved_pebs) == 0)
+			continue; /* Empty record */
+
+		vol = kzalloc(sizeof(struct ubi_volume), GFP_KERNEL);
+		if (!vol)
+			return -ENOMEM;
+
+		vol->reserved_pebs = be32_to_cpu(vtbl[i].reserved_pebs);
+		vol->alignment = be32_to_cpu(vtbl[i].alignment);
+		vol->data_pad = be32_to_cpu(vtbl[i].data_pad);
+		vol->vol_type = vtbl[i].vol_type == UBI_VID_DYNAMIC ?
+					UBI_DYNAMIC_VOLUME : UBI_STATIC_VOLUME;
+		vol->name_len = be16_to_cpu(vtbl[i].name_len);
+		vol->usable_leb_size = ubi->leb_size - vol->data_pad;
+		memcpy(vol->name, vtbl[i].name, vol->name_len);
+		vol->name[vol->name_len] = '\0';
+		vol->vol_id = i;
+
+		if (vtbl[i].flags & UBI_VTBL_AUTORESIZE_FLG) {
+			/* Auto re-size flag may be set only for one volume */
+			if (ubi->autoresize_vol_id != -1) {
+				ubi_err("more then one auto-resize volume (%d "
+					"and %d)", ubi->autoresize_vol_id, i);
+				kfree(vol);
+				return -EINVAL;
+			}
+
+			ubi->autoresize_vol_id = i;
+		}
+
+		ubi_assert(!ubi->volumes[i]);
+		ubi->volumes[i] = vol;
+		ubi->vol_count += 1;
+		vol->ubi = ubi;
+		reserved_pebs += vol->reserved_pebs;
+
+		/*
+		 * In case of dynamic volume UBI knows nothing about how many
+		 * data is stored there. So assume the whole volume is used.
+		 */
+		if (vol->vol_type == UBI_DYNAMIC_VOLUME) {
+			vol->used_ebs = vol->reserved_pebs;
+			vol->last_eb_bytes = vol->usable_leb_size;
+			vol->used_bytes =
+				(long long)vol->used_ebs * vol->usable_leb_size;
+			continue;
+		}
+
+		/* Static volumes only */
+		sv = ubi_scan_find_sv(si, i);
+		if (!sv) {
+			/*
+			 * No eraseblocks belonging to this volume found. We
+			 * don't actually know whether this static volume is
+			 * completely corrupted or just contains no data. And
+			 * we cannot know this as long as data size is not
+			 * stored on flash. So we just assume the volume is
+			 * empty. FIXME: this should be handled.
+			 */
+			continue;
+		}
+
+		if (sv->leb_count != sv->used_ebs) {
+			/*
+			 * We found a static volume which misses several
+			 * eraseblocks. Treat it as corrupted.
+			 */
+			ubi_warn("static volume %d misses %d LEBs - corrupted",
+				 sv->vol_id, sv->used_ebs - sv->leb_count);
+			vol->corrupted = 1;
+			continue;
+		}
+
+		vol->used_ebs = sv->used_ebs;
+		vol->used_bytes =
+			(long long)(vol->used_ebs - 1) * vol->usable_leb_size;
+		vol->used_bytes += sv->last_data_size;
+		vol->last_eb_bytes = sv->last_data_size;
+	}
+
+	/* And add the layout volume */
+	vol = kzalloc(sizeof(struct ubi_volume), GFP_KERNEL);
+	if (!vol)
+		return -ENOMEM;
+
+	vol->reserved_pebs = UBI_LAYOUT_VOLUME_EBS;
+	vol->alignment = 1;
+	vol->vol_type = UBI_DYNAMIC_VOLUME;
+	vol->name_len = sizeof(UBI_LAYOUT_VOLUME_NAME) - 1;
+	memcpy(vol->name, UBI_LAYOUT_VOLUME_NAME, vol->name_len + 1);
+	vol->usable_leb_size = ubi->leb_size;
+	vol->used_ebs = vol->reserved_pebs;
+	vol->last_eb_bytes = vol->reserved_pebs;
+	vol->used_bytes =
+		(long long)vol->used_ebs * (ubi->leb_size - vol->data_pad);
+	vol->vol_id = UBI_LAYOUT_VOLUME_ID;
+	vol->ref_count = 1;
+
+	ubi_assert(!ubi->volumes[i]);
+	ubi->volumes[vol_id2idx(ubi, vol->vol_id)] = vol;
+	reserved_pebs += vol->reserved_pebs;
+	ubi->vol_count += 1;
+	vol->ubi = ubi;
+
+	if (reserved_pebs > ubi->avail_pebs)
+		ubi_err("not enough PEBs, required %d, available %d",
+			reserved_pebs, ubi->avail_pebs);
+	ubi->rsvd_pebs += reserved_pebs;
+	ubi->avail_pebs -= reserved_pebs;
+
+	return 0;
+}
+
+/**
+ * check_sv - check volume scanning information.
+ * @vol: UBI volume description object
+ * @sv: volume scanning information
+ *
+ * This function returns zero if the volume scanning information is consistent
+ * to the data read from the volume tabla, and %-EINVAL if not.
+ */
+static int check_sv(const struct ubi_volume *vol,
+		    const struct ubi_scan_volume *sv)
+{
+	int err;
+
+	if (sv->highest_lnum >= vol->reserved_pebs) {
+		err = 1;
+		goto bad;
+	}
+	if (sv->leb_count > vol->reserved_pebs) {
+		err = 2;
+		goto bad;
+	}
+	if (sv->vol_type != vol->vol_type) {
+		err = 3;
+		goto bad;
+	}
+	if (sv->used_ebs > vol->reserved_pebs) {
+		err = 4;
+		goto bad;
+	}
+	if (sv->data_pad != vol->data_pad) {
+		err = 5;
+		goto bad;
+	}
+	return 0;
+
+bad:
+	ubi_err("bad scanning information, error %d", err);
+	ubi_dbg_dump_sv(sv);
+	ubi_dbg_dump_vol_info(vol);
+	return -EINVAL;
+}
+
+/**
+ * check_scanning_info - check that scanning information.
+ * @ubi: UBI device description object
+ * @si: scanning information
+ *
+ * Even though we protect on-flash data by CRC checksums, we still don't trust
+ * the media. This function ensures that scanning information is consistent to
+ * the information read from the volume table. Returns zero if the scanning
+ * information is OK and %-EINVAL if it is not.
+ */
+static int check_scanning_info(const struct ubi_device *ubi,
+			       struct ubi_scan_info *si)
+{
+	int err, i;
+	struct ubi_scan_volume *sv;
+	struct ubi_volume *vol;
+
+	if (si->vols_found > UBI_INT_VOL_COUNT + ubi->vtbl_slots) {
+		ubi_err("scanning found %d volumes, maximum is %d + %d",
+			si->vols_found, UBI_INT_VOL_COUNT, ubi->vtbl_slots);
+		return -EINVAL;
+	}
+
+	if (si->highest_vol_id >= ubi->vtbl_slots + UBI_INT_VOL_COUNT &&
+	    si->highest_vol_id < UBI_INTERNAL_VOL_START) {
+		ubi_err("too large volume ID %d found by scanning",
+			si->highest_vol_id);
+		return -EINVAL;
+	}
+
+	for (i = 0; i < ubi->vtbl_slots + UBI_INT_VOL_COUNT; i++) {
+		cond_resched();
+
+		sv = ubi_scan_find_sv(si, i);
+		vol = ubi->volumes[i];
+		if (!vol) {
+			if (sv)
+				ubi_scan_rm_volume(si, sv);
+			continue;
+		}
+
+		if (vol->reserved_pebs == 0) {
+			ubi_assert(i < ubi->vtbl_slots);
+
+			if (!sv)
+				continue;
+
+			/*
+			 * During scanning we found a volume which does not
+			 * exist according to the information in the volume
+			 * table. This must have happened due to an unclean
+			 * reboot while the volume was being removed. Discard
+			 * these eraseblocks.
+			 */
+			ubi_msg("finish volume %d removal", sv->vol_id);
+			ubi_scan_rm_volume(si, sv);
+		} else if (sv) {
+			err = check_sv(vol, sv);
+			if (err)
+				return err;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ubi_read_volume_table - read volume table.
+ * information.
+ * @ubi: UBI device description object
+ * @si: scanning information
+ *
+ * This function reads volume table, checks it, recover from errors if needed,
+ * or creates it if needed. Returns zero in case of success and a negative
+ * error code in case of failure.
+ */
+int ubi_read_volume_table(struct ubi_device *ubi, struct ubi_scan_info *si)
+{
+	int i, err;
+	struct ubi_scan_volume *sv;
+
+	empty_vtbl_record.crc = cpu_to_be32(0xf116c36b);
+
+	/*
+	 * The number of supported volumes is limited by the eraseblock size
+	 * and by the UBI_MAX_VOLUMES constant.
+	 */
+	ubi->vtbl_slots = ubi->leb_size / UBI_VTBL_RECORD_SIZE;
+	if (ubi->vtbl_slots > UBI_MAX_VOLUMES)
+		ubi->vtbl_slots = UBI_MAX_VOLUMES;
+
+	ubi->vtbl_size = ubi->vtbl_slots * UBI_VTBL_RECORD_SIZE;
+	ubi->vtbl_size = ALIGN(ubi->vtbl_size, ubi->min_io_size);
+
+	sv = ubi_scan_find_sv(si, UBI_LAYOUT_VOLUME_ID);
+	if (!sv) {
+		/*
+		 * No logical eraseblocks belonging to the layout volume were
+		 * found. This could mean that the flash is just empty. In
+		 * this case we create empty layout volume.
+		 *
+		 * But if flash is not empty this must be a corruption or the
+		 * MTD device just contains garbage.
+		 */
+		if (si->is_empty) {
+			ubi->vtbl = create_empty_lvol(ubi, si);
+			if (IS_ERR(ubi->vtbl))
+				return PTR_ERR(ubi->vtbl);
+		} else {
+			ubi_err("the layout volume was not found");
+			return -EINVAL;
+		}
+	} else {
+		if (sv->leb_count > UBI_LAYOUT_VOLUME_EBS) {
+			/* This must not happen with proper UBI images */
+			dbg_err("too many LEBs (%d) in layout volume",
+				sv->leb_count);
+			return -EINVAL;
+		}
+
+		ubi->vtbl = process_lvol(ubi, si, sv);
+		if (IS_ERR(ubi->vtbl))
+			return PTR_ERR(ubi->vtbl);
+	}
+
+	ubi->avail_pebs = ubi->good_peb_count;
+
+	/*
+	 * The layout volume is OK, initialize the corresponding in-RAM data
+	 * structures.
+	 */
+	err = init_volumes(ubi, si, ubi->vtbl);
+	if (err)
+		goto out_free;
+
+	/*
+	 * Get sure that the scanning information is consistent to the
+	 * information stored in the volume table.
+	 */
+	err = check_scanning_info(ubi, si);
+	if (err)
+		goto out_free;
+
+	return 0;
+
+out_free:
+	vfree(ubi->vtbl);
+	for (i = 0; i < ubi->vtbl_slots + UBI_INT_VOL_COUNT; i++)
+		if (ubi->volumes[i]) {
+			kfree(ubi->volumes[i]);
+			ubi->volumes[i] = NULL;
+		}
+	return err;
+}
+
+#ifdef CONFIG_MTD_UBI_DEBUG_PARANOID
+
+/**
+ * paranoid_vtbl_check - check volume table.
+ * @ubi: UBI device description object
+ */
+static void paranoid_vtbl_check(const struct ubi_device *ubi)
+{
+	if (vtbl_check(ubi, ubi->vtbl)) {
+		ubi_err("paranoid check failed");
+		BUG();
+	}
+}
+
+#endif /* CONFIG_MTD_UBI_DEBUG_PARANOID */
diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
new file mode 100644
index 0000000..137e600
--- /dev/null
+++ b/drivers/mtd/ubi/wl.c
@@ -0,0 +1,1675 @@
+/*
+ * Copyright (c) International Business Machines Corp., 2006
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ *
+ * Authors: Artem Bityutskiy (���������������� ����������), Thomas Gleixner
+ */
+
+/*
+ * UBI wear-leveling unit.
+ *
+ * This unit is responsible for wear-leveling. It works in terms of physical
+ * eraseblocks and erase counters and knows nothing about logical eraseblocks,
+ * volumes, etc. From this unit's perspective all physical eraseblocks are of
+ * two types - used and free. Used physical eraseblocks are those that were
+ * "get" by the 'ubi_wl_get_peb()' function, and free physical eraseblocks are
+ * those that were put by the 'ubi_wl_put_peb()' function.
+ *
+ * Physical eraseblocks returned by 'ubi_wl_get_peb()' have only erase counter
+ * header. The rest of the physical eraseblock contains only 0xFF bytes.
+ *
+ * When physical eraseblocks are returned to the WL unit by means of the
+ * 'ubi_wl_put_peb()' function, they are scheduled for erasure. The erasure is
+ * done asynchronously in context of the per-UBI device background thread,
+ * which is also managed by the WL unit.
+ *
+ * The wear-leveling is ensured by means of moving the contents of used
+ * physical eraseblocks with low erase counter to free physical eraseblocks
+ * with high erase counter.
+ *
+ * The 'ubi_wl_get_peb()' function accepts data type hints which help to pick
+ * an "optimal" physical eraseblock. For example, when it is known that the
+ * physical eraseblock will be "put" soon because it contains short-term data,
+ * the WL unit may pick a free physical eraseblock with low erase counter, and
+ * so forth.
+ *
+ * If the WL unit fails to erase a physical eraseblock, it marks it as bad.
+ *
+ * This unit is also responsible for scrubbing. If a bit-flip is detected in a
+ * physical eraseblock, it has to be moved. Technically this is the same as
+ * moving it for wear-leveling reasons.
+ *
+ * As it was said, for the UBI unit all physical eraseblocks are either "free"
+ * or "used". Free eraseblock are kept in the @wl->free RB-tree, while used
+ * eraseblocks are kept in a set of different RB-trees: @wl->used,
+ * @wl->prot.pnum, @wl->prot.aec, and @wl->scrub.
+ *
+ * Note, in this implementation, we keep a small in-RAM object for each physical
+ * eraseblock. This is surely not a scalable solution. But it appears to be good
+ * enough for moderately large flashes and it is simple. In future, one may
+ * re-work this unit and make it more scalable.
+ *
+ * At the moment this unit does not utilize the sequence number, which was
+ * introduced relatively recently. But it would be wise to do this because the
+ * sequence number of a logical eraseblock characterizes how old is it. For
+ * example, when we move a PEB with low erase counter, and we need to pick the
+ * target PEB, we pick a PEB with the highest EC if our PEB is "old" and we
+ * pick target PEB with an average EC if our PEB is not very "old". This is a
+ * room for future re-works of the WL unit.
+ *
+ * FIXME: looks too complex, should be simplified (later).
+ */
+
+#ifdef UBI_LINUX
+#include <linux/slab.h>
+#include <linux/crc32.h>
+#include <linux/freezer.h>
+#include <linux/kthread.h>
+#endif
+
+#include "ubi-barebox.h"
+#include "ubi.h"
+
+/* Number of physical eraseblocks reserved for wear-leveling purposes */
+#define WL_RESERVED_PEBS 1
+
+/*
+ * How many erase cycles are short term, unknown, and long term physical
+ * eraseblocks protected.
+ */
+#define ST_PROTECTION 16
+#define U_PROTECTION  10
+#define LT_PROTECTION 4
+
+/*
+ * Maximum difference between two erase counters. If this threshold is
+ * exceeded, the WL unit starts moving data from used physical eraseblocks with
+ * low erase counter to free physical eraseblocks with high erase counter.
+ */
+#define UBI_WL_THRESHOLD CONFIG_MTD_UBI_WL_THRESHOLD
+
+/*
+ * When a physical eraseblock is moved, the WL unit has to pick the target
+ * physical eraseblock to move to. The simplest way would be just to pick the
+ * one with the highest erase counter. But in certain workloads this could lead
+ * to an unlimited wear of one or few physical eraseblock. Indeed, imagine a
+ * situation when the picked physical eraseblock is constantly erased after the
+ * data is written to it. So, we have a constant which limits the highest erase
+ * counter of the free physical eraseblock to pick. Namely, the WL unit does
+ * not pick eraseblocks with erase counter greater then the lowest erase
+ * counter plus %WL_FREE_MAX_DIFF.
+ */
+#define WL_FREE_MAX_DIFF (2*UBI_WL_THRESHOLD)
+
+/*
+ * Maximum number of consecutive background thread failures which is enough to
+ * switch to read-only mode.
+ */
+#define WL_MAX_FAILURES 32
+
+/**
+ * struct ubi_wl_prot_entry - PEB protection entry.
+ * @rb_pnum: link in the @wl->prot.pnum RB-tree
+ * @rb_aec: link in the @wl->prot.aec RB-tree
+ * @abs_ec: the absolute erase counter value when the protection ends
+ * @e: the wear-leveling entry of the physical eraseblock under protection
+ *
+ * When the WL unit returns a physical eraseblock, the physical eraseblock is
+ * protected from being moved for some "time". For this reason, the physical
+ * eraseblock is not directly moved from the @wl->free tree to the @wl->used
+ * tree. There is one more tree in between where this physical eraseblock is
+ * temporarily stored (@wl->prot).
+ *
+ * All this protection stuff is needed because:
+ *  o we don't want to move physical eraseblocks just after we have given them
+ *    to the user; instead, we first want to let users fill them up with data;
+ *
+ *  o there is a chance that the user will put the physical eraseblock very
+ *    soon, so it makes sense not to move it for some time, but wait; this is
+ *    especially important in case of "short term" physical eraseblocks.
+ *
+ * Physical eraseblocks stay protected only for limited time. But the "time" is
+ * measured in erase cycles in this case. This is implemented with help of the
+ * absolute erase counter (@wl->abs_ec). When it reaches certain value, the
+ * physical eraseblocks are moved from the protection trees (@wl->prot.*) to
+ * the @wl->used tree.
+ *
+ * Protected physical eraseblocks are searched by physical eraseblock number
+ * (when they are put) and by the absolute erase counter (to check if it is
+ * time to move them to the @wl->used tree). So there are actually 2 RB-trees
+ * storing the protected physical eraseblocks: @wl->prot.pnum and
+ * @wl->prot.aec. They are referred to as the "protection" trees. The
+ * first one is indexed by the physical eraseblock number. The second one is
+ * indexed by the absolute erase counter. Both trees store
+ * &struct ubi_wl_prot_entry objects.
+ *
+ * Each physical eraseblock has 2 main states: free and used. The former state
+ * corresponds to the @wl->free tree. The latter state is split up on several
+ * sub-states:
+ * o the WL movement is allowed (@wl->used tree);
+ * o the WL movement is temporarily prohibited (@wl->prot.pnum and
+ * @wl->prot.aec trees);
+ * o scrubbing is needed (@wl->scrub tree).
+ *
+ * Depending on the sub-state, wear-leveling entries of the used physical
+ * eraseblocks may be kept in one of those trees.
+ */
+struct ubi_wl_prot_entry {
+	struct rb_node rb_pnum;
+	struct rb_node rb_aec;
+	unsigned long long abs_ec;
+	struct ubi_wl_entry *e;
+};
+
+/**
+ * struct ubi_work - UBI work description data structure.
+ * @list: a link in the list of pending works
+ * @func: worker function
+ * @priv: private data of the worker function
+ *
+ * @e: physical eraseblock to erase
+ * @torture: if the physical eraseblock has to be tortured
+ *
+ * The @func pointer points to the worker function. If the @cancel argument is
+ * not zero, the worker has to free the resources and exit immediately. The
+ * worker has to return zero in case of success and a negative error code in
+ * case of failure.
+ */
+struct ubi_work {
+	struct list_head list;
+	int (*func)(struct ubi_device *ubi, struct ubi_work *wrk, int cancel);
+	/* The below fields are only relevant to erasure works */
+	struct ubi_wl_entry *e;
+	int torture;
+};
+
+#ifdef CONFIG_MTD_UBI_DEBUG_PARANOID
+static int paranoid_check_ec(struct ubi_device *ubi, int pnum, int ec);
+static int paranoid_check_in_wl_tree(struct ubi_wl_entry *e,
+				     struct rb_root *root);
+#else
+#define paranoid_check_ec(ubi, pnum, ec) 0
+#define paranoid_check_in_wl_tree(e, root)
+#endif
+
+/**
+ * wl_tree_add - add a wear-leveling entry to a WL RB-tree.
+ * @e: the wear-leveling entry to add
+ * @root: the root of the tree
+ *
+ * Note, we use (erase counter, physical eraseblock number) pairs as keys in
+ * the @ubi->used and @ubi->free RB-trees.
+ */
+static void wl_tree_add(struct ubi_wl_entry *e, struct rb_root *root)
+{
+	struct rb_node **p, *parent = NULL;
+
+	p = &root->rb_node;
+	while (*p) {
+		struct ubi_wl_entry *e1;
+
+		parent = *p;
+		e1 = rb_entry(parent, struct ubi_wl_entry, rb);
+
+		if (e->ec < e1->ec)
+			p = &(*p)->rb_left;
+		else if (e->ec > e1->ec)
+			p = &(*p)->rb_right;
+		else {
+			ubi_assert(e->pnum != e1->pnum);
+			if (e->pnum < e1->pnum)
+				p = &(*p)->rb_left;
+			else
+				p = &(*p)->rb_right;
+		}
+	}
+
+	rb_link_node(&e->rb, parent, p);
+	rb_insert_color(&e->rb, root);
+}
+
+/**
+ * do_work - do one pending work.
+ * @ubi: UBI device description object
+ *
+ * This function returns zero in case of success and a negative error code in
+ * case of failure.
+ */
+static int do_work(struct ubi_device *ubi)
+{
+	int err;
+	struct ubi_work *wrk;
+
+	cond_resched();
+
+	/*
+	 * @ubi->work_sem is used to synchronize with the workers. Workers take
+	 * it in read mode, so many of them may be doing works at a time. But
+	 * the queue flush code has to be sure the whole queue of works is
+	 * done, and it takes the mutex in write mode.
+	 */
+	down_read(&ubi->work_sem);
+	spin_lock(&ubi->wl_lock);
+	if (list_empty(&ubi->works)) {
+		spin_unlock(&ubi->wl_lock);
+		up_read(&ubi->work_sem);
+		return 0;
+	}
+
+	wrk = list_entry(ubi->works.next, struct ubi_work, list);
+	list_del(&wrk->list);
+	ubi->works_count -= 1;
+	ubi_assert(ubi->works_count >= 0);
+	spin_unlock(&ubi->wl_lock);
+
+	/*
+	 * Call the worker function. Do not touch the work structure
+	 * after this call as it will have been freed or reused by that
+	 * time by the worker function.
+	 */
+	err = wrk->func(ubi, wrk, 0);
+	if (err)
+		ubi_err("work failed with error code %d", err);
+	up_read(&ubi->work_sem);
+
+	return err;
+}
+
+/**
+ * produce_free_peb - produce a free physical eraseblock.
+ * @ubi: UBI device description object
+ *
+ * This function tries to make a free PEB by means of synchronous execution of
+ * pending works. This may be needed if, for example the background thread is
+ * disabled. Returns zero in case of success and a negative error code in case
+ * of failure.
+ */
+static int produce_free_peb(struct ubi_device *ubi)
+{
+	int err;
+
+	spin_lock(&ubi->wl_lock);
+	while (!ubi->free.rb_node) {
+		spin_unlock(&ubi->wl_lock);
+
+		dbg_wl("do one work synchronously");
+		err = do_work(ubi);
+		if (err)
+			return err;
+
+		spin_lock(&ubi->wl_lock);
+	}
+	spin_unlock(&ubi->wl_lock);
+
+	return 0;
+}
+
+/**
+ * in_wl_tree - check if wear-leveling entry is present in a WL RB-tree.
+ * @e: the wear-leveling entry to check
+ * @root: the root of the tree
+ *
+ * This function returns non-zero if @e is in the @root RB-tree and zero if it
+ * is not.
+ */
+static int in_wl_tree(struct ubi_wl_entry *e, struct rb_root *root)
+{
+	struct rb_node *p;
+
+	p = root->rb_node;
+	while (p) {
+		struct ubi_wl_entry *e1;
+
+		e1 = rb_entry(p, struct ubi_wl_entry, rb);
+
+		if (e->pnum == e1->pnum) {
+			ubi_assert(e == e1);
+			return 1;
+		}
+
+		if (e->ec < e1->ec)
+			p = p->rb_left;
+		else if (e->ec > e1->ec)
+			p = p->rb_right;
+		else {
+			ubi_assert(e->pnum != e1->pnum);
+			if (e->pnum < e1->pnum)
+				p = p->rb_left;
+			else
+				p = p->rb_right;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * prot_tree_add - add physical eraseblock to protection trees.
+ * @ubi: UBI device description object
+ * @e: the physical eraseblock to add
+ * @pe: protection entry object to use
+ * @abs_ec: absolute erase counter value when this physical eraseblock has
+ * to be removed from the protection trees.
+ *
+ * @wl->lock has to be locked.
+ */
+static void prot_tree_add(struct ubi_device *ubi, struct ubi_wl_entry *e,
+			  struct ubi_wl_prot_entry *pe, int abs_ec)
+{
+	struct rb_node **p, *parent = NULL;
+	struct ubi_wl_prot_entry *pe1;
+
+	pe->e = e;
+	pe->abs_ec = ubi->abs_ec + abs_ec;
+
+	p = &ubi->prot.pnum.rb_node;
+	while (*p) {
+		parent = *p;
+		pe1 = rb_entry(parent, struct ubi_wl_prot_entry, rb_pnum);
+
+		if (e->pnum < pe1->e->pnum)
+			p = &(*p)->rb_left;
+		else
+			p = &(*p)->rb_right;
+	}
+	rb_link_node(&pe->rb_pnum, parent, p);
+	rb_insert_color(&pe->rb_pnum, &ubi->prot.pnum);
+
+	p = &ubi->prot.aec.rb_node;
+	parent = NULL;
+	while (*p) {
+		parent = *p;
+		pe1 = rb_entry(parent, struct ubi_wl_prot_entry, rb_aec);
+
+		if (pe->abs_ec < pe1->abs_ec)
+			p = &(*p)->rb_left;
+		else
+			p = &(*p)->rb_right;
+	}
+	rb_link_node(&pe->rb_aec, parent, p);
+	rb_insert_color(&pe->rb_aec, &ubi->prot.aec);
+}
+
+/**
+ * find_wl_entry - find wear-leveling entry closest to certain erase counter.
+ * @root: the RB-tree where to look for
+ * @max: highest possible erase counter
+ *
+ * This function looks for a wear leveling entry with erase counter closest to
+ * @max and less then @max.
+ */
+static struct ubi_wl_entry *find_wl_entry(struct rb_root *root, int max)
+{
+	struct rb_node *p;
+	struct ubi_wl_entry *e;
+
+	e = rb_entry(rb_first(root), struct ubi_wl_entry, rb);
+	max += e->ec;
+
+	p = root->rb_node;
+	while (p) {
+		struct ubi_wl_entry *e1;
+
+		e1 = rb_entry(p, struct ubi_wl_entry, rb);
+		if (e1->ec >= max)
+			p = p->rb_left;
+		else {
+			p = p->rb_right;
+			e = e1;
+		}
+	}
+
+	return e;
+}
+
+/**
+ * ubi_wl_get_peb - get a physical eraseblock.
+ * @ubi: UBI device description object
+ * @dtype: type of data which will be stored in this physical eraseblock
+ *
+ * This function returns a physical eraseblock in case of success and a
+ * negative error code in case of failure. Might sleep.
+ */
+int ubi_wl_get_peb(struct ubi_device *ubi, int dtype)
+{
+	int err, protect, medium_ec;
+	struct ubi_wl_entry *e, *first, *last;
+	struct ubi_wl_prot_entry *pe;
+
+	ubi_assert(dtype == UBI_LONGTERM || dtype == UBI_SHORTTERM ||
+		   dtype == UBI_UNKNOWN);
+
+	pe = kmalloc(sizeof(struct ubi_wl_prot_entry), GFP_NOFS);
+	if (!pe)
+		return -ENOMEM;
+
+retry:
+	spin_lock(&ubi->wl_lock);
+	if (!ubi->free.rb_node) {
+		if (ubi->works_count == 0) {
+			ubi_assert(list_empty(&ubi->works));
+			ubi_err("no free eraseblocks");
+			spin_unlock(&ubi->wl_lock);
+			kfree(pe);
+			return -ENOSPC;
+		}
+		spin_unlock(&ubi->wl_lock);
+
+		err = produce_free_peb(ubi);
+		if (err < 0) {
+			kfree(pe);
+			return err;
+		}
+		goto retry;
+	}
+
+	switch (dtype) {
+		case UBI_LONGTERM:
+			/*
+			 * For long term data we pick a physical eraseblock
+			 * with high erase counter. But the highest erase
+			 * counter we can pick is bounded by the the lowest
+			 * erase counter plus %WL_FREE_MAX_DIFF.
+			 */
+			e = find_wl_entry(&ubi->free, WL_FREE_MAX_DIFF);
+			protect = LT_PROTECTION;
+			break;
+		case UBI_UNKNOWN:
+			/*
+			 * For unknown data we pick a physical eraseblock with
+			 * medium erase counter. But we by no means can pick a
+			 * physical eraseblock with erase counter greater or
+			 * equivalent than the lowest erase counter plus
+			 * %WL_FREE_MAX_DIFF.
+			 */
+			first = rb_entry(rb_first(&ubi->free),
+					 struct ubi_wl_entry, rb);
+			last = rb_entry(rb_last(&ubi->free),
+					struct ubi_wl_entry, rb);
+
+			if (last->ec - first->ec < WL_FREE_MAX_DIFF)
+				e = rb_entry(ubi->free.rb_node,
+						struct ubi_wl_entry, rb);
+			else {
+				medium_ec = (first->ec + WL_FREE_MAX_DIFF)/2;
+				e = find_wl_entry(&ubi->free, medium_ec);
+			}
+			protect = U_PROTECTION;
+			break;
+		case UBI_SHORTTERM:
+			/*
+			 * For short term data we pick a physical eraseblock
+			 * with the lowest erase counter as we expect it will
+			 * be erased soon.
+			 */
+			e = rb_entry(rb_first(&ubi->free),
+				     struct ubi_wl_entry, rb);
+			protect = ST_PROTECTION;
+			break;
+		default:
+			protect = 0;
+			e = NULL;
+			BUG();
+	}
+
+	/*
+	 * Move the physical eraseblock to the protection trees where it will
+	 * be protected from being moved for some time.
+	 */
+	paranoid_check_in_wl_tree(e, &ubi->free);
+	rb_erase(&e->rb, &ubi->free);
+	prot_tree_add(ubi, e, pe, protect);
+
+	dbg_wl("PEB %d EC %d, protection %d", e->pnum, e->ec, protect);
+	spin_unlock(&ubi->wl_lock);
+
+	return e->pnum;
+}
+
+/**
+ * prot_tree_del - remove a physical eraseblock from the protection trees
+ * @ubi: UBI device description object
+ * @pnum: the physical eraseblock to remove
+ *
+ * This function returns PEB @pnum from the protection trees and returns zero
+ * in case of success and %-ENODEV if the PEB was not found in the protection
+ * trees.
+ */
+static int prot_tree_del(struct ubi_device *ubi, int pnum)
+{
+	struct rb_node *p;
+	struct ubi_wl_prot_entry *pe = NULL;
+
+	p = ubi->prot.pnum.rb_node;
+	while (p) {
+
+		pe = rb_entry(p, struct ubi_wl_prot_entry, rb_pnum);
+
+		if (pnum == pe->e->pnum)
+			goto found;
+
+		if (pnum < pe->e->pnum)
+			p = p->rb_left;
+		else
+			p = p->rb_right;
+	}
+
+	return -ENODEV;
+
+found:
+	ubi_assert(pe->e->pnum == pnum);
+	rb_erase(&pe->rb_aec, &ubi->prot.aec);
+	rb_erase(&pe->rb_pnum, &ubi->prot.pnum);
+	kfree(pe);
+	return 0;
+}
+
+/**
+ * sync_erase - synchronously erase a physical eraseblock.
+ * @ubi: UBI device description object
+ * @e: the the physical eraseblock to erase
+ * @torture: if the physical eraseblock has to be tortured
+ *
+ * This function returns zero in case of success and a negative error code in
+ * case of failure.
+ */
+static int sync_erase(struct ubi_device *ubi, struct ubi_wl_entry *e, int torture)
+{
+	int err;
+	struct ubi_ec_hdr *ec_hdr;
+	unsigned long long ec = e->ec;
+
+	dbg_wl("erase PEB %d, old EC %llu", e->pnum, ec);
+
+	err = paranoid_check_ec(ubi, e->pnum, e->ec);
+	if (err > 0)
+		return -EINVAL;
+
+	ec_hdr = kzalloc(ubi->ec_hdr_alsize, GFP_NOFS);
+	if (!ec_hdr)
+		return -ENOMEM;
+
+	err = ubi_io_sync_erase(ubi, e->pnum, torture);
+	if (err < 0)
+		goto out_free;
+
+	ec += err;
+	if (ec > UBI_MAX_ERASECOUNTER) {
+		/*
+		 * Erase counter overflow. Upgrade UBI and use 64-bit
+		 * erase counters internally.
+		 */
+		ubi_err("erase counter overflow at PEB %d, EC %llu",
+			e->pnum, ec);
+		err = -EINVAL;
+		goto out_free;
+	}
+
+	dbg_wl("erased PEB %d, new EC %llu", e->pnum, ec);
+
+	ec_hdr->ec = cpu_to_be64(ec);
+
+	err = ubi_io_write_ec_hdr(ubi, e->pnum, ec_hdr);
+	if (err)
+		goto out_free;
+
+	e->ec = ec;
+	spin_lock(&ubi->wl_lock);
+	if (e->ec > ubi->max_ec)
+		ubi->max_ec = e->ec;
+	spin_unlock(&ubi->wl_lock);
+
+out_free:
+	kfree(ec_hdr);
+	return err;
+}
+
+/**
+ * check_protection_over - check if it is time to stop protecting some
+ * physical eraseblocks.
+ * @ubi: UBI device description object
+ *
+ * This function is called after each erase operation, when the absolute erase
+ * counter is incremented, to check if some physical eraseblock  have not to be
+ * protected any longer. These physical eraseblocks are moved from the
+ * protection trees to the used tree.
+ */
+static void check_protection_over(struct ubi_device *ubi)
+{
+	struct ubi_wl_prot_entry *pe;
+
+	/*
+	 * There may be several protected physical eraseblock to remove,
+	 * process them all.
+	 */
+	while (1) {
+		spin_lock(&ubi->wl_lock);
+		if (!ubi->prot.aec.rb_node) {
+			spin_unlock(&ubi->wl_lock);
+			break;
+		}
+
+		pe = rb_entry(rb_first(&ubi->prot.aec),
+			      struct ubi_wl_prot_entry, rb_aec);
+
+		if (pe->abs_ec > ubi->abs_ec) {
+			spin_unlock(&ubi->wl_lock);
+			break;
+		}
+
+		dbg_wl("PEB %d protection over, abs_ec %llu, PEB abs_ec %llu",
+		       pe->e->pnum, ubi->abs_ec, pe->abs_ec);
+		rb_erase(&pe->rb_aec, &ubi->prot.aec);
+		rb_erase(&pe->rb_pnum, &ubi->prot.pnum);
+		wl_tree_add(pe->e, &ubi->used);
+		spin_unlock(&ubi->wl_lock);
+
+		kfree(pe);
+		cond_resched();
+	}
+}
+
+/**
+ * schedule_ubi_work - schedule a work.
+ * @ubi: UBI device description object
+ * @wrk: the work to schedule
+ *
+ * This function enqueues a work defined by @wrk to the tail of the pending
+ * works list.
+ */
+static void schedule_ubi_work(struct ubi_device *ubi, struct ubi_work *wrk)
+{
+	spin_lock(&ubi->wl_lock);
+	list_add_tail(&wrk->list, &ubi->works);
+	ubi_assert(ubi->works_count >= 0);
+	ubi->works_count += 1;
+
+	/*
+	 * U-Boot special: We have no bgt_thread in U-Boot!
+	 * So just call do_work() here directly.
+	 */
+	do_work(ubi);
+
+	spin_unlock(&ubi->wl_lock);
+}
+
+static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
+			int cancel);
+
+/**
+ * schedule_erase - schedule an erase work.
+ * @ubi: UBI device description object
+ * @e: the WL entry of the physical eraseblock to erase
+ * @torture: if the physical eraseblock has to be tortured
+ *
+ * This function returns zero in case of success and a %-ENOMEM in case of
+ * failure.
+ */
+static int schedule_erase(struct ubi_device *ubi, struct ubi_wl_entry *e,
+			  int torture)
+{
+	struct ubi_work *wl_wrk;
+
+	dbg_wl("schedule erasure of PEB %d, EC %d, torture %d",
+	       e->pnum, e->ec, torture);
+
+	wl_wrk = kmalloc(sizeof(struct ubi_work), GFP_NOFS);
+	if (!wl_wrk)
+		return -ENOMEM;
+
+	wl_wrk->func = &erase_worker;
+	wl_wrk->e = e;
+	wl_wrk->torture = torture;
+
+	schedule_ubi_work(ubi, wl_wrk);
+	return 0;
+}
+
+/**
+ * wear_leveling_worker - wear-leveling worker function.
+ * @ubi: UBI device description object
+ * @wrk: the work object
+ * @cancel: non-zero if the worker has to free memory and exit
+ *
+ * This function copies a more worn out physical eraseblock to a less worn out
+ * one. Returns zero in case of success and a negative error code in case of
+ * failure.
+ */
+static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
+				int cancel)
+{
+	int err, put = 0, scrubbing = 0, protect = 0;
+	struct ubi_wl_prot_entry *uninitialized_var(pe);
+	struct ubi_wl_entry *e1, *e2;
+	struct ubi_vid_hdr *vid_hdr;
+
+	kfree(wrk);
+
+	if (cancel)
+		return 0;
+
+	vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_NOFS);
+	if (!vid_hdr)
+		return -ENOMEM;
+
+	mutex_lock(&ubi->move_mutex);
+	spin_lock(&ubi->wl_lock);
+	ubi_assert(!ubi->move_from && !ubi->move_to);
+	ubi_assert(!ubi->move_to_put);
+
+	if (!ubi->free.rb_node ||
+	    (!ubi->used.rb_node && !ubi->scrub.rb_node)) {
+		/*
+		 * No free physical eraseblocks? Well, they must be waiting in
+		 * the queue to be erased. Cancel movement - it will be
+		 * triggered again when a free physical eraseblock appears.
+		 *
+		 * No used physical eraseblocks? They must be temporarily
+		 * protected from being moved. They will be moved to the
+		 * @ubi->used tree later and the wear-leveling will be
+		 * triggered again.
+		 */
+		dbg_wl("cancel WL, a list is empty: free %d, used %d",
+		       !ubi->free.rb_node, !ubi->used.rb_node);
+		goto out_cancel;
+	}
+
+	if (!ubi->scrub.rb_node) {
+		/*
+		 * Now pick the least worn-out used physical eraseblock and a
+		 * highly worn-out free physical eraseblock. If the erase
+		 * counters differ much enough, start wear-leveling.
+		 */
+		e1 = rb_entry(rb_first(&ubi->used), struct ubi_wl_entry, rb);
+		e2 = find_wl_entry(&ubi->free, WL_FREE_MAX_DIFF);
+
+		if (!(e2->ec - e1->ec >= UBI_WL_THRESHOLD)) {
+			dbg_wl("no WL needed: min used EC %d, max free EC %d",
+			       e1->ec, e2->ec);
+			goto out_cancel;
+		}
+		paranoid_check_in_wl_tree(e1, &ubi->used);
+		rb_erase(&e1->rb, &ubi->used);
+		dbg_wl("move PEB %d EC %d to PEB %d EC %d",
+		       e1->pnum, e1->ec, e2->pnum, e2->ec);
+	} else {
+		/* Perform scrubbing */
+		scrubbing = 1;
+		e1 = rb_entry(rb_first(&ubi->scrub), struct ubi_wl_entry, rb);
+		e2 = find_wl_entry(&ubi->free, WL_FREE_MAX_DIFF);
+		paranoid_check_in_wl_tree(e1, &ubi->scrub);
+		rb_erase(&e1->rb, &ubi->scrub);
+		dbg_wl("scrub PEB %d to PEB %d", e1->pnum, e2->pnum);
+	}
+
+	paranoid_check_in_wl_tree(e2, &ubi->free);
+	rb_erase(&e2->rb, &ubi->free);
+	ubi->move_from = e1;
+	ubi->move_to = e2;
+	spin_unlock(&ubi->wl_lock);
+
+	/*
+	 * Now we are going to copy physical eraseblock @e1->pnum to @e2->pnum.
+	 * We so far do not know which logical eraseblock our physical
+	 * eraseblock (@e1) belongs to. We have to read the volume identifier
+	 * header first.
+	 *
+	 * Note, we are protected from this PEB being unmapped and erased. The
+	 * 'ubi_wl_put_peb()' would wait for moving to be finished if the PEB
+	 * which is being moved was unmapped.
+	 */
+
+	err = ubi_io_read_vid_hdr(ubi, e1->pnum, vid_hdr, 0);
+	if (err && err != UBI_IO_BITFLIPS) {
+		if (err == UBI_IO_PEB_FREE) {
+			/*
+			 * We are trying to move PEB without a VID header. UBI
+			 * always write VID headers shortly after the PEB was
+			 * given, so we have a situation when it did not have
+			 * chance to write it down because it was preempted.
+			 * Just re-schedule the work, so that next time it will
+			 * likely have the VID header in place.
+			 */
+			dbg_wl("PEB %d has no VID header", e1->pnum);
+			goto out_not_moved;
+		}
+
+		ubi_err("error %d while reading VID header from PEB %d",
+			err, e1->pnum);
+		if (err > 0)
+			err = -EIO;
+		goto out_error;
+	}
+
+	err = ubi_eba_copy_leb(ubi, e1->pnum, e2->pnum, vid_hdr);
+	if (err) {
+
+		if (err < 0)
+			goto out_error;
+		if (err == 1)
+			goto out_not_moved;
+
+		/*
+		 * For some reason the LEB was not moved - it might be because
+		 * the volume is being deleted. We should prevent this PEB from
+		 * being selected for wear-levelling movement for some "time",
+		 * so put it to the protection tree.
+		 */
+
+		dbg_wl("cancelled moving PEB %d", e1->pnum);
+		pe = kmalloc(sizeof(struct ubi_wl_prot_entry), GFP_NOFS);
+		if (!pe) {
+			err = -ENOMEM;
+			goto out_error;
+		}
+
+		protect = 1;
+	}
+
+	ubi_free_vid_hdr(ubi, vid_hdr);
+	spin_lock(&ubi->wl_lock);
+	if (protect)
+		prot_tree_add(ubi, e1, pe, protect);
+	if (!ubi->move_to_put)
+		wl_tree_add(e2, &ubi->used);
+	else
+		put = 1;
+	ubi->move_from = ubi->move_to = NULL;
+	ubi->move_to_put = ubi->wl_scheduled = 0;
+	spin_unlock(&ubi->wl_lock);
+
+	if (put) {
+		/*
+		 * Well, the target PEB was put meanwhile, schedule it for
+		 * erasure.
+		 */
+		dbg_wl("PEB %d was put meanwhile, erase", e2->pnum);
+		err = schedule_erase(ubi, e2, 0);
+		if (err)
+			goto out_error;
+	}
+
+	if (!protect) {
+		err = schedule_erase(ubi, e1, 0);
+		if (err)
+			goto out_error;
+	}
+
+
+	dbg_wl("done");
+	mutex_unlock(&ubi->move_mutex);
+	return 0;
+
+	/*
+	 * For some reasons the LEB was not moved, might be an error, might be
+	 * something else. @e1 was not changed, so return it back. @e2 might
+	 * be changed, schedule it for erasure.
+	 */
+out_not_moved:
+	ubi_free_vid_hdr(ubi, vid_hdr);
+	spin_lock(&ubi->wl_lock);
+	if (scrubbing)
+		wl_tree_add(e1, &ubi->scrub);
+	else
+		wl_tree_add(e1, &ubi->used);
+	ubi->move_from = ubi->move_to = NULL;
+	ubi->move_to_put = ubi->wl_scheduled = 0;
+	spin_unlock(&ubi->wl_lock);
+
+	err = schedule_erase(ubi, e2, 0);
+	if (err)
+		goto out_error;
+
+	mutex_unlock(&ubi->move_mutex);
+	return 0;
+
+out_error:
+	ubi_err("error %d while moving PEB %d to PEB %d",
+		err, e1->pnum, e2->pnum);
+
+	ubi_free_vid_hdr(ubi, vid_hdr);
+	spin_lock(&ubi->wl_lock);
+	ubi->move_from = ubi->move_to = NULL;
+	ubi->move_to_put = ubi->wl_scheduled = 0;
+	spin_unlock(&ubi->wl_lock);
+
+	kmem_cache_free(ubi_wl_entry_slab, e1);
+	kmem_cache_free(ubi_wl_entry_slab, e2);
+	ubi_ro_mode(ubi);
+
+	mutex_unlock(&ubi->move_mutex);
+	return err;
+
+out_cancel:
+	ubi->wl_scheduled = 0;
+	spin_unlock(&ubi->wl_lock);
+	mutex_unlock(&ubi->move_mutex);
+	ubi_free_vid_hdr(ubi, vid_hdr);
+	return 0;
+}
+
+/**
+ * ensure_wear_leveling - schedule wear-leveling if it is needed.
+ * @ubi: UBI device description object
+ *
+ * This function checks if it is time to start wear-leveling and schedules it
+ * if yes. This function returns zero in case of success and a negative error
+ * code in case of failure.
+ */
+static int ensure_wear_leveling(struct ubi_device *ubi)
+{
+	int err = 0;
+	struct ubi_wl_entry *e1;
+	struct ubi_wl_entry *e2;
+	struct ubi_work *wrk;
+
+	spin_lock(&ubi->wl_lock);
+	if (ubi->wl_scheduled)
+		/* Wear-leveling is already in the work queue */
+		goto out_unlock;
+
+	/*
+	 * If the ubi->scrub tree is not empty, scrubbing is needed, and the
+	 * the WL worker has to be scheduled anyway.
+	 */
+	if (!ubi->scrub.rb_node) {
+		if (!ubi->used.rb_node || !ubi->free.rb_node)
+			/* No physical eraseblocks - no deal */
+			goto out_unlock;
+
+		/*
+		 * We schedule wear-leveling only if the difference between the
+		 * lowest erase counter of used physical eraseblocks and a high
+		 * erase counter of free physical eraseblocks is greater then
+		 * %UBI_WL_THRESHOLD.
+		 */
+		e1 = rb_entry(rb_first(&ubi->used), struct ubi_wl_entry, rb);
+		e2 = find_wl_entry(&ubi->free, WL_FREE_MAX_DIFF);
+
+		if (!(e2->ec - e1->ec >= UBI_WL_THRESHOLD))
+			goto out_unlock;
+		dbg_wl("schedule wear-leveling");
+	} else
+		dbg_wl("schedule scrubbing");
+
+	ubi->wl_scheduled = 1;
+	spin_unlock(&ubi->wl_lock);
+
+	wrk = kmalloc(sizeof(struct ubi_work), GFP_NOFS);
+	if (!wrk) {
+		err = -ENOMEM;
+		goto out_cancel;
+	}
+
+	wrk->func = &wear_leveling_worker;
+	schedule_ubi_work(ubi, wrk);
+	return err;
+
+out_cancel:
+	spin_lock(&ubi->wl_lock);
+	ubi->wl_scheduled = 0;
+out_unlock:
+	spin_unlock(&ubi->wl_lock);
+	return err;
+}
+
+/**
+ * erase_worker - physical eraseblock erase worker function.
+ * @ubi: UBI device description object
+ * @wl_wrk: the work object
+ * @cancel: non-zero if the worker has to free memory and exit
+ *
+ * This function erases a physical eraseblock and perform torture testing if
+ * needed. It also takes care about marking the physical eraseblock bad if
+ * needed. Returns zero in case of success and a negative error code in case of
+ * failure.
+ */
+static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
+			int cancel)
+{
+	struct ubi_wl_entry *e = wl_wrk->e;
+	int pnum = e->pnum, err, need;
+
+	if (cancel) {
+		dbg_wl("cancel erasure of PEB %d EC %d", pnum, e->ec);
+		kfree(wl_wrk);
+		kmem_cache_free(ubi_wl_entry_slab, e);
+		return 0;
+	}
+
+	dbg_wl("erase PEB %d EC %d", pnum, e->ec);
+
+	err = sync_erase(ubi, e, wl_wrk->torture);
+	if (!err) {
+		/* Fine, we've erased it successfully */
+		kfree(wl_wrk);
+
+		spin_lock(&ubi->wl_lock);
+		ubi->abs_ec += 1;
+		wl_tree_add(e, &ubi->free);
+		spin_unlock(&ubi->wl_lock);
+
+		/*
+		 * One more erase operation has happened, take care about protected
+		 * physical eraseblocks.
+		 */
+		check_protection_over(ubi);
+
+		/* And take care about wear-leveling */
+		err = ensure_wear_leveling(ubi);
+		return err;
+	}
+
+	ubi_err("failed to erase PEB %d, error %d", pnum, err);
+	kfree(wl_wrk);
+	kmem_cache_free(ubi_wl_entry_slab, e);
+
+	if (err == -EINTR || err == -ENOMEM || err == -EAGAIN ||
+	    err == -EBUSY) {
+		int err1;
+
+		/* Re-schedule the LEB for erasure */
+		err1 = schedule_erase(ubi, e, 0);
+		if (err1) {
+			err = err1;
+			goto out_ro;
+		}
+		return err;
+	} else if (err != -EIO) {
+		/*
+		 * If this is not %-EIO, we have no idea what to do. Scheduling
+		 * this physical eraseblock for erasure again would cause
+		 * errors again and again. Well, lets switch to RO mode.
+		 */
+		goto out_ro;
+	}
+
+	/* It is %-EIO, the PEB went bad */
+
+	if (!ubi->bad_allowed) {
+		ubi_err("bad physical eraseblock %d detected", pnum);
+		goto out_ro;
+	}
+
+	spin_lock(&ubi->volumes_lock);
+	need = ubi->beb_rsvd_level - ubi->beb_rsvd_pebs + 1;
+	if (need > 0) {
+		need = ubi->avail_pebs >= need ? need : ubi->avail_pebs;
+		ubi->avail_pebs -= need;
+		ubi->rsvd_pebs += need;
+		ubi->beb_rsvd_pebs += need;
+		if (need > 0)
+			ubi_msg("reserve more %d PEBs", need);
+	}
+
+	if (ubi->beb_rsvd_pebs == 0) {
+		spin_unlock(&ubi->volumes_lock);
+		ubi_err("no reserved physical eraseblocks");
+		goto out_ro;
+	}
+
+	spin_unlock(&ubi->volumes_lock);
+	ubi_msg("mark PEB %d as bad", pnum);
+
+	err = ubi_io_mark_bad(ubi, pnum);
+	if (err)
+		goto out_ro;
+
+	spin_lock(&ubi->volumes_lock);
+	ubi->beb_rsvd_pebs -= 1;
+	ubi->bad_peb_count += 1;
+	ubi->good_peb_count -= 1;
+	ubi_calculate_reserved(ubi);
+	if (ubi->beb_rsvd_pebs == 0)
+		ubi_warn("last PEB from the reserved pool was used");
+	spin_unlock(&ubi->volumes_lock);
+
+	return err;
+
+out_ro:
+	ubi_ro_mode(ubi);
+	return err;
+}
+
+/**
+ * ubi_wl_put_peb - return a physical eraseblock to the wear-leveling unit.
+ * @ubi: UBI device description object
+ * @pnum: physical eraseblock to return
+ * @torture: if this physical eraseblock has to be tortured
+ *
+ * This function is called to return physical eraseblock @pnum to the pool of
+ * free physical eraseblocks. The @torture flag has to be set if an I/O error
+ * occurred to this @pnum and it has to be tested. This function returns zero
+ * in case of success, and a negative error code in case of failure.
+ */
+int ubi_wl_put_peb(struct ubi_device *ubi, int pnum, int torture)
+{
+	int err;
+	struct ubi_wl_entry *e;
+
+	dbg_wl("PEB %d", pnum);
+	ubi_assert(pnum >= 0);
+	ubi_assert(pnum < ubi->peb_count);
+
+retry:
+	spin_lock(&ubi->wl_lock);
+	e = ubi->lookuptbl[pnum];
+	if (e == ubi->move_from) {
+		/*
+		 * User is putting the physical eraseblock which was selected to
+		 * be moved. It will be scheduled for erasure in the
+		 * wear-leveling worker.
+		 */
+		dbg_wl("PEB %d is being moved, wait", pnum);
+		spin_unlock(&ubi->wl_lock);
+
+		/* Wait for the WL worker by taking the @ubi->move_mutex */
+		mutex_lock(&ubi->move_mutex);
+		mutex_unlock(&ubi->move_mutex);
+		goto retry;
+	} else if (e == ubi->move_to) {
+		/*
+		 * User is putting the physical eraseblock which was selected
+		 * as the target the data is moved to. It may happen if the EBA
+		 * unit already re-mapped the LEB in 'ubi_eba_copy_leb()' but
+		 * the WL unit has not put the PEB to the "used" tree yet, but
+		 * it is about to do this. So we just set a flag which will
+		 * tell the WL worker that the PEB is not needed anymore and
+		 * should be scheduled for erasure.
+		 */
+		dbg_wl("PEB %d is the target of data moving", pnum);
+		ubi_assert(!ubi->move_to_put);
+		ubi->move_to_put = 1;
+		spin_unlock(&ubi->wl_lock);
+		return 0;
+	} else {
+		if (in_wl_tree(e, &ubi->used)) {
+			paranoid_check_in_wl_tree(e, &ubi->used);
+			rb_erase(&e->rb, &ubi->used);
+		} else if (in_wl_tree(e, &ubi->scrub)) {
+			paranoid_check_in_wl_tree(e, &ubi->scrub);
+			rb_erase(&e->rb, &ubi->scrub);
+		} else {
+			err = prot_tree_del(ubi, e->pnum);
+			if (err) {
+				ubi_err("PEB %d not found", pnum);
+				ubi_ro_mode(ubi);
+				spin_unlock(&ubi->wl_lock);
+				return err;
+			}
+		}
+	}
+	spin_unlock(&ubi->wl_lock);
+
+	err = schedule_erase(ubi, e, torture);
+	if (err) {
+		spin_lock(&ubi->wl_lock);
+		wl_tree_add(e, &ubi->used);
+		spin_unlock(&ubi->wl_lock);
+	}
+
+	return err;
+}
+
+/**
+ * ubi_wl_scrub_peb - schedule a physical eraseblock for scrubbing.
+ * @ubi: UBI device description object
+ * @pnum: the physical eraseblock to schedule
+ *
+ * If a bit-flip in a physical eraseblock is detected, this physical eraseblock
+ * needs scrubbing. This function schedules a physical eraseblock for
+ * scrubbing which is done in background. This function returns zero in case of
+ * success and a negative error code in case of failure.
+ */
+int ubi_wl_scrub_peb(struct ubi_device *ubi, int pnum)
+{
+	struct ubi_wl_entry *e;
+
+	ubi_msg("schedule PEB %d for scrubbing", pnum);
+
+retry:
+	spin_lock(&ubi->wl_lock);
+	e = ubi->lookuptbl[pnum];
+	if (e == ubi->move_from || in_wl_tree(e, &ubi->scrub)) {
+		spin_unlock(&ubi->wl_lock);
+		return 0;
+	}
+
+	if (e == ubi->move_to) {
+		/*
+		 * This physical eraseblock was used to move data to. The data
+		 * was moved but the PEB was not yet inserted to the proper
+		 * tree. We should just wait a little and let the WL worker
+		 * proceed.
+		 */
+		spin_unlock(&ubi->wl_lock);
+		dbg_wl("the PEB %d is not in proper tree, retry", pnum);
+		yield();
+		goto retry;
+	}
+
+	if (in_wl_tree(e, &ubi->used)) {
+		paranoid_check_in_wl_tree(e, &ubi->used);
+		rb_erase(&e->rb, &ubi->used);
+	} else {
+		int err;
+
+		err = prot_tree_del(ubi, e->pnum);
+		if (err) {
+			ubi_err("PEB %d not found", pnum);
+			ubi_ro_mode(ubi);
+			spin_unlock(&ubi->wl_lock);
+			return err;
+		}
+	}
+
+	wl_tree_add(e, &ubi->scrub);
+	spin_unlock(&ubi->wl_lock);
+
+	/*
+	 * Technically scrubbing is the same as wear-leveling, so it is done
+	 * by the WL worker.
+	 */
+	return ensure_wear_leveling(ubi);
+}
+
+/**
+ * ubi_wl_flush - flush all pending works.
+ * @ubi: UBI device description object
+ *
+ * This function returns zero in case of success and a negative error code in
+ * case of failure.
+ */
+int ubi_wl_flush(struct ubi_device *ubi)
+{
+	int err;
+
+	/*
+	 * Erase while the pending works queue is not empty, but not more then
+	 * the number of currently pending works.
+	 */
+	dbg_wl("flush (%d pending works)", ubi->works_count);
+	while (ubi->works_count) {
+		err = do_work(ubi);
+		if (err)
+			return err;
+	}
+
+	/*
+	 * Make sure all the works which have been done in parallel are
+	 * finished.
+	 */
+	down_write(&ubi->work_sem);
+	up_write(&ubi->work_sem);
+
+	/*
+	 * And in case last was the WL worker and it cancelled the LEB
+	 * movement, flush again.
+	 */
+	while (ubi->works_count) {
+		dbg_wl("flush more (%d pending works)", ubi->works_count);
+		err = do_work(ubi);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+/**
+ * tree_destroy - destroy an RB-tree.
+ * @root: the root of the tree to destroy
+ */
+static void tree_destroy(struct rb_root *root)
+{
+	struct rb_node *rb;
+	struct ubi_wl_entry *e;
+
+	rb = root->rb_node;
+	while (rb) {
+		if (rb->rb_left)
+			rb = rb->rb_left;
+		else if (rb->rb_right)
+			rb = rb->rb_right;
+		else {
+			e = rb_entry(rb, struct ubi_wl_entry, rb);
+
+			rb = rb_parent(rb);
+			if (rb) {
+				if (rb->rb_left == &e->rb)
+					rb->rb_left = NULL;
+				else
+					rb->rb_right = NULL;
+			}
+
+			kmem_cache_free(ubi_wl_entry_slab, e);
+		}
+	}
+}
+
+/**
+ * ubi_thread - UBI background thread.
+ * @u: the UBI device description object pointer
+ */
+int ubi_thread(void *u)
+{
+	int failures = 0;
+	struct ubi_device *ubi = u;
+
+	ubi_msg("background thread \"%s\" started, PID %d",
+		ubi->bgt_name, task_pid_nr(current));
+
+	set_freezable();
+	for (;;) {
+		int err;
+
+		if (kthread_should_stop())
+			break;
+
+		if (try_to_freeze())
+			continue;
+
+		spin_lock(&ubi->wl_lock);
+		if (list_empty(&ubi->works) || ubi->ro_mode ||
+			       !ubi->thread_enabled) {
+			set_current_state(TASK_INTERRUPTIBLE);
+			spin_unlock(&ubi->wl_lock);
+			schedule();
+			continue;
+		}
+		spin_unlock(&ubi->wl_lock);
+
+		err = do_work(ubi);
+		if (err) {
+			ubi_err("%s: work failed with error code %d",
+				ubi->bgt_name, err);
+			if (failures++ > WL_MAX_FAILURES) {
+				/*
+				 * Too many failures, disable the thread and
+				 * switch to read-only mode.
+				 */
+				ubi_msg("%s: %d consecutive failures",
+					ubi->bgt_name, WL_MAX_FAILURES);
+				ubi_ro_mode(ubi);
+				break;
+			}
+		} else
+			failures = 0;
+
+		cond_resched();
+	}
+
+	dbg_wl("background thread \"%s\" is killed", ubi->bgt_name);
+	return 0;
+}
+
+/**
+ * cancel_pending - cancel all pending works.
+ * @ubi: UBI device description object
+ */
+static void cancel_pending(struct ubi_device *ubi)
+{
+	while (!list_empty(&ubi->works)) {
+		struct ubi_work *wrk;
+
+		wrk = list_entry(ubi->works.next, struct ubi_work, list);
+		list_del(&wrk->list);
+		wrk->func(ubi, wrk, 1);
+		ubi->works_count -= 1;
+		ubi_assert(ubi->works_count >= 0);
+	}
+}
+
+/**
+ * ubi_wl_init_scan - initialize the wear-leveling unit using scanning
+ * information.
+ * @ubi: UBI device description object
+ * @si: scanning information
+ *
+ * This function returns zero in case of success, and a negative error code in
+ * case of failure.
+ */
+int ubi_wl_init_scan(struct ubi_device *ubi, struct ubi_scan_info *si)
+{
+	int err;
+	struct rb_node *rb1, *rb2;
+	struct ubi_scan_volume *sv;
+	struct ubi_scan_leb *seb, *tmp;
+	struct ubi_wl_entry *e;
+
+
+	ubi->used = ubi->free = ubi->scrub = RB_ROOT;
+	ubi->prot.pnum = ubi->prot.aec = RB_ROOT;
+	spin_lock_init(&ubi->wl_lock);
+	mutex_init(&ubi->move_mutex);
+	init_rwsem(&ubi->work_sem);
+	ubi->max_ec = si->max_ec;
+	INIT_LIST_HEAD(&ubi->works);
+
+	sprintf(ubi->bgt_name, UBI_BGT_NAME_PATTERN, ubi->ubi_num);
+
+	err = -ENOMEM;
+	ubi->lookuptbl = kzalloc(ubi->peb_count * sizeof(void *), GFP_KERNEL);
+	if (!ubi->lookuptbl)
+		return err;
+
+	list_for_each_entry_safe(seb, tmp, &si->erase, u.list) {
+		cond_resched();
+
+		e = kmem_cache_alloc(ubi_wl_entry_slab, GFP_KERNEL);
+		if (!e)
+			goto out_free;
+
+		e->pnum = seb->pnum;
+		e->ec = seb->ec;
+		ubi->lookuptbl[e->pnum] = e;
+		if (schedule_erase(ubi, e, 0)) {
+			kmem_cache_free(ubi_wl_entry_slab, e);
+			goto out_free;
+		}
+	}
+
+	list_for_each_entry(seb, &si->free, u.list) {
+		cond_resched();
+
+		e = kmem_cache_alloc(ubi_wl_entry_slab, GFP_KERNEL);
+		if (!e)
+			goto out_free;
+
+		e->pnum = seb->pnum;
+		e->ec = seb->ec;
+		ubi_assert(e->ec >= 0);
+		wl_tree_add(e, &ubi->free);
+		ubi->lookuptbl[e->pnum] = e;
+	}
+
+	list_for_each_entry(seb, &si->corr, u.list) {
+		cond_resched();
+
+		e = kmem_cache_alloc(ubi_wl_entry_slab, GFP_KERNEL);
+		if (!e)
+			goto out_free;
+
+		e->pnum = seb->pnum;
+		e->ec = seb->ec;
+		ubi->lookuptbl[e->pnum] = e;
+		if (schedule_erase(ubi, e, 0)) {
+			kmem_cache_free(ubi_wl_entry_slab, e);
+			goto out_free;
+		}
+	}
+
+	ubi_rb_for_each_entry(rb1, sv, &si->volumes, rb) {
+		ubi_rb_for_each_entry(rb2, seb, &sv->root, u.rb) {
+			cond_resched();
+
+			e = kmem_cache_alloc(ubi_wl_entry_slab, GFP_KERNEL);
+			if (!e)
+				goto out_free;
+
+			e->pnum = seb->pnum;
+			e->ec = seb->ec;
+			ubi->lookuptbl[e->pnum] = e;
+			if (!seb->scrub) {
+				dbg_wl("add PEB %d EC %d to the used tree",
+				       e->pnum, e->ec);
+				wl_tree_add(e, &ubi->used);
+			} else {
+				dbg_wl("add PEB %d EC %d to the scrub tree",
+				       e->pnum, e->ec);
+				wl_tree_add(e, &ubi->scrub);
+			}
+		}
+	}
+
+	if (ubi->avail_pebs < WL_RESERVED_PEBS) {
+		ubi_err("no enough physical eraseblocks (%d, need %d)",
+			ubi->avail_pebs, WL_RESERVED_PEBS);
+		goto out_free;
+	}
+	ubi->avail_pebs -= WL_RESERVED_PEBS;
+	ubi->rsvd_pebs += WL_RESERVED_PEBS;
+
+	/* Schedule wear-leveling if needed */
+	err = ensure_wear_leveling(ubi);
+	if (err)
+		goto out_free;
+
+	return 0;
+
+out_free:
+	cancel_pending(ubi);
+	tree_destroy(&ubi->used);
+	tree_destroy(&ubi->free);
+	tree_destroy(&ubi->scrub);
+	kfree(ubi->lookuptbl);
+	return err;
+}
+
+/**
+ * protection_trees_destroy - destroy the protection RB-trees.
+ * @ubi: UBI device description object
+ */
+static void protection_trees_destroy(struct ubi_device *ubi)
+{
+	struct rb_node *rb;
+	struct ubi_wl_prot_entry *pe;
+
+	rb = ubi->prot.aec.rb_node;
+	while (rb) {
+		if (rb->rb_left)
+			rb = rb->rb_left;
+		else if (rb->rb_right)
+			rb = rb->rb_right;
+		else {
+			pe = rb_entry(rb, struct ubi_wl_prot_entry, rb_aec);
+
+			rb = rb_parent(rb);
+			if (rb) {
+				if (rb->rb_left == &pe->rb_aec)
+					rb->rb_left = NULL;
+				else
+					rb->rb_right = NULL;
+			}
+
+			kmem_cache_free(ubi_wl_entry_slab, pe->e);
+			kfree(pe);
+		}
+	}
+}
+
+/**
+ * ubi_wl_close - close the wear-leveling unit.
+ * @ubi: UBI device description object
+ */
+void ubi_wl_close(struct ubi_device *ubi)
+{
+	dbg_wl("close the UBI wear-leveling unit");
+
+	cancel_pending(ubi);
+	protection_trees_destroy(ubi);
+	tree_destroy(&ubi->used);
+	tree_destroy(&ubi->free);
+	tree_destroy(&ubi->scrub);
+	kfree(ubi->lookuptbl);
+}
+
+#ifdef CONFIG_MTD_UBI_DEBUG_PARANOID
+
+/**
+ * paranoid_check_ec - make sure that the erase counter of a physical eraseblock
+ * is correct.
+ * @ubi: UBI device description object
+ * @pnum: the physical eraseblock number to check
+ * @ec: the erase counter to check
+ *
+ * This function returns zero if the erase counter of physical eraseblock @pnum
+ * is equivalent to @ec, %1 if not, and a negative error code if an error
+ * occurred.
+ */
+static int paranoid_check_ec(struct ubi_device *ubi, int pnum, int ec)
+{
+	int err;
+	long long read_ec;
+	struct ubi_ec_hdr *ec_hdr;
+
+	ec_hdr = kzalloc(ubi->ec_hdr_alsize, GFP_NOFS);
+	if (!ec_hdr)
+		return -ENOMEM;
+
+	err = ubi_io_read_ec_hdr(ubi, pnum, ec_hdr, 0);
+	if (err && err != UBI_IO_BITFLIPS) {
+		/* The header does not have to exist */
+		err = 0;
+		goto out_free;
+	}
+
+	read_ec = be64_to_cpu(ec_hdr->ec);
+	if (ec != read_ec) {
+		ubi_err("paranoid check failed for PEB %d", pnum);
+		ubi_err("read EC is %lld, should be %d", read_ec, ec);
+		ubi_dbg_dump_stack();
+		err = 1;
+	} else
+		err = 0;
+
+out_free:
+	kfree(ec_hdr);
+	return err;
+}
+
+/**
+ * paranoid_check_in_wl_tree - make sure that a wear-leveling entry is present
+ * in a WL RB-tree.
+ * @e: the wear-leveling entry to check
+ * @root: the root of the tree
+ *
+ * This function returns zero if @e is in the @root RB-tree and %1 if it
+ * is not.
+ */
+static int paranoid_check_in_wl_tree(struct ubi_wl_entry *e,
+				     struct rb_root *root)
+{
+	if (in_wl_tree(e, root))
+		return 0;
+
+	ubi_err("paranoid check failed for PEB %d, EC %d, RB-tree %p ",
+		e->pnum, e->ec, root);
+	ubi_dbg_dump_stack();
+	return 1;
+}
+
+#endif /* CONFIG_MTD_UBI_DEBUG_PARANOID */
diff --git a/include/linux/mtd/ubi.h b/include/linux/mtd/ubi.h
new file mode 100644
index 0000000..2f1db31
--- /dev/null
+++ b/include/linux/mtd/ubi.h
@@ -0,0 +1,186 @@
+/*
+ * Copyright (c) International Business Machines Corp., 2006
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ *
+ * Author: Artem Bityutskiy (���������������� ����������)
+ */
+
+#ifndef __LINUX_UBI_H__
+#define __LINUX_UBI_H__
+
+/* #include <asm/ioctl.h> */
+#include <linux/types.h>
+#include <mtd/ubi-user.h>
+
+/*
+ * enum ubi_open_mode - UBI volume open mode constants.
+ *
+ * UBI_READONLY: read-only mode
+ * UBI_READWRITE: read-write mode
+ * UBI_EXCLUSIVE: exclusive mode
+ */
+enum {
+	UBI_READONLY = 1,
+	UBI_READWRITE,
+	UBI_EXCLUSIVE
+};
+
+/**
+ * struct ubi_volume_info - UBI volume description data structure.
+ * @vol_id: volume ID
+ * @ubi_num: UBI device number this volume belongs to
+ * @size: how many physical eraseblocks are reserved for this volume
+ * @used_bytes: how many bytes of data this volume contains
+ * @used_ebs: how many physical eraseblocks of this volume actually contain any
+ * data
+ * @vol_type: volume type (%UBI_DYNAMIC_VOLUME or %UBI_STATIC_VOLUME)
+ * @corrupted: non-zero if the volume is corrupted (static volumes only)
+ * @upd_marker: non-zero if the volume has update marker set
+ * @alignment: volume alignment
+ * @usable_leb_size: how many bytes are available in logical eraseblocks of
+ * this volume
+ * @name_len: volume name length
+ * @name: volume name
+ * @cdev: UBI volume character device major and minor numbers
+ *
+ * The @corrupted flag is only relevant to static volumes and is always zero
+ * for dynamic ones. This is because UBI does not care about dynamic volume
+ * data protection and only cares about protecting static volume data.
+ *
+ * The @upd_marker flag is set if the volume update operation was interrupted.
+ * Before touching the volume data during the update operation, UBI first sets
+ * the update marker flag for this volume. If the volume update operation was
+ * further interrupted, the update marker indicates this. If the update marker
+ * is set, the contents of the volume is certainly damaged and a new volume
+ * update operation has to be started.
+ *
+ * To put it differently, @corrupted and @upd_marker fields have different
+ * semantics:
+ *     o the @corrupted flag means that this static volume is corrupted for some
+ *       reasons, but not because an interrupted volume update
+ *     o the @upd_marker field means that the volume is damaged because of an
+ *       interrupted update operation.
+ *
+ * I.e., the @corrupted flag is never set if the @upd_marker flag is set.
+ *
+ * The @used_bytes and @used_ebs fields are only really needed for static
+ * volumes and contain the number of bytes stored in this static volume and how
+ * many eraseblock this data occupies. In case of dynamic volumes, the
+ * @used_bytes field is equivalent to @size*@usable_leb_size, and the @used_ebs
+ * field is equivalent to @size.
+ *
+ * In general, logical eraseblock size is a property of the UBI device, not
+ * of the UBI volume. Indeed, the logical eraseblock size depends on the
+ * physical eraseblock size and on how much bytes UBI headers consume. But
+ * because of the volume alignment (@alignment), the usable size of logical
+ * eraseblocks if a volume may be less. The following equation is true:
+ * 	@usable_leb_size = LEB size - (LEB size mod @alignment),
+ * where LEB size is the logical eraseblock size defined by the UBI device.
+ *
+ * The alignment is multiple to the minimal flash input/output unit size or %1
+ * if all the available space is used.
+ *
+ * To put this differently, alignment may be considered is a way to change
+ * volume logical eraseblock sizes.
+ */
+struct ubi_volume_info {
+	int ubi_num;
+	int vol_id;
+	int size;
+	long long used_bytes;
+	int used_ebs;
+	int vol_type;
+	int corrupted;
+	int upd_marker;
+	int alignment;
+	int usable_leb_size;
+	int name_len;
+	const char *name;
+	struct cdev *cdev;
+};
+
+/**
+ * struct ubi_device_info - UBI device description data structure.
+ * @ubi_num: ubi device number
+ * @leb_size: logical eraseblock size on this UBI device
+ * @min_io_size: minimal I/O unit size
+ * @ro_mode: if this device is in read-only mode
+ * @cdev: UBI character device major and minor numbers
+ *
+ * Note, @leb_size is the logical eraseblock size offered by the UBI device.
+ * Volumes of this UBI device may have smaller logical eraseblock size if their
+ * alignment is not equivalent to %1.
+ */
+struct ubi_device_info {
+	int ubi_num;
+	int leb_size;
+	int min_io_size;
+	int ro_mode;
+	struct cdev *cdev;
+};
+
+/* UBI descriptor given to users when they open UBI volumes */
+struct ubi_volume_desc;
+
+int ubi_get_device_info(int ubi_num, struct ubi_device_info *di);
+void ubi_get_volume_info(struct ubi_volume_desc *desc,
+			 struct ubi_volume_info *vi);
+struct ubi_volume_desc *ubi_open_volume(int ubi_num, int vol_id, int mode);
+struct ubi_volume_desc *ubi_open_volume_nm(int ubi_num, const char *name,
+					   int mode);
+void ubi_close_volume(struct ubi_volume_desc *desc);
+int ubi_leb_read(struct ubi_volume_desc *desc, int lnum, char *buf, int offset,
+		 int len, int check);
+int ubi_leb_write(struct ubi_volume_desc *desc, int lnum, const void *buf,
+		  int offset, int len, int dtype);
+int ubi_leb_change(struct ubi_volume_desc *desc, int lnum, const void *buf,
+		   int len, int dtype);
+int ubi_leb_erase(struct ubi_volume_desc *desc, int lnum);
+int ubi_leb_unmap(struct ubi_volume_desc *desc, int lnum);
+int ubi_leb_map(struct ubi_volume_desc *desc, int lnum, int dtype);
+int ubi_is_mapped(struct ubi_volume_desc *desc, int lnum);
+
+/*
+ * This function is the same as the 'ubi_leb_read()' function, but it does not
+ * provide the checking capability.
+ */
+static inline int ubi_read(struct ubi_volume_desc *desc, int lnum, char *buf,
+			   int offset, int len)
+{
+	return ubi_leb_read(desc, lnum, buf, offset, len, 0);
+}
+
+/*
+ * This function is the same as the 'ubi_leb_write()' functions, but it does
+ * not have the data type argument.
+ */
+static inline int ubi_write(struct ubi_volume_desc *desc, int lnum,
+			    const void *buf, int offset, int len)
+{
+	return ubi_leb_write(desc, lnum, buf, offset, len, UBI_UNKNOWN);
+}
+
+/*
+ * This function is the same as the 'ubi_leb_change()' functions, but it does
+ * not have the data type argument.
+ */
+static inline int ubi_change(struct ubi_volume_desc *desc, int lnum,
+				    const void *buf, int len)
+{
+	return ubi_leb_change(desc, lnum, buf, len, UBI_UNKNOWN);
+}
+
+#endif /* !__LINUX_UBI_H__ */
diff --git a/include/mtd/ubi-user.h b/include/mtd/ubi-user.h
new file mode 100644
index 0000000..a7421f1
--- /dev/null
+++ b/include/mtd/ubi-user.h
@@ -0,0 +1,268 @@
+/*
+ * Copyright (c) International Business Machines Corp., 2006
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ *
+ * Author: Artem Bityutskiy (���������������� ����������)
+ */
+
+#ifndef __UBI_USER_H__
+#define __UBI_USER_H__
+
+/*
+ * UBI device creation (the same as MTD device attachment)
+ * ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+ *
+ * MTD devices may be attached using %UBI_IOCATT ioctl command of the UBI
+ * control device. The caller has to properly fill and pass
+ * &struct ubi_attach_req object - UBI will attach the MTD device specified in
+ * the request and return the newly created UBI device number as the ioctl
+ * return value.
+ *
+ * UBI device deletion (the same as MTD device detachment)
+ * ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+ *
+ * An UBI device maybe deleted with %UBI_IOCDET ioctl command of the UBI
+ * control device.
+ *
+ * UBI volume creation
+ * ~~~~~~~~~~~~~~~~~~~
+ *
+ * UBI volumes are created via the %UBI_IOCMKVOL IOCTL command of UBI character
+ * device. A &struct ubi_mkvol_req object has to be properly filled and a
+ * pointer to it has to be passed to the IOCTL.
+ *
+ * UBI volume deletion
+ * ~~~~~~~~~~~~~~~~~~~
+ *
+ * To delete a volume, the %UBI_IOCRMVOL IOCTL command of the UBI character
+ * device should be used. A pointer to the 32-bit volume ID hast to be passed
+ * to the IOCTL.
+ *
+ * UBI volume re-size
+ * ~~~~~~~~~~~~~~~~~~
+ *
+ * To re-size a volume, the %UBI_IOCRSVOL IOCTL command of the UBI character
+ * device should be used. A &struct ubi_rsvol_req object has to be properly
+ * filled and a pointer to it has to be passed to the IOCTL.
+ *
+ * UBI volume update
+ * ~~~~~~~~~~~~~~~~~
+ *
+ * Volume update should be done via the %UBI_IOCVOLUP IOCTL command of the
+ * corresponding UBI volume character device. A pointer to a 64-bit update
+ * size should be passed to the IOCTL. After this, UBI expects user to write
+ * this number of bytes to the volume character device. The update is finished
+ * when the claimed number of bytes is passed. So, the volume update sequence
+ * is something like:
+ *
+ * fd = open("/dev/my_volume");
+ * ioctl(fd, UBI_IOCVOLUP, &image_size);
+ * write(fd, buf, image_size);
+ * close(fd);
+ *
+ * Atomic eraseblock change
+ * ~~~~~~~~~~~~~~~~~~~~~~~~
+ *
+ * Atomic eraseblock change operation is done via the %UBI_IOCEBCH IOCTL
+ * command of the corresponding UBI volume character device. A pointer to
+ * &struct ubi_leb_change_req has to be passed to the IOCTL. Then the user is
+ * expected to write the requested amount of bytes. This is similar to the
+ * "volume update" IOCTL.
+ */
+
+/*
+ * When a new UBI volume or UBI device is created, users may either specify the
+ * volume/device number they want to create or to let UBI automatically assign
+ * the number using these constants.
+ */
+#define UBI_VOL_NUM_AUTO (-1)
+#define UBI_DEV_NUM_AUTO (-1)
+
+/* Maximum volume name length */
+#define UBI_MAX_VOLUME_NAME 127
+
+/* IOCTL commands of UBI character devices */
+
+#define UBI_IOC_MAGIC 'o'
+
+/* Create an UBI volume */
+#define UBI_IOCMKVOL _IOW(UBI_IOC_MAGIC, 0, struct ubi_mkvol_req)
+/* Remove an UBI volume */
+#define UBI_IOCRMVOL _IOW(UBI_IOC_MAGIC, 1, int32_t)
+/* Re-size an UBI volume */
+#define UBI_IOCRSVOL _IOW(UBI_IOC_MAGIC, 2, struct ubi_rsvol_req)
+
+/* IOCTL commands of the UBI control character device */
+
+#define UBI_CTRL_IOC_MAGIC 'o'
+
+/* Attach an MTD device */
+#define UBI_IOCATT _IOW(UBI_CTRL_IOC_MAGIC, 64, struct ubi_attach_req)
+/* Detach an MTD device */
+#define UBI_IOCDET _IOW(UBI_CTRL_IOC_MAGIC, 65, int32_t)
+
+/* IOCTL commands of UBI volume character devices */
+
+#define UBI_VOL_IOC_MAGIC 'O'
+
+/* Start UBI volume update */
+#define UBI_IOCVOLUP _IOW(UBI_VOL_IOC_MAGIC, 0, int64_t)
+/* An eraseblock erasure command, used for debugging, disabled by default */
+#define UBI_IOCEBER _IOW(UBI_VOL_IOC_MAGIC, 1, int32_t)
+/* An atomic eraseblock change command */
+#define UBI_IOCEBCH _IOW(UBI_VOL_IOC_MAGIC, 2, int32_t)
+
+/* Maximum MTD device name length supported by UBI */
+#define MAX_UBI_MTD_NAME_LEN 127
+
+/*
+ * UBI data type hint constants.
+ *
+ * UBI_LONGTERM: long-term data
+ * UBI_SHORTTERM: short-term data
+ * UBI_UNKNOWN: data persistence is unknown
+ *
+ * These constants are used when data is written to UBI volumes in order to
+ * help the UBI wear-leveling unit to find more appropriate physical
+ * eraseblocks.
+ */
+enum {
+	UBI_LONGTERM  = 1,
+	UBI_SHORTTERM = 2,
+	UBI_UNKNOWN   = 3,
+};
+
+/*
+ * UBI volume type constants.
+ *
+ * @UBI_DYNAMIC_VOLUME: dynamic volume
+ * @UBI_STATIC_VOLUME:  static volume
+ */
+enum {
+	UBI_DYNAMIC_VOLUME = 3,
+	UBI_STATIC_VOLUME  = 4,
+};
+
+/**
+ * struct ubi_attach_req - attach MTD device request.
+ * @ubi_num: UBI device number to create
+ * @mtd_num: MTD device number to attach
+ * @vid_hdr_offset: VID header offset (use defaults if %0)
+ * @padding: reserved for future, not used, has to be zeroed
+ *
+ * This data structure is used to specify MTD device UBI has to attach and the
+ * parameters it has to use. The number which should be assigned to the new UBI
+ * device is passed in @ubi_num. UBI may automatically assign the number if
+ * @UBI_DEV_NUM_AUTO is passed. In this case, the device number is returned in
+ * @ubi_num.
+ *
+ * Most applications should pass %0 in @vid_hdr_offset to make UBI use default
+ * offset of the VID header within physical eraseblocks. The default offset is
+ * the next min. I/O unit after the EC header. For example, it will be offset
+ * 512 in case of a 512 bytes page NAND flash with no sub-page support. Or
+ * it will be 512 in case of a 2KiB page NAND flash with 4 512-byte sub-pages.
+ *
+ * But in rare cases, if this optimizes things, the VID header may be placed to
+ * a different offset. For example, the boot-loader might do things faster if the
+ * VID header sits at the end of the first 2KiB NAND page with 4 sub-pages. As
+ * the boot-loader would not normally need to read EC headers (unless it needs
+ * UBI in RW mode), it might be faster to calculate ECC. This is weird example,
+ * but it real-life example. So, in this example, @vid_hdr_offer would be
+ * 2KiB-64 bytes = 1984. Note, that this position is not even 512-bytes
+ * aligned, which is OK, as UBI is clever enough to realize this is 4th sub-page
+ * of the first page and add needed padding.
+ */
+struct ubi_attach_req {
+	int32_t ubi_num;
+	int32_t mtd_num;
+	int32_t vid_hdr_offset;
+	uint8_t padding[12];
+};
+
+/**
+ * struct ubi_mkvol_req - volume description data structure used in
+ *                        volume creation requests.
+ * @vol_id: volume number
+ * @alignment: volume alignment
+ * @bytes: volume size in bytes
+ * @vol_type: volume type (%UBI_DYNAMIC_VOLUME or %UBI_STATIC_VOLUME)
+ * @padding1: reserved for future, not used, has to be zeroed
+ * @name_len: volume name length
+ * @padding2: reserved for future, not used, has to be zeroed
+ * @name: volume name
+ *
+ * This structure is used by user-space programs when creating new volumes. The
+ * @used_bytes field is only necessary when creating static volumes.
+ *
+ * The @alignment field specifies the required alignment of the volume logical
+ * eraseblock. This means, that the size of logical eraseblocks will be aligned
+ * to this number, i.e.,
+ *	(UBI device logical eraseblock size) mod (@alignment) = 0.
+ *
+ * To put it differently, the logical eraseblock of this volume may be slightly
+ * shortened in order to make it properly aligned. The alignment has to be
+ * multiple of the flash minimal input/output unit, or %1 to utilize the entire
+ * available space of logical eraseblocks.
+ *
+ * The @alignment field may be useful, for example, when one wants to maintain
+ * a block device on top of an UBI volume. In this case, it is desirable to fit
+ * an integer number of blocks in logical eraseblocks of this UBI volume. With
+ * alignment it is possible to update this volume using plane UBI volume image
+ * BLOBs, without caring about how to properly align them.
+ */
+struct ubi_mkvol_req {
+	int32_t vol_id;
+	int32_t alignment;
+	int64_t bytes;
+	int8_t vol_type;
+	int8_t padding1;
+	int16_t name_len;
+	int8_t padding2[4];
+	char name[UBI_MAX_VOLUME_NAME + 1];
+} __attribute__ ((packed));
+
+/**
+ * struct ubi_rsvol_req - a data structure used in volume re-size requests.
+ * @vol_id: ID of the volume to re-size
+ * @bytes: new size of the volume in bytes
+ *
+ * Re-sizing is possible for both dynamic and static volumes. But while dynamic
+ * volumes may be re-sized arbitrarily, static volumes cannot be made to be
+ * smaller then the number of bytes they bear. To arbitrarily shrink a static
+ * volume, it must be wiped out first (by means of volume update operation with
+ * zero number of bytes).
+ */
+struct ubi_rsvol_req {
+	int64_t bytes;
+	int32_t vol_id;
+} __attribute__ ((packed));
+
+/**
+ * struct ubi_leb_change_req - a data structure used in atomic logical
+ *                             eraseblock change requests.
+ * @lnum: logical eraseblock number to change
+ * @bytes: how many bytes will be written to the logical eraseblock
+ * @dtype: data type (%UBI_LONGTERM, %UBI_SHORTTERM, %UBI_UNKNOWN)
+ * @padding: reserved for future, not used, has to be zeroed
+ */
+struct ubi_leb_change_req {
+	int32_t lnum;
+	int32_t bytes;
+	uint8_t dtype;
+	uint8_t padding[7];
+} __attribute__ ((packed));
+
+#endif /* __UBI_USER_H__ */
-- 
1.7.1



--===============1576775509==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1576775509==--
