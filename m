Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY1s4-0002Xo-QN
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 05:20:34 +0000
Received: by mail-pf1-x441.google.com with SMTP id c6so11938762pfa.10
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2019 22:20:28 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Jun 2019 22:20:00 -0700
Message-Id: <20190604052003.3189-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190604052003.3189-1-andrew.smirnov@gmail.com>
References: <20190604052003.3189-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 4/7] misc: Add a driver to expose U-Boot environment
 variable data
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Cory Tusar <cory.tusar@zii.aero>

Add a driver to expose U-Boot environment variable data as a single
mmap-able device, hiding various low-level details such as:

    * Preamble format differences
    * Read/write logic in presence of redundant partition

Not very useful on its own, it is a crucial low-level plumbing needed
by filesystem driver introduced in the following commit.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
---
 .../barebox/barebox,uboot-environment.rst     |  43 +++
 drivers/misc/Kconfig                          |  12 +
 drivers/misc/Makefile                         |   1 +
 drivers/misc/ubootvar.c                       | 360 ++++++++++++++++++
 4 files changed, 416 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/barebox/barebox,uboot-environment.rst
 create mode 100644 drivers/misc/ubootvar.c

diff --git a/Documentation/devicetree/bindings/barebox/barebox,uboot-environment.rst b/Documentation/devicetree/bindings/barebox/barebox,uboot-environment.rst
new file mode 100644
index 000000000..da0ccd2c2
--- /dev/null
+++ b/Documentation/devicetree/bindings/barebox/barebox,uboot-environment.rst
@@ -0,0 +1,43 @@
+U-Boot environment device
+=========================
+
+This driver provides a unified device exposing U-Boot environment
+varaible data, sans the low-level parts. Resulting device is intended
+to be used with corresponding filesystem driver to expose environment
+data as a filesystem.
+
+Required properties:
+
+* ``compatible``: should be ``barebox,uboot-environment``
+* ``device-path``: phandle of the partition the device environment is
+  on (single partiton configuration)
+* ``device-path-0`` and ``device-path-1``: phandle of the partition
+  the environment is on (redundant configuration)
+
+Example:
+
+.. code-block:: none
+
+  environment {
+  	compatible = "barebox,uboot-environment";
+	device-path-0 = &uboot_env_0;
+	device-path-1 = &uboot_env_1;
+  };
+  
+  &usdhc4 {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		uboot_env_0: partition@c0000 {
+			label = "uboot-environment-0";
+			reg = <0xc0000 0x4000>;
+		};
+
+		uboot_env_1: partition@cc800 {
+			label = "uboot-environment-1";
+			reg = <0xcc800 0x4000>;
+		};
+	};
+  };
diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 4c8a769c4..0f736f8bd 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -23,4 +23,16 @@ config STATE_DRV
 config DEV_MEM
         bool "Generic memory I/O device (/dev/mem)"
 
+config UBOOTVAR
+	bool "U-Boot environment storage"
+	help
+	  This driver exposes U-Boot environment variable storage as a
+	  single mmap-able device, hiding various low-level details
+	  such as:
+	      - Preamble format differences
+	      - Read/write logic in presence of redundant partition
+
+	  While it can be used standalone, it is best when coupled
+	  with corresponding filesystem driver.
+
 endmenu
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index d4e616d51..bc1c01ea4 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_JTAG)		+= jtag.o
 obj-$(CONFIG_SRAM)		+= sram.o
 obj-$(CONFIG_STATE_DRV)		+= state.o
 obj-$(CONFIG_DEV_MEM)		+= mem.o
