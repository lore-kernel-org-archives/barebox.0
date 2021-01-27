Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1l4lAt-0075Bp-Rq
 for barebox@lists.infradead.org; Wed, 27 Jan 2021 13:48:13 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1l4l7X-0006Rf-5x
 for barebox@lists.infradead.org; Wed, 27 Jan 2021 14:44:31 +0100
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1l4l7W-0000RS-HC
 for barebox@lists.infradead.org; Wed, 27 Jan 2021 14:44:30 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 27 Jan 2021 14:44:23 +0100
Message-Id: <20210127134423.31587-12-s.trumtrar@pengutronix.de>
In-Reply-To: <20210127134423.31587-1-s.trumtrar@pengutronix.de>
References: <20210127134423.31587-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 12/12] firmware: add support for compressed images
To: barebox@lists.infradead.org

At least bitstreams for FPGAs can consist of a lot of zeros depending on
device utilization. These bitstreams can be compressed very effectively.

Let the firmware code accept these images and decompress them before
handing it to the firmware-manager in question.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 common/firmware.c | 43 ++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 38 insertions(+), 5 deletions(-)

diff --git a/common/firmware.c b/common/firmware.c
index 58509d5da615..c617ecc0f129 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -14,6 +14,8 @@
 #include <linux/list.h>
 #include <linux/stat.h>
 #include <linux/err.h>
+#include <uncompress.h>
+#include <filetype.h>
 
 #define BUFSIZ 4096
 
@@ -211,12 +213,43 @@ int firmwaremgr_register(struct firmware_handler *fh)
  */
 int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *firmware)
 {
-	int ret;
-	char *name = basprintf("/dev/%s", mgr->handler->id);
-
-	ret = copy_file(firmware, name, 0);
+	char *dst;
+	enum filetype type;
+	int ret = -ENOENT;
+	int srcfd = 0;
+	int dstfd = 0;
+
+	if (mgr->handler->id) {
+		dst = basprintf("/dev/%s", mgr->handler->id);
+	} else {
+		pr_err("id not defined for handler\n");
+		return -ENODEV;
+	}
 
-	free(name);
+	if (firmware) {
+		type = file_name_detect_type(firmware);
+		if (type == filetype_unknown) {
+			ret = copy_file(firmware, dst, 0);
+		} else {
+			srcfd = open(firmware, O_RDONLY);
+			if (srcfd < 0)
+				return srcfd;
+			dstfd = open(dst, O_WRONLY | O_CREAT);
+
+			if (dstfd < 0) {
+				printf("could not open %s: %s\n", dst, errno_str());
+				ret = dstfd;
+				goto out;
+			}
+
+			ret = uncompress_fd_to_fd(srcfd, dstfd, uncompress_err_stdout);
+
+			close(dstfd);
+		}
+	}
+out:
+	close(srcfd);
+	free(dst);
 
 	return ret;
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
