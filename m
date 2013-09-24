Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VOMkD-00050j-Mm
 for barebox@lists.infradead.org; Tue, 24 Sep 2013 07:09:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 24 Sep 2013 09:08:43 +0200
Message-Id: <1380006527-2599-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380006527-2599-1-git-send-email-s.hauer@pengutronix.de>
References: <1380006527-2599-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/11] bootm: separate bootm input data and internal data
To: barebox@lists.infradead.org

We used to use struct image_data as the central data structure for bootm and
also as the input data structure. This makes it unclear which of the fields
are actually input data. This patch creates a struct bootm_data which is
exclusively used for input data to make usage clearer.

Also it moves the dispatching of multifile uImage pathnames to the core bootm
code so that the core code gets more flexible and the command code simpler.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c | 34 ++++------------------------------
 common/bootm.c   | 46 ++++++++++++++++++++++++++++++++++++++++++++--
 include/boot.h   | 16 ++++++++++++++--
 3 files changed, 62 insertions(+), 34 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 005d582..927c2fb 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -46,27 +46,6 @@
 #include <magicvar.h>
 #include <asm-generic/memory_layout.h>
 
-static char *bootm_image_name_and_no(const char *name, int *no)
-{
-	char *at, *ret;
-
-	if (!name || !*name)
-		return NULL;
-
-	*no = 0;
-
-	ret = xstrdup(name);
-	at = strchr(ret, '@');
-	if (!at)
-		return ret;
-
-	*at++ = 0;
-
-	*no = simple_strtoul(at, NULL, 10);
-
-	return ret;
-}
-
 #define BOOTM_OPTS_COMMON "ca:e:vo:f"
 
 #ifdef CONFIG_CMD_BOOTM_INITRD
@@ -78,12 +57,10 @@ static char *bootm_image_name_and_no(const char *name, int *no)
 static int do_bootm(int argc, char *argv[])
 {
 	int opt;
-	struct image_data data;
+	struct bootm_data data = {};
 	int ret = 1;
 	const char *oftree = NULL, *initrd_file = NULL, *os_file = NULL;
 
-	memset(&data, 0, sizeof(struct image_data));
-
 	data.initrd_address = UIMAGE_INVALID_ADDRESS;
 	data.os_address = UIMAGE_SOME_ADDRESS;
 	data.verify = 0;
@@ -143,18 +120,15 @@ static int do_bootm(int argc, char *argv[])
 	if (oftree && !*oftree)
 		oftree = NULL;
 
-	data.os_file = bootm_image_name_and_no(os_file, &data.os_num);
-	data.oftree_file = bootm_image_name_and_no(oftree, &data.oftree_num);
-	data.initrd_file = bootm_image_name_and_no(initrd_file, &data.initrd_num);
+	data.os_file = os_file;
+	data.oftree_file = oftree;
+	data.initrd_file = initrd_file;
 
 	ret = bootm_boot(&data);
 
 	printf("handler failed with %s\n", strerror(-ret));
 
 err_out:
-	free(data.initrd_file);
-	free(data.os_file);
-
 	return 1;
 }
 
diff --git a/common/bootm.c b/common/bootm.c
index 259feac..3c5689b 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -219,17 +219,54 @@ static void bootm_print_info(struct image_data *data)
 	}
 }
 
-int bootm_boot(struct image_data *data)
+static char *bootm_image_name_and_no(const char *name, int *no)
 {
+	char *at, *ret;
+
+	if (!name || !*name)
+		return NULL;
+
+	*no = 0;
+
+	ret = xstrdup(name);
+	at = strchr(ret, '@');
+	if (!at)
+		return ret;
+
+	*at++ = 0;
+
+	*no = simple_strtoul(at, NULL, 10);
+
+	return ret;
+}
+
+/*
+ * bootm_boot - Boot an application image described by bootm_data
+ */
+int bootm_boot(struct bootm_data *bootm_data)
+{
+	struct image_data *data;
 	struct image_handler *handler;
 	int ret;
 	enum filetype os_type, initrd_type = filetype_unknown;
 
-	if (!data->os_file) {
+	if (!bootm_data->os_file) {
 		printf("no image given\n");
 		return -ENOENT;
 	}
 
+	data = xzalloc(sizeof(*data));
+
+	data->os_file = bootm_image_name_and_no(bootm_data->os_file, &data->os_num);
+	data->oftree_file = bootm_image_name_and_no(bootm_data->oftree_file, &data->oftree_num);
+	data->initrd_file = bootm_image_name_and_no(bootm_data->initrd_file, &data->initrd_num);
+	data->verbose = bootm_data->verbose;
+	data->verify = bootm_data->verify;
+	data->force = bootm_data->force;
+	data->initrd_address = bootm_data->initrd_address;
+	data->os_address = bootm_data->os_address;
+	data->os_entry = bootm_data->os_entry;
+
 	os_type = file_name_detect_type(data->os_file);
 	if ((int)os_type < 0) {
 		printf("could not open %s: %s\n", data->os_file,
@@ -322,6 +359,11 @@ err_out:
 	if (data->of_root_node && data->of_root_node != of_get_root_node())
 		of_delete_node(data->of_root_node);
 
+	free(data->os_file);
+	free(data->oftree_file);
+	free(data->initrd_file);
+	free(data);
+
 	return ret;
 }
 
diff --git a/include/boot.h b/include/boot.h
index 8d42d39..3bb55e7 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -7,6 +7,20 @@
 #include <linux/list.h>
 #include <environment.h>
 
+struct bootm_data {
+	const char *os_file;
+	const char *initrd_file;
+	const char *oftree_file;
+	int verbose;
+	bool verify;
+	bool force;
+	unsigned long initrd_address;
+	unsigned long os_address;
+	unsigned long os_entry;
+};
+
+int bootm_boot(struct bootm_data *data);
+
 struct image_data {
 	/* simplest case. barebox has already loaded the os here */
 	struct resource *os_res;
@@ -94,8 +108,6 @@ static inline int linux_bootargs_overwrite(const char *bootargs)
 
 #define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
 
-int bootm_boot(struct image_data *);
-
 unsigned long long getenv_loadaddr(const char *name);
 
 #endif /* __BOOT_H */
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
