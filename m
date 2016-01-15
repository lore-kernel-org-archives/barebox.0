Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aK5yX-0002Z7-AT
 for barebox@lists.infradead.org; Fri, 15 Jan 2016 15:07:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Jan 2016 16:07:12 +0100
Message-Id: <1452870438-29656-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1452870438-29656-1-git-send-email-s.hauer@pengutronix.de>
References: <1452870438-29656-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/13] bootm: move initrd code together
To: Barebox List <barebox@lists.infradead.org>

The initrd code is distributed in several places in the bootm code.
Move it all together in bootm_load_initrd().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c |   8 ++-
 common/bootm.c       | 151 +++++++++++++++++++++++++--------------------------
 include/boot.h       |   3 +
 3 files changed, 83 insertions(+), 79 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index eef906a..4dfe148 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -86,9 +86,11 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem, int
 		}
 	}
 
-	ret = bootm_load_initrd(data, initrd_start);
-	if (ret)
-		return ret;
+	if (bootm_has_initrd(data)) {
+		ret = bootm_load_initrd(data, initrd_start);
+		if (ret)
+			return ret;
+	}
 
 	if (data->initrd_res) {
 		initrd_start = data->initrd_res->start;
diff --git a/common/bootm.c b/common/bootm.c
index 7f6533b..06f1f8a 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -91,6 +91,41 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 	return -EINVAL;
 }
 
+bool bootm_has_initrd(struct image_data *data)
+{
+	if (!IS_ENABLED(CONFIG_CMD_BOOTM_INITRD))
+		return false;
+
+	if (data->initrd_file)
+		return true;
+
+	return false;
+}
+
+static int bootm_open_initrd_uimage(struct image_data *data)
+{
+	int ret;
+
+	if (strcmp(data->os_file, data->initrd_file)) {
+		data->initrd = uimage_open(data->initrd_file);
+		if (!data->initrd)
+			return -EINVAL;
+
+		if (data->verify) {
+			ret = uimage_verify(data->initrd);
+			if (ret) {
+				printf("Checking data crc failed with %s\n",
+					strerror(-ret));
+			}
+		}
+		uimage_print_contents(data->initrd);
+	} else {
+		data->initrd = data->os;
+	}
+
+	return 0;
+}
+
 /*
  * bootm_load_initrd() - load initrd to RAM
  *
@@ -106,11 +141,34 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
  */
 int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 {
+	enum filetype type;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_CMD_BOOTM_INITRD))
+		return -ENOSYS;
+
+	if (!bootm_has_initrd(data))
+		return -EINVAL;
+
 	if (data->initrd_res)
 		return 0;
 
-	if (data->initrd) {
+	type = file_name_detect_type(data->initrd_file);
+
+	if ((int)type < 0) {
+		printf("could not open %s: %s\n", data->initrd_file,
+				strerror(-type));
+		return (int)type;
+	}
+
+	if (type == filetype_uimage) {
 		int num;
+		ret = bootm_open_initrd_uimage(data);
+		if (ret) {
+			printf("loading initrd failed with %s\n",
+					strerror(-ret));
+			return ret;
+		}
 
 		num = simple_strtoul(data->initrd_part, NULL, 0);
 
@@ -119,16 +177,24 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 		if (!data->initrd_res)
 			return -ENOMEM;
 
-		return 0;
+		goto done;
 	}
 
-	if (data->initrd_file) {
-		data->initrd_res = file_to_sdram(data->initrd_file, load_address);
-		if (!data->initrd_res)
-			return -ENOMEM;
+	data->initrd_res = file_to_sdram(data->initrd_file, load_address);
+	if (!data->initrd_res)
+		return -ENOMEM;
 
-		return 0;
-	}
+done:
+
+	printf("Loaded initrd %s '%s'", file_type_to_string(type),
+	       data->initrd_file);
+	if (type == filetype_uimage && data->initrd->header.ih_type == IH_TYPE_MULTI)
+		printf(", multifile image %s", data->initrd_part);
+	printf("\n");
+
+	printf("initrd is at " PRINTF_CONVERSION_RESOURCE "-" PRINTF_CONVERSION_RESOURCE "\n",
+		data->initrd_res->start,
+		data->initrd_res->end);
 
 	return 0;
 }
