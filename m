Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cpwXc-0002pq-Cj
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 12:36:07 +0000
Received: by mail-lf0-x244.google.com with SMTP id g70so10118246lfh.3
 for <barebox@lists.infradead.org>; Mon, 20 Mar 2017 05:35:41 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 20 Mar 2017 15:35:26 +0300
Message-Id: <20170320123532.24059-2-antonynpavlov@gmail.com>
In-Reply-To: <20170320123532.24059-1-antonynpavlov@gmail.com>
References: <20170320123532.24059-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/7] ext4: change structure fields to __le/__be types
To: barebox@lists.infradead.org

This is an adoption of the U-Boot commit

| commit 2a0b7a971aac682112cf676c6583196faafcb2b0
| Author: Michael Walle <michael@walle.cc>
| Date:   Mon Aug 29 10:46:43 2016 +0200
|
|     ext4: change structure fields to __le/__be types
|
|     Change all the types of ext2/4 fields to little endian types and all the
|     JBD fields to big endian types. Now we can use sparse (make C=1) to check
|     for statements where we need byteswaps.
|
|     Signed-off-by: Michael Walle <michael@walle.cc>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/ext4/ext_common.h | 136 +++++++++++++++++++++++++--------------------------
 1 file changed, 68 insertions(+), 68 deletions(-)

diff --git a/fs/ext4/ext_common.h b/fs/ext4/ext_common.h
index 704d8e66a..a8d86472e 100644
--- a/fs/ext4/ext_common.h
+++ b/fs/ext4/ext_common.h
@@ -79,92 +79,92 @@
 
 /* The ext2 superblock.  */
 struct ext2_sblock {
-	uint32_t total_inodes;
-	uint32_t total_blocks;
-	uint32_t reserved_blocks;
-	uint32_t free_blocks;
-	uint32_t free_inodes;
-	uint32_t first_data_block;
-	uint32_t log2_block_size;
-	uint32_t log2_fragment_size;
-	uint32_t blocks_per_group;
-	uint32_t fragments_per_group;
-	uint32_t inodes_per_group;
-	uint32_t mtime;
-	uint32_t utime;
-	uint16_t mnt_count;
-	uint16_t max_mnt_count;
-	uint16_t magic;
-	uint16_t fs_state;
-	uint16_t error_handling;
-	uint16_t minor_revision_level;
-	uint32_t lastcheck;
-	uint32_t checkinterval;
-	uint32_t creator_os;
-	uint32_t revision_level;
-	uint16_t uid_reserved;
-	uint16_t gid_reserved;
-	uint32_t first_inode;
-	uint16_t inode_size;
-	uint16_t block_group_number;
-	uint32_t feature_compatibility;
-	uint32_t feature_incompat;
-	uint32_t feature_ro_compat;
-	uint32_t unique_id[4];
+	__le32 total_inodes;
+	__le32 total_blocks;
+	__le32 reserved_blocks;
+	__le32 free_blocks;
+	__le32 free_inodes;
+	__le32 first_data_block;
+	__le32 log2_block_size;
+	__le32 log2_fragment_size;
+	__le32 blocks_per_group;
+	__le32 fragments_per_group;
+	__le32 inodes_per_group;
+	__le32 mtime;
+	__le32 utime;
+	__le16 mnt_count;
+	__le16 max_mnt_count;
+	__le16 magic;
+	__le16 fs_state;
+	__le16 error_handling;
+	__le16 minor_revision_level;
+	__le32 lastcheck;
+	__le32 checkinterval;
+	__le32 creator_os;
+	__le32 revision_level;
+	__le16 uid_reserved;
+	__le16 gid_reserved;
+	__le32 first_inode;
+	__le16 inode_size;
+	__le16 block_group_number;
+	__le32 feature_compatibility;
+	__le32 feature_incompat;
+	__le32 feature_ro_compat;
+	__le32 unique_id[4];
 	char volume_name[16];
 	char last_mounted_on[64];
-	uint32_t compression_info;
+	__le32 compression_info;
 };
 
 struct ext2_block_group {
-	__u32 block_id;	/* Blocks bitmap block */
-	__u32 inode_id;	/* Inodes bitmap block */
-	__u32 inode_table_id;	/* Inodes table block */
-	__u16 free_blocks;	/* Free blocks count */
-	__u16 free_inodes;	/* Free inodes count */
-	__u16 used_dir_cnt;	/* Directories count */
-	__u16 bg_flags;
-	__u32 bg_reserved[2];
-	__u16 bg_itable_unused; /* Unused inodes count */
-	__u16 bg_checksum;	/* crc16(s_uuid+grouo_num+group_desc)*/
+	__le32 block_id;	/* Blocks bitmap block */
+	__le32 inode_id;	/* Inodes bitmap block */
+	__le32 inode_table_id;	/* Inodes table block */
+	__le16 free_blocks;	/* Free blocks count */
+	__le16 free_inodes;	/* Free inodes count */
+	__le16 used_dir_cnt;	/* Directories count */
+	__le16 bg_flags;
+	__le32 bg_reserved[2];
+	__le16 bg_itable_unused; /* Unused inodes count */
+	__le16 bg_checksum;	/* crc16(s_uuid+grouo_num+group_desc)*/
 };
 
 /* The ext2 inode. */
 struct ext2_inode {
-	uint16_t mode;
-	uint16_t uid;
-	uint32_t size;
-	uint32_t atime;
-	uint32_t ctime;
-	uint32_t mtime;
-	uint32_t dtime;
-	uint16_t gid;
-	uint16_t nlinks;
-	uint32_t blockcnt;	/* Blocks of 512 bytes!! */
-	uint32_t flags;
-	uint32_t osd1;
+	__le16 mode;
+	__le16 uid;
+	__le32 size;
+	__le32 atime;
+	__le32 ctime;
+	__le32 mtime;
+	__le32 dtime;
+	__le16 gid;
+	__le16 nlinks;
+	__le32 blockcnt;	/* Blocks of 512 bytes!! */
+	__le32 flags;
+	__le32 osd1;
 	union {
 		struct datablocks {
-			uint32_t dir_blocks[INDIRECT_BLOCKS];
-			uint32_t indir_block;
-			uint32_t double_indir_block;
-			uint32_t triple_indir_block;
+			__le32 dir_blocks[INDIRECT_BLOCKS];
+			__le32 indir_block;
+			__le32 double_indir_block;
+			__le32 triple_indir_block;
 		} blocks;
 		char symlink[60];
 	} b;
-	uint32_t version;
-	uint32_t acl;
-	uint32_t dir_acl;
-	uint32_t fragment_addr;
-	uint32_t osd2[3];
+	__le32 version;
+	__le32 acl;
+	__le32 dir_acl;
+	__le32 fragment_addr;
+	__le32 osd2[3];
 };
 
 /* The header of an ext2 directory entry. */
 struct ext2_dirent {
-	uint32_t inode;
-	uint16_t direntlen;
-	uint8_t namelen;
-	uint8_t filetype;
+	__le32 inode;
+	__le16 direntlen;
+	__u8 namelen;
+	__u8 filetype;
 };
 
 struct ext2fs_node {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
