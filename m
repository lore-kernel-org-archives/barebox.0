Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPNWK-0008No-Hz
 for barebox@lists.infradead.org; Tue, 29 Oct 2019 09:10:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Oct 2019 10:10:27 +0100
Message-Id: <20191029091029.22215-3-s.hauer@pengutronix.de>
In-Reply-To: <20191029091029.22215-1-s.hauer@pengutronix.de>
References: <20191029091029.22215-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] fs: ext4: remove unnecessarily clever file read
To: Barebox List <barebox@lists.infradead.org>

ext4fs_read_file() tries to tries to bundle contiguous block reads into
longer reads from the device. In barebox we cache in the block layer
already, so this is unnecessary. Simplify the code by removing the
bundled reads.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ext4/ext4fs.c | 59 +++++-------------------------------------------
 1 file changed, 6 insertions(+), 53 deletions(-)

diff --git a/fs/ext4/ext4fs.c b/fs/ext4/ext4fs.c
index acecccd6b9..2d231d273a 100644
--- a/fs/ext4/ext4fs.c
+++ b/fs/ext4/ext4fs.c
@@ -55,12 +55,6 @@ int ext4fs_read_file(struct ext2fs_node *node, int pos,
 	int log2blocksize = LOG2_EXT2_BLOCK_SIZE(node->data);
 	int blocksize = 1 << (log2blocksize + DISK_SECTOR_BITS);
 	unsigned int filesize = le32_to_cpu(node->inode.size);
-	int previous_block_number = -1;
-	int delayed_start = 0;
-	int delayed_extent = 0;
-	int delayed_skipfirst = 0;
-	int delayed_next = 0;
-	char *delayed_buf = NULL;
 	short ret;
 	struct ext_filesystem *fs = node->data->fs;
 
@@ -75,6 +69,7 @@ int ext4fs_read_file(struct ext2fs_node *node, int pos,
 		int blockoff = pos % blocksize;
 		int blockend = blocksize;
 		int skipfirst = 0;
+
 		blknr = read_allocated_block(node, i);
 		if (blknr < 0)
 			return blknr;
@@ -95,59 +90,17 @@ int ext4fs_read_file(struct ext2fs_node *node, int pos,
 			skipfirst = blockoff;
 			blockend -= skipfirst;
 		}
+
 		if (blknr) {
-			if (previous_block_number != -1) {
-				if (delayed_next == blknr) {
-					delayed_extent += blockend;
-					delayed_next += blockend >> SECTOR_BITS;
-				} else {	/* spill */
-					ret = ext4fs_devread(fs, delayed_start,
-							delayed_skipfirst,
-							delayed_extent,
-							delayed_buf);
-					if (ret)
-						return ret;
-					previous_block_number = blknr;
-					delayed_start = blknr;
-					delayed_extent = blockend;
-					delayed_skipfirst = skipfirst;
-					delayed_buf = buf;
-					delayed_next = blknr +
-						(blockend >> SECTOR_BITS);
-				}
-			} else {
-				previous_block_number = blknr;
-				delayed_start = blknr;
-				delayed_extent = blockend;
-				delayed_skipfirst = skipfirst;
-				delayed_buf = buf;
-				delayed_next = blknr +
-					(blockend >> SECTOR_BITS);
-			}
+			ret = ext4fs_devread(fs, blknr, skipfirst, blockend, buf);
+			if (ret)
+				return ret;
 		} else {
-			if (previous_block_number != -1) {
-				/* spill */
-				ret = ext4fs_devread(fs, delayed_start,
-							delayed_skipfirst,
-							delayed_extent,
-							delayed_buf);
-				if (ret)
-					return ret;
-				previous_block_number = -1;
-			}
 			memset(buf, 0, blockend);
 		}
+
 		buf += blocksize - skipfirst;
 	}
-	if (previous_block_number != -1) {
-		/* spill */
-		ret = ext4fs_devread(fs, delayed_start,
-					delayed_skipfirst, delayed_extent,
-					delayed_buf);
-		if (ret)
-			return ret;
-		previous_block_number = -1;
-	}
 
 	return len;
 }
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
