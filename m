Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Zuw-0006iS-VQ
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 11:06:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2014 12:05:55 +0100
Message-Id: <1389351959-20448-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] bootm: introduce bootm_load_initrd helper
To: barebox@lists.infradead.org

Make the bootm handlers simpler by factoring out an initrd load
function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c | 15 ++++-----------
 common/bootm.c       | 38 ++++++++++++++++++++++++++++++++++++++
 include/boot.h       |  1 +
 3 files changed, 43 insertions(+), 11 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 6f84cb3..3604df0 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -31,7 +31,7 @@ static int __do_bootm_linux(struct image_data *data, int swap)
 
 	initrd_start = data->initrd_address;
 
-	if (data->initrd_file && initrd_start == UIMAGE_INVALID_ADDRESS) {
+	if (initrd_start == UIMAGE_INVALID_ADDRESS) {
 		initrd_start = data->os_res->start + SZ_8M;
 
 		if (bootm_verbose(data)) {
@@ -40,16 +40,9 @@ static int __do_bootm_linux(struct image_data *data, int swap)
 		}
 	}
 
-	if (data->initrd) {
-		data->initrd_res = uimage_load_to_sdram(data->initrd,
-			data->initrd_num, initrd_start);
-		if (!data->initrd_res)
-			return -ENOMEM;
-	} else if (data->initrd_file) {
-		data->initrd_res = file_to_sdram(data->initrd_file, initrd_start);
-		if (!data->initrd_res)
-			return -ENOMEM;
-	}
+	ret = bootm_load_initrd(data, initrd_start);
+	if (ret)
+		return ret;
 
 	if (data->initrd_res) {
 		initrd_start = data->initrd_res->start;
diff --git a/common/bootm.c b/common/bootm.c
index 5ad10d9..9ccbe8f 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -85,6 +85,44 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 	return -EINVAL;
 }
 
+/*
+ * bootm_load_initrd() - load initrd to RAM
+ *
+ * @data:		image data context
+ * @load_address:	The address where the initrd should be loaded to
+ *
+ * This loads the initrd to a RAM location. load_address must be a valid
+ * address. If the image_data doesn't have a initrd specified this function
+ * still returns successful as an initrd is optional. Check data->initrd_res
+ * to see if an initrd has been loaded.
+ *
+ * Return: 0 on success, negative error code otherwise
+ */
+int bootm_load_initrd(struct image_data *data, unsigned long load_address)
+{
+	if (data->initrd_res)
+		return 0;
+
+	if (data->initrd) {
+		data->initrd_res = uimage_load_to_sdram(data->initrd,
+			data->initrd_num, load_address);
+		if (!data->initrd_res)
+			return -ENOMEM;
+
+		return 0;
+	}
+
+	if (data->initrd_file) {
+		data->initrd_res = file_to_sdram(data->initrd_file, load_address);
+		if (!data->initrd_res)
+			return -ENOMEM;
+
+		return 0;
+	}
+
+	return 0;
+}
+
 static int bootm_open_os_uimage(struct image_data *data)
 {
 	int ret;
diff --git a/include/boot.h b/include/boot.h
index 61ab5d0..0cb2949 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -109,6 +109,7 @@ static inline int linux_bootargs_overwrite(const char *bootargs)
 #endif
 
 int bootm_load_os(struct image_data *data, unsigned long load_address);
+int bootm_load_initrd(struct image_data *data, unsigned long load_address);
 
 #define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
 
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
