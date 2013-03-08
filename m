Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo1.mail-out.ovh.net ([178.33.104.224]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDw29-00007g-TD
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 12:04:28 +0000
Received: from mail405.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 5EDA4FF9F3B
 for <barebox@lists.infradead.org>; Fri,  8 Mar 2013 13:20:37 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  8 Mar 2013 12:59:43 +0100
Message-Id: <1362743983-11462-11-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362743983-11462-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130307215402.GA32347@game.jcrosoft.org>
 <1362743983-11462-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 11/11] ext4: switch debug and printf to dev_xxx
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/ext4/ext4_common.c |   12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
index f426118..ceb965f 100644
--- a/fs/ext4/ext4_common.c
+++ b/fs/ext4/ext4_common.c
@@ -89,7 +89,7 @@ static int ext4fs_blockgroup(struct ext2_data *data, int group,
 			group / desc_per_blk;
 	blkoff = (group % desc_per_blk) * sizeof(struct ext2_block_group);
 
-	debug("ext4fs read %d group descriptor (blkno %ld blkoff %u)\n",
+	dev_dbg(fs->dev, "read %d group descriptor (blkno %ld blkoff %u)\n",
 	      group, blkno, blkoff);
 
 	return ext4fs_devread(fs, blkno << LOG2_EXT2_BLOCK_SIZE(data),
@@ -139,7 +139,7 @@ int ext4fs_get_indir_block(struct ext2fs_node *node, struct ext4fs_indir_block *
 
 	ret = ext4fs_devread(fs, blkno, 0, blksz, (void *)indir->data);
 	if (ret) {
-		printf("** SI ext2fs read block (indir 1)"
+		dev_err(fs->dev, "** SI ext2fs read block (indir 1)"
 			"failed. **\n");
 		return ret;
 	}
@@ -177,7 +177,7 @@ long int read_allocated_block(struct ext2fs_node *node, int fileblock)
 				(struct ext4_extent_header *)inode->b.blocks.dir_blocks,
 				fileblock, log2_blksz);
 		if (!ext_block) {
-			printf("invalid extent block\n");
+			pr_err("invalid extent block\n");
 			free(buf);
 			return -EINVAL;
 		}
@@ -269,10 +269,10 @@ int ext4fs_iterate_dir(struct ext2fs_node *dir, char *name,
 	unsigned int fpos = 0;
 	int status, ret;
 	struct ext2fs_node *diro = (struct ext2fs_node *) dir;
-
+	struct ext_filesystem *fs = dir->data->fs;
 
 	if (name != NULL)
-		debug("Iterate dir %s\n", name);
+		dev_dbg(fs->dev, "Iterate dir %s\n", name);
 
 	if (!diro->inode_read) {
 		ret = ext4fs_read_inode(diro->data, diro->ino, &diro->inode);
@@ -345,7 +345,7 @@ int ext4fs_iterate_dir(struct ext2fs_node *dir, char *name,
 				}
 			}
 
-			debug("iterate >%s<\n", filename);
+			dev_dbg(fs->dev, "iterate >%s<\n", filename);
 
 			if (strcmp(filename, name) == 0) {
 				*ftype = type;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
