Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aMWDM-0003q4-4G
 for barebox@lists.infradead.org; Fri, 22 Jan 2016 07:33:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jan 2016 08:32:26 +0100
Message-Id: <1453447952-30818-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1453447952-30818-1-git-send-email-s.hauer@pengutronix.de>
References: <1453447952-30818-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/14] bootm: move oftree code together
To: Barebox List <barebox@lists.infradead.org>

The device tree code is distributed in several places in the bootm code.
Move it all together in bootm_load_devicetree().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c | 193 +++++++++++++++++++++++++--------------------------------
 1 file changed, 86 insertions(+), 107 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 06f1f8a..e399a6a 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -199,6 +199,47 @@ done:
 	return 0;
 }
 
+static int bootm_open_oftree_uimage(struct image_data *data, size_t *size,
+				    struct fdt_header **fdt)
+{
+	enum filetype ft;
+	const char *oftree = data->oftree_file;
+	int num = simple_strtoul(data->oftree_part, NULL, 0);
+	struct uimage_handle *of_handle;
+	int release = 0;
+
+	printf("Loading devicetree from '%s'@%d\n", oftree, num);
+
+	if (!IS_ENABLED(CONFIG_CMD_BOOTM_OFTREE_UIMAGE))
+		return -EINVAL;
+
+	if (!strcmp(data->os_file, oftree)) {
+		of_handle = data->os;
+	} else if (!strcmp(data->initrd_file, oftree)) {
+		of_handle = data->initrd;
+	} else {
+		of_handle = uimage_open(oftree);
+		if (!of_handle)
+			return -ENODEV;
+		uimage_print_contents(of_handle);
+		release = 1;
+	}
+
+	*fdt = uimage_load_to_buf(of_handle, num, size);
+
+	if (release)
+		uimage_close(of_handle);
+
+	ft = file_detect_type(*fdt, *size);
+	if (ft != filetype_oftree) {
+		printf("%s is not an oftree but %s\n",
+			data->oftree_file, file_type_to_string(ft));
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 /*
  * bootm_load_devicetree() - load devicetree
  *
@@ -212,8 +253,10 @@ done:
  */
 int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
 {
+	enum filetype type;
 	int fdt_size;
 	struct fdt_header *oftree;
+	int ret;
 
 	if (data->oftree)
 		return 0;
@@ -221,8 +264,49 @@ int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
 	if (!IS_ENABLED(CONFIG_OFTREE))
 		return 0;
 
-	if (!data->of_root_node)
-		return 0;
+	if (data->oftree_file) {
+		size_t size;
+
+		type = file_name_detect_type(data->oftree_file);
+
+		if ((int)type < 0) {
+			printf("could not open %s: %s\n", data->oftree_file,
+					strerror(-type));
+			return (int)type;
+		}
+
+		switch (type) {
+		case filetype_uimage:
+			ret = bootm_open_oftree_uimage(data, &size, &oftree);
+			break;
+		case filetype_oftree:
+			ret = read_file_2(data->oftree_file, &size, (void *)&oftree,
+					  FILESIZE_MAX);
+			break;
+		default:
+			return -EINVAL;
+		}
+
+		if (ret)
+			return ret;
+
+		data->of_root_node = of_unflatten_dtb(oftree);
+
+		free(oftree);
+
+		if (!data->of_root_node) {
+			pr_err("unable to unflatten devicetree\n");
+			return -EINVAL;
+		}
+
+	} else {
+		data->of_root_node = of_get_root_node();
+		if (!data->of_root_node)
+			return 0;
+
+		if (bootm_verbose(data) > 1 && data->of_root_node)
+			printf("using internal devicetree\n");
+	}
 
 	if (data->initrd_res) {
 		of_add_initrd(data->of_root_node, data->initrd_res->start,
@@ -311,84 +395,6 @@ static int bootm_open_os_uimage(struct image_data *data)
 	return 0;
 }
 
-static int bootm_open_oftree_uimage(struct image_data *data)
-{
-	struct fdt_header *fdt;
-	enum filetype ft;
-	const char *oftree = data->oftree_file;
-	int num = simple_strtoul(data->oftree_part, NULL, 0);
-	struct uimage_handle *of_handle;
-	int release = 0;
-	size_t size;
-
-	printf("Loading devicetree from '%s'@%d\n", oftree, num);
-
-	if (IS_ENABLED(CONFIG_CMD_BOOTM_OFTREE_UIMAGE)) {
-		if (!strcmp(data->os_file, oftree)) {
-			of_handle = data->os;
-		} else if (!strcmp(data->initrd_file, oftree)) {
-			of_handle = data->initrd;
-		} else {
-			of_handle = uimage_open(oftree);
-			if (!of_handle)
-				return -ENODEV;
-			uimage_print_contents(of_handle);
-			release = 1;
-		}
-
-		fdt = uimage_load_to_buf(of_handle, num, &size);
-
-		if (release)
-			uimage_close(of_handle);
-
-		ft = file_detect_type(fdt, size);
-		if (ft != filetype_oftree) {
-			printf("%s is not an oftree but %s\n",
-				data->oftree_file, file_type_to_string(ft));
-			return -EINVAL;
-		}
-
-		data->of_root_node = of_unflatten_dtb(fdt);
-		if (!data->of_root_node) {
-			pr_err("unable to unflatten devicetree\n");
-			free(fdt);
-			return -EINVAL;
-		}
-
-		free(fdt);
-
-		return 0;
-	} else {
-		return -EINVAL;
-	}
-}
-
-static int bootm_open_oftree(struct image_data *data)
-{
-	struct fdt_header *fdt;
-	const char *oftree = data->oftree_file;
-	size_t size;
-
-	printf("Loading devicetree from '%s'\n", oftree);
-
-	fdt = read_file(oftree, &size);
-	if (!fdt) {
-		perror("open");
-		return -ENODEV;
-	}
-
-	data->of_root_node = of_unflatten_dtb(fdt);
-	if (!data->of_root_node) {
-		pr_err("unable to unflatten devicetree\n");
-		free(fdt);
-		return -EINVAL;
-	}
-
-	free(fdt);
-
-	return 0;
-}
-
 static void bootm_print_info(struct image_data *data)
 {
 	if (data->os_res)
@@ -431,7 +437,6 @@ int bootm_boot(struct bootm_data *bootm_data)
 	struct image_handler *handler;
 	int ret;
 	enum filetype os_type;
-	enum filetype oftree_type = filetype_unknown;
 
 	if (!bootm_data->os_file) {
 		printf("no image given\n");
@@ -465,17 +470,6 @@ int bootm_boot(struct bootm_data *bootm_data)
 		goto err_out;
 	}
 
-	if (IS_ENABLED(CONFIG_OFTREE) && data->oftree_file) {
-		oftree_type = file_name_detect_type(data->oftree_file);
-
-		if ((int)oftree_type < 0) {
-			printf("could not open %s: %s\n", data->oftree_file,
-					strerror(-oftree_type));
-			ret = (int) oftree_type;
-			goto err_out;
-		}
-	}
-
 	if (os_type == filetype_uimage) {
 		ret = bootm_open_os_uimage(data);
 		if (ret) {
@@ -492,21 +486,6 @@ int bootm_boot(struct bootm_data *bootm_data)
 		printf(", multifile image %s", data->os_part);
 	printf("\n");
 
-	if (IS_ENABLED(CONFIG_OFTREE)) {
-		if (data->oftree_file) {
-			if (oftree_type == filetype_uimage)
-				ret = bootm_open_oftree_uimage(data);
-			if (oftree_type == filetype_oftree)
-				ret = bootm_open_oftree(data);
-			if (ret)
-				goto err_out;
-		} else {
-			data->of_root_node = of_get_root_node();
-			if (bootm_verbose(data) > 1 && data->of_root_node)
-				printf("using internal devicetree\n");
-		}
-	}
-
 	if (data->os_address == UIMAGE_SOME_ADDRESS)
 		data->os_address = UIMAGE_INVALID_ADDRESS;
 
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
