Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzOql-00043y-TU
 for barebox@lists.infradead.org; Thu, 19 Nov 2015 13:02:09 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 1D25DA001CD
 for <barebox@lists.infradead.org>; Thu, 19 Nov 2015 14:02:12 +0100 (CET)
From: Jan Remmet <j.remmet@phytec.de>
Date: Thu, 19 Nov 2015 13:58:23 +0100
Message-Id: <1447937904-4637-2-git-send-email-j.remmet@phytec.de>
In-Reply-To: <1447937904-4637-1-git-send-email-j.remmet@phytec.de>
References: <1447937904-4637-1-git-send-email-j.remmet@phytec.de>
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
Subject: [PATCH 1/2] bootm: cleanup bootm_open_oftree
To: barebox@lists.infradead.org

Separate oftree file and uimage oftree handling.
Make fie_type checks in bootm_boot

Signed-off-by: Jan Remmet <j.remmet@phytec.de>
---
 common/bootm.c | 82 ++++++++++++++++++++++++++++++++++++++--------------------
 1 file changed, 54 insertions(+), 28 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 447c9b6..ec1758b 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -245,25 +245,19 @@ static int bootm_open_initrd_uimage(struct image_data *data)
 	return 0;
 }
 
-static int bootm_open_oftree(struct image_data *data, const char *oftree, int num)
+static int bootm_open_oftree_uimage(struct image_data *data)
 {
-	enum filetype ft;
 	struct fdt_header *fdt;
+	enum filetype ft;
+	const char *oftree = data->oftree_file;
+	int num = data->oftree_num;
+	struct uimage_handle *of_handle;
+	int release = 0;
 	size_t size;
 
-	printf("Loading devicetree from '%s'\n", oftree);
-
-	ft = file_name_detect_type(oftree);
-	if ((int)ft < 0) {
-		printf("failed to open %s: %s\n", oftree, strerror(-(int)ft));
-		return ft;
-	}
-
-	if (ft == filetype_uimage) {
-#ifdef CONFIG_CMD_BOOTM_OFTREE_UIMAGE
-		struct uimage_handle *of_handle;
-		int release = 0;
+	printf("Loading devicetree from '%s'@%d\n", oftree, num);
 
+	if (IS_ENABLED(CONFIG_CMD_BOOTM_OFTREE_UIMAGE)) {
 		if (!strcmp(data->os_file, oftree)) {
 			of_handle = data->os;
 		} else if (!strcmp(data->initrd_file, oftree)) {
@@ -280,23 +274,42 @@ static int bootm_open_oftree(struct image_data *data, const char *oftree, int nu
 
 		if (release)
 			uimage_close(of_handle);
-#else
-		return -EINVAL;
-#endif
-	} else {
-		fdt = read_file(oftree, &size);
-		if (!fdt) {
-			perror("open");
-			return -ENODEV;
+
+		ft = file_detect_type(fdt, size);
+		if (ft != filetype_oftree) {
+			printf("%s is not an oftree but %s\n",
+				data->oftree_file, file_type_to_string(ft));
+			return -EINVAL;
 		}
-	}
 
-	ft = file_detect_type(fdt, size);
-	if (ft != filetype_oftree) {
-		printf("%s is not an oftree but %s\n", oftree,
-				file_type_to_string(ft));
+		data->of_root_node = of_unflatten_dtb(fdt);
+		if (!data->of_root_node) {
+			pr_err("unable to unflatten devicetree\n");
+			free(fdt);
+			return -EINVAL;
+		}
+
+		free(fdt);
+
+		return 0;
+	} else {
 		return -EINVAL;
 	}
+}
+
+static int bootm_open_oftree(struct image_data *data)
+{
+	struct fdt_header *fdt;
+	const char *oftree = data->oftree_file;
+	size_t size;
+
+	printf("Loading devicetree from '%s'\n", oftree);
+
+	fdt = read_file(oftree, &size);
+	if (!fdt) {
+		perror("open");
+		return -ENODEV;
+	}
 
 	data->of_root_node = of_unflatten_dtb(fdt);
 	if (!data->of_root_node) {
@@ -368,6 +381,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 	struct image_handler *handler;
 	int ret;
 	enum filetype os_type, initrd_type = filetype_unknown;
+	enum filetype oftree_type = filetype_unknown;
 
 	if (!bootm_data->os_file) {
 		printf("no image given\n");
@@ -438,7 +452,19 @@ int bootm_boot(struct bootm_data *bootm_data)
 
 	if (IS_ENABLED(CONFIG_OFTREE)) {
 		if (data->oftree_file) {
-			ret = bootm_open_oftree(data, data->oftree_file, data->oftree_num);
+			oftree_type = file_name_detect_type(data->oftree_file);
+
+			if (oftree_type == filetype_uimage)
+				ret = bootm_open_oftree_uimage(data);
+			if (oftree_type == filetype_oftree)
+				ret = bootm_open_oftree(data);
+			if ((int)oftree_type < 0) {
+				printf("could not open %s: %s\n",
+					data->oftree_file,
+					strerror(-oftree_type));
+				ret = (int) oftree_type;
+			}
+
 			if (ret)
 				goto err_out;
 		} else {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
