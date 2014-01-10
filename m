Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Zuw-0006iQ-VK
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 11:06:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2014 12:05:53 +0100
Message-Id: <1389351959-20448-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389351959-20448-1-git-send-email-s.hauer@pengutronix.de>
References: <1389351959-20448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] bootm: introduce bootm_load_os helper
To: barebox@lists.infradead.org

The common bootm code used to load uImage contents to SDRAM
before calling into the handlers if possible. This makes the
handlers complicated since they have to handle many cases. Instead,
introduce a helper to load the os after the handlers have figured
out a good load address.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c               | 24 ++++++-------------
 arch/blackfin/lib/blackfin_linux.c |  6 +++--
 arch/nios2/lib/bootm.c             |  6 +++--
 arch/ppc/lib/ppclinux.c            |  6 +++--
 common/bootm.c                     | 49 +++++++++++++++++++++++++++++++-------
 include/boot.h                     |  2 ++
 6 files changed, 61 insertions(+), 32 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index c0e4e15..7401f2f 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -28,32 +28,22 @@ static int __do_bootm_linux(struct image_data *data, int swap)
 	unsigned long initrd_start = 0, initrd_size = 0, initrd_end = 0;
 	struct memory_bank *bank;
 	unsigned long load_address;
+	int ret;
 
-	if (data->os_res) {
-		load_address = data->os_res->start;
-	} else if (data->os_address != UIMAGE_INVALID_ADDRESS) {
-		load_address = data->os_address;
-	} else {
+	if (data->os_address == UIMAGE_INVALID_ADDRESS) {
 		bank = list_first_entry(&memory_banks,
 				struct memory_bank, list);
 		load_address = bank->start + SZ_32K;
 		if (bootm_verbose(data))
 			printf("no os load address, defaulting to 0x%08lx\n",
 				load_address);
+	} else {
+		load_address = data->os_address;
 	}
 
-	if (!data->os_res && data->os) {
-		data->os_res = uimage_load_to_sdram(data->os,
-			data->os_num, load_address);
-		if (!data->os_res)
-			return -ENOMEM;
-	}
-
-	if (!data->os_res) {
-		data->os_res = file_to_sdram(data->os_file, load_address);
-		if (!data->os_res)
-			return -ENOMEM;
-	}
+	ret = bootm_load_os(data, load_address);
+	if (ret)
+		return ret;
 
 	kernel = data->os_res->start + data->os_entry;
 
diff --git a/arch/blackfin/lib/blackfin_linux.c b/arch/blackfin/lib/blackfin_linux.c
index bb3c774..2561a7e 100644
--- a/arch/blackfin/lib/blackfin_linux.c
+++ b/arch/blackfin/lib/blackfin_linux.c
@@ -41,9 +41,11 @@ static int do_bootm_linux(struct image_data *idata)
 	int (*appl)(char *cmdline);
 	const char *cmdline = linux_bootargs_get();
 	char *cmdlinedest = (char *) CMD_LINE_ADDR;
+	int ret;
 
-	if (!idata->os_res)
-		return -EINVAL;
+	ret = bootm_load_os(idata, idata->os_address);
+	if (ret)
+		return ret;
 
 	appl = (void *)(idata->os_address + idata->os_entry);
 	printf("Starting Kernel at 0x%p\n", appl);
diff --git a/arch/nios2/lib/bootm.c b/arch/nios2/lib/bootm.c
index cc96290..77da119 100644
--- a/arch/nios2/lib/bootm.c
+++ b/arch/nios2/lib/bootm.c
@@ -36,9 +36,11 @@ static int do_bootm_linux(struct image_data *idata)
 {
 	void (*kernel)(int, int, int, const char *);
 	const char *commandline = linux_bootargs_get();
+	int ret;
 
-	if (!idata->os_res)
-		return -EINVAL;
+	ret = bootm_load_os(idata, idata->os_address);
+	if (ret)
+		return ret;
 
 	kernel = (void *)(idata->os_address + idata->os_entry);
 
diff --git a/arch/ppc/lib/ppclinux.c b/arch/ppc/lib/ppclinux.c
index 7c30ac3..e25efec 100644
--- a/arch/ppc/lib/ppclinux.c
+++ b/arch/ppc/lib/ppclinux.c
@@ -47,9 +47,11 @@ static int do_bootm_linux(struct image_data *data)
 {
 	void	(*kernel)(void *, void *, unsigned long,
 			unsigned long, unsigned long);
+	int ret;
 
-	if (!data->os_res)
-		return -EINVAL;
+	ret = bootm_load_os(data, data->os_address);
+	if (ret)
+		return ret;
 
 	data->oftree = of_get_fixed_tree(data->of_root_node);
 	if (!data->oftree) {
diff --git a/common/bootm.c b/common/bootm.c
index 2da6e59..5ad10d9 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -45,6 +45,46 @@ static struct image_handler *bootm_find_handler(enum filetype filetype,
 	return NULL;
 }
 
+/*
+ * bootm_load_os() - load OS to RAM
+ *
+ * @data:		image data context
+ * @load_address:	The address where the OS should be loaded to
+ *
+ * This loads the OS to a RAM location. load_address must be a valid
+ * address. If the image_data doesn't have a OS specified it's considered
+ * an error.
+ *
+ * Return: 0 on success, negative error code otherwise
+ */
+int bootm_load_os(struct image_data *data, unsigned long load_address)
+{
+	if (data->os_res)
+		return 0;
+
+	if (load_address == UIMAGE_INVALID_ADDRESS)
+		return -EINVAL;
+
+	if (data->os) {
+		data->os_res = uimage_load_to_sdram(data->os,
+			data->os_num, load_address);
+		if (!data->os_res)
+			return -ENOMEM;
+
+		return 0;
+	}
+
+	if (data->os_file) {
+		data->os_res = file_to_sdram(data->os_file, load_address);
+		if (!data->os_res)
+			return -ENOMEM;
+
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
 static int bootm_open_os_uimage(struct image_data *data)
 {
 	int ret;
@@ -75,15 +115,6 @@ static int bootm_open_os_uimage(struct image_data *data)
 	if (data->os_address == UIMAGE_SOME_ADDRESS)
 		data->os_address = data->os->header.ih_load;
 
-	if (data->os_address != UIMAGE_INVALID_ADDRESS) {
-		data->os_res = uimage_load_to_sdram(data->os, 0,
-				data->os_address);
-		if (!data->os_res) {
-			uimage_close(data->os);
-			return -ENOMEM;
-		}
-	}
-
 	return 0;
 }
 
diff --git a/include/boot.h b/include/boot.h
index 56f6c35..61ab5d0 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -108,6 +108,8 @@ static inline int linux_bootargs_overwrite(const char *bootargs)
 }
 #endif
 
+int bootm_load_os(struct image_data *data, unsigned long load_address);
+
 #define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
 
 #endif /* __BOOT_H */
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
