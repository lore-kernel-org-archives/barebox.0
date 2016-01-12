Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aIw0t-0004W9-7Y
 for barebox@lists.infradead.org; Tue, 12 Jan 2016 10:17:20 +0000
Received: by mail-wm0-x241.google.com with SMTP id f206so30494034wmf.2
 for <barebox@lists.infradead.org>; Tue, 12 Jan 2016 02:17:00 -0800 (PST)
From: yegorslists@googlemail.com
Date: Tue, 12 Jan 2016 11:16:39 +0100
Message-Id: <1452593799-21408-2-git-send-email-yegorslists@googlemail.com>
In-Reply-To: <1452593799-21408-1-git-send-email-yegorslists@googlemail.com>
References: <1452593799-21408-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH v2 2/2] FIT: bootm: accept configuration name as string
To: barebox@lists.infradead.org
Cc: tpiepho@kymetacorp.com

From: Yegor Yefremov <yegorslists@googlemail.com>

In U-Boot configuration name is passed as a string after
address in bootm command after '#' separator. In Barebox
a string coming after '@' separator will be converted to
integer.

This patch adds additional field os_conf to the image_data
structure in order to save the string after '@' as is and pass
it to fit_open() routine.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
Changes:
	v2: move of_node_cmp() rework into a separate patch

 arch/arm/lib/bootm.c |  2 +-
 common/bootm.c       | 11 +++++++----
 common/image-fit.c   | 12 ++++++------
 include/boot.h       |  3 +++
 include/image-fit.h  |  2 +-
 5 files changed, 18 insertions(+), 12 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 9a78ee8..10745a7 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -562,7 +562,7 @@ static int do_bootm_arm_fit(struct image_data *data)
 	unsigned long mem_free;
 	unsigned long mem_start, mem_size;
 
-	handle = fit_open(data->os_file, data->os_num, data->verbose);
+	handle = fit_open(data->os_file, data->os_conf, data->verbose);
 	if (!handle)
 		return -EINVAL;
 
diff --git a/common/bootm.c b/common/bootm.c
index 08125e7..c827033 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -351,7 +351,7 @@ static void bootm_print_info(struct image_data *data)
 	}
 }
 
-static char *bootm_image_name_and_no(const char *name, int *no)
+static char *bootm_image_name_and_no(const char *name, int *no, char **conf)
 {
 	char *at, *ret;
 
@@ -359,6 +359,7 @@ static char *bootm_image_name_and_no(const char *name, int *no)
 		return NULL;
 
 	*no = 0;
+	*conf = NULL;
 
 	ret = xstrdup(name);
 	at = strchr(ret, '@');
@@ -369,6 +370,8 @@ static char *bootm_image_name_and_no(const char *name, int *no)
 
 	*no = simple_strtoul(at, NULL, 10);
 
+	*conf = xstrdup(at);
+
 	return ret;
 }
 
@@ -390,9 +393,9 @@ int bootm_boot(struct bootm_data *bootm_data)
 
 	data = xzalloc(sizeof(*data));
 
-	data->os_file = bootm_image_name_and_no(bootm_data->os_file, &data->os_num);
-	data->oftree_file = bootm_image_name_and_no(bootm_data->oftree_file, &data->oftree_num);
-	data->initrd_file = bootm_image_name_and_no(bootm_data->initrd_file, &data->initrd_num);
+	data->os_file = bootm_image_name_and_no(bootm_data->os_file, &data->os_num, &data->os_conf);
+	data->oftree_file = bootm_image_name_and_no(bootm_data->oftree_file, &data->oftree_num, &data->os_conf);
+	data->initrd_file = bootm_image_name_and_no(bootm_data->initrd_file, &data->initrd_num, &data->os_conf);
 	data->verbose = bootm_data->verbose;
 	data->verify = bootm_data->verify;
 	data->force = bootm_data->force;
diff --git a/common/image-fit.c b/common/image-fit.c
index f943081..490974d 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -451,7 +451,7 @@ static int fit_open_image(struct fit_handle *handle, const char* unit)
 	return level;
 }
 
-static int fit_open_configuration(struct fit_handle *handle, int num)
+static int fit_open_configuration(struct fit_handle *handle, const char *conf)
 {
 	struct device_node *conf_node = NULL, *sig_node;
 	char unit_name[10];
@@ -462,8 +462,8 @@ static int fit_open_configuration(struct fit_handle *handle, int num)
 	if (!conf_node)
 		return -ENOENT;
 
-	if (num) {
-		snprintf(unit_name, sizeof(unit_name), "conf@%d", num);
+	if (conf) {
+		snprintf(unit_name, sizeof(unit_name), "%s", conf);
 		unit = unit_name;
 	} else if (of_property_read_string(conf_node, "default", &unit)) {
 		unit = "conf@1";
@@ -519,7 +519,7 @@ static int fit_open_configuration(struct fit_handle *handle, int num)
 	return 0;
 }
 
-struct fit_handle *fit_open(const char *filename, int num, bool verbose)
+struct fit_handle *fit_open(const char *filename, const char *conf, bool verbose)
 {
 	struct fit_handle *handle = NULL;
 	const char *desc;
@@ -545,7 +545,7 @@ struct fit_handle *fit_open(const char *filename, int num, bool verbose)
 		pr_info("FIT '%s': '%s'\n", filename, desc);
 	}
 
-	if (fit_open_configuration(handle, num))
+	if (fit_open_configuration(handle, conf))
 		goto err;
 
 	return handle;
@@ -571,7 +571,7 @@ void fit_close(struct fit_handle *handle)
 static int do_bootm_sandbox_fit(struct image_data *data)
 {
 	struct fit_handle *handle;
-	handle = fit_open(data->os_file, data->os_num, data->verbose);
+	handle = fit_open(data->os_file, data->os_conf, data->verbose);
 	if (handle)
 		fit_close(handle);
 	return 0;
diff --git a/include/boot.h b/include/boot.h
index bdd5477..6c695b2 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -30,6 +30,9 @@ struct image_data {
 	struct uimage_handle *os;
 	int os_num;
 
+	/* if we have FIT image, configuration name will be provided */
+	char *os_conf;
+
 	/* otherwise only the filename will be provided */
 	char *os_file;
 
diff --git a/include/image-fit.h b/include/image-fit.h
index bcbc859..671bee8 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -36,7 +36,7 @@ struct fit_handle {
 	unsigned long initrd_size;
 };
 
-struct fit_handle *fit_open(const char *filename, int num, bool verbose);
+struct fit_handle *fit_open(const char *filename, const char *conf, bool verbose);
 void fit_close(struct fit_handle *handle);
 
 #endif	/* __IMAGE_FIT_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
