Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVM5P-0000Pk-2c
 for barebox@lists.infradead.org; Mon, 27 May 2019 20:19:13 +0000
Received: by mail-pg1-x542.google.com with SMTP id 33so6631012pgv.9
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 13:19:11 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 13:18:50 -0700
Message-Id: <20190527201853.18853-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190527201853.18853-1-andrew.smirnov@gmail.com>
References: <20190527201853.18853-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/7] misc: Add a driver to expose U-Boot environment variable
 data
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Cory Tusar <cory.tusar@zii.aero>

Add a driver to expose U-Boot environment variable data as a single
mmap-able device. Not very useful on its own, it is a crucial
low-level plumbing needed by filesystem driver introduced in the
following commit.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
---
 drivers/misc/Kconfig    |  12 ++
 drivers/misc/Makefile   |   1 +
 drivers/misc/ubootvar.c | 322 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 335 insertions(+)
 create mode 100644 drivers/misc/ubootvar.c

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
index 000000000..d9def3e1a
--- /dev/null
+++ b/drivers/misc/ubootvar.c
@@ -0,0 +1,322 @@
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
+};
+
+static int ubootvar_flush(struct cdev *cdev)
+{
+	struct device_d *dev = cdev->dev;
+	struct ubootvar_data *ubdata = dev->priv;
+	const char *path = ubdata->path[!ubdata->current];
+	uint32_t crc = 0xffffffff;
+	struct resource *mem;
+	resource_size_t size;
+	const void *data;
+	int fd, ret = 0;
+
+	mem = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	if (IS_ERR(mem)) {
+		dev_err(dev, "Failed to get associated memory resource\n");
+		return PTR_ERR(mem);
+	}
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
+	data = (const void *)mem->start;
+	size = resource_size(mem);
+
+	/*
+	 * Write out and flush all of the new environement data
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
+	 * Now that we've successfuly written new enviroment blob out,
+	 * swtich current partition.
+	 */
+	ubdata->current = !ubdata->current;
+
+close_fd:
+	close(fd);
+	return ret;
+}
+
+static struct cdev_operations ubootvar_ops = {
+	.read = mem_read,
+	.write = mem_write,
+	.memmap = generic_memmap_rw,
+	.flush = ubootvar_flush,
+};
+
+static void ubootenv_info(struct device_d *dev)
+{
+	struct ubootvar_data *ubdata = dev->priv;
+
+	printf("Current environment copy: device-path-%d\n", ubdata->current);
+}
+
+static int ubootenv_probe(struct device_d *dev)
+{
+	struct ubootvar_data *ubdata;
+	unsigned int crc_ok = 0;
+	int ret, i, count = 0;
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
+		ubdata->path[1] = ubdata->path[0];
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
+		ret = -EINVAL;
+		dev_err(dev, "Bad CRC, can't continue further\n");
+		goto out;
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
+				i = flag[1] == 0;
+			} else {
+				/*
+				 * In no-overflow case the partition
+				 * with higher flag value is
+				 * considered current
+				 */
+				i = flag[1] > flag[0];
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
+		i = __ffs(crc_ok);
+		break;
+	};
+
+	ret = device_add_resource(dev, "data", (resource_size_t)data[i],
+				  size[i], IORESOURCE_MEM);
+	if (ret) {
+		dev_err(dev, "Failed to add resource\n");
+		goto out;
+	}
+
+	ubdata->cdev.name = basprintf("ubootvar%d",
+				      cdev_find_free_index("ubootvar"));
+	ubdata->cdev.size = size[i];
+	ubdata->cdev.ops = &ubootvar_ops;
+	ubdata->cdev.dev = dev;
+	ubdata->cdev.filetype = filetype_ubootvar;
+	ubdata->current = i;
+	ubdata->count = count;
+	ubdata->flag = flag[i];
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
+		free(blob[!i]);
+	}
+
+	dev->info = ubootenv_info;
+
+	return 0;
+out:
+	for (i = 0; i < count; i++)
+		free(blob[i]);
+
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
