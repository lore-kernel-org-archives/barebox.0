Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171] helo=mail2.data-modul.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1a9B8v-0002rQ-8I
 for barebox@lists.infradead.org; Wed, 16 Dec 2015 12:25:20 +0000
From: Zahari Doychev <zahari.doychev@linux.com>
Date: Wed, 16 Dec 2015 13:24:43 +0100
Message-Id: <046392bf3e5eae8f1de0f482a23ed1691fb0d549.1450267988.git.zahari.doychev@linux.com>
In-Reply-To: <cover.1450267988.git.zahari.doychev@linux.com>
References: <cover.1450267988.git.zahari.doychev@linux.com>
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
Subject: [PATCH] environment: allow saving of symbolic link changes
To: barebox@lists.infradead.org, s.hauer@pengutronix.de

Currently it is not possible to change symbolic links in the default
environment. For example if the default environment contains the
link "current_boot -> mmc" then the following does not work:

$ rm current_boot
$ ln net current_boot
$ saveenv

After reset the link is still pointing to "mmc" and this error appears:

"symlink: /env/boot/current_boot -> net : error -17"

The patch fixes the above problem and moves the "ENV_FLAG_NO_OVERWRITE"
to enable handling of symbolic links in this case too.

Signed-off-by: Zahari Doychev <zahari.doychev@linux.com>
---
 common/environment.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index f412e62..9cf44a0 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -23,7 +23,6 @@
  * the default environment when building the barebox binary. So
  * do not add any new barebox related functions here!
  */
-
 #ifdef __BAREBOX__
 #include <common.h>
 #include <command.h>
@@ -417,6 +416,7 @@ static int envfs_load_data(struct envfs_super *super, void *buf, size_t size,
 	int headerlen_full;
 	/* for envfs < 1.0 */
 	struct envfs_inode_end inode_end_dummy;
+	struct stat s;
 
 	inode_end_dummy.mode = ENVFS_32(S_IRWXU | S_IRWXG | S_IRWXO);
 	inode_end_dummy.magic = ENVFS_32(ENVFS_INODE_END_MAGIC);
@@ -460,11 +460,20 @@ static int envfs_load_data(struct envfs_super *super, void *buf, size_t size,
 		make_directory(dirname(tmp));
 		free(tmp);
 
+		ret = stat(str, &s);
+		if (!ret && (flags & ENV_FLAG_NO_OVERWRITE)) {
+			printf("skip %s\n", str);
+			goto skip;
+		}
+
 		if (S_ISLNK(ENVFS_32(inode_end->mode))) {
 			debug("symlink: %s -> %s\n", str, (char*)buf);
 			if (!strcmp(buf, basename(str))) {
 				unlink(str);
 			} else {
+				if (!ret)
+					unlink(str);
+
 				ret = symlink(buf, str);
 				if (ret < 0)
 					printf("symlink: %s -> %s : %s\n",
@@ -472,14 +481,6 @@ static int envfs_load_data(struct envfs_super *super, void *buf, size_t size,
 			}
 			free(str);
 		} else {
-			struct stat s;
-
-			if (flags & ENV_FLAG_NO_OVERWRITE &&
-					!stat(str, &s)) {
-				printf("skip %s\n", str);
-				goto skip;
-			}
-
 			fd = open(str, O_WRONLY | O_CREAT | O_TRUNC, 0644);
 			free(str);
 			if (fd < 0) {
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
