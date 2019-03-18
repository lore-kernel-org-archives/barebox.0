Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5oMM-0002In-GR
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 09:15:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 Mar 2019 10:14:54 +0100
Message-Id: <20190318091454.11386-12-s.hauer@pengutronix.de>
In-Reply-To: <20190318091454.11386-1-s.hauer@pengutronix.de>
References: <20190318091454.11386-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/11] fs: squashfs: Remove unused function
To: Barebox List <barebox@lists.infradead.org>

squashfs_lookup_next() isn't used in the tree. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/squashfs/namei.c | 108 --------------------------------------------
 1 file changed, 108 deletions(-)

diff --git a/fs/squashfs/namei.c b/fs/squashfs/namei.c
index baf1e8b646..62a07d2467 100644
--- a/fs/squashfs/namei.c
+++ b/fs/squashfs/namei.c
@@ -238,114 +238,6 @@ failed:
 	return ERR_PTR(err);
 }
 
-int squashfs_lookup_next(struct inode *dir, char *root_name,
-				 char *cur_name)
-{
-	const unsigned char *name = root_name;
-	int len = strlen(root_name);
-	struct squashfs_sb_info *msblk = dir->i_sb->s_fs_info;
-	struct squashfs_dir_header dirh;
-	struct squashfs_dir_entry *dire;
-	u64 block = squashfs_i(dir)->start + msblk->directory_table;
-	int offset = squashfs_i(dir)->offset;
-	int err, length;
-	unsigned int dir_count, size;
-	int name_found = 0, real_name_found = 0;
-
-	TRACE("Entered squashfs_lookup_next [%llx:%x]\n", block, offset);
-
-	dire = kmalloc(sizeof(*dire) + SQUASHFS_NAME_LEN + 1, GFP_KERNEL);
-	if (dire == NULL) {
-		ERROR("Failed to allocate squashfs_dir_entry\n");
-		return -ENOMEM;
-	}
-
-	if (len > SQUASHFS_NAME_LEN) {
-		err = -ENAMETOOLONG;
-		goto failed;
-	}
-
-	length = get_dir_index_using_name(dir->i_sb, &block, &offset,
-				squashfs_i(dir)->dir_idx_start,
-				squashfs_i(dir)->dir_idx_offset,
-				squashfs_i(dir)->dir_idx_cnt, name, len);
-
-	while (length < i_size_read(dir)) {
-		/*
-		 * Read directory header.
-		 */
-		err = squashfs_read_metadata(dir->i_sb, &dirh, &block,
-				&offset, sizeof(dirh));
-		if (err < 0)
-			goto read_failure;
-
-		length += sizeof(dirh);
-
-		dir_count = le32_to_cpu(dirh.count) + 1;
-
-		if (dir_count > SQUASHFS_DIR_COUNT)
-			goto data_error;
-
-		while (dir_count--) {
-			/*
-			 * Read directory entry.
-			 */
-			err = squashfs_read_metadata(dir->i_sb, dire, &block,
-					&offset, sizeof(*dire));
-			if (err < 0)
-				goto read_failure;
-
-			size = le16_to_cpu(dire->size) + 1;
-
-			/* size should never be larger than SQUASHFS_NAME_LEN */
-			if (size > SQUASHFS_NAME_LEN)
-				goto data_error;
-
-			err = squashfs_read_metadata(dir->i_sb, dire->name,
-					&block, &offset, size);
-			if (err < 0)
-				goto read_failure;
-
-			length += sizeof(*dire) + size;
-			dire->name[size] = '\0';
-
-			if (cur_name[0] == '/')
-				name_found = 1;
-
-			if (!strcmp(cur_name, name))
-				name_found = 1;
-
-			if (cur_name[0] != '/'
-			    && strlen(cur_name) == size
-			    && !strncmp(cur_name, dire->name, size)) {
-				name_found = 1;
-				continue;
-			}
-
-			if (name_found) {
-				sprintf(cur_name, "%s", dire->name);
-				real_name_found = 1;
-				goto exit_lookup;
-			}
-		}
-	}
-
-exit_lookup:
-	kfree(dire);
-	return real_name_found ? 0 : 1;
-
-data_error:
-	err = -EIO;
-
-read_failure:
-	ERROR("Unable to read directory block [%llx:%x]\n",
-		squashfs_i(dir)->start + msblk->directory_table,
-		squashfs_i(dir)->offset);
-failed:
-	kfree(dire);
-	return 1;
-}
-
 const struct inode_operations squashfs_dir_inode_ops = {
 	.lookup = squashfs_lookup,
 };
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
