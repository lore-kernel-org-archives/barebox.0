Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHog3-0000WC-DY
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 13:37:53 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Sep 2020 15:37:48 +0200
Message-Id: <20200914133748.5988-5-a.fatoum@pengutronix.de>
In-Reply-To: <20200914133748.5988-1-a.fatoum@pengutronix.de>
References: <20200914133748.5988-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 5/5] sandbox: hostfile: support registering images as barebox
 block devices
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

While we can mount file systems on cdevs in barebox, partition table
parsing only works for block devices. Allow for
--image=argument,blkdev to try to mount an image as block device.

This will fail for files that aren't of a multiple of the 512 byte
block size. Host OS block devices are suitable for use as barebox
block devices always, so that's the default unless overridden with
a ,cdev suffix.

The initcall level has been changed to occur after fs initcall level.
This is required, because we can't have automounts without / mounted.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Kconfig                          |   2 +
 arch/sandbox/board/hostfile.c                 | 116 ++++++++++++++----
 .../mach-sandbox/include/mach/hostfile.h      |   1 +
 arch/sandbox/os/common.c                      |  15 ++-
 4 files changed, 108 insertions(+), 26 deletions(-)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index b5213c662b1b..0c1c7bd73a01 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -7,6 +7,8 @@ config SANDBOX
 	select ARCH_HAS_UBSAN_SANITIZE_ALL
 	select HAVE_ARCH_KASAN
 	select HAS_DMA
+	select BLOCK
+	select BLOCK_WRITE
 	default y
 
 config ARCH_TEXT_BASE
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 07287fc0b4a1..63530bd25e1b 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -16,6 +16,8 @@
 
 #include <common.h>
 #include <driver.h>
+#include <block.h>
+#include <disks.h>
 #include <malloc.h>
 #include <mach/linux.h>
 #include <init.h>
@@ -27,14 +29,16 @@
 #include <linux/err.h>
 
 struct hf_priv {
-	struct cdev cdev;
+	union {
+		struct block_device blk;
+		struct cdev cdev;
+	};
 	const char *filename;
 	int fd;
 };
 
-static ssize_t hf_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
+static ssize_t hf_read(struct hf_priv *priv, void *buf, size_t count, loff_t offset, ulong flags)
 {
-	struct hf_priv *priv= cdev->priv;
 	int fd = priv->fd;
 
 	if (linux_lseek(fd, offset) != offset)
@@ -43,9 +47,8 @@ static ssize_t hf_read(struct cdev *cdev, void *buf, size_t count, loff_t offset
 	return linux_read(fd, buf, count);
 }
 
-static ssize_t hf_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags)
+static ssize_t hf_write(struct hf_priv *priv, const void *buf, size_t count, loff_t offset, ulong flags)
 {
-	struct hf_priv *priv = cdev->priv;
 	int fd = priv->fd;
 
 	if (linux_lseek(fd, offset) != offset)
@@ -54,6 +57,40 @@ static ssize_t hf_write(struct cdev *cdev, const void *buf, size_t count, loff_t
 	return linux_write(fd, buf, count);
 }
 
+static ssize_t hf_cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
+{
+	return hf_read(cdev->priv, buf, count, offset, flags);
+}
+
+static ssize_t hf_cdev_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags)
+{
+	return hf_write(cdev->priv, buf, count, offset, flags);
+}
+
+static struct cdev_operations hf_cdev_ops = {
+	.read  = hf_cdev_read,
+	.write = hf_cdev_write,
+};
+
+static int hf_blk_read(struct block_device *blk, void *buf, int block, int num_blocks)
+{
+	ssize_t ret = hf_read(container_of(blk, struct hf_priv, blk), buf,
+			      num_blocks << SECTOR_SHIFT, block << SECTOR_SHIFT, 0);
+	return ret > 0 ? 0 : ret;
+}
+
+static int hf_blk_write(struct block_device *blk, const void *buf, int block, int num_blocks)
+{
+	ssize_t ret = hf_write(container_of(blk, struct hf_priv, blk), buf,
+			       num_blocks << SECTOR_SHIFT, block << SECTOR_SHIFT, 0);
+	return ret > 0 ? 0 : ret;
+}
+
+static struct block_device_ops hf_blk_ops = {
+	.read  = hf_blk_read,
+	.write = hf_blk_write,
+};
+
 static void hf_info(struct device_d *dev)
 {
 	struct hf_priv *priv = dev->priv;
@@ -61,29 +98,28 @@ static void hf_info(struct device_d *dev)
 	printf("file: %s\n", priv->filename);
 }
 
