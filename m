Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.tq-group.com ([62.157.118.193])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gP2X9-0008Gk-4q
 for barebox@lists.infradead.org; Tue, 20 Nov 2018 09:41:28 +0000
From: matthias.schiffer@ew.tq-group.com
Date: Tue, 20 Nov 2018 10:40:34 +0100
Message-Id: <20181120094035.18252-2-matthias.schiffer@ew.tq-group.com>
In-Reply-To: <20181120094035.18252-1-matthias.schiffer@ew.tq-group.com>
References: <20181120094035.18252-1-matthias.schiffer@ew.tq-group.com>
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
Subject: [PATCH] environment: do not attempt to erase devices with MTD_NO_ERASE
To: barebox@lists.infradead.org
Cc: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>

From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>

Devices like MRAM do not need to be erased; in fact, trying to do a partial
erase will fail with -EINVAL, as they don't have a proper erase block size
defined.

The State backend checks for the MTD_NO_ERASE flag before attempting to
erase a device. Add a similar check to envfs_save().

Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
---
 common/environment.c | 32 +++++++++++++++++++++++++++-----
 1 file changed, 27 insertions(+), 5 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index 56a030eda..28deb3468 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -38,6 +38,8 @@
 #include <environment.h>
 #include <globalvar.h>
 #include <libfile.h>
+#include <asm-generic/ioctl.h>
+#include <linux/mtd/mtd-abi.h>
 #else
 # define errno_str(x) ("void")
 #define EXPORT_SYMBOL(x)
@@ -88,6 +90,17 @@ static int do_compare_file(const char *filename, const char *base)
 	return ret;
 }
 
+static inline int can_erase(int fd)
+{
+	struct mtd_info_user meminfo;
+	int ret = -ENODEV;
+
+	if (IS_ENABLED(CONFIG_MTD))
+		ret = ioctl(fd, MEMGETINFO, &meminfo);
+
+	return ret || !(meminfo.flags & MTD_NO_ERASE);
+}
+
 #else
 #define ERASE_SIZE_ALL 0
 static inline int protect(int fd, size_t count, unsigned long offset, int prot)
@@ -104,6 +117,11 @@ static int do_compare_file(const char *filename, const char *base)
 {
 	return 1;
 }
+
+static inline int can_erase(int fd)
+{
+	return 0;
+}
 #endif
 
 static int file_action(const char *filename, struct stat *statbuf,
@@ -334,12 +352,16 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 		goto out;
 	}
 
-	ret = erase(envfd, ERASE_SIZE_ALL, 0);
+	if (can_erase(envfd)) {
+		ret = erase(envfd, ERASE_SIZE_ALL, 0);
 
-	/* ENOSYS and EOPNOTSUPP aren't errors here, many devices don't need it */
-	if (ret && errno != ENOSYS && errno != EOPNOTSUPP) {
-		printf("could not erase %s: %s\n", filename, errno_str());
-		goto out;
+		/* ENOSYS and EOPNOTSUPP aren't errors here, many devices don't
+		 * need it */
+		if (ret && errno != ENOSYS && errno != EOPNOTSUPP) {
+			printf("could not erase %s: %s\n", filename,
+			       errno_str());
+			goto out;
+		}
 	}
 
 	size += sizeof(struct envfs_super);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
