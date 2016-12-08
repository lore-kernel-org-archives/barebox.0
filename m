Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0a-00176a03.pphosted.com ([67.231.149.52])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEzTP-0001jv-H0
 for barebox@lists.infradead.org; Thu, 08 Dec 2016 14:15:00 +0000
Received: from pps.filterd (m0047963.ppops.net [127.0.0.1])
 by m0047963.ppops.net-00176a03. (8.16.0.17/8.16.0.17) with SMTP id
 uB8E2qjH012858
 for <barebox@lists.infradead.org>; Thu, 8 Dec 2016 09:14:36 -0500
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu,  8 Dec 2016 14:14:28 +0000
Message-Id: <1481206468-3959-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH] ubifs: restore symlink support
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@ge.com>, Renaud Barbier <renaud.barbier@abaco.com>

In commit a63059d7 of the latest u-boot port, the function that
returns the inode number also resolves symlink. This prevents the
readlink entry point from doing its job and breaks the user command
readlink and the display of symlink with the ls command.
Remove the code following the link to restore original functionality.

Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
---
 fs/ubifs/ubifs.c |   29 -----------------------------
 1 files changed, 0 insertions(+), 29 deletions(-)

diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 7935688..0bb1c26 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -496,12 +496,9 @@ static unsigned long ubifs_findfile(struct super_block *sb, const char *filename
 	int ret;
 	char *next;
 	char fpath[128];
-	char symlinkpath[128];
 	char *name = fpath;
 	unsigned long root_inum = 1;
 	unsigned long inum;
-	int symlink_count = 0; /* Don't allow symlink recursion */
-	char link_name[64];
 
 	strcpy(fpath, filename);
 
@@ -537,32 +534,6 @@ static unsigned long ubifs_findfile(struct super_block *sb, const char *filename
 			return 0;
 		ui = ubifs_inode(inode);
 
-		if ((inode->i_mode & S_IFMT) == S_IFLNK) {
-			char buf[128];
-
-			/* We have some sort of symlink recursion, bail out */
-			if (symlink_count++ > 8) {
-				printf("Symlink recursion, aborting\n");
-				return 0;
-			}
-			memcpy(link_name, ui->data, ui->data_len);
-			link_name[ui->data_len] = '\0';
-
-			if (link_name[0] == '/') {
-				/* Absolute path, redo everything without
-				 * the leading slash */
-				next = name = link_name + 1;
-				root_inum = 1;
-				continue;
-			}
-			/* Relative to cur dir */
-			sprintf(buf, "%s/%s",
-					link_name, next == NULL ? "" : next);
-			memcpy(symlinkpath, buf, sizeof(buf));
-			next = name = symlinkpath;
-			continue;
-		}
-
 		/*
 		 * Check if directory with this name exists
 		 */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
