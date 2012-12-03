Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og113.obsmtp.com ([64.18.0.26])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfaSD-0004yk-60
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 18:09:21 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Mon,  3 Dec 2012 18:08:34 +0000
Message-Id: <1354558114-28799-19-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
References: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 18/18] ubifs: Fix memory leak in ubifs_finddir
To: barebox@lists.infradead.org
Cc: dev.ma.dma@gmail.com, Stefan Roese <sr@denx.de>

From: Stefan Roese <sr@denx.de>

This patch fixes a memory leak in ubifs_finddir().

Signed-off-by: Stefan Roese <sr@denx.de>
Cc: dev.ma.dma@gmail.com
---
 fs/ubifs/ubifs.c |   11 ++++++-----
 1 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index bd9ac84..a3ac674 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -324,6 +324,7 @@ static int ubifs_finddir(struct super_block *sb, char *dirname,
 	struct file *file;
 	struct dentry *dentry;
 	struct inode *dir;
+	int ret = 0;
 
 	file = kzalloc(sizeof(struct file), 0);
 	dentry = kzalloc(sizeof(struct dentry), 0);
@@ -365,7 +366,8 @@ static int ubifs_finddir(struct super_block *sb, char *dirname,
 		if ((strncmp(dirname, (char *)dent->name, nm.len) == 0) &&
 		    (strlen(dirname) == nm.len)) {
 			*inum = le64_to_cpu(dent->inum);
-			return 1;
+			ret = 1;
+			goto out_free;
 		}
 
 		/* Switch to the next entry */
@@ -384,11 +386,10 @@ static int ubifs_finddir(struct super_block *sb, char *dirname,
 	}
 
 out:
-	if (err != -ENOENT) {
+	if (err != -ENOENT)
 		ubifs_err("cannot find next direntry, error %d", err);
-		return err;
-	}
 
+out_free:
 	if (file->private_data)
 		kfree(file->private_data);
 	if (file)
@@ -398,7 +399,7 @@ out:
 	if (dir)
 		free(dir);
 
-	return 0;
+	return ret;
 }
 
 static unsigned long ubifs_findfile(struct super_block *sb,
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
