Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkIEV-0006m0-SK
 for barebox@lists.infradead.org; Fri, 18 Jan 2019 00:42:05 +0000
Received: by mail-pl1-x643.google.com with SMTP id b5so5528901plr.4
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2019 16:42:03 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 Jan 2019 16:41:55 -0800
Message-Id: <20190118004155.21725-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] unlink_recursive: Drop struct data
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop struct data which doesn't seem to serve any purpose in the code
and looks like a leftover.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 lib/unlink-recursive.c | 27 +++++++--------------------
 1 file changed, 7 insertions(+), 20 deletions(-)

diff --git a/lib/unlink-recursive.c b/lib/unlink-recursive.c
index 434fdc791..f28c6dae5 100644
--- a/lib/unlink-recursive.c
+++ b/lib/unlink-recursive.c
@@ -6,50 +6,37 @@
 
 static char unlink_recursive_failedpath[PATH_MAX];
 
-struct data {
-	int error;
-};
-
 static int file_action(const char *filename, struct stat *statbuf,
 			    void *userdata, int depth)
 {
-	struct data *data = userdata;
-	int ret;
-
-	ret = unlink(filename);
-	if (ret) {
+	if (unlink(filename)) {
 		strcpy(unlink_recursive_failedpath, filename);
-		data->error = ret;
+		return 0;
 	}
 
-	return ret ? 0 : 1;
+	return 1;
 }
 
 static int dir_action(const char *dirname, struct stat *statbuf,
 			    void *userdata, int depth)
 {
-	struct data *data = userdata;
-	int ret;
-
-	ret = rmdir(dirname);
-	if (ret) {
+	if (rmdir(dirname)) {
 		strcpy(unlink_recursive_failedpath, dirname);
-		data->error = ret;
+		return 0;
 	}
 
-	return ret ? 0 : 1;
+	return 1;
 }
 
 int unlink_recursive(const char *path, char **failedpath)
 {
-	struct data data = {};
 	int ret;
 
 	if (failedpath)
 		*failedpath = NULL;
 
 	ret = recursive_action(path, ACTION_RECURSE | ACTION_DEPTHFIRST,
-			file_action, dir_action, &data, 0);
+			file_action, dir_action, NULL, 0);
 
 	if (!ret && failedpath)
 		*failedpath = unlink_recursive_failedpath;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
