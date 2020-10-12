Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRrHw-0005R8-9O
 for barebox@lists.infradead.org; Mon, 12 Oct 2020 06:26:32 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Oct 2020 08:26:10 +0200
Message-Id: <20201012062619.20400-3-a.fatoum@pengutronix.de>
In-Reply-To: <20201012062619.20400-1-a.fatoum@pengutronix.de>
References: <20201012062619.20400-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 03/12] sandbox: hostfile: unify --image and direct device
 tree probe
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

801b7cff0210 ("sandbox: hostfile: allow probing from device tree") added
initial support for probing hostfiles out of a non-fixed up device tree.

This was achieved by having the driver probe call linux_open if the device
tree node doesn't contain a valid barebox,fd property. A mmap did not
happen in that case and as such the node couldn't be used as a syscon.

Fix this by unifying the binding for hostfiles added by --image and ones
already in the device tree. Both will result in a device node with just
a barebox,filename property. On pure init level, both kinds of hostfiles
will be iterated through and filenames will be opened and mmaped.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2: no changes
---
 arch/sandbox/board/hostfile.c                 | 73 ++++++++++++++-----
 .../mach-sandbox/include/mach/hostfile.h      |  2 +
 .../sandbox/mach-sandbox/include/mach/linux.h |  3 +
 arch/sandbox/os/common.c                      | 52 +++++++------
 4 files changed, 90 insertions(+), 40 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 63530bd25e1b..8990e20f15b6 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -124,9 +124,6 @@ static int hf_probe(struct device_d *dev)
 	if (err)
 		return err;
 
-	if (!priv->fd)
-		priv->fd = linux_open(priv->filename, true);
-
 	if (priv->fd < 0)
 		return priv->fd;
 
@@ -194,37 +191,79 @@ static int of_hostfile_fixup(struct device_node *root, void *ctx)
 {
 	struct hf_info *hf = ctx;
 	struct device_node *node;
-	uint32_t reg[] = {
-		hf->base >> 32,
-		hf->base,
-		hf->size >> 32,
-		hf->size
-	};
 	int ret;
 
 	node = of_new_node(root, hf->devname);
 
-	ret = of_property_write_string(node, "compatible", hostfile_dt_ids->compatible);
+	ret = of_property_write_string(node, "barebox,filename", hf->filename);
 	if (ret)
 		return ret;
 
-	ret = of_property_write_u32_array(node, "reg", reg, ARRAY_SIZE(reg));
+	ret = of_property_write_string(node, "compatible", hostfile_dt_ids->compatible);
 	if (ret)
 		return ret;
 
-	ret = of_property_write_u32(node, "barebox,fd", hf->fd);
+	ret = of_property_write_bool(node, "barebox,blockdev", hf->is_blockdev);
 	if (ret)
 		return ret;
 
-	ret = of_property_write_string(node, "barebox,filename", hf->filename);
-
-	if (hf->is_blockdev)
-		ret = of_property_write_bool(node, "barebox,blockdev", true);
+	ret = of_property_write_bool(node, "barebox,cdev", hf->is_cdev);
+	if (ret)
+		return ret;
 
-	return ret;
+	return of_property_write_bool(node, "barebox,read-only", hf->is_readonly);
 }
 
 int barebox_register_filedev(struct hf_info *hf)
 {
 	return of_register_fixup(of_hostfile_fixup, hf);
 }
+
+static int of_hostfile_map_fixup(struct device_node *root, void *ctx)
+{
+	struct device_node *node;
+	int ret;
+
+	for_each_compatible_node_from(node, root, NULL, hostfile_dt_ids->compatible) {
+		struct hf_info hf = {};
+		uint64_t reg[2];
+
+		hf.devname = node->name;
+
+		ret = of_property_read_string(node, "barebox,filename", &hf.filename);
+		if (ret)
+			goto out;
+
+		hf.is_blockdev = of_property_read_bool(node, "barebox,blockdev");
+		hf.is_cdev = of_property_read_bool(node, "barebox,cdev");
+		hf.is_readonly = of_property_read_bool(node, "barebox,read-only");
+
+		ret = linux_open_hostfile(&hf);
+		if (ret)
+			goto out;
+
+		reg[0] = hf.base;
+		reg[1] = hf.size;
+
+		ret = of_property_write_u64_array(node, "reg", reg, ARRAY_SIZE(reg));
+		if (ret)
+			goto out;
+
+		ret = of_property_write_bool(node, "barebox,blockdev", hf.is_blockdev);
+		if (ret)
+			goto out;
+
+		ret = of_property_write_u32(node, "barebox,fd", hf.fd);
+out:
+		if (ret)
+			pr_err("error fixing up %s: %pe\n", hf.devname, ERR_PTR(ret));
+	}
+
+	return 0;
+}
+
+static int barebox_fixup_filedevs(void)
+{
+	return of_register_fixup(of_hostfile_map_fixup, NULL);
+}
+pure_initcall(barebox_fixup_filedevs);
diff --git a/arch/sandbox/mach-sandbox/include/mach/hostfile.h b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
index c3f9af97c451..3ef34bcc1c22 100644
--- a/arch/sandbox/mach-sandbox/include/mach/hostfile.h
+++ b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
@@ -8,6 +8,8 @@ struct hf_info {
 	const char *devname;
 	const char *filename;
 	unsigned int is_blockdev:1;
+	unsigned int is_cdev:1;
+	unsigned int is_readonly:1;
 };
 
 int barebox_register_filedev(struct hf_info *hf);
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index 1ab48e52a00a..7bb022a6de1d 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -1,6 +1,8 @@
 #ifndef __ASM_ARCH_LINUX_H
 #define __ASM_ARCH_LINUX_H
 
