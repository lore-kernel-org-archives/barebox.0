Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aMWDl-0003ux-4L
 for barebox@lists.infradead.org; Fri, 22 Jan 2016 07:33:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jan 2016 08:32:22 +0100
Message-Id: <1453447952-30818-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/14] bootm: use names instead of numbers for image parts
To: Barebox List <barebox@lists.infradead.org>

The uImage format uses numbers for to identify the different
parts of a image, but the FIT image format uses names. To better
integrate the FIT image format into bootm always use names and
convert them to numbers when necessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c | 43 +++++++++++++++++++++++++++----------------
 include/boot.h |  6 +++---
 2 files changed, 30 insertions(+), 19 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index a38d7e0..f8d9330 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -68,8 +68,12 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 		return -EINVAL;
 
 	if (data->os) {
+		int num;
+
+		num = simple_strtoul(data->os_part, NULL, 0);
+
 		data->os_res = uimage_load_to_sdram(data->os,
-			data->os_num, load_address);
+			num, load_address);
 		if (!data->os_res)
 			return -ENOMEM;
 
@@ -106,8 +110,12 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 		return 0;
 
 	if (data->initrd) {
+		int num;
+
+		num = simple_strtoul(data->initrd_part, NULL, 0);
+
 		data->initrd_res = uimage_load_to_sdram(data->initrd,
-			data->initrd_num, load_address);
+			num, load_address);
 		if (!data->initrd_res)
 			return -ENOMEM;
 
@@ -191,7 +199,8 @@ int bootm_get_os_size(struct image_data *data)
 	int ret;
 
 	if (data->os)
-		return uimage_get_size(data->os, data->os_num);
+		return uimage_get_size(data->os,
+				       simple_strtoul(data->os_part, NULL, 0));
 
 	if (data->os_file) {
 		struct stat s;
@@ -268,7 +277,7 @@ static int bootm_open_oftree_uimage(struct image_data *data)
 	struct fdt_header *fdt;
 	enum filetype ft;
 	const char *oftree = data->oftree_file;
-	int num = data->oftree_num;
+	int num = simple_strtoul(data->oftree_part, NULL, 0);
 	struct uimage_handle *of_handle;
 	int release = 0;
 	size_t size;
@@ -358,7 +367,7 @@ static void bootm_print_info(struct image_data *data)
 				data->initrd_file);
 		if (initrd_type == filetype_uimage &&
 				data->initrd->header.ih_type == IH_TYPE_MULTI)
-			printf(", multifile image %d", data->initrd_num);
+			printf(", multifile image %s", data->initrd_part);
 		printf("\n");
 		if (data->initrd_res)
 			printf("initrd is at " PRINTF_CONVERSION_RESOURCE "-" PRINTF_CONVERSION_RESOURCE "\n",
@@ -369,25 +378,27 @@ static void bootm_print_info(struct image_data *data)
 	}
 }
 
-static char *bootm_image_name_and_no(const char *name, int *no)
+static int bootm_image_name_and_part(const char *name, char **filename, char **part)
 {
 	char *at, *ret;
 
 	if (!name || !*name)
-		return NULL;
-
-	*no = 0;
+		return -EINVAL;
 
 	ret = xstrdup(name);
+
+	*filename = ret;
+	*part = NULL;
+
 	at = strchr(ret, '@');
 	if (!at)
-		return ret;
+		return 0;
 
 	*at++ = 0;
 
-	*no = simple_strtoul(at, NULL, 10);
+	*part = at;
 
-	return ret;
+	return 0;
 }
 
 /*
@@ -408,9 +419,9 @@ int bootm_boot(struct bootm_data *bootm_data)
 
 	data = xzalloc(sizeof(*data));
 
-	data->os_file = bootm_image_name_and_no(bootm_data->os_file, &data->os_num);
-	data->oftree_file = bootm_image_name_and_no(bootm_data->oftree_file, &data->oftree_num);
-	data->initrd_file = bootm_image_name_and_no(bootm_data->initrd_file, &data->initrd_num);
+	bootm_image_name_and_part(bootm_data->os_file, &data->os_file, &data->os_part);
+	bootm_image_name_and_part(bootm_data->oftree_file, &data->oftree_part, &data->os_part);
+	bootm_image_name_and_part(bootm_data->initrd_file, &data->initrd_part, &data->os_part);
 	data->verbose = bootm_data->verbose;
 	data->verify = bootm_data->verify;
 	data->force = bootm_data->force;
@@ -479,7 +490,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 			data->os_file);
 	if (os_type == filetype_uimage &&
 			data->os->header.ih_type == IH_TYPE_MULTI)
-		printf(", multifile image %d", data->os_num);
+		printf(", multifile image %s", data->os_part);
 	printf("\n");
 
 	if (IS_ENABLED(CONFIG_OFTREE)) {
diff --git a/include/boot.h b/include/boot.h
index b172c05..9ddb18b 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -28,7 +28,7 @@ struct image_data {
 
 	/* if os is an uImage this will be provided */
 	struct uimage_handle *os;
-	int os_num;
+	char *os_part;
 
 	/* otherwise only the filename will be provided */
 	char *os_file;
@@ -49,7 +49,7 @@ struct image_data {
 
 	/* if initrd is an uImage this will be provided */
 	struct uimage_handle *initrd;
-	int initrd_num;
+	char *initrd_part;
 
 	/* otherwise only the filename will be provided */
 	char *initrd_file;
@@ -57,7 +57,7 @@ struct image_data {
 	unsigned long initrd_address;
 
 	char *oftree_file;
-	int oftree_num;
+	char *oftree_part;
 
 	struct device_node *of_root_node;
 	struct fdt_header *oftree;
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
