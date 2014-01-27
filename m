Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W7j8P-0007mR-5v
 for barebox@lists.infradead.org; Mon, 27 Jan 2014 10:09:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 Jan 2014 11:09:16 +0100
Message-Id: <1390817356-16902-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] env: make path arguments to envfs_load/save const
To: barebox@lists.infradead.org

These functions have no business changing the path argument, so make the
argument const.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/environment.c | 4 ++--
 include/envfs.h      | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index 3f6f4b3..6f06bfc 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -162,7 +162,7 @@ out:
  * Note: This function will also be used on the host! See note in the header
  * of this file.
  */
-int envfs_save(char *filename, char *dirname)
+int envfs_save(const char *filename, char *dirname)
 {
 	struct envfs_super *super;
 	int envfd, size, ret;
@@ -227,7 +227,7 @@ EXPORT_SYMBOL(envfs_save);
  * Note: This function will also be used on the host! See note in the header
  * of this file.
  */
-int envfs_load(char *filename, char *dir, unsigned flags)
+int envfs_load(const char *filename, char *dir, unsigned flags)
 {
 	struct envfs_super super;
 	void *buf = NULL, *buf_free = NULL;
diff --git a/include/envfs.h b/include/envfs.h
index e847e4c..f8b24ed 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -90,8 +90,8 @@ struct envfs_super {
 #endif
 
 #define ENV_FLAG_NO_OVERWRITE	(1 << 0)
-int envfs_load(char *filename, char *dirname, unsigned flags);
-int envfs_save(char *filename, char *dirname);
+int envfs_load(const char *filename, char *dirname, unsigned flags);
+int envfs_save(const char *filename, char *dirname);
 
 /* defaults to /dev/env0 */
 #ifdef CONFIG_ENV_HANDLING
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
