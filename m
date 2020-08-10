Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k55j7-0003KS-9z
 for barebox@lists.infradead.org; Mon, 10 Aug 2020 11:12:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Aug 2020 13:12:12 +0200
Message-Id: <20200810111212.31286-4-s.hauer@pengutronix.de>
In-Reply-To: <20200810111212.31286-1-s.hauer@pengutronix.de>
References: <20200810111212.31286-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] fs: Use iget_locked() rather than squashfs specific
 function
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Use iget_locked() to let the core allocate the inode. This properly
initializes all fields in the new inode, especially it adds the new
inode to the list of all inodes for the filesystem. This prevents a NULL
pointer derefence when iput() removes the inode from that list.

This fixes squashfs support which is broken since 43902e5763 ("fs: free
inodes we no longer need")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/squashfs/inode.c    | 18 +-----------------
 fs/squashfs/squashfs.h |  1 -
 2 files changed, 1 insertion(+), 18 deletions(-)

diff --git a/fs/squashfs/inode.c b/fs/squashfs/inode.c
index 470536e589..64155d47db 100644
--- a/fs/squashfs/inode.c
+++ b/fs/squashfs/inode.c
@@ -44,22 +44,6 @@
 #include "squashfs_fs_i.h"
 #include "squashfs.h"
 
-struct inode *iget_locked_squashfs(struct super_block *sb, unsigned long ino)
-{
-	struct inode *inode;
-	struct squashfs_inode_info *ei;
-
-	ei = malloc(sizeof(struct squashfs_inode_info));
-	inode = &ei->vfs_inode;
-	if (inode) {
-		inode->i_ino = ino;
-		inode->i_sb = sb;
-		inode->i_state = I_SYNC | I_NEW;
-	}
-
-	return inode;
-}
-
 /*
  * Initialise VFS inode with the base inode information common to all
  * Squashfs inode types.  Sqsh_ino contains the unswapped base inode
@@ -94,7 +78,7 @@ static int squashfs_new_inode(struct super_block *sb, struct inode *inode,
 struct inode *squashfs_iget(struct super_block *sb, long long ino,
 				unsigned int ino_number)
 {
-	struct inode *inode = iget_locked_squashfs(sb, ino_number);
+	struct inode *inode = iget_locked(sb, ino_number);
 	int err;
 
 	TRACE("Entered squashfs_iget\n");
diff --git a/fs/squashfs/squashfs.h b/fs/squashfs/squashfs.h
index 31c9bc454e..825df2aedd 100644
--- a/fs/squashfs/squashfs.h
+++ b/fs/squashfs/squashfs.h
@@ -52,7 +52,6 @@ static inline struct squashfs_page *squashfs_page(struct page *page)
 
 #define WARNING(s, args...)	pr_warn("SQUASHFS: "s, ## args)
 
-struct inode *iget_locked_squashfs(struct super_block *sb, unsigned long ino);
 char *squashfs_devread(struct squashfs_sb_info *fs, int byte_offset,
 		int byte_len);
 extern int squashfs_mount(struct fs_device_d *fsdev,
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
