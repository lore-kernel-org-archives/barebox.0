Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aK5yX-0002Z4-AW
 for barebox@lists.infradead.org; Fri, 15 Jan 2016 15:07:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Jan 2016 16:07:08 +0100
Message-Id: <1452870438-29656-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/13] bootm: introduce bootm_get_os_size
To: Barebox List <barebox@lists.infradead.org>

ARM do_bootm_linux is not only called with uImages but also with
raw images, so we can't use uimage_get_size() here. Introduce
bootm_get_os_size() which handles the different image types.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c |  2 +-
 common/bootm.c       | 19 +++++++++++++++++++
 include/boot.h       |  1 +
 3 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 2439c36..0855907 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -135,7 +135,7 @@ static int do_bootm_linux(struct image_data *data)
 		 * relocate itself before decompression.
 		 */
 		load_address = mem_start + PAGE_ALIGN(
-		               uimage_get_size(data->os, data->os_num) * 4);
+		               bootm_get_os_size(data) * 4);
 		if (bootm_verbose(data))
 			printf("no OS load address, defaulting to 0x%08lx\n",
 				load_address);
diff --git a/common/bootm.c b/common/bootm.c
index affab24..a38d7e0 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -19,6 +19,7 @@
 #include <libfile.h>
 #include <globalvar.h>
 #include <init.h>
+#include <linux/stat.h>
 
 static LIST_HEAD(handler_list);
 
@@ -185,6 +186,24 @@ int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
 	return 0;
 }
 
+int bootm_get_os_size(struct image_data *data)
+{
+	int ret;
+
+	if (data->os)
+		return uimage_get_size(data->os, data->os_num);
+
+	if (data->os_file) {
+		struct stat s;
+		ret = stat(data->os_file, &s);
+		if (ret)
+			return ret;
+		return s.st_size;
+	}
+
+	return -EINVAL;
+}
+
 static int bootm_open_os_uimage(struct image_data *data)
 {
 	int ret;
diff --git a/include/boot.h b/include/boot.h
index bdd5477..b172c05 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -112,6 +112,7 @@ static inline int linux_bootargs_overwrite(const char *bootargs)
 int bootm_load_os(struct image_data *data, unsigned long load_address);
 int bootm_load_initrd(struct image_data *data, unsigned long load_address);
 int bootm_load_devicetree(struct image_data *data, unsigned long load_address);
+int bootm_get_os_size(struct image_data *data);
 
 #define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
 
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
