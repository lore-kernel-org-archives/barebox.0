Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b3jRS-0004th-7n
 for barebox@lists.infradead.org; Fri, 20 May 2016 12:22:12 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 20 May 2016 14:21:43 +0200
Message-Id: <1463746903-6676-3-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1463746903-6676-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1463746903-6676-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/3] firmware: add support for compressed images
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Allow using compressed firmware images with the firmware framework.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 common/firmware.c | 82 ++++++++++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 78 insertions(+), 4 deletions(-)

diff --git a/common/firmware.c b/common/firmware.c
index 664f9107d0f8..6437005bf813 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -22,6 +22,8 @@
 #include <linux/list.h>
 #include <linux/stat.h>
 #include <linux/err.h>
+#include <uncompress.h>
+#include <filetype.h>
 
 #define BUFSIZ 4096
 
@@ -197,16 +199,88 @@ out:
 }
 
 /*
+ * firmware_load_compressed - load a compressed firmware to a device
+ */
+int firmwaremgr_load_compressed(const char *firmware, const char *dst)
+{
+	int srcfd = 0;
+	int dstfd = 0;
+	int ret;
+
+	srcfd = open(firmware, O_RDONLY);
+	if (srcfd < 0) {
+		printf("could not open %s: %s\n", firmware, errno_str());
+		ret = srcfd;
+		goto out;
+	}
+
+	dstfd = open(dst, O_WRONLY | O_TRUNC);
+	if (dstfd < 0) {
+		printf("could not open %s: %s\n", dst, errno_str());
+		ret = dstfd;
+		goto out;
+	}
+
+	ret = uncompress_fd_to_fd(srcfd, dstfd, uncompress_err_stdout);
+
+out:
+	if (dstfd > 0)
+		close(dstfd);
+
+	return ret;
+}
+
+/*
  * firmware_load_file - load a firmware to a device
  */
 int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *firmware)
 {
-	int ret;
-	char *name = basprintf("/dev/%s", mgr->handler->id);
+	char *dst = basprintf("/dev/%s", mgr->handler->id);
+	enum filetype type;
+	int ret = -ENOENT;
+	int srcfd = 0;
+	char buf[32];
+
+	if (firmware) {
+		srcfd = open(firmware, O_RDONLY);
+		if (srcfd < 0) {
+			printf("could not open %s: %s\n", firmware, errno_str());
+			ret = srcfd;
+			goto out;
+		}
 
-	ret = copy_file(firmware, name, 0);
+		ret = read(srcfd, buf, sizeof(buf));
+		if (ret < sizeof(buf))
+			goto out;
 
-	free(name);
+		type = file_detect_type(buf, 32);
+		if ((int)type < 0) {
+			printf("could not open %s: %s\n", firmware,
+					strerror(-type));
+			ret = (int)type;
+			goto out;
+		}
+
+		close(srcfd);
+
+		switch (type) {
+		case filetype_lzo_compressed:
+		case filetype_lz4_compressed:
+		case filetype_bzip2:
+		case filetype_gzip:
+			ret = firmwaremgr_load_compressed(firmware, dst);
+			break;
+		case filetype_unknown:
+			ret = copy_file(firmware, dst, 0);
+			break;
+		default:
+			ret = -ENOSYS;
+			printf("unsupported filetype (%d)\n", (int) type);
+		}
+	}
+
+out:
+	free(dst);
 
 	return ret;
 }
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