-static struct cdev_operations hf_fops = {
-	.read  = hf_read,
-	.write = hf_write,
-};
-
 static int hf_probe(struct device_d *dev)
 {
+	struct device_node *np = dev->device_node;
 	struct hf_priv *priv = xzalloc(sizeof(*priv));
 	struct resource *res;
+	struct cdev *cdev;
+	bool is_blockdev;
+	resource_size_t size;
 	int err;
 
 	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
 	if (IS_ERR(res))
 		return PTR_ERR(res);
 
-	priv->cdev.size = resource_size(res);
+	size = resource_size(res);
 
-	if (!dev->device_node)
+	if (!np)
 		return -ENODEV;
 
-	of_property_read_u32(dev->device_node, "barebox,fd", &priv->fd);
+	of_property_read_u32(np, "barebox,fd", &priv->fd);
 
-	err = of_property_read_string(dev->device_node, "barebox,filename",
+	err = of_property_read_string(np, "barebox,filename",
 				      &priv->filename);
 	if (err)
 		return err;
@@ -94,20 +130,47 @@ static int hf_probe(struct device_d *dev)
 	if (priv->fd < 0)
 		return priv->fd;
 
-	priv->cdev.name = dev->device_node->name;
-	priv->cdev.dev = dev;
-	priv->cdev.ops = &hf_fops;
-	priv->cdev.priv = priv;
-
 	dev->info = hf_info;
 	dev->priv = priv;
 
-	err = devfs_create(&priv->cdev);
-	if (err)
-		return err;
+	is_blockdev = of_property_read_bool(np, "barebox,blockdev");
+
+	cdev = is_blockdev ? &priv->blk.cdev : &priv->cdev;
+
+	cdev->device_node = np;
 
-	of_parse_partitions(&priv->cdev, dev->device_node);
-	of_partitions_register_fixup(&priv->cdev);
+	if (is_blockdev) {
+		cdev->name = np->name;
+		priv->blk.dev = dev;
+		priv->blk.ops = &hf_blk_ops;
+		priv->blk.blockbits = SECTOR_SHIFT;
+		priv->blk.num_blocks = size / SECTOR_SIZE;
+
+		err = blockdevice_register(&priv->blk);
+		if (err)
+			return err;
+
+		err = parse_partition_table(&priv->blk);
+		if (err)
+			dev_warn(dev, "No partition table found\n");
+
+		dev_info(dev, "registered as block device\n");
+	} else {
+		cdev->name = np->name;
+		cdev->dev = dev;
+		cdev->ops = &hf_cdev_ops;
+		cdev->size = size;
+		cdev->priv = priv;
+
+		err = devfs_create(cdev);
+		if (err)
+			return err;
+
+		dev_info(dev, "registered as character device\n");
+	}
+
+	of_parse_partitions(cdev, np);
+	of_partitions_register_fixup(cdev);
 
 	return 0;
 }
@@ -125,7 +188,7 @@ static struct driver_d hf_drv = {
 	.of_compatible = DRV_OF_COMPAT(hostfile_dt_ids),
 	.probe = hf_probe,
 };
-coredevice_platform_driver(hf_drv);
+device_platform_driver(hf_drv);
 
 static int of_hostfile_fixup(struct device_node *root, void *ctx)
 {
@@ -155,6 +218,9 @@ static int of_hostfile_fixup(struct device_node *root, void *ctx)
 
 	ret = of_property_write_string(node, "barebox,filename", hf->filename);
 
+	if (hf->is_blockdev)
+		ret = of_property_write_bool(node, "barebox,blockdev", true);
+
 	return ret;
 }
 
diff --git a/arch/sandbox/mach-sandbox/include/mach/hostfile.h b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
index e2f44c4f7b0c..c3f9af97c451 100644
--- a/arch/sandbox/mach-sandbox/include/mach/hostfile.h
+++ b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
@@ -7,6 +7,7 @@ struct hf_info {
 	unsigned long long size;
 	const char *devname;
 	const char *filename;
+	unsigned int is_blockdev:1;
 };
 
 int barebox_register_filedev(struct hf_info *hf);
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 63839a1ccc68..778ac3d6e60f 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -252,7 +252,7 @@ static int add_image(char *str, char *devname_template, int *devname_number)
 	struct hf_info *hf = malloc(sizeof(struct hf_info));
 	char *filename, *devname;
 	char tmp[16];
-	int readonly = 0;
+	int readonly = 0, cdev = 0, blkdev = 0;
 	struct stat s;
 	char *opt;
 	int fd, ret;
@@ -264,6 +264,10 @@ static int add_image(char *str, char *devname_template, int *devname_number)
 	while ((opt = strsep_unescaped(&str, ","))) {
 		if (!strcmp(opt, "ro"))
 			readonly = 1;
+		if (!strcmp(opt, "cdev"))
+			cdev = 1;
+		if (!strcmp(opt, "blkdev"))
+			blkdev = 1;
 	}
 
 	/* parses: "devname=filename" */
@@ -282,6 +286,7 @@ static int add_image(char *str, char *devname_template, int *devname_number)
 	fd = open(filename, (readonly ? O_RDONLY : O_RDWR) | O_CLOEXEC);
 	hf->fd = fd;
 	hf->filename = filename;
+	hf->is_blockdev = blkdev;
 
 	if (fd < 0) {
 		perror("open");
@@ -301,6 +306,8 @@ static int add_image(char *str, char *devname_template, int *devname_number)
 			perror("ioctl");
 			goto err_out;
 		}
+		if (!cdev)
+			hf->is_blockdev = 1;
 	}
 	if (hf->size <= SIZE_MAX)
 		hf->base = (unsigned long)mmap(NULL, hf->size,
@@ -312,6 +319,12 @@ static int add_image(char *str, char *devname_template, int *devname_number)
 	if (hf->base == (unsigned long)MAP_FAILED)
 		printf("warning: mmapping %s failed: %s\n", filename, strerror(errno));
 
+	if (blkdev && hf->size % 512 != 0) {
+		printf("warning: registering %s as block device failed: invalid block size\n",
+		       filename);
+		return -EINVAL;
+	}
+
 	ret = barebox_register_filedev(hf);
 	if (ret)
 		goto err_out;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
