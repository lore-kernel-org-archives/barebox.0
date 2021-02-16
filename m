Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lC6Y0-0007LN-OW
 for barebox@lists.infradead.org; Tue, 16 Feb 2021 20:02:15 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Feb 2021 21:02:06 +0100
Message-Id: <20210216200208.5275-7-a.fatoum@pengutronix.de>
In-Reply-To: <20210216200208.5275-1-a.fatoum@pengutronix.de>
References: <20210216200208.5275-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 6/8] fs: ext4: support files exceeding 4G
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

ext4 redefines directory ACL to hold the most-significant 32-bit of the
inode size for regular files. For directories, it can either be ACL or,
when using largedir, the most-significant 32-bit of the directory size.

Adapt the code take these upper 32-bit into consideration for
determining regular file size. For directories, behavior remains
unchanged as we neither support ACLs nor >= 4G directories

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/ext4/ext4fs.c      | 2 +-
 fs/ext4/ext_barebox.c | 2 +-
 fs/ext4/ext_common.h  | 9 +++++++++
 3 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/fs/ext4/ext4fs.c b/fs/ext4/ext4fs.c
index be643a448761..54349aad3f3f 100644
--- a/fs/ext4/ext4fs.c
+++ b/fs/ext4/ext4fs.c
@@ -55,7 +55,7 @@ loff_t ext4fs_read_file(struct ext2fs_node *node, loff_t pos,
 	int log2blocksize = LOG2_EXT2_BLOCK_SIZE(node->data);
 	const int blockshift = log2blocksize + DISK_SECTOR_BITS;
 	const int blocksize = 1 << blockshift;
-	unsigned int filesize = le32_to_cpu(node->inode.size);
+	loff_t filesize = ext4_isize(node);
 	ssize_t ret;
 	struct ext_filesystem *fs = node->data->fs;
 
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index a68a783e1c8a..8f318a49c008 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -221,7 +221,7 @@ struct inode *ext_get_inode(struct super_block *sb, int ino)
 
 	inode->i_ino = ino;
 	inode->i_mode = le16_to_cpu(node->inode.mode);
-	inode->i_size = le32_to_cpu(node->inode.size);
+	inode->i_size = ext4_isize(node);
 
 	switch (inode->i_mode & S_IFMT) {
 	default:
diff --git a/fs/ext4/ext_common.h b/fs/ext4/ext_common.h
index 350cc6efe535..37575d2a1aea 100644
--- a/fs/ext4/ext_common.h
+++ b/fs/ext4/ext_common.h
@@ -232,4 +232,13 @@ struct ext2_data {
 	struct ext4fs_indir_block indir1, indir2, indir3;
 };
 
+static inline loff_t ext4_isize(struct ext2fs_node *node)
+{
+        if (S_ISREG(le16_to_cpu(node->inode.mode)))
+                return ((loff_t)le32_to_cpu(node->inode.size_high) << 32) |
+                        le32_to_cpu(node->inode.size);
+
+        return (loff_t) le32_to_cpu(node->inode.size);
+}
+
 #endif
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
