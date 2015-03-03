Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YSljU-0001qJ-3L
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 12:15:33 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue,  3 Mar 2015 13:14:59 +0100
Message-Id: <1425384899-18809-14-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1425384899-18809-1-git-send-email-mkl@pengutronix.de>
References: <1425384899-18809-1-git-send-email-mkl@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 13/13] sandbox: hostfile: completely switch to OF based
 probing
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/sandbox/board/hostfile.c                     | 98 ++++++++++++++++-------
 arch/sandbox/mach-sandbox/include/mach/hostfile.h | 11 ++-
 arch/sandbox/os/common.c                          |  2 +-
 3 files changed, 77 insertions(+), 34 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 3e6435983b56..c6fd80fd8761 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -27,8 +27,11 @@
 #include <mach/hostfile.h>
 #include <xfuncs.h>
 
+#include <linux/err.h>
+
 struct hf_priv {
 	struct cdev cdev;
+	const char *filename;
 	int fd;
 };
 
@@ -56,9 +59,9 @@ static ssize_t hf_write(struct cdev *cdev, const void *buf, size_t count, loff_t
 
 static void hf_info(struct device_d *dev)
 {
-	struct hf_platform_data *hf = dev->platform_data;
+	struct hf_priv *priv = dev->priv;
 
-	printf("file: %s\n", hf->filename);
+	printf("file: %s\n", priv->filename);
 }
 
 static struct file_operations hf_fops = {
@@ -69,53 +72,94 @@ static struct file_operations hf_fops = {
 
 static int hf_probe(struct device_d *dev)
 {
-	struct hf_platform_data *hf = dev->platform_data;
 	struct hf_priv *priv = xzalloc(sizeof(*priv));
 	struct resource *res;
+	int err;
 
 	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
 	if (IS_ERR(res))
 		return PTR_ERR(res);
 
-	priv->fd = hf->fd;
-	priv->cdev.name = hf->devname;
 	priv->cdev.size = resource_size(res);
+
+	if (!dev->device_node)
+		return -ENODEV;
+
+	err = of_property_read_u32(dev->device_node, "fd", &priv->fd);
+	if (err)
+		return err;
+
+	err = of_property_read_string(dev->device_node, "filename", &priv->filename);
+	if (err)
+		return err;
+
+	priv->cdev.name = dev->device_node->name;
 	priv->cdev.dev = dev;
 	priv->cdev.ops = &hf_fops;
 	priv->cdev.priv = priv;
 
 	dev->info = hf_info;
+	dev->priv = priv;
 
-#ifdef CONFIG_FS_DEVFS
-	devfs_create(&priv->cdev);
-#endif
-
-	return 0;
+	return devfs_create(&priv->cdev);
 }
 
+static __maybe_unused struct of_device_id hostfile_dt_ids[] = {
+	{
+		.compatible = "barebox,hostfile",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d hf_drv = {
 	.name  = "hostfile",
+	.of_compatible = DRV_OF_COMPAT(hostfile_dt_ids),
 	.probe = hf_probe,
 };
 coredevice_platform_driver(hf_drv);
 
-int barebox_register_filedev(struct hf_platform_data *hf)
+static int of_hostfile_fixup(struct device_node *root, void *ctx)
 {
-	struct device_d *dev;
-	struct resource *res;
-
-	dev = xzalloc(sizeof(*dev));
-	strcpy(dev->name, "hostfile");
-	dev->id = DEVICE_ID_DYNAMIC;
-	dev->platform_data = hf;
-
-	res = xzalloc(sizeof(struct resource));
-	res[0].start = hf->base;
-	res[0].end = hf->base + hf->size - 1;
-	res[0].flags = IORESOURCE_MEM;
-
-	dev->resource = res;
-	dev->num_resources = 1;
+	struct hf_info *hf = ctx;
+	struct device_node *node;
+	uint32_t reg[] = {
+		hf->base >> 32,
+		hf->base,
+		hf->size
+	};
+	int ret;
+
+	node = of_new_node(root, hf->devname);
+
+	ret = of_property_write_u32(node, "fd", hf->fd);
+	if (ret)
+		return ret;
+
+	ret = of_property_write_u32_array(node, "reg", reg, ARRAY_SIZE(reg));
+	if (ret)
+		return ret;
+
+	ret = of_property_write_u32(node, "#address-cells", 2);
+	if (ret)
+		return ret;
+
+	ret = of_property_write_u32(node, "#size-cells", 1);
+	if (ret)
+		return ret;
+
+	ret = of_set_property(node, "compatible", hostfile_dt_ids->compatible,
+			      strlen(hostfile_dt_ids->compatible) + 1, 1);
+	if (ret)
+		return ret;
+
+	ret = of_set_property(node, "filename", hf->filename,
+			      strlen(hf->filename) + 1, 1);
+
+	return ret;
+}
 
-	return sandbox_add_device(dev);
+int barebox_register_filedev(struct hf_info *hf)
+{
+	return of_register_fixup(of_hostfile_fixup, hf);
 }
diff --git a/arch/sandbox/mach-sandbox/include/mach/hostfile.h b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
index 747063182cf3..627fe28e765b 100644
--- a/arch/sandbox/mach-sandbox/include/mach/hostfile.h
+++ b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
@@ -1,15 +1,14 @@
 #ifndef __ASM_ARCH_HOSTFILE_H
 #define __ASM_ARCH_HOSTFILE_H
 
-struct hf_platform_data {
+struct hf_info {
 	int fd;
-	size_t size;
 	unsigned long base;
-	char *filename;
-	char *devname;
+	size_t size;
+	const char *devname;
+	const char *filename;
 };
 
-int barebox_register_filedev(struct hf_platform_data *hf);
+int barebox_register_filedev(struct hf_info *hf);
 
 #endif /* __ASM_ARCH_HOSTFILE_H */
-
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 7aa0f5d3f2e0..d6273918906b 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -208,13 +208,13 @@ extern void mem_malloc_init(void *start, void *end);
 
 static int add_image(char *str, char *devname_template, int *devname_number)
 {
+	struct hf_info *hf = malloc(sizeof(struct hf_info));
 	char *filename, *devname;
 	char tmp[16];
 	int readonly = 0;
 	struct stat s;
 	char *opt;
 	int fd, ret;
-	struct hf_platform_data *hf = malloc(sizeof(struct hf_platform_data));
 
 	if (!hf)
 		return -1;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