+struct hf_info;
+
 struct device_d;
 
 int sandbox_add_device(struct device_d *dev);
@@ -11,6 +13,7 @@ int linux_register_device(const char *name, void *start, void *end);
 int tap_alloc(const char *dev);
 uint64_t linux_get_time(void);
 int linux_open(const char *filename, int readwrite);
+int linux_open_hostfile(struct hf_info *hf);
 int linux_read(int fd, void *buf, size_t count);
 int linux_read_nonblock(int fd, void *buf, size_t count);
 ssize_t linux_write(int fd, const void *buf, size_t count);
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 72bb35464f25..6032a8c26b41 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -252,10 +252,8 @@ static int add_image(const char *_str, char *devname_template, int *devname_numb
 	struct hf_info *hf = malloc(sizeof(struct hf_info));
 	char *str, *filename, *devname;
 	char tmp[16];
-	int readonly = 0, cdev = 0, blkdev = 0;
-	struct stat s;
 	char *opt;
-	int fd, ret;
+	int ret;
 
 	if (!hf)
 		return -1;
@@ -265,11 +263,11 @@ static int add_image(const char *_str, char *devname_template, int *devname_numb
 	filename = strsep_unescaped(&str, ",");
 	while ((opt = strsep_unescaped(&str, ","))) {
 		if (!strcmp(opt, "ro"))
-			readonly = 1;
+			hf->is_readonly = 1;
 		if (!strcmp(opt, "cdev"))
-			cdev = 1;
+			hf->is_cdev = 1;
 		if (!strcmp(opt, "blkdev"))
-			blkdev = 1;
+			hf->is_blockdev = 1;
 	}
 
 	/* parses: "devname=filename" */
@@ -282,13 +280,25 @@ static int add_image(const char *_str, char *devname_template, int *devname_numb
 		devname = tmp;
 	}
 
-	printf("add %s backed by file %s%s\n", devname,
-	       filename, readonly ? "(ro)" : "");
-
-	fd = open(filename, (readonly ? O_RDONLY : O_RDWR) | O_CLOEXEC);
-	hf->fd = fd;
 	hf->filename = filename;
-	hf->is_blockdev = blkdev;
+	hf->devname = strdup(devname);
+
+	ret = barebox_register_filedev(hf);
+	if (ret)
+		free(hf);
+
+	return ret;
+}
+
+int linux_open_hostfile(struct hf_info *hf)
+{
+	struct stat s;
+	int fd;
+
+	printf("add %s backed by file %s%s\n", hf->devname,
+	       hf->filename, hf->is_readonly ? "(ro)" : "");
+
+	fd = hf->fd = open(hf->filename, (hf->is_readonly ? O_RDONLY : O_RDWR) | O_CLOEXEC);
 	hf->base = (unsigned long)MAP_FAILED;
 
 	if (fd < 0) {
@@ -302,42 +312,38 @@ static int add_image(const char *_str, char *devname_template, int *devname_numb
 	}
 
 	hf->size = s.st_size;
-	hf->devname = strdup(devname);
 
 	if (S_ISBLK(s.st_mode)) {
 		if (ioctl(fd, BLKGETSIZE64, &hf->size) == -1) {
 			perror("ioctl");
 			goto err_out;
 		}
-		if (!cdev)
+		if (!hf->is_cdev)
 			hf->is_blockdev = 1;
 	}
 	if (hf->size <= SIZE_MAX) {
 		hf->base = (unsigned long)mmap(NULL, hf->size,
-				PROT_READ | (readonly ? 0 : PROT_WRITE),
+				PROT_READ | (hf->is_readonly ? 0 : PROT_WRITE),
 				MAP_SHARED, fd, 0);
 
 		if (hf->base == (unsigned long)MAP_FAILED)
-			printf("warning: mmapping %s failed: %s\n", filename, strerror(errno));
+			printf("warning: mmapping %s failed: %s\n",
+			       hf->filename, strerror(errno));
 	} else {
-		printf("warning: %s: contiguous map failed\n", filename);
+		printf("warning: %s: contiguous map failed\n", hf->filename);
 	}
 
-	if (blkdev && hf->size % 512 != 0) {
+	if (hf->is_blockdev && hf->size % 512 != 0) {
 		printf("warning: registering %s as block device failed: invalid block size\n",
-		       filename);
+		       hf->filename);
 		return -EINVAL;
 	}
 
-	ret = barebox_register_filedev(hf);
-	if (ret)
-		goto err_out;
 	return 0;
 
 err_out:
 	if (fd > 0)
 		close(fd);
-	free(hf);
 	return -1;
 }
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
