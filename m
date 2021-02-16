Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lC6Y0-0007LL-OP
 for barebox@lists.infradead.org; Tue, 16 Feb 2021 20:02:15 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Feb 2021 21:02:02 +0100
Message-Id: <20210216200208.5275-3-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/8] fs: ext4: ext4fs.h: remove unused struct members of
 ext_filesystem
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

struct ext_filesystem is for in-memory bookkeeping but most of it is
unused by barebox and just takes up space. Drop the unused members.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/ext4/ext4fs.h | 29 -----------------------------
 1 file changed, 29 deletions(-)

diff --git a/fs/ext4/ext4fs.h b/fs/ext4/ext4fs.h
index 17a490a94375..5cf33bcf351b 100644
--- a/fs/ext4/ext4fs.h
+++ b/fs/ext4/ext4fs.h
@@ -74,39 +74,10 @@ struct ext4_extent_header {
 };
 
 struct ext_filesystem {
-	/* Total Sector of partition */
-	uint64_t total_sect;
-	/* Block size  of partition */
-	uint32_t blksz;
 	/* Inode size of partition */
 	uint32_t inodesz;
-	/* Sectors per Block */
-	uint32_t sect_perblk;
 	/* Group Descriptor size */
 	uint16_t gdsize;
-	/* Group Descriptor Block Number */
-	uint32_t gdtable_blkno;
-	/* Total block groups of partition */
-	uint32_t no_blkgrp;
-	/* No of blocks required for bgdtable */
-	uint32_t no_blk_pergdt;
-	/* Superblock */
-	struct ext2_sblock *sb;
-	/* Block group descritpor table */
-	struct ext2_block_group *bgd;
-	char *gdtable;
-
-	/* Block Bitmap Related */
-	unsigned char **blk_bmaps;
-	long int curr_blkno;
-	uint16_t first_pass_bbmap;
-
-	/* Inode Bitmap Related */
-	unsigned char **inode_bmaps;
-	int curr_inode_no;
-	uint16_t first_pass_ibmap;
-
-	/* Journal Related */
 
 	/* Block Device Descriptor */
 	struct cdev *cdev;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