@@ -245,33 +311,6 @@ static int bootm_open_os_uimage(struct image_data *data)
 	return 0;
 }
 
-static int bootm_open_initrd_uimage(struct image_data *data)
-{
-	int ret;
-
-	if (!data->initrd_file)
-		return 0;
-
-	if (strcmp(data->os_file, data->initrd_file)) {
-		data->initrd = uimage_open(data->initrd_file);
-		if (!data->initrd)
-			return -EINVAL;
-
-		if (data->verify) {
-			ret = uimage_verify(data->initrd);
-			if (ret) {
-				printf("Checking data crc failed with %s\n",
-					strerror(-ret));
-			}
-		}
-		uimage_print_contents(data->initrd);
-	} else {
-		data->initrd = data->os;
-	}
-
-	return 0;
-}
-
 static int bootm_open_oftree_uimage(struct image_data *data)
 {
 	struct fdt_header *fdt;
@@ -358,24 +397,6 @@ static void bootm_print_info(struct image_data *data)
 				data->os_res->end);
 	else
 		printf("OS image not yet relocated\n");
-
-	if (data->initrd_file) {
-		enum filetype initrd_type = file_name_detect_type(data->initrd_file);
-
-		printf("Loading initrd %s '%s'",
-				file_type_to_string(initrd_type),
-				data->initrd_file);
-		if (initrd_type == filetype_uimage &&
-				data->initrd->header.ih_type == IH_TYPE_MULTI)
-			printf(", multifile image %s", data->initrd_part);
-		printf("\n");
-		if (data->initrd_res)
-			printf("initrd is at " PRINTF_CONVERSION_RESOURCE "-" PRINTF_CONVERSION_RESOURCE "\n",
-				data->initrd_res->start,
-				data->initrd_res->end);
-		else
-			printf("initrd image not yet relocated\n");
-	}
 }
 
 static int bootm_image_name_and_part(const char *name, char **filename, char **part)
@@ -409,7 +430,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 	struct image_data *data;
 	struct image_handler *handler;
 	int ret;
-	enum filetype os_type, initrd_type = filetype_unknown;
+	enum filetype os_type;
 	enum filetype oftree_type = filetype_unknown;
 
 	if (!bootm_data->os_file) {
@@ -444,17 +465,6 @@ int bootm_boot(struct bootm_data *bootm_data)
 		goto err_out;
 	}
 
-	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD) && data->initrd_file) {
-		initrd_type = file_name_detect_type(data->initrd_file);
-
-		if ((int)initrd_type < 0) {
-			printf("could not open %s: %s\n", data->initrd_file,
-					strerror(-initrd_type));
-			ret = (int)initrd_type;
-			goto err_out;
-		}
-	}
-
 	if (IS_ENABLED(CONFIG_OFTREE) && data->oftree_file) {
 		oftree_type = file_name_detect_type(data->oftree_file);
 
@@ -475,17 +485,6 @@ int bootm_boot(struct bootm_data *bootm_data)
 		}
 	}
 
-	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD) && data->initrd_file) {
-		if (initrd_type == filetype_uimage) {
-			ret = bootm_open_initrd_uimage(data);
-			if (ret) {
-				printf("loading initrd failed with %s\n",
-						strerror(-ret));
-				goto err_out;
-			}
-		}
-	}
-
 	printf("\nLoading %s '%s'", file_type_to_string(os_type),
 			data->os_file);
 	if (os_type == filetype_uimage &&
diff --git a/include/boot.h b/include/boot.h
index 9ddb18b..7c6d9c8 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -110,7 +110,10 @@ static inline int linux_bootargs_overwrite(const char *bootargs)
 #endif
 
 int bootm_load_os(struct image_data *data, unsigned long load_address);
+
+bool bootm_has_initrd(struct image_data *data);
 int bootm_load_initrd(struct image_data *data, unsigned long load_address);
+
 int bootm_load_devicetree(struct image_data *data, unsigned long load_address);
 int bootm_get_os_size(struct image_data *data);
 
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