+obj-$(CONFIG_UBOOTVAR)		+= ubootvar.o
diff --git a/drivers/misc/ubootvar.c b/drivers/misc/ubootvar.c
new file mode 100644
index 000000000..27f2515e7
--- /dev/null
+++ b/drivers/misc/ubootvar.c
@@ -0,0 +1,360 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+/*
+ * U-Boot environment vriable blob driver
+ *
+ * Copyright (C) 2019 Zodiac Inflight Innovations
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <malloc.h>
+#include <partition.h>
+#include <envfs.h>
+#include <fs.h>
+#include <libfile.h>
+#include <command.h>
+#include <crc.h>
+
+enum ubootvar_flag_scheme {
+	FLAG_NONE,
+	FLAG_BOOLEAN,
+	FLAG_INCREMENTAL,
+};
+
+struct ubootvar_data {
+	struct cdev cdev;
+	char *path[2];
+	bool current;
+	uint8_t flag;
+	int count;
+	void *data;
+	size_t size;
+};
+
+static int ubootvar_flush(struct cdev *cdev)
+{
+	struct device_d *dev = cdev->dev;
+	struct ubootvar_data *ubdata = dev->priv;
+	const char *path = ubdata->path[!ubdata->current];
+	uint32_t crc = 0xffffffff;
+	resource_size_t size;
+	const void *data;
+	int fd, ret = 0;
+
+	fd = open(path, O_WRONLY);
+	if (fd < 0) {
+		dev_err(dev, "Failed to open %s\n", path);
+		return -errno;
+	}
+	/*
+	 * FIXME: This code needs to do a proper protect/unprotect and
+	 * erase calls to work on MTD devices
+	 */
+
+	/*
+	 * Write a dummy CRC first as a way of invalidating the
+	 * environment in case we fail mid-flushing
+	 */
+	if (write_full(fd, &crc, sizeof(crc)) != sizeof(crc)) {
+		dev_err(dev, "Failed to write dummy CRC\n");
+		ret = -errno;
+		goto close_fd;
+	}
+
+	if (ubdata->count > 1) {
+		/*
+		 * FIXME: This assumes FLAG_INCREMENTAL
+		 */
+		const uint8_t flag = ++ubdata->flag;
+
+		if (write_full(fd, &flag, sizeof(flag)) != sizeof(flag)) {
+			dev_dbg(dev, "Failed to write flag\n");
+			ret = -errno;
+			goto close_fd;
+		}
+	}
+
+	data = (const void *)ubdata->data;
+	size = ubdata->size;
+
+	/*
+	 * Write out and flush all of the new environment data
+	 */
+	if (write_full(fd, data, size) != size) {
+		dev_dbg(dev, "Failed to write data\n");
+		ret = -errno;
+		goto close_fd;
+	}
+
+	if (flush(fd)) {
+		dev_dbg(dev, "Failed to flush written data\n");
+		ret = -errno;
+		goto close_fd;
+	}
+	/*
+	 * Now that all of the environment data is out, we can go back
+	 * to the start of the block and write correct CRC, to finish
+	 * the processs.
+	 */
+	if (lseek(fd, 0, SEEK_SET) != 0) {
+		dev_dbg(dev, "lseek() failed\n");
+		ret = -errno;
+		goto close_fd;
+	}
+
+	crc = crc32(0, data, size);
+	if (write_full(fd, &crc, sizeof(crc)) != sizeof(crc)) {
+		dev_dbg(dev, "Failed to write valid CRC\n");
+		ret = -errno;
+		goto close_fd;
+	}
+	/*
+	 * Now that we've successfully written new environment blob
+	 * out, switch current partition.
+	 */
+	ubdata->current = !ubdata->current;
+
+close_fd:
+	close(fd);
+	return ret;
+}
+
+static ssize_t
+ubootvar_read(struct cdev *cdev, void *buf, size_t count, loff_t offset,
+	      unsigned long flags)
+{
+	struct device_d *dev = cdev->dev;
+	struct ubootvar_data *ubdata = dev->priv;
+
+	WARN_ON(flags & O_RWSIZE_MASK);
+
+	memcpy(buf, ubdata->data + offset, count);
+
+	return count;
+}
+
+static ssize_t
+ubootvar_write(struct cdev *cdev, const void *buf, size_t count,
+	       loff_t offset, unsigned long flags)
+{
+	struct device_d *dev = cdev->dev;
+	struct ubootvar_data *ubdata = dev->priv;
+
+	WARN_ON(flags & O_RWSIZE_MASK);
+
+	memcpy(ubdata->data + offset, buf, count);
+
+	return count;
+}
+
+static int ubootvar_memmap(struct cdev *cdev, void **map, int flags)
+{
+	struct device_d *dev = cdev->dev;
+	struct ubootvar_data *ubdata = dev->priv;
+
+	*map = ubdata->data;
+
+	return 0;
+}
+
+static struct cdev_operations ubootvar_ops = {
+	.read = ubootvar_read,
+	.write = ubootvar_write,
+	.memmap = ubootvar_memmap,
+	.flush = ubootvar_flush,
+};
+
+static void ubootenv_info(struct device_d *dev)
+{
+	struct ubootvar_data *ubdata = dev->priv;
+
+	printf("Current environment copy: %s\n",
+	       ubdata->path[ubdata->current]);
+}
+
+static int ubootenv_probe(struct device_d *dev)
+{
+	struct ubootvar_data *ubdata;
+	unsigned int crc_ok = 0;
+	int ret, i, current, count = 0;
+	uint32_t crc[2];
+	uint8_t flag[2];
+	size_t size[2];
+	void *blob[2] = { NULL, NULL };
+	uint8_t *data[2];
+
+	/*
+	 * FIXME: Flag scheme is determined by the type of underlined
+	 * non-volatible device, so it should probably come from
+	 * Device Tree binding. Currently we just assume incremental
+	 * scheme since that is what is used on SD/eMMC devices.
+	 */
+	enum ubootvar_flag_scheme flag_scheme = FLAG_INCREMENTAL;
+
+	ubdata = xzalloc(sizeof(*ubdata));
+
+	ret = of_find_path(dev->device_node, "device-path-0",
+			   &ubdata->path[0],
+			   OF_FIND_PATH_FLAGS_BB);
+	if (ret)
+		ret = of_find_path(dev->device_node, "device-path",
+				   &ubdata->path[0],
+				   OF_FIND_PATH_FLAGS_BB);
+
+	if (ret) {
+		dev_err(dev, "Failed to find first device\n");
+		goto out;
+	}
+
+	count++;
+
+	if (!of_find_path(dev->device_node, "device-path-1",
+			  &ubdata->path[1],
+			  OF_FIND_PATH_FLAGS_BB)) {
+		count++;
+	} else {
+		/*
+		 * If there's no redundant environment partition we
+		 * configure both paths to point to the same device,
+		 * so that writing logic could stay the same for both
+		 * redundant and non-redundant cases
+		 */
+		ubdata->path[1] = strdup(ubdata->path[0]);
+	}
+
+	for (i = 0; i < count; i++) {
+		data[i] = blob[i] = read_file(ubdata->path[i], &size[i]);
+		if (!blob[i]) {
+			dev_err(dev, "Failed to read U-Boot environment\n");
+			ret = -EIO;
+			goto out;
+		}
+
+		crc[i] = *(uint32_t *)data[i];
+
+		size[i] -= sizeof(uint32_t);
+		data[i] += sizeof(uint32_t);
+
+		if (count > 1) {
+			/*
+			 * When used in primary/redundant
+			 * configuration, environment header has an
+			 * additional "flag" byte
+			 */
+			flag[i] = *data[i];
+			size[i] -= sizeof(uint8_t);
+			data[i] += sizeof(uint8_t);
+		}
+
+		crc_ok |= (crc32(0, data[i], size[i]) == crc[i]) << i;
+	}
+
+	switch (crc_ok) {
+	case 0b00:
+		current = 0;
+		memset(data[0], 0, size[0]);
+		dev_info(dev, "No good partitions found, creating an empty one\n");
+		break;
+	case 0b11:
+		/*
+		 * Both partition are valid, so we need to examine
+		 * flags to determine which one to use as current
+		 */
+		switch (flag_scheme) {
+		case FLAG_INCREMENTAL:
+			if ((flag[0] == 0xff && flag[1] == 0) ||
+			    (flag[1] == 0xff && flag[0] == 0)) {
+				/*
+				 * When flag overflow happens current
+				 * partition is the one whose counter
+				 * reached zero first. That is if
+				 * flag[1] == 0 is true (1), then i
+				 * would be 1 as well
+				 */
+				current = flag[1] == 0;
+			} else {
+				/*
+				 * In no-overflow case the partition
+				 * with higher flag value is
+				 * considered current
+				 */
+				current = flag[1] > flag[0];
+			}
+			break;
+		default:
+			ret = -EINVAL;
+			dev_err(dev, "Unknown flag scheme %u\n", flag_scheme);
+			goto out;
+		}
+		break;
+	default:
+		/*
+		 * Only one partition is valid, so the choice of the
+		 * current one is obvious
+		 */
+		current = __ffs(crc_ok);
+		break;
+	};
+
+	ubdata->data = data[current];
+	ubdata->size = size[current];
+
+	ubdata->cdev.name = basprintf("ubootvar%d",
+				      cdev_find_free_index("ubootvar"));
+	ubdata->cdev.size = size[current];
+	ubdata->cdev.ops = &ubootvar_ops;
+	ubdata->cdev.dev = dev;
+	ubdata->cdev.filetype = filetype_ubootvar;
+	ubdata->current = current;
+	ubdata->count = count;
+	ubdata->flag = flag[current];
+
+	dev->priv = ubdata;
+
+	ret = devfs_create(&ubdata->cdev);
+	if (ret) {
+		dev_err(dev, "Failed to create corresponding cdev\n");
+		goto out;
+	}
+
+	cdev_create_default_automount(&ubdata->cdev);
+
+	if (count > 1) {
+		/*
+		 * We won't be using read data from redundant
+		 * parttion, so we may as well free at this point
+		 */
+		free(blob[!current]);
+	}
+
+	dev->info = ubootenv_info;
+
+	return 0;
+out:
+	for (i = 0; i < count; i++)
+		free(blob[i]);
+
+	free(ubdata->path[0]);
+	free(ubdata->path[1]);
+	free(ubdata);
+
+	return ret;
+}
+
+static struct of_device_id ubootenv_dt_ids[] = {
+	{
+		.compatible = "barebox,uboot-environment",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d ubootenv_driver = {
+	.name		= "uboot-environment",
+	.probe		= ubootenv_probe,
+	.of_compatible	= ubootenv_dt_ids,
+};
+late_platform_driver(ubootenv_driver);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
