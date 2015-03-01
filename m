Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YS33R-0003AK-9X
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 12:33:06 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Sun,  1 Mar 2015 13:32:21 +0100
Message-Id: <1425213143-4529-16-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1425213143-4529-1-git-send-email-mkl@pengutronix.de>
References: <1425213143-4529-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 15/17] sandbox: hostfile: add support for OF
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/sandbox/board/hostfile.c                     | 59 +++++++++++++++++++++--
 arch/sandbox/mach-sandbox/include/mach/hostfile.h |  1 +
 arch/sandbox/os/common.c                          | 31 +++++++++---
 3 files changed, 82 insertions(+), 9 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index d9ca1a423acf..7576b22ca01f 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -26,6 +26,8 @@
 #include <mach/hostfile.h>
 #include <xfuncs.h>
 
+#include <linux/err.h>
+
 struct hf_priv {
 	struct cdev cdev;
 	int fd;
@@ -57,7 +59,8 @@ static void hf_info(struct device_d *dev)
 {
 	struct hf_platform_data *hf = dev->platform_data;
 
-	printf("file: %s\n", hf->filename);
+	if (hf)
+		printf("file: %s\n", hf->filename);
 }
 
 static struct file_operations hf_fops = {
@@ -71,14 +74,31 @@ static int hf_probe(struct device_d *dev)
 	struct hf_platform_data *hf = dev->platform_data;
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
+	if (dev->device_node) {
+		const char *alias;
+		err = of_property_read_u32(dev->device_node, "fd", &priv->fd);
+		if (err)
+			return err;
+
+		alias = of_alias_get(dev->device_node);
+		if (!alias)
+			alias = dev->device_node->name;
+
+		priv->cdev.name = xstrdup(alias);
+	} else if (hf) {
+		priv->fd = hf->fd;
+		priv->cdev.name = hf->devname;
+	} else {
+		return -ENODEV;
+	}
 	priv->cdev.dev = dev;
 	priv->cdev.ops = &hf_fops;
 	priv->cdev.priv = priv;
@@ -92,8 +112,17 @@ static int hf_probe(struct device_d *dev)
 	return 0;
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
@@ -118,3 +147,27 @@ int barebox_register_filedev(struct hf_platform_data *hf)
 
 	return sandbox_add_device(dev);
 }
+
+static int of_hostfile_fixup(struct device_node *node, void *ctx)
+{
+	struct hf_platform_data *hf = ctx;
+	uint32_t reg[] = {
+		hf->base >> 32,
+		hf->base,
+		hf->size
+	};
+
+	node = of_find_node_by_alias(NULL, hf->devname);
+	if (!node)
+		return -ENODEV;
+
+	of_property_write_u32(node, "fd", hf->fd);
+	of_property_write_u32_array(node, "reg", reg, ARRAY_SIZE(reg));
+
+	return 0;
+}
+
+int barebox_register_filedev_dt(struct hf_platform_data *hf)
+{
+	return of_register_fixup(of_hostfile_fixup, hf);
+}
diff --git a/arch/sandbox/mach-sandbox/include/mach/hostfile.h b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
index 747063182cf3..ef985bcbd790 100644
--- a/arch/sandbox/mach-sandbox/include/mach/hostfile.h
+++ b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
@@ -10,6 +10,7 @@ struct hf_platform_data {
 };
 
 int barebox_register_filedev(struct hf_platform_data *hf);
+int barebox_register_filedev_dt(struct hf_platform_data *hf);
 
 #endif /* __ASM_ARCH_HOSTFILE_H */
 
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index e2023165d542..c4155714ba28 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -25,6 +25,7 @@
 #include <stdio.h>
 #include <stdlib.h>
 #include <stdint.h>
+#include <stdbool.h>
 #include <termios.h>
 #include <unistd.h>
 #include <fcntl.h>
@@ -34,6 +35,7 @@
 #include <sys/stat.h>
 #include <string.h>
 #include <libgen.h>
+#include <limits.h>
 #include <sys/mman.h>
 #include <errno.h>
 #include <signal.h>
@@ -206,7 +208,7 @@ int linux_execve(const char * filename, char *const argv[], char *const envp[])
 extern void start_barebox(void);
 extern void mem_malloc_init(void *start, void *end);
 
-static int add_image(char *str, char *devname)
+static int add_image(char *str, char *devname, bool dt)
 {
 	char *filename;
 	int readonly = 0, map = 1;
@@ -253,7 +255,11 @@ static int add_image(char *str, char *devname)
 			printf("warning: mmapping %s failed\n", filename);
 	}
 
-	ret = barebox_register_filedev(hf);
+	if (dt)
+		ret = barebox_register_filedev_dt(hf);
+	else
+		ret = barebox_register_filedev(hf);
+
 	if (ret)
 		goto err_out;
 	return 0;
@@ -303,11 +309,16 @@ static int add_dtb(const char *file)
 
 static void print_usage(const char*);
 
+#define OPT_DTIMAGE	(UCHAR_MAX + 1)
+#define OPT_DTENV	(UCHAR_MAX + 2)
+
 static struct option long_options[] = {
 	{"help",   0, 0, 'h'},
 	{"malloc", 1, 0, 'm'},
 	{"image",  1, 0, 'i'},
 	{"env",    1, 0, 'e'},
+	{"dtimage",1, 0, OPT_DTIMAGE},
+	{"dtenv",  1, 0, OPT_DTENV},
 	{"dtb",    1, 0, 'd'},
 	{"stdout", 1, 0, 'O'},
 	{"stdin",  1, 0, 'I'},
@@ -345,6 +356,10 @@ int main(int argc, char *argv[])
 			break;
 		case 'e':
 			break;
+		case OPT_DTIMAGE:
+			break;
+		case OPT_DTENV:
+			break;
 		case 'd':
 			ret = add_dtb(optarg);
 			if (ret) {
@@ -405,15 +420,17 @@ int main(int argc, char *argv[])
 
 		switch (opt) {
 		case 'i':
-			sprintf(str, "fd%d", fdno);
-			ret = add_image(optarg, str);
+		case OPT_DTIMAGE:
+			snprintf(str, sizeof(str),"fd%d", fdno);
+			ret = add_image(optarg, str, opt == OPT_DTIMAGE);
 			if (ret)
 				exit(1);
 			fdno++;
 			break;
 		case 'e':
-			sprintf(str, "env%d", envno);
-			ret = add_image(optarg, str);
+		case OPT_DTENV:
+			snprintf(str, sizeof(str), "env%d", envno);
+			ret = add_image(optarg, str, opt == OPT_DTENV);
 			if (ret)
 				exit(1);
 			envno++;
@@ -447,11 +464,13 @@ static void print_usage(const char *prgname)
 "  -i, --image=<file>   Map an image file to barebox. This option can be given\n"
 "                       multiple times. The files will show up as\n"
 "                       /dev/fd0 ... /dev/fdx under barebox.\n"
+"  --dtimage=<file>     Same as '--image', but add file via device tree\n"
 "  -e, --env=<file>     Map a file with an environment to barebox. With this \n"
 "                       option, files are mapped as /dev/env0 ... /dev/envx\n"
 "                       and thus are used as the default environment.\n"
 "                       An empty file generated with dd will do to get started\n"
 "                       with an empty environment.\n"
+"  --dtenv=<file>       Same as '--env', but add file via device tree\n"
 "  -d, --dtb=<file>     Map a device tree binary blob (dtb) into barebox.\n"
 "  -O, --stdout=<file>  Register a file as a console capable of doing stdout.\n"
 "                       <file> can be a regular file or a FIFO.\n"
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
