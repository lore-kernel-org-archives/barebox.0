Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNWPK-0002mx-B0
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 07:20:19 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Sep 2020 09:20:02 +0200
Message-Id: <20200930072005.1407-9-a.fatoum@pengutronix.de>
In-Reply-To: <20200930072005.1407-1-a.fatoum@pengutronix.de>
References: <20200930072005.1407-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 09/12] fs: squashfs: remove dead stores for xattr_id
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

barebox doesn't do extended attributes in SquashFS. Remove the left-over
xattr_id that's never read.

Reported-by: clang-analyzer-10
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/squashfs/inode.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/fs/squashfs/inode.c b/fs/squashfs/inode.c
index 64155d47dbf4..f702f6c0a2d9 100644
--- a/fs/squashfs/inode.c
+++ b/fs/squashfs/inode.c
@@ -108,7 +108,6 @@ int squashfs_read_inode(struct inode *inode, long long ino)
 	int err, type, offset = SQUASHFS_INODE_OFFSET(ino);
 	union squashfs_inode squashfs_ino;
 	struct squashfs_base_inode *sqshb_ino = &squashfs_ino.base;
-	int xattr_id = SQUASHFS_INVALID_XATTR;
 
 	TRACE("Entered squashfs_read_inode: %lld\n", ino);
 
@@ -197,7 +196,6 @@ int squashfs_read_inode(struct inode *inode, long long ino)
 			frag_offset = 0;
 		}
 
-		xattr_id = le32_to_cpu(sqsh_ino->xattr);
 		inode->i_size = le64_to_cpu(sqsh_ino->file_size);
 		inode->i_op = &squashfs_inode_ops;
 		inode->i_mode |= S_IFREG;
@@ -249,7 +247,6 @@ int squashfs_read_inode(struct inode *inode, long long ino)
 		if (err < 0)
 			goto failed_read;
 
-		xattr_id = le32_to_cpu(sqsh_ino->xattr);
 		inode->i_size = le32_to_cpu(sqsh_ino->file_size);
 		inode->i_op = &squashfs_dir_inode_ops;
 		inode->i_fop = &squashfs_dir_ops;
@@ -294,7 +291,6 @@ int squashfs_read_inode(struct inode *inode, long long ino)
 						&offset, sizeof(xattr));
 			if (err < 0)
 				goto failed_read;
-			xattr_id = le32_to_cpu(xattr);
 		}
 
 		TRACE("Symbolic link inode %x:%x, start_block %llx, offset "
@@ -338,7 +334,6 @@ int squashfs_read_inode(struct inode *inode, long long ino)
 			inode->i_mode |= S_IFCHR;
 		else
 			inode->i_mode |= S_IFBLK;
-		xattr_id = le32_to_cpu(sqsh_ino->xattr);
 		rdev = le32_to_cpu(sqsh_ino->rdev);
 
 		TRACE("Device inode %x:%x, rdev %x\n",
@@ -375,7 +370,6 @@ int squashfs_read_inode(struct inode *inode, long long ino)
 			inode->i_mode |= S_IFIFO;
 		else
 			inode->i_mode |= S_IFSOCK;
-		xattr_id = le32_to_cpu(sqsh_ino->xattr);
 		break;
 	}
 	default:
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
